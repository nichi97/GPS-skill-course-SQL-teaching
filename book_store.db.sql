BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "books" (
	"title"	TEXT,
	"author"	TEXT,
	"ISBN13"	TEXT,
	"avg_rating"	REAL,
	"publisher"	TEXT
);
CREATE TABLE IF NOT EXISTS "customers" (
	"id"	INTEGER,
	"first"	TEXT,
	"last"	TEXT,
	"purchase_number"	INTEGER,
	"fav_book"	TEXT
);
CREATE TABLE IF NOT EXISTS "transactions" (
	"transaction_id"	INTEGER,
	"customer_id"	INTEGER,
	"ISBN"	TEXT
);
INSERT INTO "books" VALUES ('Beyond Good and Evil','Friedrich Nietzsche','9780679724650',3.99,'Vintage');
INSERT INTO "books" VALUES ('Sanshiro','Natsume Soseki','9781929280100',3.83,'Center for Japanese Studies/University of Michigan');
INSERT INTO "books" VALUES ('The World of Yesterday','Stefan Zweig','9780803252240',4.49,'University of Nebraska Press');
INSERT INTO "books" VALUES ('Chronicle of the Narvaez Expedition','Alvar Nunez Cabeza de Vaca','9780142437070',3.66,'Penguin Classics');
INSERT INTO "books" VALUES ('The Epic of Gilgamesh','Anonymous','9780141026282',3.7,'Penguin Books Limited');
INSERT INTO "books" VALUES ('Letter from an Unknown Woman and Other Stories','Stefan Zweig','9781906548933',4.23,'Pushkin Press');
INSERT INTO "books" VALUES ('Gorgias','Plato','9780140449044',3.96,'Penguin Classics');
INSERT INTO "books" VALUES ('Twelfth Night','William Shakespeare','9780743482776',3.98,'Simon Schuster');
INSERT INTO "books" VALUES ('Leviathan','Thomas Hobbes','9780140431957',3.71,'Penguin Books');
INSERT INTO "books" VALUES ('The Essays: A Selection','Michel de Montaigne','9780140446029',4.07,'Penguin Classics');
INSERT INTO "books" VALUES ('The Prince','Niccolo Machiavelli','9780140449150',3.82,'Penguin Group');
INSERT INTO "books" VALUES ('Second Treatise of Government','John Locke','9780915144860',3.77,'Hackett Publishing Company (Indianapolis, IN)');
INSERT INTO "books" VALUES ('Candide and Related Texts','Voltaire','9780872205468',3.81,'Hackett Publishing Company, Inc.');
INSERT INTO "customers" VALUES (11111,'Philip','Fry',2,'9780872205468');
INSERT INTO "customers" VALUES (11112,'Turanga','Leela',1,'9780141026282');
INSERT INTO "customers" VALUES (11113,'Hubert','Farnsworth',3,'9780140449150');
INSERT INTO "customers" VALUES (11114,'Amy','Wong',2,'9781929280100');
INSERT INTO "customers" VALUES (11115,'Hermes','Conrad',1,'9780142437070');
INSERT INTO "transactions" VALUES (1,11111,'9780872205468');
INSERT INTO "transactions" VALUES (2,11111,'9780140449044');
INSERT INTO "transactions" VALUES (3,11112,'9780141026282');
INSERT INTO "transactions" VALUES (4,11113,'9780140449150');
INSERT INTO "transactions" VALUES (5,11113,'9780872205468');
INSERT INTO "transactions" VALUES (6,11114,'9781929280100');
INSERT INTO "transactions" VALUES (7,11114,'9780743482776');
INSERT INTO "transactions" VALUES (8,11115,'9780142437070');
COMMIT;
