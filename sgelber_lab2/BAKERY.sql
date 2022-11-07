DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS receipts;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS goods;


CREATE TABLE customers (
    CId INTEGER(1) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    PRIMARY KEY (CId)
);

CREATE TABLE goods (
    GId VARCHAR(100) NOT NULL,
    Flavor VARCHAR(100) NOT NULL,
    Food VARCHAR(100) NOT NULL,
    Price DECIMAL(4,2) NOT NULL,
    PRIMARY KEY (GId),
    UNIQUE(Food, Flavor)
);

CREATE TABLE receipts (
    RNumber INTEGER(1) NOT NULL,
    SaleDate DATE NOT NULL,
    Customer INTEGER(1) NOT NULL,
    PRIMARY KEY(RNumber),
    UNIQUE(RNumber, SaleDate, Customer),
    FOREIGN KEY (Customer)
        REFERENCES  customers (CId)
);

CREATE TABLE items (
    Receipt INTEGER(1) NOT NULL,
    Ordinal INTEGER(1) NOT NULL,
    Item VARCHAR(100) NOT NULL,
    UNIQUE(Receipt, Ordinal),
    FOREIGN KEY (Receipt)
        REFERENCES  receipts (RNumber),
    FOREIGN KEY (Item)
        REFERENCES goods (GId)
);



INSERT INTO customers (CId, LastName, FirstName) VALUES (1, 'LOGAN', 'JULIET');
INSERT INTO customers (CId, LastName, FirstName) VALUES (2, 'ARZT', 'TERRELL');
INSERT INTO customers (CId, LastName, FirstName) VALUES (3, 'ESPOSITA', 'TRAVIS');
INSERT INTO customers (CId, LastName, FirstName) VALUES (4, 'ENGLEY', 'SIXTA');
INSERT INTO customers (CId, LastName, FirstName) VALUES (5, 'DUNLOW', 'OSVALDO');
INSERT INTO customers (CId, LastName, FirstName) VALUES (6, 'SLINGLAND', 'JOSETTE');
INSERT INTO customers (CId, LastName, FirstName) VALUES (7, 'TOUSSAND', 'SHARRON');
INSERT INTO customers (CId, LastName, FirstName) VALUES (8, 'HELING', 'RUPERT');
INSERT INTO customers (CId, LastName, FirstName) VALUES (9, 'HAFFERKAMP', 'CUC');
INSERT INTO customers (CId, LastName, FirstName) VALUES (10, 'DUKELOW', 'CORETTA');
INSERT INTO customers (CId, LastName, FirstName) VALUES (11, 'STADICK', 'MIGDALIA');
INSERT INTO customers (CId, LastName, FirstName) VALUES (12, 'MCMAHAN', 'MELLIE');
INSERT INTO customers (CId, LastName, FirstName) VALUES (13, 'ARNN', 'KIP');
INSERT INTO customers (CId, LastName, FirstName) VALUES (14, 'S''OPKO', 'RAYFORD');
INSERT INTO customers (CId, LastName, FirstName) VALUES (15, 'CALLENDAR', 'DAVID');
INSERT INTO customers (CId, LastName, FirstName) VALUES (16, 'CRUZEN', 'ARIANE');
INSERT INTO customers (CId, LastName, FirstName) VALUES (17, 'MESDAQ', 'CHARLENE');
INSERT INTO customers (CId, LastName, FirstName) VALUES (18, 'DOMKOWSKI', 'ALMETA');
INSERT INTO customers (CId, LastName, FirstName) VALUES (19, 'STENZ', 'NATACHA');
INSERT INTO customers (CId, LastName, FirstName) VALUES (20, 'ZEME', 'STEPHEN');

INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('20-BC-C-10', 'Chocolate', 'Cake', 8.95);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('20-BC-L-10', 'Lemon', 'Cake', 8.95);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('20-CA-7.5', 'Casino', 'Cake', 15.95);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('24-8x10', 'Opera', 'Cake', 15.95);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('25-STR-9', 'Strawberry', 'Cake', 11.95);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('26-8x10', 'Truffle', 'Cake', 15.95);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('45-CH', 'Chocolate', 'Eclair', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('45-CO', 'Coffee', 'Eclair', 3.5);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('45-VA', 'Vanilla', 'Eclair', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('46-11', 'Napoleon', 'Cake', 13.49);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-ALM-I', 'Almond', 'Tart', 3.75);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-APIE-10', 'Apple', 'Pie', 5.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-APP-11', 'Apple', 'Tart', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-APR-PF', 'Apricot', 'Tart', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-BER-11', 'Berry', 'Tart', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-BLK-PF', 'Blackberry', 'Tart', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-BLU-11', 'Blueberry', 'Tart', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-CH-PF', 'Chocolate', 'Tart', 3.75);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-CHR-11', 'Cherry', 'Tart', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-LEM-11', 'Lemon', 'Tart', 3.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('90-PEC-11', 'Pecan', 'Tart', 3.75);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-GA', 'Ganache', 'Cookie', 1.15);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-GON', 'Gongolais', 'Cookie', 1.15);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-R', 'Raspberry', 'Cookie', 1.09);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-LEM', 'Lemon', 'Cookie', 0.79);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-M-CH-DZ', 'Chocolate', 'Meringue', 1.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-M-VA-SM-DZ', 'Vanilla', 'Meringue', 1.15);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-MAR', 'Marzipan', 'Cookie', 1.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-TU', 'Tuile', 'Cookie', 1.25);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('70-W', 'Walnut', 'Cookie', 0.79);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('50-ALM', 'Almond', 'Croissant', 1.45);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('50-APP', 'Apple', 'Croissant', 1.45);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('50-APR', 'Apricot', 'Croissant', 1.45);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('50-CHS', 'Cheese', 'Croissant', 1.75);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('50-CH', 'Chocolate', 'Croissant', 1.75);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('51-APR', 'Apricot', 'Danish', 1.15);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('51-APP', 'Apple', 'Danish', 1.15);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('51-ATW', 'Almond', 'Twist', 1.15);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('51-BC', 'Almond', 'Bear Claw', 1.95);
INSERT INTO goods (GId, Flavor, Food, Price) VALUES ('51-BLU', 'Blueberry', 'Danish', 1.15);

INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (18129, STR_TO_DATE('28-Oct-2007','%d-%M-%Y'), 15);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (51991, STR_TO_DATE('17-Oct-2007','%d-%M-%Y'), 14);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (83085, STR_TO_DATE('12-Oct-2007','%d-%M-%Y'), 7);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (70723, STR_TO_DATE('28-Oct-2007','%d-%M-%Y'), 20);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (13355, STR_TO_DATE('12-Oct-2007','%d-%M-%Y'), 7);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (52761, STR_TO_DATE('27-Oct-2007','%d-%M-%Y'), 8);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (99002, STR_TO_DATE('13-Oct-2007','%d-%M-%Y'), 20);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (58770, STR_TO_DATE('22-Oct-2007','%d-%M-%Y'), 18);
INSERT INTO receipts (RNumber, `SaleDate`, Customer) VALUES (84665, STR_TO_DATE('10-Oct-2007','%d-%M-%Y'), 6);

INSERT INTO items (Receipt, Ordinal, Item) VALUES (18129, 1, '70-TU');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (51991, 1, '90-APIE-10');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (51991, 2, '90-CH-PF');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (51991, 3, '90-APP-11');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (51991, 4, '26-8x10');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (83085, 1, '25-STR-9');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (83085, 2, '24-8x10');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (83085, 3, '90-APR-PF');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (83085, 4, '51-ATW');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (83085, 5, '26-8x10');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (70723, 1, '45-CO');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (13355, 1, '24-8x10');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (13355, 2, '70-LEM');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (13355, 3, '46-11');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (52761, 1, '90-ALM-I');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (52761, 2, '26-8x10');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (52761, 3, '50-CHS');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (52761, 4, '90-BLK-PF');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (52761, 5, '90-ALM-I');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (99002, 1, '50-CHS');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (99002, 2, '45-VA');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (58770, 1, '50-CHS');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (58770, 2, '46-11');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (58770, 3, '45-CH');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (58770, 4, '20-CA-7.5');
INSERT INTO items (Receipt, Ordinal, Item) VALUES (84665, 1, '90-BER-11');
