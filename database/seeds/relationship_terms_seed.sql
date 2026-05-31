CREATE TABLE IF NOT EXISTS relationship_terms (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    relationship_code TEXT NOT NULL,
    language_code TEXT NOT NULL,
    term TEXT NOT NULL
);

INSERT INTO relationship_terms
(relationship_code, language_code, term)
VALUES

('father','te','Nanna'),
('mother','te','Amma'),

('elder_brother','te','Annayya'),
('younger_brother','te','Thammudu'),

('elder_sister','te','Akkagaru'),
('younger_sister','te','Chellelu'),

('fathers_elder_brother','te','Peddananna'),
('fathers_younger_brother','te','Babai'),

('mothers_brother','te','Menamama'),

('father','hi','Pitaji'),
('mother','hi','Mataji'),

('elder_brother','hi','Bhaiya'),
('elder_sister','hi','Didi'),

('fathers_elder_brother','hi','Tau'),
('fathers_younger_brother','hi','Chacha'),

('mothers_brother','hi','Mama');

