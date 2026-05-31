CREATE TABLE IF NOT EXISTS relationship_languages (
    code TEXT PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO relationship_languages (code,name) VALUES
('te','Telugu'),
('ta','Tamil'),
('kn','Kannada'),
('ml','Malayalam'),
('hi','Hindi'),
('pa','Punjabi'),
('mr','Marathi')

ON CONFLICT DO NOTHING;
