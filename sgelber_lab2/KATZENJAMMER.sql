DROP TABLE IF EXISTS Performance;
DROP TABLE IF EXISTS Instruments;
DROP TABLE IF EXISTS Tracklists;
DROP TABLE IF EXISTS Vocals;
DROP TABLE IF EXISTS Band;
DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Albums;




CREATE TABLE Albums (
    AId INTEGER(1) NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Year INTEGER(1) NOT NULL,
    Label VARCHAR(100) NOT NULL,
    Type VARCHAR(100) NOT NULL,
    PRIMARY KEY (AId)
);

CREATE TABLE Band (
    Id INTEGER(1) NOT NULL,
    Firstname VARCHAR(100) NOT NULL,
    Lastname VARCHAR(100) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Songs (
    SongId INTEGER(1) NOT NULL,
    Title VARCHAR(100) NOT NULL,
    PRIMARY KEY(SongId),
    UNIQUE(SongId, Title)
);

CREATE TABLE Instruments (
    SongId INTEGER(1) NOT NULL,
    BandmateId INTEGER(1) NOT NULL,
    Instrument VARCHAR(100) NOT NULL,
    UNIQUE(SongId, BandmateId, Instrument),
    FOREIGN KEY (SongId)
        REFERENCES  Songs (SongId),
    FOREIGN KEY (BandmateId)
        REFERENCES Band (Id)
);

CREATE TABLE Performance (
    SongId INTEGER(1) NOT NULL,
    Bandmate INTEGER(1) NOT NULL,
    StagePosition VARCHAR(100) NOT NULL,
    UNIQUE(SongId, Bandmate),
    FOREIGN KEY (SongId)
        REFERENCES  Songs (SongId),
    FOREIGN KEY (Bandmate)
        REFERENCES Band (Id)
);


CREATE TABLE Tracklists (
    AlbumId INTEGER(1) NOT NULL,
    Position INTEGER(1) NOT NULL,
    SongId INTEGER(1) NOT NULL,
    UNIQUE(AlbumId, Position, SongId),
    FOREIGN KEY (AlbumId)
        REFERENCES  Albums (AId),
    FOREIGN KEY (SongId)
        REFERENCES Songs (SongId)
);

CREATE TABLE Vocals (
    SongId INTEGER(1) NOT NULL,
    Bandmate INTEGER(1) NOT NULL,
    Type VARCHAR(100) NOT NULL,
    FOREIGN KEY (Bandmate)
        REFERENCES  Band (Id),
    FOREIGN KEY (SongId)
        REFERENCES Songs (SongId)
);

INSERT INTO Albums (AId, Title, Year, Label, Type) VALUES (1, 'Le Pop', 2008, 'Propeller Recordings', 'Studio');
INSERT INTO Albums (AId, Title, Year, Label, Type) VALUES (2, 'A Kiss Before You Go', 2011, 'Propeller Recordings', 'Studio');
INSERT INTO Albums (AId, Title, Year, Label, Type) VALUES (3, 'A Kiss Before You Go: Live in Hamburg', 2012, 'Universal Music Group', 'Live');
INSERT INTO Albums (AId, Title, Year, Label, Type) VALUES (4, 'Rockland', 2015, 'Propeller Recordings', 'Studio');

INSERT INTO Band (Id, Firstname, Lastname) VALUES (1, 'Solveig', 'Heilo');
INSERT INTO Band (Id, Firstname, Lastname) VALUES (2, 'Marianne', 'Sveen');
INSERT INTO Band (Id, Firstname, Lastname) VALUES (3, 'Anne-Marit', 'Bergheim');
INSERT INTO Band (Id, Firstname, Lastname) VALUES (4, 'Turid', 'Jorgensen');

INSERT INTO Songs (SongId, Title) VALUES (1, 'Overture');
INSERT INTO Songs (SongId, Title) VALUES (2, 'A Bar In Amsterdam');
INSERT INTO Songs (SongId, Title) VALUES (3, 'Demon Kitty Rag');
INSERT INTO Songs (SongId, Title) VALUES (4, 'Tea With Cinnamon');
INSERT INTO Songs (SongId, Title) VALUES (5, 'Hey Ho on the Devil''s Back');
INSERT INTO Songs (SongId, Title) VALUES (6, 'Wading in Deeper');
INSERT INTO Songs (SongId, Title) VALUES (7, 'Le Pop');
INSERT INTO Songs (SongId, Title) VALUES (8, 'Der Kapitan');
INSERT INTO Songs (SongId, Title) VALUES (9, 'Virginia Clemm');
INSERT INTO Songs (SongId, Title) VALUES (10, 'Play My Darling');
INSERT INTO Songs (SongId, Title) VALUES (11, 'To the Sea');
INSERT INTO Songs (SongId, Title) VALUES (12, 'Mother Superior');
INSERT INTO Songs (SongId, Title) VALUES (13, 'Aint no Thang');
INSERT INTO Songs (SongId, Title) VALUES (14, 'A Kiss Before You Go');
INSERT INTO Songs (SongId, Title) VALUES (15, 'I Will Dance (When I Walk Away)');
INSERT INTO Songs (SongId, Title) VALUES (16, 'Cherry Pie');
INSERT INTO Songs (SongId, Title) VALUES (17, 'Land of Confusion');
INSERT INTO Songs (SongId, Title) VALUES (18, 'Lady Marlene');
INSERT INTO Songs (SongId, Title) VALUES (19, 'Rock-Paper-Scissors');
INSERT INTO Songs (SongId, Title) VALUES (20, 'Cocktails and Ruby Slippers');
INSERT INTO Songs (SongId, Title) VALUES (21, 'Soviet Trumpeter');
INSERT INTO Songs (SongId, Title) VALUES (22, 'Loathsome M');
INSERT INTO Songs (SongId, Title) VALUES (23, 'Shepherds Song');
INSERT INTO Songs (SongId, Title) VALUES (24, 'Gypsy Flee');
INSERT INTO Songs (SongId, Title) VALUES (25, 'Gods Great Dust Storm');
INSERT INTO Songs (SongId, Title) VALUES (26, 'Ouch');
INSERT INTO Songs (SongId, Title) VALUES (27, 'Listening to the World');
INSERT INTO Songs (SongId, Title) VALUES (28, 'Johnny Blowtorch');
INSERT INTO Songs (SongId, Title) VALUES (29, 'Flash');
INSERT INTO Songs (SongId, Title) VALUES (30, 'Driving After You');
INSERT INTO Songs (SongId, Title) VALUES (31, 'My Own Tune');
INSERT INTO Songs (SongId, Title) VALUES (32, 'Badlands');
INSERT INTO Songs (SongId, Title) VALUES (33, 'Old De Spain');
INSERT INTO Songs (SongId, Title) VALUES (34, 'Oh My God');
INSERT INTO Songs (SongId, Title) VALUES (35, 'Lady Gray');
INSERT INTO Songs (SongId, Title) VALUES (36, 'Shine Like Neon Rays');
INSERT INTO Songs (SongId, Title) VALUES (37, 'Flash in the Dark');
INSERT INTO Songs (SongId, Title) VALUES (38, 'My Dear');
INSERT INTO Songs (SongId, Title) VALUES (39, 'Bad Girl');
INSERT INTO Songs (SongId, Title) VALUES (40, 'Rockland');
INSERT INTO Songs (SongId, Title) VALUES (41, 'Curvaceous Needs');
INSERT INTO Songs (SongId, Title) VALUES (42, 'Borka');
INSERT INTO Songs (SongId, Title) VALUES (43, 'Let it Snow');

INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (1, 1, 'trumpet');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (1, 2, 'keyboard');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (1, 3, 'accordion');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (1, 4, 'bass balalaika');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (2, 1, 'trumpet');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (2, 2, 'drums');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (2, 3, 'guitar');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (2, 4, 'bass balalaika');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (3, 1, 'drums');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (3, 1, 'ukalele');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (3, 2, 'banjo');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (3, 3, 'bass balalaika');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (3, 4, 'keyboards');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (4, 1, 'drums');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (4, 2, 'ukalele');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (4, 3, 'accordion');
INSERT INTO Instruments (SongId, BandmateId, Instrument) VALUES (4, 4, 'bass balalaika');

INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (1, 1, 'back');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (1, 2, 'left');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (1, 3, 'center');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (1, 4, 'right');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (2, 1, 'center');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (2, 2, 'back');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (2, 3, 'left');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (2, 4, 'right');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (3, 1, 'back');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (3, 2, 'right');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (3, 3, 'center');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (3, 4, 'left');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (4, 1, 'back');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (4, 2, 'center');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (4, 3, 'left');
INSERT INTO Performance (SongId, Bandmate, StagePosition) VALUES (4, 4, 'right');

INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 1, 1);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 2, 2);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 3, 3);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 4, 4);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 5, 5);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 6, 6);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 7, 7);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 8, 8);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 9, 9);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 10, 10);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 11, 11);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 12, 12);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (1, 13, 13);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 1, 14);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 2, 15);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 3, 16);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 4, 17);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 5, 18);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 6, 19);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 7, 20);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 8, 21);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 9, 22);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 10, 23);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 11, 24);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (2, 12, 25);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 1, 14);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 2, 26);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 3, 3);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 4, 15);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 5, 11);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 6, 19);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 7, 18);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 8, 16);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 9, 12);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 10, 17);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 11, 22);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 12, 20);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 13, 2);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 14, 5);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 15, 8);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 16, 7);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 17, 25);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 18, 13);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (3, 19, 24);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 1, 33);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 2, 41);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 3, 34);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 4, 35);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 5, 31);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 6, 36);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 7, 30);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 8, 37);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 9, 38);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 10, 39);
INSERT INTO Tracklists (AlbumId, Position, SongId) VALUES (4, 11, 40);

INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (2, 1, 'lead');
INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (2, 3, 'chorus');
INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (2, 4, 'chorus');
INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (3, 2, 'lead');
INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (4, 1, 'chorus');
INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (4, 2, 'lead');
INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (4, 3, 'chorus');
INSERT INTO Vocals (SongId, Bandmate, Type) VALUES (4, 4, 'chorus');
