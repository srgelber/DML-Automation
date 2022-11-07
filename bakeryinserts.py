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

        fileLine = file.readline()
        while fileLine:
            tablerow = fileLine.strip()
            row = tablerow.split(", ")
            print("INSERT INTO customers (CId, LastName, FirstName) " +
                  "VALUES (%s, '%s', '%s');" % (row[0], row[1], row[2]))
            fileLine = file.readline()

        file.close()


    print("")

    try:
        file = open(argv[2], "r")

    except OSError:
        print("Could not open file: ", argv[2])
        sys.exit()
    else:

        fileLine = file.readline()
        while fileLine:
            tablerow = fileLine.strip()
            row = tablerow.split(",")
            print("INSERT INTO goods (GId, Flavor, Food, Price) " +
                  "VALUES ('%s', '%s', '%s', %s);" % (row[0], row[1], row[2], row[3]))
            fileLine = file.readline()

        file.close()

    print("")

    try:
        file = open(argv[3], "r")

    except OSError:
        print("Could not open file: ", argv[3])
        sys.exit()
    else:

        fileLine = file.readline()
        while fileLine:
            tablerow = fileLine.strip()
            row = tablerow.split(", ")
            print("INSERT INTO items (Receipt, Ordinal, Item) " +
                  "VALUES (%s, %s, '%s');" % (row[0], row[1], row[2].lstrip()))
            fileLine = file.readline()

        file.close()

    print("")

    try:
        file = open(argv[4], "r")

    except OSError:
        print("Could not open file: ", argv[4])
        sys.exit()
    else:

        fileLine = file.readline()
        while fileLine:
            tablerow = fileLine.strip()
            row = tablerow.split(", ")
            print("INSERT INTO receipts (RNumber, `SaleDate`, Customer) " +
                  f"VALUES ({row[0]}, STR_TO_DATE('{row[1]}','%d-%M-%Y'), {row[2]});")
            fileLine = file.readline()

        file.close()



if __name__ == "__main__":
    main(sys.argv)