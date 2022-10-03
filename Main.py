import core.User_Functions as User
import core.Other as Other
from time import sleep

Other.ClearScreen1()
Other.CheckConnection()
Other.ClearScreen1()
Other.CheckDatabase()
Other.ClearScreen2()

while True:
    Other.Menu()
    ans = input("Choose an Option Number: ")
    if ans == "2":
        Other.ClearScreen3()
        User.AvailableTrains()
        while True:
            ask = input("Do you want to Search more train between stations(Y/N): ")
            if ask in ["Y", "y"]:
                Other.ClearScreen3()
                User.AvailableTrains()
            elif ask in ["N", "n"]:
                break
            else:
                print("Please Enter either Y (Yes) or N (No)!")

     
    elif ans == "1":
        Other.ClearScreen3()
        User.ShowLiveStatus()
        while True:
            ask = input("Do you want to Check Status of Another Train(Y/N): ")
            if ask in ["Y", "y"]:
                Other.ClearScreen3()
                User.ShowLiveStatus()
            elif ask in ["N", "n"]:
                break
            else:
                print("Please Enter either Y (Yes) or N (No)!")
    elif ans == "3":
        Other.ClearScreen()
    elif ans == "4":
        Other.Menu()
    else:
        Other.cleartable()
        print("Closing all Connections..")
        sleep(0.5)
        print("Thank You!")
        quit()
    