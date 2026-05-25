# Vansha Identity Architecture

## Core Identity Principles

### Person-first, Account-second, Family-third
Vansha models humans independently from platform accounts.

A person may exist without ever signing up.
Examples:
- Grandparents
- Deceased ancestors
- Children
- Extended family members

## Core Entities

### Person
Represents a real human.

Fields:
- person_id
- given_name
- middle_name
- family_name
- display_name
- preferred_name
- aliases
- native_script_name
- gender
- date_of_birth
- deceased_flag
- birth_family_name
- current_family_name

### UserAccount
Authenticated platform identity.

Fields:
- user_id
- auth_provider
- email
- phone_optional
- linked_person_id

Principles:
- One account maps to one person
- One person may initially exist without an account

### FamilyGroup
Logical family grouping.

Examples:
- Natakam Clan
- Natakam Chennai Branch
- Hemanth Nuclear Family
- Wedding Event Group

Fields:
- family_group_id
- name
- slug
- group_type

Group Types:
- surname_based
- branch
- custom_family
- event_group

## Relationship Graph
Explicit relationship edges.

Examples:
- parent_of
- child_of
- sibling_of
- spouse_of
- guardian_of
- adopted_child_of

Surname is never used as relationship truth.

## Invitations
Invitation flow is person-linked, not account-first.

Flow:
- Create placeholder person if needed
- Generate invitation token
- Share via WhatsApp/email/SMS
- Invitee claims existing profile

## Duplicate Resolution
Potential duplicate matching via confidence scoring:
- name similarity
- date of birth
- phone
- email
- spouse linkage
- parent linkage

Duplicates require merge governance.

## Ownership & Governance
Roles:
- Self Owner
- Family Admin
- Contributor
- Viewer

## Privacy Visibility
Scopes:
- private
- family
- branch
- invite_only
- public_limited

## Architectural Rule
UserAccount != Person != FamilyGroup
