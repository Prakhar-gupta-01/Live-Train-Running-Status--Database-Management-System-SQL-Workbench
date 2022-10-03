import os
from locale import currency
import mysql.connector
from mysql.connector import DataError
import time
import mysql.connector as con
from mysql.connector.errors import ProgrammingError, Error

def CheckConnection():
    try:
        print("Checking the Connection to the MySQL Server..")

        connection = con.connect(host='localhost', user='root',
                     database='', password='Aviral!123')
        if connection.is_connected():
            db_Info = connection.get_server_info()
            print("Connected to MySQL Server Version", db_Info)

    except Error:
        print("Error connecting to MySQL Server, Make sure the MySQL Server is running and then try again!")
        print("Exiting!")
        quit()
        return False

    else:
        return True

def CheckDatabase():
    print("Checking Database Requirements..")

    db = con.connect(host='localhost', user='root',
                     database='', password='Aviral!123')
    cur = db.cursor()
    result = None

    try:
        cur.execute("use railway12;")
    except ProgrammingError:
        print("Database does not Exist!")
        result = False
    else:
        result = True

    if result is True:
        print("Database exists!")
    else:
        print("Create Database by ruuning Train12.sql in sql server.")
        quit()

    cur.close()
    db.close()

def ClearScreen1():
    time.sleep(1)
    os.system("cls")

def ClearScreen2():
    time.sleep(2)
    os.system("cls")

def ClearScreen3():
    os.system("cls")

def ClearScreen():
    print("Clearing..")
    time.sleep(2)
    os.system("cls")

def cleartable():
    mn = mysql.connector.connect(host='localhost', user='root',password='Aviral!123', database='railway12')
    cur = mn.cursor()
    cur.execute('delete from train_no_visited;')

def Menu(answer="Yes"):
    if answer in ["Yes", "Y"]:
        print("WELCOME TO TRAIN ENQUIRY SYSTEM")
        print("1. SHOW LIVE TRAIN RUNNING STATUS")
        print("2. SHOW TRAIN BETWEEN STATIONS")
        print("3. CLEAR SCREEN")
        print("4. MENU")
        print("PRESS ANY OTHER KEY TO EXIT")
    else:
        pass
