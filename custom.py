#Simon Gelber - CSC365 Lab 2
#Create Insert Statements
import sys





def main(argv):

    try:
        file = open(argv[1], "r")

    except OSError:
        print("Could not open file: ", argv[1])
        sys.exit()
    else:
        flag = 0
        fileLine = file.readline()
        while fileLine:
            if flag == 1:
                tablerow = fileLine.strip()
                tablerow = tablerow.replace('"', "")
                tablerow = tablerow.replace("'", "''")
                row = tablerow.split(",")

                print("INSERT INTO Passengers(PassengerID, Name, Sex, Age, Sibsp, Parch) " +
                      "VALUES (%s, '%s %s', '%s', %s, %s, %s);" % (row[0], row[4].lstrip(), row[3], row[5], row[6], row[7], row[8]))

                print("INSERT INTO Tickets(Ticket, Fare, Cabin, Embarked, Pclass, Name, PassengerID) " +
                      "VALUES ('%s', %s, '%s', '%s', %s, '%s %s', %s);" % (row[9], row[10], row[11], row[12], row[2], row[4].lstrip(), row[3], row[0]))

                print("INSERT INTO Survival(PassengerID, Name, Survived) " +
                      "VALUES ('%s','%s %s', %s);" % (
                      row[0], row[4].lstrip(), row[3], row[1]))

                fileLine = file.readline()
            else:
                flag = 1
                fileLine = file.readline()

        file.close()




if __name__ == "__main__":
    main(sys.argv)