CREATE TABLE IF NOT EXISTS relationship_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code TEXT UNIQUE NOT NULL,
    category TEXT NOT NULL
);

INSERT INTO relationship_types (code, category) VALUES

('father','core'),
('mother','core'),

('elder_brother','sibling'),
('younger_brother','sibling'),
('elder_sister','sibling'),
('younger_sister','sibling'),

('son','descendant'),
('daughter','descendant'),

('paternal_grandfather','grandparent'),
('paternal_grandmother','grandparent'),
('maternal_grandfather','grandparent'),
('maternal_grandmother','grandparent'),

('fathers_elder_brother','extended_family'),
('fathers_elder_brothers_wife','extended_family'),

('fathers_younger_brother','extended_family'),
('fathers_younger_brothers_wife','extended_family'),

('fathers_sister','extended_family'),
('fathers_sisters_husband','extended_family'),

('mothers_brother','extended_family'),
('mothers_brothers_wife','extended_family'),

('mothers_elder_sister','extended_family'),
('mothers_younger_sister','extended_family'),

('mothers_sisters_husband','extended_family'),

('brothers_son','descendant'),
('brothers_daughter','descendant'),

('sisters_son','descendant'),
('sisters_daughter','descendant'),

('father_in_law','in_law'),
('mother_in_law','in_law'),

('husbands_elder_brother','in_law'),
('husbands_younger_brother','in_law'),

('wifes_brother','in_law'),
('spouses_sister','in_law'),

('co_sister','affinal'),
('co_brother','affinal')

ON CONFLICT DO NOTHING;
