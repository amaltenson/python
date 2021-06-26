from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re


app = Flask(__name__)

# Change this to your secret key (can be anything, it's for extra protection)
app.secret_key = 'your secret key'

# Enter your database connection details below
app.config['MYSQL_HOST'] = '117.254.186.108'
app.config['MYSQL_USER'] = '19mca002'
app.config['MYSQL_PASSWORD'] = '2030'
app.config['MYSQL_DB'] = '19mca002'

# Intialize MySQL
mysql = MySQL(app)

cnx = mysql.connector.connect(database='19mca002')
cursor = cnx.cursor(dictionary=True)
cursor.execute("SELECT * FROM accounts WHERE username = 'amaltenson'")


@app.route('/')
def index():
    return "<p>Hello, World!</p>"


if __name__ == "__main__":
    app.run(debug=True)
