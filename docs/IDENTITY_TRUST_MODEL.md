# Vansha Identity Trust Model

## Core Principle
Identity is trust-based, not surname-based.

Never use surname as unique identity truth.

## Identity Layers
### Layer 1 — User Account Identity
Purpose:
Validate a reachable authenticated platform user.

MVP:
- Google sign in

Future:
- Apple sign in
- phone verification optional

Generated:
- user_id

## Layer 2 — Person Identity
Purpose:
Canonical human identity.

Required onboarding:
- full display name
- date of birth
- gender

Optional:
- birth family name
- current family name
- native language
- city
- country
- birth place
- native place
- phone

Generated:
- person_id

## Layer 3 — Trust Signals
Signals:
- verified auth identity
- invite lineage
- email
- phone
- DOB
- relationship path
- spouse linkage
- parent linkage

## Family Space Creation
Required:
- family space name

Generated:
- space_id

## Relative Creation
Required:
- relationship type
- display name

Recommended:
- DOB
- gender
- approximate age

Optional:
- email
- phone
- location
- photo

Relatives may exist without platform accounts.

## Claims Model
Claiming an existing person profile uses trust verification.

High confidence:
- invite token match
- verified email match

Medium confidence:
- phone + DOB partial match

Low confidence:
- name only

Low confidence claims require manual approval.

## Cross-Space Integration
A person may belong to multiple family spaces.

Spaces connect via canonical person identity, not surname.

## Security Principles
- no surname matching identity
- no phone-only identity
- no blind auto-claims
- permission-based ownership
- duplicate merge governance
