CREATE TABLE playlist
(id INTEGER PRIMARY KEY,
artist TEXT,
track TEXT,
track_ID INTEGER,
votes INTEGER DEFAULT 0,
played INTEGER DEFAULT 0
);
