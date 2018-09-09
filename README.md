Conway's Game of Life
======

Week 9 Challenge
----

This is my first implementation of Conway's Game of Life, completed during week 9 of the Makers bootcamp. In week 9 we focus on individual work with example tech test challenges.

I'm going to enjoy Game of Life as it is back to logic problem solving and has plenty of opportunity for refining and learning more about the overall structure of the language. I'm planning to construct it in Ruby but would also like to have a frontend representation of the animation that I could do in React??

The Game of Life Rules and Background
-----
Check out the [wikipedia page](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) for a delightful summary of the background to this artificial life automata.

The rules are as follows:

- The game evolves in turns, commonly known as 'ticks'.  
- All changes occur at the same time.  
- Any live cell with 2 or 3 live neighbours survives until next tick.  
- Any live cell with less than 2 live neighbours dies (underpopulation).  
- Any live cell with more than 3 live neighbours dies (overpopulation).  
- Any dead cell with exactly 3 neighbours becomes a live cell (reproduction).  

Write code that is capable of calculating each new generation, given a starter board. Although you don't have to build a visualisation tool to be able to see the evolution, it should be easy to extend the program to add on a web or command line ui.
