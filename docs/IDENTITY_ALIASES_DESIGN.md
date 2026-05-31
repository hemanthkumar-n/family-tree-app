# Vansha Identity Aliases (Known As)

## Purpose
Many families identify people using relationship names, nicknames, local names, or family-circle names rather than legal names.

Examples:
- Prasad Mama
- Bujji Tata
- Chinna Nanna
- Kiran Anna
- HK

## UX

### Identity Section
- Legal Name
- Display Name
- Preferred Name

### Known As (Optional)
Users can add one or more aliases.

Alias Types:
- Family Circle
- Nickname
- Local Community
- Professional
- School/College
- Custom

## Database

Table: person_aliases

Fields:
- id
- entity_id
- alias_name
- alias_type
- language
- created_by
- created_at

## Search
Searching by alias should return the linked person profile.

Example:
Search: Prasad Mama
Result: Natakam Malakonda Prasad

## Future AI
AI should be able to resolve:
"Who is Prasad Mama?"
into the underlying person entity and relationship graph.
