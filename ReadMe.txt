LIVE TRAIN RUNNING SYSTEM

---------------------
Important Instruction
---------------------
1) Make sure python is installed and working
2) run pip3 install -r requirements.txt
3) change the YOUR_PASSWORD in the files with the password and the YOUR_USERNAME with the username of your local SQL server.
   whereever `mn = mysql.connector.connect(host='localhost', user='root',password='Aviral!123', database='railway12')
4) Run DBS_PR_14_SQL_2019B3A70317P.sql on your work bench to make sure that database is created in your workbench

---------
:FOLDERS:
_________

/core : Contains all the files that are required by the project to work

        Files: __init__.py -> Makes the folder to be recognized as a module
               User_Functions.py -> This file contains the function that allow a user to perform certain task
               Other.py -> This file contains some commonly used functions

-------------------
:ROOT FOLDER FILES:
___________________

Main.py -> This is the main file that connects all the other modules and is used to run the project

requirements.txt -> It contains the required packages for this project to work that can be installed via the command
                    `pip3 install -r requirements.txt`


----------
:FEATURES:
__________

Overview: It is a Live Train Running System in which a user can check live running status of train, search train between stations. It uses MySQL as the backend database.

1. Live Status of Train: Users can check live status of a tarin using valid train number
2. Train between stations: Users can search between two stations by entering valid source and destination code. 
3. Clear Screen: Clears the terminal screen
4. Menu: Shows the menu
5. Exit: Exit the program

-------------------
:ENVIRONMENT SETUP:
___________________

1.  Run DBS_PR_14_SQL_2019B3A70317P.sql in your sql server
2.  Set password and username of your sql server in all the places where you find this line `mn = mysql.connector.connect(host='localhost', user='root',password='Aviral!123', database='railway12')
    cur = mn.cursor()    
3. `pip3 install -r Requirements.txt` to install the required packages automatically.
4.  Make sure the MySQL Service is running and change the YOUR_PASSWORD in the files with the password and the YOUR_USERNAME with the username of your local SQL server.
5. `python Main.py` to see if the program is running correctly and is able to connect to MySQL Server.