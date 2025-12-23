CREATE TABLE unique_matches(
    id INT AUTO_INCREMENT PRIMARY KEY,
    PlayerName VARCHAR(100) DEFAULT NULL,
    Born VARCHAR(100) DEFAULT NULL,
    Height VARCHAR(4) DEFAULT NULL,
    Hand VARCHAR(100) DEFAULT NULL,
    LinkPlayer VARCHAR(255) DEFAULT NULL,
    Tournament VARCHAR(100) DEFAULT NULL,
    Location VARCHAR(100) DEFAULT NULL,
    Date VARCHAR(50) DEFAULT NULL,
    Ground VARCHAR(50) DEFAULT NULL,
    Prize VARCHAR(50) DEFAULT NULL,
    GameRound VARCHAR(50) DEFAULT NULL,
    GameRank VARCHAR(4) DEFAULT NULL,
    Oponent VARCHAR(100) DEFAULT NULL,
    WL CHAR(1) DEFAULT NULL,
    Score VARCHAR(50) DEFAULT NULL
);

LOAD DATA INFILE '/var/lib/mysql-files/tab_unique_matches_collection.csv'
INTO TABLE unique_matches
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(PlayerName, Born, Height, Hand, LinkPlayer, Tournament, Location, Date, Ground, Prize, GameRound, GameRank, Oponent, WL, Score);

CREATE TABLE players(
    id INT AUTO_INCREMENT PRIMARY KEY,
    PlayerName VARCHAR(100) DEFAULT NULL,
    Born VARCHAR(100) DEFAULT NULL,
    Height VARCHAR(4) DEFAULT NULL,
    Hand VARCHAR(100) DEFAULT NULL,
    LinkPlayer VARCHAR(255) DEFAULT NULL
);

LOAD DATA INFILE '/var/lib/mysql-files/tab_players_collection.csv'
INTO TABLE players
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(PlayerName, Born, Height, Hand, LinkPlayer);

CREATE TABLE oponents(
    id INT AUTO_INCREMENT PRIMARY KEY,
    PlayerName VARCHAR(100) DEFAULT NULL
);

LOAD DATA INFILE '/var/lib/mysql-files/tab_oponents_collection.csv'
INTO TABLE oponents
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(PlayerName);

CREATE TABLE tournaments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    TournamentName VARCHAR(100) DEFAULT NULL,
    Date VARCHAR(50) DEFAULT NULL,
	Location VARCHAR(100) DEFAULT NULL,
    Ground VARCHAR(50) DEFAULT NULL,
    Prize VARCHAR(50) DEFAULT NULL
);

LOAD DATA INFILE '/var/lib/mysql-files/tab_tournaments_collection.csv'
INTO TABLE tournaments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(TournamentName, Date, Location, Ground, Prize);