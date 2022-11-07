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
            print("INSERT INTO Albums (AId, Title, Year, Label, Type) " +
                  "VALUES (%s, '%s', %s, '%s', '%s');" % (row[0], row[1], row[2], row[3], row[4]))
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
            print("INSERT INTO Band (Id, Firstname, Lastname) " +
                  "VALUES (%s, '%s', '%s');" % (row[0], row[1], row[2]))
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
            row = tablerow.split(",")
            print("INSERT INTO Instruments (SongId, BandmateId, Instrument) " +
                  "VALUES (%s, %s, '%s');" % (row[0], row[1], row[2]))
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
            row = tablerow.split(",")
            print("INSERT INTO Performance (SongId, Bandmate, StagePosition) " +
                  "VALUES (%s, %s, '%s');" % (row[0], row[1], row[2]))
            fileLine = file.readline()

        file.close()

    print("")

    try:
        file = open(argv[5], "r")

    except OSError:
        print("Could not open file: ", argv[5])
        sys.exit()
    else:

        fileLine = file.readline()
        while fileLine:
            tablerow = fileLine.strip()
            row = tablerow.split(",")
            print("INSERT INTO Songs (SongId, Title) " +
                  "VALUES (%s, '%s');" % (row[0], row[1]))
            fileLine = file.readline()

        file.close()

    print("")

    try:
        file = open(argv[6], "r")

    except OSError:
        print("Could not open file: ", argv[6])
        sys.exit()
    else:

        fileLine = file.readline()
        while fileLine:
            tablerow = fileLine.strip()
            row = tablerow.split(",")
            print("INSERT INTO Tracklists (AlbumId, Position, SongId) " +
                  "VALUES (%s, %s, %s);" % (row[0], row[1], row[2]))
            fileLine = file.readline()

        file.close()

    print("")

    try:
        file = open(argv[7], "r")

    except OSError:
        print("Could not open file: ", argv[7])
        sys.exit()
    else:

        fileLine = file.readline()
        while fileLine:
            tablerow = fileLine.strip()
            row = tablerow.split(",")
            print("INSERT INTO Vocals (SongId, Bandmate, Type) " +
                  "VALUES (%s, %s, '%s');" % (row[0], row[1], row[2]))
            fileLine = file.readline()

        file.close()

if __name__ == "__main__":
    main(sys.argv)