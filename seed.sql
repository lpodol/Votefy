CREATE TABLE playlist
(id INTEGER PRIMARY KEY,
artist TEXT,
track TEXT,
votes INTEGER,
played INTEGER
);

INSERT INTO playlist (artist, track) VALUES ('ELO', 'Mr. Blue Sky');
