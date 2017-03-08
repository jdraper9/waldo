### Waldo

Simple game to play while waiting for BART.

>
	This is a work in progress. Eventually I want to use Firebase as backend and React Native as frontend. 
	This repo is just a proof of concept on Rails

https://github.com/jnbt/countdown
http://api.bart.gov/api/etd.aspx
	-- [MW9S-E7SL-26DU-VV8V] // shhh...

** Thoughts **

* When creating game, give it a 'game ends' time, which is Time.now + however many minutes until train. Other players then reference that time to see if game is over. Only games that are active will be available.

