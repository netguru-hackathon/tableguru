# TableGuru

An app to calculate the best places for your guests to sit at during a wedding
party, in an office, etc..

*NOTE: This project is not complete*

## General flow

- define room geometry (number and shape of tables, walls, etc)
- upload list of guests
- define relations (who likes/hates who)
- mark available places (chairs)
- ask server to optimize the setup (decide who sits where)

## Optimization algorithm

### Initial optimization

- generate 50 random starting setups
- calculate the quality of each one (equivalent of generating a potential energy
  landscape)
- choose the best setup

### [implemented partially] Further optimization

- take the best setup and apply a series of smaller changes (e.g. exchanging
  places of 2 people)
- after each change, calculate the quality of the setup - if it's better, keep
  it, otherwise only do so with a given probability
- repeat last step 1000 (or more) times
- return the final setup to the client as JSON

### [not really implemented] User interface

Done:
- log in & create a project
- upload display list of guests and display it on the right hand side
- allow to upload avatars for the guests to distinguish them more easily

To do:
- guests as colorful circles with initials (if no image given)
- drag-and-drop creation of tables and chairs
- define groups of guests who like each other by default
- mobile guests vs fixed-location objects (e.g. the bride & groom)
- different interaction modifiers (walls, sitting at different tables etc.)
