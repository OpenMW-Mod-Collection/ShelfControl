# Shelf Control (OpenMW)

## 2.4

- Allowed reading books when sneaking
- Reading books while sneaking now counts the same as stealing them :)

## 2.3

- Allowed to read faction-owned books if the cell either has no faction members (or they are dead)

## 2.2

- Fleshed out messages for faction-owned books: they no longer mention any names and have more variety
- Added new racial messages for npc-owned books

## 2.1.1

### Fixes

- Fixed spell books from Tamriel Data not being actually whitelisted
- Fixed "Enable Logical Cell Whitelist" not affecting anything when disabled

## 2.1

### Features

- Added a setting to filter out spell books from scripted books list. Supports:
  - Vanilla
  - Tamriel Data
  - The Spell Tomes

## 2.0.4

### Fixes

- Fixed unrestrictive factions list actually restricting the book reading

## 2.0.3

### Fixes

- Fixed an error on interacting with faction-owned without a rank requirement

## 2.0.2

### Fixes

- Fixed not being able to read faction-owned books if player already had sufficient rank for it

## 2.0.1

### Fixes

- Fixed internal naming to reduce warnings in the log

## 2.0

### Features

- Fully rewritten codebase
- New and context-based messages by Hyacinth
- Added minimal disposition requirement to read owned books (80 by default)
- Added minimal disposition requirement to read buyable books (disabled by default)
- Books in libraries, temples and imperial cults are now free to read
- Book owner's aliveness and presence are now taken into account
- Option for mod to ignore books with scripts
- Option for mod to ignore scrolls, paper etc.

### Changes

- New branding to better fit the new scope of the mod
- Owned books are now unreadable by default

## 1.0

Initial release
