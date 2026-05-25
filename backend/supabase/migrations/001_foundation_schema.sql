-- Vansha Foundation Schema

create table person_profiles (
  id uuid primary key default gen_random_uuid(),
  legal_name text not null,
  display_name text,
  gender text,
  city text,
  state text,
  country text,
  native_place text,
  phone text,
  email text,
  created_at timestamptz default now()
);

create table relationship_metadata (
  id uuid primary key default gen_random_uuid(),
  person_id uuid references person_profiles(id) on delete cascade,
  relationship_type text not null,
  relationship_term text,
  relationship_meaning text,
  relationship_language text,
  relationship_region text,
  usage_scope text,
  ai_learning_consent boolean default false,
  confidence_level text,
  added_by text,
  visibility_scope text,
  created_at timestamptz default now()
);

create table relationship_lexicon (
  id uuid primary key default gen_random_uuid(),
  term text not null,
  meaning text not null,
  language text,
  state text,
  country text,
  usage_frequency integer default 0,
  community_verified boolean default false,
  created_at timestamptz default now()
);
