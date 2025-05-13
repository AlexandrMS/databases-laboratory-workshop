USE University;
CREATE TABLE Discuplinu (
	Kod_Discuplinu INT NOT NULL primary key, 
	name_Discuplinun char(30) NULL, 
	kol_chasov int NULL
);

EXEC sp_addrole 'DEKAN'
EXEC sp_addrole 'STUDENT'

GRANT DELETE,INSERT,UPDATE,SELECT ON Discuplinu TO
DEKAN
GRANT EXECUTE TO DEKAN

GRANT SELECT ON Discuplinu TO STUDENT 

EXEC sp_addlogin 'Ivanov_Dek','Ivanov', 'University' use University 
EXEC sp_adduser 'Ivanov_Dek','Ivanov_Dek'
EXEC sp_addrolemember 'DEKAN', 'Ivanov_Dek'

EXEC sp_addlogin 'Petrov_Stud','Petrov', 'University' use University 
EXEC sp_adduser 'Petrov_Stud','Petrov_Stud'
EXEC sp_addrolemember 'STUDENT', 'Petrov_Stud'