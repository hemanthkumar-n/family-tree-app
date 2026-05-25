# Vansha Platform

> Your family across generations.

Vansha is a privacy-aware living family relationship intelligence platform designed to help families understand connections, collaboratively build trusted family networks, preserve legacy, and evolve into a family-centered social and events ecosystem.

## What Vansha Is
Vansha is not a static family tree builder.

Vansha is a living relationship graph platform.

Core platform pillars:
- Relationship intelligence
- Collaborative family graph
- Privacy-first family governance
- Permission-aware graph exploration
- Family spaces architecture
- Invite and profile claim workflows
- Future events ecosystem
- Future social relationship layer
- Legacy preservation
- AI-ready intelligence foundation

## Core Architectural Concepts

### Person != UserAccount != FamilySpace
A real human can exist in Vansha without signing up.

Examples:
- grandparents
- children
- deceased ancestors
- extended relatives

Users claim person identities when they join.

### FamilySpace, not Tree-per-User
Vansha does not create isolated trees per user.

Instead, it creates collaborative FamilySpaces.

Examples:
- Natakam Clan
- Natakam Chennai Branch
- Ravi Nuclear Family
- Wedding Event Space

A person may belong to multiple spaces.

### Living Relationship Graph
Relationships are explicit graph connections.

Examples:
- parent_of
- sibling_of
- spouse_of
- guardian_of
- adopted_child_of

Surname is never identity truth.

### Permission-Aware Graph Exploration
Users can discover connected family branches while privacy remains protected.

Visibility model:
- Tier 1: minimal visible connected branch awareness
- Tier 2: approved branch access
- Tier 3: collaborative governance access

Deeper graph traversal requires explicit approval.

### Family Graph != Social Graph
Family relationships and trusted social contacts remain distinct.

Examples of social layer:
- family friends
- wedding guests
- trusted non-family contacts

## Problem Vansha Solves
Modern families face:
- disconnected generations
- fragmented WhatsApp groups
- scattered memories
- weak family relationship awareness
- poor collaborative ownership of family history
- privacy concerns around family data

Existing tools are mostly static genealogy viewers.

## Product Evolution Roadmap

### Phase 1 — Relationship Intelligence MVP
Build the core family graph platform.

Scope:
- authentication
- self-first onboarding
- person creation
- family space creation
- relationship graph
- invite workflows
- profile claims
- privacy controls
- branch access requests
- relationship intelligence lookup

Goal:
Create a trusted living family graph.

---

### Phase 2 — Collaborative Family Governance
Turn static ownership into collaborative maintenance.

Scope:
- shared editing
- family roles
- approval workflows
- duplicate merge governance
- moderation controls
- audit history

Goal:
Make family knowledge collaborative and trustworthy.

---

### Phase 3 — Discoverable Family Network
Expand family exploration safely.

Scope:
- branch visibility requests
- graph expansion workflows
- branch approvals
- engagement notifications
- discoverable relationship navigation

Goal:
Enable privacy-safe network growth.

---

### Phase 4 — Family Events Ecosystem
Extend beyond graph into family activity.

Scope:
- weddings
- birthdays
- memorials
- reunions
- invitations
- RSVP workflows
- guest participation

Goal:
Make Vansha active beyond genealogy.

---

### Phase 5 — Family Social Layer
Add trusted social interaction.

Scope:
- family feed
- celebrations
- updates
- reactions
- private circles
- trusted social contacts

Goal:
Create ongoing engagement.

---

### Phase 6 — Legacy Platform
Preserve generational knowledge.

Scope:
- stories
- memories
- photos
- documents
- timelines
- heritage vaults

Goal:
Preserve family legacy.

---

### Phase 7 — AI Family Intelligence
Intelligent family insights.

Scope:
- relationship explainer
- smart branch discovery
- event intelligence
- family storytelling
- family insights

Goal:
Transform Vansha into an intelligent family platform.

## Planned Repository Structure

```text
vansha-platform/
├── docs/
├── mobile_app/
├── backend/
├── shared/
└── infra/
```

## Technology Direction
Frontend:
- Flutter (mobile-first)

Backend:
- Supabase
- PostgreSQL

Future considerations:
- graph optimization layers
- AI service integrations

## Engineering Principles
- docs-first architecture
- privacy-first governance
- future-ready platform design
- MVP-focused implementation
- modular architecture
- semantic commit hygiene
- no hardcoded assumptions

## Current Status
Architecture definition in progress.
Product governance documentation active.
Database architecture freeze next.
