--CREAREA DE TABELE PENTRU BAZA DE DATE
CREATE  TABLE CONSULTATIE (
   ID_CONSULTATIE  NUMBER NOT NULL,
   DATA  DATE NOT NULL,
   DETALII_CONSULTATIE  VARCHAR2(50),
   PRET 
   ID_MEDIC
            NUMBER NOT NULL,
         NUMBER NOT NULL,
   ID_PACIENT 
      NUMBER NOT NULL,
   constraint  CONSULTATIE_PK primary key (ID_CONSULTATIE)
 )

 CREATE TABLE  PACIENT 
   (
   
 ID NUMBER NOT NULL ENABLE, 
NUME VARCHAR2(50) NOT NULL ENABLE, 
PRENUME VARCHAR2(50) NOT NULL ENABLE, 
CNP NUMBER NOT NULL ENABLE, 
DATA_NASTERE DATE NOT NULL ENABLE, 
LOC_NASTERE VARCHAR2(50) NOT NULL ENABLE, 
TELEFON VARCHAR2(20) NOT NULL ENABLE, 
STRADA VARCHAR2(50) NOT NULL ENABLE, 
NUMAR VARCHAR2(4) NOT NULL ENABLE, 
BLOC VARCHAR2(4), 
APARTAMENT NUMBER, 
LOCALITATE VARCHAR2(50) NOT NULL ENABLE, 
CODPOSTAL VARCHAR2(6), 
 CONSTRAINT PACIENT_PK PRIMARY KEY ("ID") ENABL)


 CREATE TABLE  MEDIC 
  (
  
 ID NUMBER NOT NULL ENABLE, 
NUME VARCHAR2(50) NOT NULL ENABLE, 
PRENUME VARCHAR2(50) NOT NULL ENABLE, 
TELEFON VARCHAR2(20) NOT NULL ENABLE, 
           EMAIL VARCHAR2(50) NOT NULL ENABLE, 
STRADA VARCHAR2(50) NOT NULL ENABLE, 
NUMAR VARCHAR2(4) NOT NULL ENABLE, 
BLOC NUMBER, 
APARTAMENT VARCHAR2(4), 
LOCALITATE VARCHAR2(50) NOT NULL ENABLE, 
CODPOSTAL VARCHAR2(6),  
SPECIALITATE VARCHAR2(50) NOT NULL ENABLE, 
     CONSTRAINT MEDIC_PK PRIMARY KEY (ID) ENABLE)

 CREATE table RETETA (
    NUMAR
               NUMBER NOT NULL,
    ID_CONSULTATIE
          NUMBER NOT NULL,
    ID_MEDIC NUMBER NOT NULL,
    DATA
               DA
 TE NOT NULL,
     CONSTRAINT RETETA_PK primary key (NUMAR)
 )

 CREATE table MEDICAMENT (
    COD
            NUMBER NOT NULL,
    SUBSTANTA_ATIVA VARCHAR2(50) NOT NULL,
    DENUMIRE       
    INDICATII       
VARCHAR2(50) NOT NULL,
 VARCHAR2(50) NOT NULL,
    CONTRAINDICATII VARCHAR2(50) NOT NULL,
    REACTII_ADVERSE VARCHAR2(50) NOT NULL,
     constraint  MEDICAMENT_PK primary key (COD)
 )

 CREATE table ITEM_RETETA (
    ID_RETETA     NUMBER NOT NULL,
    ID_MEDICAMENT NUMBER NOT NULL,
    DOZAJ         
VARCHAR2(50) NOT NULL,
    CANTITATE        
)
 VARCHAR2(50) NOT NULL

--ADAUGARE DATE IN TABELE 

INSERT INTO MEDIC 
VALUES(1,'Vasilici ','Andreea','0787564806','vasiliciandreea@gmail.com','Bd.Regiei','17B','','','Bucur
 esti','165443','cardiologie');
 INSERT INTO MEDIC VALUES (2,'Vasilici','Adrian','0722337729','adrian@yahoo.com','Bd. Sf.
 Ana','31C','','','Targoviste','165443', 'gastroenterologie');
 INSERT INTO MEDIC VALUES 
(3,'Vasilici','Cati','0721234457','cati@yahoo.com','Bd. 
Expozitiei','19A','','','Pitesti','165443', 'endocrinologie');
 INSERT INTO MEDIC 
VALUES(4,'Potop','Tiberiu','0724567900','tiberiu@yahoo.com','Bd.Carol','12A','','','Bucuresti','65
 4754','Oftalmologie');
 INSERT INTO MEDIC VALUES(5,'Marica','Mihai','0745645675','marica@gmail.com','Calea 
Mosilor','260','','','Bucuresti','546897','Ginecologie');
 INSERT INTO MEDIC 
VALUES(6,'Moglan','Andrei','0764536748','andrei@yahoo.com,','Bd.Bisericii','13B','','','Bucurest
 i','342678','Psihiatrie?');
 INSERT INTO MEDIC VALUES(7,'Vlad','Madalina','0769123362','vlad@gmail.com','strada 
Baraganu','216','','','Bucuresti','543765','Pediatrie');
 INSERT INTO MEDIC VALUES(8,'Titere','Mihai','0723654675','mihai@yahoo.com','strada 
Elizeu','15','','','Bucuresti','987786','Stomatologie');
 INSERT INTO MEDIC 
VALUES(9,'Holea','Razvan','0723145734','holea@gmail.com','Bd.Republicii','132','','','Bucuresti'
 ,'674563','Neurologie');
 INSERT INTO MEDIC 
VALUES(10,'Drilea','Cosmin','0786759875','cosmin@yahoo.com','Bd.Rosiorilor','365','','','Iasi','2
 35645','Hermatologie');
 
INSERT INTO MEDIC 
VALUES(4, 'Potop', 'Tiberiu', '0724567900', 'tiberiu@yahoo.com', 'Bd.Carol', '12A', '', '', 'Bucuresti', '65475', 'Oftalmologie');

INSERT INTO MEDIC 
VALUES(10, 'Drilea', 'Cosmin', '0786759875', 'cosmin@yahoo.com', 'Bd.Rosiorilor', '365', '', '', 'Iasi', '23564', 'Hematologie');

--PACIENT
 INSERT INTO PACIENT VALUES(1, 'Popa', 'Andrei', 1890214134132, TO_DATE('1977-05-18', 'YYYY-MM-DD'), 'Bucuresti', '0731334455', 'Bd. Regiei', '57B', '', '', 'Bucuresti', '165443');
INSERT INTO PACIENT VALUES(2, 'Daniel', 'Andrei', 189021417732, TO_DATE('1979-05-14', 'YYYY-MM-DD'), 'Bucuresti', '0742337455', 'Bd. Dacia', '77', '', '', 'Bucuresti', '161443');
INSERT INTO PACIENT VALUES(3, 'Lungu', 'Dumitru', 1890214334132, TO_DATE('1978-05-12', 'YYYY-MM-DD'), 'Bucuresti', '0731334455', 'Bd. Uverturii', '17B', '', '', 'Bucuresti', '165443');
INSERT INTO PACIENT VALUES(4, 'Iordache', 'Robert', 1890214134132, TO_DATE('1997-05-02', 'YYYY-MM-DD'), 'Bucuresti', '0731334455', 'Bd. Iuliu Maniu', '17B', '', '', 'Bucuresti', '165443');
INSERT INTO PACIENT VALUES(5, 'Florea', 'Mihai', 1890214134132, TO_DATE('1927-05-22', 'YYYY-MM-DD'), 'Bucuresti', '0731334455', 'Bd. Regiei', '17B', '', '', 'Bucuresti', '165443');
INSERT INTO PACIENT VALUES(6, 'Dumitru', 'Mihai', 1660214134131, TO_DATE('1999-01-21', 'YYYY-MM-DD'), 'Bucuresti', '0731334455', 'Bd. Expozitiei', '17B', '', '', 'Bucuresti', '165443');


INSERT INTO PACIENT VALUES(7, 'Straton', 'Ona', 2983456784785, TO_DATE('1999-06-23', 'YYYY-MM-DD'), 'Bucuresti', '0765745857', 'Splaiul Independentei', '18C', '', '', 'Bucuresti', '154367');
INSERT INTO PACIENT VALUES(8, 'Cherciu', 'Romeo', 1921234546754, TO_DATE('1992-08-13', 'YYYY-MM-DD'), 'Bucuresti', '0786754756', 'Bd.Maniu', '134', '', '', 'Bucuresti', '132543');
INSERT INTO PACIENT VALUES(9, 'Vlad', 'Alexandru', 1934567875424, TO_DATE('1997-03-25', 'YYYY-MM-DD'), 'Bucuresti', '0765478765', 'Bd. Republicii', '187', '', '', 'Bucuresti', '342125');
INSERT INTO PACIENT VALUES(10, 'Mocanu', 'Raluca', 2981130394459, TO_DATE('1998-11-30', 'YYYY-MM-DD'), 'Bucuresti', '0787564806', 'Bd. Dacia', '12B', '', '', 'Bucuresti', '234765');

SELECT * FROM NLS_SESSION_PARAMETERS WHERE PARAMETER = 'NLS_DATE_LANGUAGE';
ALTER SESSION SET NLS_DATE_LANGUAGE = 'AMERICAN';
INSERT INTO CONSULTATIE VALUES(1, TO_DATE('13-Jun-2017', 'DD-Mon-YYYY'), 'consultatie cu aparatul Doppler', 100, 2, 1);
INSERT INTO CONSULTATIE VALUES(2, TO_DATE('12-May-2016', 'DD-Mon-YYYY'), 'consultatie obisnuita', 225, 3, 3);
INSERT INTO CONSULTATIE VALUES(3, TO_DATE('14-May-2011', 'DD-Mon-YYYY'), 'Semne meningeale, anamneza', 50, 1, 5);
INSERT INTO CONSULTATIE VALUES(4, TO_DATE('6-Jan-2018', 'DD-Mon-YYYY'), 'Doppler-Sonografie extra- și transcranială', 200, 3, 6);
INSERT INTO CONSULTATIE VALUES(5, TO_DATE('12-Jun-2017', 'DD-Mon-YYYY'), 'Control oftamologic', 70, 4, 4);

INSERT INTO CONSULTATIE VALUES(6, '22-sept-2015', ' Tomografie computerizată', 50, 2, 
2);
 INSERT INTO CONSULTATIE VALUES (7,'25-jan-2018','Control ginecologic',100,5,7);
 INSERT INTO CONSULTATIE VALUES (8,'13-Mar-2016','Control stomatologic',50,8,8);
 INSERT INTO CONSULTATIE VALUES (9,'19-Aug-2018','Consult Psihiatrie',120,6,9);
 INSERT INTO CONSULTATIE VALUES (10,'30-Nov-2017','Consultatie + 2 proceduri 
Dermapen',300,10,10);

--RETETA
 insert into RETETA VALUES(100,1,1,'13-JUN-2017');
 insert into RETETA VALUES(101,2,1,'12-MAY-2016');
 insert into RETETA VALUES(102,3,1,'14-MAY-2017');
 insert into RETETA VALUES(103,4,2,'6-JAN-2019');
 insert into RETETA VALUES(104,5,4,'18-Aug-2018');
 insert into RETETA VALUES(105,6,3,'02-Mar-2017');
 insert into RETETA VALUES(106,7,5,'04-Jan-2019');
 insert into RETETA VALUES(107,8,9,'18-Mar-2017');
 insert into RETETA VALUES(108,9,7,'16-Jun-2018');
 insert into RETETA VALUES(109,10,6,'28-Sep-2016');

--MEDICAMENT
  INSERT INTO MEDICAMENT VALUES(10,'Carbamazepină','Cebrium','-','bloc 
atrioventricular','-');
 INSERT INTO MEDICAMENT VALUES(9,'Cloramfenicol','Cervugid','-',' insuficienţă 
hepatică','-');

 INSERT INTO MEDICAMENT VALUES(8,'Polipragmazia','Cipralex','-','-','-');
 INSERT INTO MEDICAMENT VALUES(7,'Candidoza','Medacter','-','Hipersensibilitate','-');
 INSERT INTO MEDICAMENT VALUES(6,'Betametazonă','Betabioptal','-','Hipertensiune 
intraoculară','-');
 INSERT INTO MEDICAMENT VALUES(5,'Interferon ','Betaseron','-','-','-');
 INSERT INTO MEDICAMENT VALUES(4,'-','Copaxone','-','-','-');
 INSERT INTO MEDICAMENT VALUES(3,'- ', 'Avonex','-','-','-');
 INSERT INTO MEDICAMENT VALUES(2,'- ', 'Tanakan','-','-','-');
 INSERT INTO MEDICAMENT VALUES(1,'- ', 'Rivotril','-','-','-');

--IDEM_RETETA
 insert into item_reteta values(100,1,'2 pastile/zi','2 cutii');
 insert into item_reteta values(101,2,'3 pastile/zi','1 cutie');
 insert into item_reteta values(102,3,'2 pastile/zi','2 cutii');
 insert into item_reteta values(103,4,'1 pastila/zi','1 flacon');

 insert into item_reteta values(104,5,'2 pastile/zi','2 cutii');
 insert into item_reteta values(105,6,'1 capsula/zi','1 cutie');
 insert into item_reteta values(106,7,'2 ori/zi','1 crema');
 insert into item_reteta values(107,8,'5 mg/zi','1 tub');
 insert into item_reteta values(108,9,'1 pastila/zi','2 flacoane');
 insert into item_reteta values(109,10,'1 cpasula/zi','1 cutie');







