
"K-TERM" by "Kyvon".
[Game Start Flavor Text]
When play begins:
	say "October 18th, 1987. 11:57 p.m.  Osaka, Japan.

 You are sitting at a bus stop in a quiet spot in the city, a few blocks away from your school.  It is raining outside.
 The west end of the bus stop opens up into the street. 

 The rain patters softly onto the glass roof of the bus stop.  From inside, the rest of the world is eerily quiet, except
 for the occasional car, or fast paced clack of shoes hitting the wet ground, whose owner is desperately trying to escape
 getting soaked, no doubt.  You look down at your cheap Kasseo watch, and press the illumination button.  The bus should
 be here any minute.

 You haven't yet looked at your term paper grade yet, and at an attempt to pass the time before the bus arrives, you open
 the manilla folder that Dr. Yakamura gave you before you left class.  As you pull out the contents, you see a copy of your 
 term paper, marked with a red 'D-' staring back at you.  Fuck! When did you think being an exchange student in Japan was
 a good idea?  The classes are harder, the professors more strict, and you just barely speak enough Japanese to get by.
 But it sure does look good on your resume...

 You shove the paper back into the folder, and tuck it back into your armpit.  As you do so, you hear the sound of someone 
 running closer to the bus stop.  As it gets closer, you can make out the silhouette of a man running across the street 
 towards you, covering his head with an overstuffed briefcase.  He finally makes it into the glass structure, resting his 
 hands on his knees and panting. He is wearing a suit, but it looks almost pathetic on his thin body. Thick black-framed
 glasses rest crooked on his face, which is peppered with acne scars.  He looks to be in his 40s, but his features make
 him appear to be more suited as a boy who just entered puberty. 
 
 The man catches his breath quickly, and nods to acknowledge your presence.  He sits on the bench beside you, and attempts
 to wipe his rain-covered classes with the wrists of his suit jacket.  He looks at you quite quickly after only managing
 to make streak marks on his frames.

 'Hey, you got a light?'"




[Game-Wide Conditions & Rules]
Use brief room descriptions.


[Rooms/Descriptions]
The Bus-Stop is a room.
The description of the Bus-Stop is "The bus stop is merely a glass box sitting on the side of the road.  In the middle of
the structure sit two benches, so only about 4 people can comfortably sit at a time.  There's also a trash can, which is
overflowed with tissues and empty cigarette packs."

The stranger is here.


The Street is west of the Bus-Stop.
The description of the Street is "The street is barren, except for the occasional car.  You can smell the wet pavement,
which is particulary soothing, given all you've been through today.  Glancing to the left and right, you can see lights
from various shops and businesses, all of which have long been closed for the day.  The bus stop is right behind you,
to the east."

The Bus is a room. "The bus is an old silver box."


[Player]
The player is carrying a backpack and a folder.  The player wears a watch.  The player wears a red sweatshirt.
The player wears black sneakers.  The player wears jeans.


[Player Items]

The description of the watch is "It's too dark outside to see the watch.  It has a light button for a reason, 
numbnuts."
A button is a kind of thing.
the watch button is a button.  It is part of the watch.


Instead of pushing the watch button:
say "The watch illuminates in a bluish glow.  The time is 11:59 p.m.  The bus should be here any minute now.";

A backpack is a container.  A lighter is in the backpack.  A pack of cigarettes is in the backpack.  A pack of 
cigarettes is a container.  
A pen is in the backpack.  

A textbook is in the backpack.  The description of the textbook is "The front of the textbook reads: Efficient Computing:
101 Ways to Improve Yourself and the World with Technology. BORING!"

A page is a kind of thing.
page 69 is a page.  It is part of the textbook. 
The description of page 69 is "You dirty bastard!"


[NPCs]
The stranger is a person.

A cigarette is a kind of thing.  The stranger's cigarette is a cigarette.
The stranger's cigarette is in the stranger's mouth.

Instead of giving the lighter to stranger:
say "The man takes the lighter with a slight smile.  'Thanks friend.' You watch as he takes a long drag from his cigarette.
He hands it back after exhaling.";


After asking The stranger about something:
	if the topic understood is a topic listed in the Table of The stranger Responses:
		say "[Response entry]";

instead of list-asking a person:
	if the noun is the stranger:
		let TS be the Table of The stranger Responses;
		list options from TS;
	otherwise:
		say "You can't ask any questions."






[Tables]

Table of The stranger Responses
Topic	Response	Index
"name"	"My name is Mitsui. Thanks for the light, by the way.                                                                                                 "	"name"
"mood"	"I'm alright I guess. Could have asked for better weather, though.                                                                            "	"mood"
"job"	"I'm a computer programmer at KOT; you know, the telecommunications company?                                                                     "	"job"
"briefcase"	"He looks down at the briefcase, and twirls his right index finger around the handle, flipping it over and back again. 'Just my work papers...boring, boring stuff.  I doubt you'd be able to understand it anyways.'                                              "	"briefcase"
	



To list options from (TS - a table name):
	let N be the number of rows in TS;
	if N is 0:
		say "There is nothing to ask about.";
	otherwise:
		say "You could ask about ";
		repeat with X running from 1 to N minus 1:
			say "[index in row X of TS][if N is greater than 2],[end if]";
		if N is greater than 1:
			say "or ";
		say "[index in row N of TS]."






[Actions]


list-asking is an action applying to one thing.
understand "ask [thing]" as list-asking.
understand "ask [thing] about" as list-asking.





 
[Ifs and Afters]
BusArrive is a truth state that varies.  BusArrive is false. [Makes bus arrive to the west]

After list-asking the stranger:
	if BusArrive is false:
		move the player to Bus, without printing a room description;
		now BusArrive is true;
		continue the action;
	say "Congrats.";






