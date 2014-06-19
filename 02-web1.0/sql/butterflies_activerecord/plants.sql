CREATE TABLE plants (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  image TEXT
);

ALTER TABLE butterflies ADD plant_id INTEGER;
