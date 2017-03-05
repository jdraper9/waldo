### Waldo!

Waldo is a simple game designed to encourage meeting strangers while waiting for BART. Growing up in the Bay Area, I've always appreciated public transit systems. However, when I started taking BART daily, it started to feel odd... a train full of riders in silence staring at their phones! Being somewhat shy, I tend not to strike up conversations with strangers. My goal with Waldo is to use technology to connect people locally. Ideally, a few players (one of them designated Waldo) would start or join a game at their station. Then, if a player finds the Waldo player, they hopefully might start up a conversation. It's like an icebreaker for people who don't know or plan to know each other. Or, if nothing else, it is a fun and silly game to play while waiting for a train. 

>
	This is a work in progress. Eventually I want to use Firebase as backend and React Native as frontend. 
	This repo is just a proof of concept on Rails

https://github.com/jnbt/countdown
http://api.bart.gov/api/etd.aspx
	-- [MW9S-E7SL-26DU-VV8V] // shhh...

** Thoughts **

* When creating game, give it a 'game ends' time, which is Time.now + however many minutes until train. Other players then reference that time to see if game is over. Only games that are active will be available.

