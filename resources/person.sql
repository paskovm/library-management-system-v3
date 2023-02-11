Person table
------------

CREATE TABLE lms.person (
    ID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE INDEX `ID_UNIQUE` (`ID` ASC)
);


insert into lms.person values (1, 'Emmaline', 'McNeilly', '4609 Lakewood Point', '+86 487 977 8210', 'emcneilly0@wordpress.com', 'UOIBTReU1L');
insert into lms.person values (2, 'Lorrin', 'Soloway', '9 Artisan Junction', '+62 293 138 1714', 'lsoloway1@cam.ac.uk', 'e9gIIOTBFcK');
insert into lms.person values (3, 'Catina', 'O''Hartnedy', '57944 Springview Point', '+7 395 618 1600', 'cohartnedy2@tuttocitta.it', 'sLxgrQAL91');
insert into lms.person values (4, 'Hallsy', 'Brims', '2497 Bunker Hill Court', '+92 701 773 2041', 'hbrims3@jugem.jp', 'F3WqEasVOH');
insert into lms.person values (5, 'Bob', 'Thaxter', '8918 Clove Plaza', '+86 397 759 6029', 'bthaxter4@slashdot.org', 'fbYRdXTGW');
insert into lms.person values (6, 'Jammal', 'Doulden', '47 Badeau Place', '+62 569 278 5206', 'jdoulden5@furl.net', 'rhBDE1Tly');
insert into lms.person values (7, 'Cassandry', 'Hawarden', '0572 High Crossing Crossing', '+7 697 291 6973', 'chawarden6@irs.gov', 'sfHIzr6b');
insert into lms.person values (8, 'Lane', 'Chad', '12719 Magdeline Place', '+502 868 273 2622', 'lchad7@oaic.gov.au', 'gQtgxaIsv');
insert into lms.person values (9, 'Brandise', 'Littlejohn', '84247 Oakridge Court', '+351 745 258 0679', 'blittlejohn8@gizmodo.com', 'RgicdejRI');
insert into lms.person values (10, 'Godfree', 'Licciardi', '7266 Norway Maple Street', '+86 431 792 3500', 'glicciardi9@a8.net', 'aPxZI4vPn');


Other tables
-------------
CREATE  TABLE `lms`.`staff` (
  `ID` INT NOT NULL ,
  `Salary` DOUBLE NOT NULL ,
  PRIMARY KEY (`ID`) ,
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC)
  );
  
  CREATE  TABLE `lms`.`librarian` (
  `ID` INT NOT NULL ,
  `OfficeNumber` INT NOT NULL ,
  PRIMARY KEY (`ID`) ,
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC)
  );
  
  CREATE  TABLE `lms`.`clerk` (
  `ID` INT NOT NULL ,
  `DeskNumber` INT NOT NULL ,
  PRIMARY KEY (`ID`) ,
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC)
  );
  
  CREATE TABLE `LMS`.`loan` (
	`Borrower` INT NOT NULL,
	`Book` INT NOT NULL,
	`Issuer` INT,
	`IssueDate` DATE NOT NULL,
	`Receiver` INT,
	`ReturnDate` DATE,
	`FinePaid` TINYINT DEFAULT FALSE
);

CREATE TABLE `LMS`.`holdrequest` (
	`Borrower` INT NOT NULL,
	`Book` INT NOT NULL,
	`RequestDate` DATE NOT NULL
);