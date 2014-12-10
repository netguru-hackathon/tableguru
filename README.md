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

### Further optimization [implemented partially]

- take the best setup and apply a series of smaller changes (e.g. exchanging
  places of 2 people)
- after each change, calculate the quality of the setup - if it's better, keep
  it, otherwise only do so with a given probability
- repeat last step 1000 (or more) times
- return the final setup to the client as JSON

## User interface [not really implemented]

Done:
- log in & create a project
- upload display list of guests and display it on the right hand side
- allow to upload avatars for the guests to distinguish them more easily

To do:
- show server response graphically (i.e. mark the preferred guests locations on the room map)
- show guests as colorful circles with initials (if no image given)
- drag-and-drop creation of tables and chairs
- define groups of guests who like each other by default
- mobile guests vs fixed-location objects (e.g. the bride & groom)
- different interaction modifiers (walls, sitting at different tables etc.)

## License

Copyright (c) 2014, Netguru sp. z o.o.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
