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
            row = tablerow.split(",")
            print("INSERT INTO airlines (Id, Airline, Abbreviation, Country) " +
                  "VALUES (%s, '%s', '%s', '%s');" % (row[0], row[1], row[2], row[3]))
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
            print("INSERT INTO airports (City, AirportCode, AirportName, Country, CountryAbbrev) " +
                  "VALUES ('%s', '%s', '%s', '%s', '%s');" % (row[0], row[1], row[2], row[3], row[4]))
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
            print("INSERT INTO flights (Airline, FlightNo, SourceAirport, DestAirport) " +
                  "VALUES (%s, %s, '%s', '%s');" % (row[0], row[1], row[2], row[3]))
            fileLine = file.readline()

        file.close()



if __name__ == "__main__":
    main(sys.argv)