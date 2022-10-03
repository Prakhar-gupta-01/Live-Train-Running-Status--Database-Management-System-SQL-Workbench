from locale import currency
import mysql.connector
import os
import datetime
import time
from mysql.connector import DataError
import random
import time
from datetime import datetime, timedelta
import random 


def AvailableTrains():
    mn = mysql.connector.connect(host='localhost', user='root',password='Aviral!123', database='railway12')
    cur = mn.cursor()

    print("Search Train between Station by Entering Station Code!")

    start_opt = input("From: ")
    while True:
        cur.execute('SELECT  Station_Code,Station_Name from station_info where Station_Code="{}" ;'.format(start_opt))
        temp1=cur.fetchall()
        if len(temp1)>0:
            break
        else :
            print("Enter a Valid Station Code")
            start_opt = input("From: ")

    final_opt = input("To: ")
    while True:
        cur.execute(
            'SELECT  Station_Code,Station_Name from station_info where Station_Code="{}" ;'.format(
                final_opt))
        temp1=cur.fetchall()
        if len(temp1)>0:
            break
        else :
            print("Enter a Valid Station Code")
            final_opt = input("From: ")

    cur.execute('create view c1 as select station_no,train_no,departure_time from train_route where station_code = "{}";'.format(start_opt))
    cur.execute('create view c2 as select station_no,train_no,arrival_time from train_route where station_code = "{}";'.format(final_opt))
    cur.execute('CREATE VIEW c3 AS (SELECT C1.TRAIN_NO,c1.departure_time,c2.arrival_time FROM C1,C2 WHERE C1.TRAIN_NO = C2.TRAIN_NO AND C1.STATION_NO<C2.STATION_NO);')

    cur.execute('SELECT TRAIN_DETAILS.TRAIN_NO,TRAIN_DETAILS.TRAIN_NAME,c3.departure_time,c3.arrival_time FROM TRAIN_DETAILS,C3 WHERE C3.TRAIN_NO=TRAIN_DETAILS.TRAIN_NO')
    result = cur.fetchall()

    if len(result)==0:
        print("No Trains Available between searched stations!")
    else:
        print("Train_No"," Train_Name", "\t","Departure Time", "\t","Arrival Time")
        print(" ")
        for x in result:
            print(x[0],"\t",x[1], "\t",x[2],"\t",x[3],"\n")

    time.sleep(1)

    cur.execute("drop view c1;")
    cur.execute("drop view c2;")
    cur.execute("drop view c3;")

    cur.close()
    mn.close()

    


def ShowLiveStatus():
    mn = mysql.connector.connect(host='localhost', user='root',password='Aviral!123', database='railway12')
    cur = mn.cursor()

    print("WELCOME TO LIVE TRAIN RUNNING SYSTEM")
    while True:
        train_no = (input("Enter Train Number: "))
        cur.execute('SELECT Train_No from train_route where Train_No="{}" ;'.format(
            train_no))
        result = cur.fetchall()
        
        if len(result)==0:
            print("Invalid Train number")
            print("No train found with such number")
        else:
            break
    os.system("cls")

    # cur.execute("drop table exp_sch;")

    cur.execute('create table schedule as SELECT Train_No,Station_No,Station_Code,station_info.Station_Name,Arrival_Time,Departure_Time,Distance from train_route natural join station_info where Train_No="{}" ;'.format(train_no))
    view1_temp=cur.fetchall()
    cur.execute('create table exp_sch as SELECT Train_No,Station_No,Station_Code,station_info.Station_Name,Arrival_Time as Exp_Arrival_Time,Departure_Time as Exp_Departure_Time,Distance from train_route natural join station_info where Train_No="{}" ;'.format(train_no))
    view2_temp=cur.fetchall()
    cur.execute('create table exp_src_des as SELECT train_no,source_time,destination_time from train_details where Train_No="{}" ;'.format(train_no))
    view2_temp=cur.fetchall()
    
    cur.execute('SELECT Train_No1 from train_no_visited where Train_No1="{}" ;'.format(
            train_no))
    k=cur.fetchall()

    cur.execute('SELECT Train_No2 from train_no_visited where Train_No2="{}" ;'.format(
            train_no))
    k1=cur.fetchall()

    a=(random.randint(0,10))
    if((a==1 or len(k)>0) and len(k1)==0):
        cur.execute('update exp_sch set exp_arrival_time=addtime(exp_arrival_time,"00:15:00") where station_no >=1;')
        cur.execute('update exp_sch set exp_departure_time=addtime(exp_departure_time,"00:15:00") where station_no >=1;')
        cur.execute('update exp_src_des set source_time=addtime(source_time,"00:15:00");')
        cur.execute('update exp_src_des set destination_time=addtime(destination_time,"00:15:00");')

    if(a==1):
        cur.execute('INSERT INTO train_no_visited (`Train_No1`) VALUES ("{}");'.format(train_no))
    else:
        cur.execute('INSERT INTO train_no_visited (`Train_No2`) VALUES ("{}");'.format(train_no))

    

    cur.execute("SELECT station_code from schedule;")
    station_code_search=cur.fetchall()


    print("Enter a valid Station Code from the list below")
    print("Station_Code")
    for row in station_code_search:
        print(row[0])
    stat_code = input("Enter Station Code: ")
    while True:
        cur.execute(
            'SELECT  Station_Code from schedule where Station_Code="{}" ;'.format(
                stat_code))
        temp1=cur.fetchall()
        if len(temp1)>0:
            break
        else :
            print("Invalid Station Code!")
            print("Enter a Valid Station Code from the list below")
            print("Station_Code")
            for row in station_code_search:
                print(row[0])
            stat_code = input("Enter Station Code: ")

    cur.execute('SELECT source_time from train_details where Train_No="{}" ;'.format(train_no))
    src = cur.fetchall()
    src_time=str(src[0][0])
    
    cur.execute('SELECT destination_time from train_details where Train_No="{}" ;'.format(train_no))
    des= cur.fetchall()    
    des_time=str(des[0][0])

    cur.execute('SELECT source_time from exp_src_des where Train_No="{}" ;'.format(train_no))
    src1 = cur.fetchall()
    exp_src_time=str(src1[0][0])
    
    cur.execute('SELECT DESTINATION_time from exp_src_des where Train_No="{}" ;'.format(train_no))
    des1 = cur.fetchall()
    exp_des_time=str(des1[0][0])

    cur.execute('SELECT Arrival_Time from schedule where station_code="{}" ;'.format(stat_code))
    arr1=cur.fetchall()
    arrival_time=str(arr1[0][0])

    cur.execute('SELECT Departure_Time from schedule where station_code="{}" ;'.format(stat_code))
    dep1=cur.fetchall()
    departure_time=str(dep1[0][0])
    

    cur.execute('SELECT Exp_Arrival_Time from exp_sch where station_code="{}" ;'.format(stat_code))
    arr2=cur.fetchall()
    exp_arrival_time=str(arr2[0][0])

    cur.execute('SELECT Exp_Departure_Time from exp_sch where station_code="{}" ;'.format(stat_code))
    dep2=cur.fetchall()
    exp_departure_time=str(dep2[0][0])

    cur.execute('SELECT Station_Name from Station_info where station_code="{}" ;'.format(stat_code))
    stat_name=cur.fetchall()

    if(src_time[1]==':'):
        src_time='0'+src_time
    
    if(des_time[1]==':'):
        des_time='0'+des_time

    if(arrival_time[1]==':'):
        arrival_time='0'+arrival_time
    
    if(departure_time[1]==':'):
       departure_time='0'+departure_time
    
    if(exp_arrival_time[1]==':'):
        exp_arrival_time='0'+exp_arrival_time
    
    if(exp_departure_time[1]==':'):
       exp_departure_time='0'+exp_departure_time

    if(exp_src_time[1]==':'):
        exp_src_time='0'+exp_src_time
    
    if(exp_des_time[1]==':'):
        exp_des_time='0'+exp_des_time

    t = time.localtime()
    current_time = time.strftime("%H:%M:%S", t)

    if( arrival_time == exp_arrival_time and departure_time == exp_departure_time):
        if(current_time > src_time and current_time < des_time):
                if(current_time>arrival_time and current_time<departure_time):
                    print("Train is running on Time and standing on ",stat_name[0][0]," and arrived at ",arrival_time," and will depart at ",departure_time)
                elif(current_time <arrival_time):
                    print("Train is running on time and will arrive on ",stat_name[0][0]," at ",arrival_time)
                    cur.execute('SELECT Station_Name,arrival_time from schedule where arrival_time > curtime() limit 1;')
                    s1=cur.fetchall()
                    cur.execute('SELECT Station_Name,station_no,departure_time from schedule where departure_time < curtime() order by station_no desc;')
                    s2=cur.fetchall()
                    print("Train is currently running on time between ",s2[0][0]," and ",s1[0][0])
                    print("Train has departed on time from ",s2[0][0], " at ",s2[0][2], " and will next arrive on ",s1[0][0]," at ",s1[0][1] )
                else:
                    print("Train is running on time and has departed from ",stat_name[0][0]," at ",departure_time)
                    cur.execute('SELECT Station_Name,arrival_time from schedule where arrival_time > curtime() limit 1;')
                    s1=cur.fetchall()
                    cur.execute('SELECT Station_Name,station_no,departure_time from schedule where departure_time < curtime() order by station_no desc;')
                    s2=cur.fetchall()
                    print("Train is currently running on time between ",s2[0][0]," and ",s1[0][0])
                    print("Train has departed on time from ",s2[0][0], " at ",s2[0][2], " and will next arrive on ",s1[0][0]," at ",s1[0][1] )
        elif(current_time<src_time):
            print("Train has not started from source yet")
            print("Train will start from source at right time at ",src_time)
        else:
            print("Train has arrived at destination on time at ",des_time)
    else:
        cur.execute('SELECT Station_Name,exp_arrival_time from exp_sch where exp_arrival_time > curtime() limit 1;')
        s3=cur.fetchall()
        cur.execute('SELECT Station_Name,station_no,exp_departure_time from exp_sch where exp_departure_time < curtime() order by station_no desc;')
        s4=cur.fetchall()
        lateStatus(current_time,exp_src_time,exp_des_time,exp_arrival_time,exp_departure_time,stat_name,s3,s4)

    
    cur.execute("drop table schedule;")
    cur.execute("drop table exp_sch;")
    cur.execute("drop table exp_src_des;")

    cur.close()
    mn.close()

def lateStatus(current_time,exp_src_time,exp_des_time,exp_arrival_time,exp_departure_time,stat_name,s3,s4):
    mn = mysql.connector.connect(host='localhost', user='root',password='Aviral!123', database='railway12')
    cur = mn.cursor()

    if(current_time > exp_src_time and current_time < exp_des_time):
            if(current_time>exp_arrival_time and current_time<exp_departure_time):
                print("Train is running late by 15 minutes and standing on ",stat_name[0][0]," and arrived at ",exp_arrival_time," and will depart at ",exp_departure_time)
            elif(current_time < exp_arrival_time):
                print("Train is running late by 15 minutes and will arrive on ",stat_name[0][0]," at ",exp_arrival_time)
                print("Train is currently running late by 15 minutes time between ",s4[0][0]," and ",s3[0][0])
                print("Train has departed late from ",s4[0][0], " at ",s4[0][2], " and will next arrive on ",s3[0][0]," at ",s3[0][1] )
            else:
                print("Train is running late and has departed from ",stat_name[0][0]," at ",exp_departure_time)
                print("Train is currently running late by 15 minutes time between ",s4[0][0]," and ",s3[0][0])
                print("Train has departed late from ",s4[0][0], " at ",s4[0][2], " and will next arrive on ",s3[0][0]," at ",s3[0][1] )
    elif(current_time<exp_src_time):
        print("Train has not started from source yet")
        print("Train will start from source late at ",exp_src_time)
    else:
        print("Train has arrived at destination late at ",exp_des_time)
