CREATE TABLE Kayttajat (
        id     				INT NOT NULL AUTO_INCREMENT,
        kayttajatunnus 		VARCHAR(50) NOT NULL,
        email         		VARCHAR(50) NOT NULL,
		etunimi	 			VARCHAR(50),
		sukunimi 			VARCHAR(50),
		salasana 			VARCHAR(700) NOT NULL,
		suola 				VARCHAR(50) NOT NULL,
        PRIMARY KEY (id)
) Engine=InnoDB AUTO_INCREMENT=0;

		
CREATE TABLE Tunnit (
	id 					INT NOT NULL AUTO_INCREMENT,
	pvm 				TIMESTAMP,
	tuntien_maara 		DECIMAL(5,2),
	kayttaja 			VARCHAR(50) NOT NULL,
	kommentti 			VARCHAR(200),
	PRIMARY KEY (id),
	FOREIGN KEY (kayttaja) REFERENCES Kayttajat(kayttajatunnus)
) Engine=InnoDB AUTO_INCREMENT=0;

