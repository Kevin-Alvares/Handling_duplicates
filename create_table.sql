CREATE TABLE pirate_crew (
    crew_id INT,
    crew_name VARCHAR(50),
    member_name VARCHAR(50)
);

CREATE TABLE world_government(
    row_id SERIAL,
    organisation_name VARCHAR(50),
    member_name VARCHAR(50)
);

INSERT INTO pirate_crew (crew_id, crew_name, member_name) VALUES
(1, 'Straw Hat Pirates', 'Luffy'),
(1, 'Straw Hat Pirates', 'Zoro'),
(1, 'Straw Hat Pirates', 'Usopp'),
(1, 'Straw Hat Pirates', 'SogeKing'),
(2, 'Blackbeard Pirates', 'Blackbeard'),
(2, 'Blackbeard Pirates', 'Shiryu'),
(2, 'Blackbeard Pirates', 'Laffitte'),
(3, 'Heart Pirates', 'Law'),
(3, 'Heart Pirates', 'Bepo'),
(3, 'Heart Pirates', 'Shachi'),
(1, 'Straw Hat Pirates', 'Luffy'),
(2, 'Blackbeard Pirates', 'Blackbeard'),
(3, 'Heart Pirates', 'Law'),
(4,'Red Hair Pirates','Shanks'),
(5,'Whitebeard Pirates','Marco');

INSERT INTO world_government (row_id, organization_name, member_name) VALUES
(1, 'Marines', 'Akainu'),
(2, 'Marines', 'Kizaru'),
(3, 'Marines', 'Fujitora'),
(4, 'Cipher Pol', 'Rob Lucci'),
(5, 'Cipher Pol', 'Kaku'),
(6, 'Gorosei', 'Saturn'),
(7, 'Gorosei', 'Mars'),
(8, 'Gorosei', 'Warcury'),
(9, 'Gods Knights', 'Garling'),
(10, 'Supreme Ruler', 'IMU');
