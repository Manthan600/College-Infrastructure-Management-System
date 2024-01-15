from flask import Flask, render_template, request, redirect, session, url_for
import mysql.connector
import datetime

app = Flask(__name__)
app.secret_key = 'dbms_project'  # Replace with a strong and secret key


db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="infrastructure_management"
)

# Define a cursor to interact with the database
db_cursor = db_connection.cursor()


@app.route('/',methods=['GET', 'POST'])
def landing_page():
    return render_template('index.html')


@app.route('/resolve_complaint/<int:token_id>', methods=['POST'])
def resolve_complaint(token_id):
    if 'technician_logged_in' in session:
        technician_field = session.get('technician_field','Unknown')
        if (technician_field == 'comp'):
            try:
                # Delete the resolved complaint from the comp_complaints table
                query = "DELETE FROM comp_complaints WHERE token_id = %s"
                values = (token_id,)

                db_cursor.execute(query, values)
                db_connection.commit()

                return redirect(url_for('technician_dashboard'))
            except Exception as e:
                return "Error resolving complaint: " + str(e)
        elif (technician_field == 'ac'):
            try:
                # Delete the resolved complaint from the comp_complaints table
                query = "DELETE FROM ac_complaints WHERE token_id = %s"
                values = (token_id,)

                db_cursor.execute(query, values)
                db_connection.commit()

                return redirect(url_for('technician_dashboard'))
            except Exception as e:
                return "Error resolving complaint: " + str(e)
        elif (technician_field == 'proj'):
            try:
                # Delete the resolved complaint from the comp_complaints table
                query = "DELETE FROM proj_complaints WHERE token_id = %s"
                values = (token_id,)

                db_cursor.execute(query, values)
                db_connection.commit()

                return redirect(url_for('technician_dashboard'))
            except Exception as e:
                return "Error resolving complaint: " + str(e)
    else:
        return redirect(url_for('technician_login'))



@app.route('/accept_complaint/<int:token_id>', methods=['POST'])
def accept_complaint(token_id):
    if 'technician_logged_in' in session:
        technician_field = session.get('technician_field','Unknown')
        if (technician_field == 'comp'):
            try:

                # Update the tech_id in the comp_complaints table for the accepted complaint
                query = "UPDATE comp_complaints SET tech_id = %s WHERE token_id = %s"
                values = (session['technician_username'], token_id)

                db_cursor.execute(query, values)
                db_connection.commit()

                return redirect(url_for('technician_dashboard'))
            except Exception as e:
                # Handle any potential database errors
                return "Error accepting complaint: " + str(e)
        elif (technician_field == 'ac'):
            try:

                # Update the tech_id in the comp_complaints table for the accepted complaint
                query = "UPDATE ac_complaints SET tech_id = %s WHERE token_id = %s"
                values = (session['technician_username'], token_id)

                db_cursor.execute(query, values)
                db_connection.commit()

                return redirect(url_for('technician_dashboard'))
            except Exception as e:
                # Handle any potential database errors
                return "Error accepting complaint: " + str(e)
        elif (technician_field == 'proj'):
            try:
                # Update the tech_id in the comp_complaints table for the accepted complaint
                query = "UPDATE proj_complaints SET tech_id = %s WHERE token_id = %s"
                values = (session['technician_username'], token_id)

                db_cursor.execute(query, values)
                db_connection.commit()

                return redirect(url_for('technician_dashboard'))
            except Exception as e:
                # Handle any potential database errors
                return "Error accepting complaint: " + str(e)
    else:
        return redirect(url_for('technician_login'))


@app.route('/submit_complaint', methods=['POST'])
def submit_complaint():
    if 'student_logged_in' in session:
        if request.method == 'POST':
            mis = request.form.get('mis')
            complaint_type = request.form.get('type')
            device_id = request.form.get('device_id')
            description = request.form.get('description')
            # Check if the complaint_type is "Computer"
            if complaint_type == "Computer":
                try:

                    # Get the current date
                    current_date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

                    # Insert the complaint details into the comp_complaints table
                    query = "INSERT INTO comp_complaints (student_id, comp_id, description, complaint_date) VALUES (%s, %s, %s, %s)"
                    values = (mis, device_id, description, current_date)

                    db_cursor.execute(query, values)
                    db_connection.commit()

                    return "Computer complaint submitted successfully"

                except Exception as e:
                    # Handle any potential database errors
                    return "Error submitting computer complaint: " + str(e)
            elif complaint_type == "Projector":
                try:

                    # Get the current date
                    current_date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

                    # Insert the complaint details into the comp_complaints table
                    query = "INSERT INTO proj_complaints (student_id, proj_id, description, complaint_date) VALUES (%s, %s, %s, %s)"
                    values = (mis, device_id, description, current_date)

                    db_cursor.execute(query, values)
                    db_connection.commit()

                    return "Projector complaint submitted successfully"

                except Exception as e:
                    # Handle any potential database errors
                    return "Error submitting Projector complaint: " + str(e)
            elif complaint_type == "AC":
                try:

                    # Get the current date
                    current_date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

                    # Insert the complaint details into the comp_complaints table
                    query = "INSERT INTO ac_complaints (student_id, ac_id, description, complaint_date) VALUES (%s, %s, %s, %s)"
                    values = (mis, device_id, description, current_date)

                    db_cursor.execute(query, values)
                    db_connection.commit()

                    return "AC complaint submitted successfully"

                except Exception as e:
                    # Handle any potential database errors
                    return "Error submitting AC complaint: " + str(e)   
            # Handle other types of complaints (AC, Projector, etc.) as needed

    return redirect(url_for('student_login'))





def verify_student_credentials(username, password):
    try:
        # Execute an SQL query to retrieve student credentials
        username = int(username)
        query = "SELECT mis,name FROM students WHERE MIS = %s AND password = %s"
        db_cursor.execute(query, (username, password))
        student = db_cursor.fetchone()
        print("query executed")
        if student:
            # Credentials are correct, return the name
            return True, student[0],student[1]
        else:
            # Credentials are incorrect
            return False,None,None

    except Exception as e:
        # Handle any potential database errors
        print("Error verifying student credentials:", str(e))
        return False,None,None

def verify_technician_credentials(username, password):
    try:
        # Execute an SQL query to retrieve technician credentials
        username = int(username)
        query = "SELECT tech_id, name, field FROM technicians WHERE tech_id = %s AND password = %s"
        db_cursor.execute(query, (username, password))
        technician = db_cursor.fetchone()
        

        if technician:
            # Credentials are correct, return the name
            return True, technician[0],technician[1],technician[2]
        else:
            # Credentials are incorrect
            return False, None,None,None

    except Exception as e:
        # Handle any potential database errors
        print("Error verifying technician credentials:", str(e))
        return False, None,None,None










# Define routes for student and technician login
@app.route('/student_login', methods=['GET', 'POST'])
def student_login():
    if request.method == 'POST':
        # Verify username and password, and set session variables if login is successful
        # uname = request.form['username']
        # passw = request.form['password']
        # print(uname)
        # print(passw)
        # k = verify_student_credentials(uname, passw)
        # print(k)
        success, username, name = verify_student_credentials(request.form['username'], request.form['password'])
        print(success)
        if success:
            print("verified")
            session['student_logged_in'] = True
            session['student_username'] = username
            session['student_name'] = name
            return redirect(url_for('student_dashboard'))  # Redirect to student dashboard

    return render_template('student_login.html')

@app.route('/technician_login', methods=['GET', 'POST'])
def technician_login():
    if request.method == 'POST':
        # Verify username and password, and set session variables if login is successful
        success, username, name,field = verify_technician_credentials(request.form['username'], request.form['password'])


        if success:
            session['technician_logged_in'] = True
            session['technician_username'] = username
            session['technician_name'] = name
            session['technician_field'] = field
            return redirect(url_for('technician_dashboard'))  # Redirect to technician dashboard

    return render_template('technician_login.html')

# Define routes for student and technician dashboards
@app.route('/student_dashboard')
def student_dashboard():
    if 'student_logged_in' in session:
        student_username = session.get('student_username', 'Unknown')
        student_name = session.get('student_name', 'Unknown')
        return render_template('student_dashboard.html', username=student_username, name=student_name)
    else:
        return redirect(url_for('student_login'))

@app.route('/logout_student')
def logout_student():
    if 'student_logged_in' in session:
        session.pop('student_logged_in', None)
        session.pop('student_username', None)
        session.pop('student_name', None)
    
    return redirect(url_for('student_login'))  # Redirect to the login page


@app.route('/technician_dashboard')
def technician_dashboard():
    if 'technician_logged_in' in session:
        technician_username = session.get('technician_username', 'Unknown')
        technician_name = session.get('technician_name', 'Unknown')
        technician_field = session.get('technician_field','Unknown')
        if (technician_field == 'comp'):
            try:
                db_cursor1 = db_connection.cursor()
                # Fetch the contents of the comp_complaints table
                query = "SELECT * FROM comp_complaints WHERE tech_id IS NULL"
                db_cursor1.execute(query)
                complaints = db_cursor.fetchall()

                query = "SELECT * FROM comp_complaints WHERE tech_id = %s"
                db_cursor.execute(query, (technician_username,))
                technician_complaints = db_cursor.fetchall()

                db_cursor1.close()
                return render_template('technician_dashboard.html', username=technician_username, name=technician_name,complaints=complaints,technician_complaints=technician_complaints)
            except Exception as e:
        # Handle any potential database errors
                return "Error fetching complaints: " + str(e)
        elif (technician_field == 'ac'):
            try:
                db_cursor1 = db_connection.cursor()
                # Fetch the contents of the comp_complaints table
                query = "SELECT * FROM ac_complaints WHERE tech_id IS NULL"
                db_cursor1.execute(query)
                complaints = db_cursor.fetchall()

                query = "SELECT * FROM ac_complaints WHERE tech_id = %s"
                db_cursor.execute(query, (technician_username,))
                technician_complaints = db_cursor.fetchall()

                db_cursor1.close()
                return render_template('technician_dashboard.html', username=technician_username, name=technician_name,complaints=complaints,technician_complaints=technician_complaints)
            except Exception as e:
        # Handle any potential database errors
                return "Error fetching complaints: " + str(e)
        elif (technician_field == 'proj'):
            try:
                db_cursor1 = db_connection.cursor()
                # Fetch the contents of the comp_complaints table
                query = "SELECT * FROM proj_complaints WHERE tech_id IS NULL"
                db_cursor1.execute(query)
                complaints = db_cursor.fetchall()

                query = "SELECT * FROM proj_complaints WHERE tech_id = %s"
                db_cursor.execute(query, (technician_username,))
                technician_complaints = db_cursor.fetchall()

                db_cursor1.close()
                return render_template('technician_dashboard.html', username=technician_username, name=technician_name,complaints=complaints,technician_complaints=technician_complaints)
            except Exception as e:
        # Handle any potential database errors
                return "Error fetching complaints: " + str(e)
    else:
        return redirect(url_for('technician_login'))

# Define a logout route
@app.route('/logout_technician')
def logout_technician():
    if 'technician_logged_in' in session:
        session.pop('technician_logged_in', None)
        session.pop('technician_username', None)
        session.pop('technician_field', None)
        session.pop('technician_name', None)
    
    return redirect(url_for('technician_login'))  # Redirect to the login page



# Define functions to verify user credentials (replace with your authentication logic)


if __name__ == '__main__':
    app.run(debug=True)
