### Waldo!

https://github.com/jnbt/countdown
http://api.bart.gov/api/etd.aspx
	-- [MW9S-E7SL-26DU-VV8V] // shhh...

Pseudocode/Story:

User 1 arrives at Montg. Station, and decides to play Waldo (of course). User 1 logs in, and selects Montg. from drop-down list, then which train they're waiting for (since no game has started at that station). Since User 1 is first player at that station, he becomes Waldo and a new game is created. Waldo writes basic visual description of self, receives a random key (for later), and hopes not to get found (sees countdown until train arrives). User 2 arrives at same station. 2 selects Montg. from drop-down, and since there is already a game in session at that station, is added to the user list for that game. 2 sees a countdown until Waldo's train arrives, and if s/he discovers Waldo within that time, Waldo gives them the special key. User 2 wins, game ends. Otherwise, Waldo wins, and the game ends. 

** Thoughts **

* When creating game, give it a 'game ends' time, which is Time.now + however many minutes until train. Other players then reference that time to see if game is over. Only games that are active will be available.

>
	This is a work in progress. Eventually I want to use Firebase as backend and React Native as frontend. This repo is just a proof of concept on Rails
