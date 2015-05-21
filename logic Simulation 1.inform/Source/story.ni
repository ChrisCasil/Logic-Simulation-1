"Logic Simulation 1" by Chris Casil

Chapter 1 - Setup

Section 1 - Opening Text

When play begins:
	say "This is the first of many Logic Simulations you need to pass in order to move up the Military ranks. You are initially supplied with 50 health, but each turn removes 1 health point. Escape the pit and be wary of Dennis."

Section 2 - Health
	
Every turn:
	decrease the present health of the player by 1;

A player has a number called present health.
The present health of the player is 50.
Every turn:
	if the present health of the player is at most -1, 
		end the story saying "Health is below 0. You have failed the Simulation";
		
Every turn:
	if the present health of the player is at most 10, 
		say "You have [present health of the player] health. Time to smartly evaluate your next moves." 

Check examining the player :
	say "You [status of the player]. (Health: [the present health of the player])[line break]" instead.

To say status of the player:
	let x be the present health of the player;
	if x is at least 50:
		say "are in perfect health";
	otherwise if x is at most 5:
		say "are near death";
	otherwise if x is at most 10:
		say "are in serious condition";
	otherwise if x is at most 15:
		say "have taken quite a beating";
	otherwise if x is at most 25:
		say "have definately been better, but you could be worse";
	otherwise if x is at most 35:
		say "are a little beaten up";
	otherwise if x is at most 40:
		say "can almost hide the fact that you have been in a fight";
	otherwise if x is at most 45:
		say "have some scrapes and bruises, but you have looked worse";
	otherwise:
		say "are a little banged up, but still good-looking".
		
Dennis has a number called monster health.
The monster health of Dennis is 10.

Every Turn:
	if monster health of dennis is 0:
		end the story saying "You escape the Pit. Logic Simulation 1 : SUCCESS."

Section 3 - Rules

Playing is an action applying to one carried thing.  
	Understand "play [something playable]" as playing.
A thing can be playable or unplayable. A thing is usually unplayable.

A man can be dormant or enraged. A man is usually dormant.
The dirt is a truth state that varies. the dirt is usually false.

A thing can be killable or unkillable. A thing is usually unkillable.
Men are killable.

Chapter 2 - Rooms

The Lobby is a room.  "There is a[if south door is locked] locked[otherwise] open[end if] door to the South and a[if north door is locked] locked[otherwise] open[end if] door to the North, and an opening to a room in the east.[if dennis is dormant] You hear snoring to the south.[end if]"

The North Room is a room. "This place resembles a bathroom." The North Room is north of the North Door.

The Basement is a room. The Basement is down from the Entrance.

The South Room is a room. "[if dennis is dormant] He's sleeping. [otherwise] Dennis is looking right at you. [end if]" .

The South Room is south of the South Door.

The Entrance is a room.  "There's a ladder that leads to a door on the ceiling.[if dirt is true] There's a dark hole that leads downwards.[end if]". The Entrance is east of the Lobby.

Chapter 2.5 - Doors

Instead of examining a locked Door, say "The door is nice, but it is locked. Don't you think you should look for a key?"

The description of a door is usually "[if open]It stands open[otherwise]It is closed[end if][if locked] and locked[otherwise] and unlocked[end if]."

The Front Door is up of the Entrance. It is a door. It is locked.

The South Door is north of the South Room and south of the Lobby. It is a door. It is lockable and locked.

The North Door is north of the Lobby and south of the North Room. It is a door. It is lockable and locked. 

Chapter 3 - Objects in Lobby

The Trumpet is in the Lobby. Understand "use trumpet" as playing. The trumpet is playable.
Carry out playing trumpet:
	say "[if dennis is dormant]Playing the trumpet wakes up Dennis.[end if]Dennis takes the trumpet and hits you over the head. You lose 5 health. ";
	if dennis is dormant:
		now Dennis is enraged;
	Decrease present health of the player by 5;
	say "(Health: [present health of the player])";
	now trumpet is nowhere.


The metal safe is nowhere. The metal safe is a thing.  the Knife is a thing. A Knife is inside the metal safe. The safe is closed, openable, lockable, and locked. The Silver Key unlocks the safe. 

The Letter is in the Lobby. The description of the Letter is "Dennis has the key."

Basket is a thing in the Lobby. It is an openable container. It is closed. A Sandwich is inside the basket. The Sandwich is edible

After eating sandwich:
	Increase present health of the player by 10;
	say "This is delicious. 10 health restored. (Health: [present health of the player])"

Chapter 4 - Objects in North Room

The Silver Key is nowhere. The description of Silver Key is "Unlocks the metal safe in the Lobby." 

The sink is in the North Room. The sink is scenery.

Water is a thing in the North Room. it is edible.  The description of water is "Seems to be drinkable.".
quenching is an action applying to nothing. Understand "drink water" as quenching.
carry out quenching:
	increase present health of player by 5;
	say "You quench your thirst. 5 health restored. (Health: [present health of the player])";
	remove water from play.
		
After eating water:
	increase present health of player by 5;
	say "You quench your thirst. 5 health restored. (Health: [present health of the player])".
	
Instead of taking mirror:
	say "You try to take the mirror, but you take a good hard look at yourself and put it back."

The Mirror is in the North Room. The description of Mirror is "Seeing what you become makes you want to break the mirror."
	Breaking mirror is an action applying to nothing. Understand "break mirror" as breaking mirror.
	Carry out breaking mirror:
		decrease present health of the player by 2;
		say "You get cut up from the glass shards. A silver key drops from the top of the Mirror. (Health: [present health of the player])";
		now the mirror is nowhere;
		move Silver Key to North Room;
		move metal safe to lobby.
		

Chapter 5 - Objects in South Room

Dennis is a Man in the South Room. The description of Dennis is "[if dennis is dormant] Let him sleep. [otherwise] Dennis is angry. [end if]"
	
Talking to dennis is an action applying to nothing. Understand "talk to dennis" as talking to dennis.
Carry out talking to dennis:
	if player is in south room:
		if dennis is dormant:
			say " you wake him up.";
			now dennis is enraged;
		otherwise:
			decrease present health of the player by 5;
			say "Dennis swings at you. (Health: [present health of the player])"; 
	otherwise:
		say "Dennis is not near you."

Killing dennis is an action applying to nothing. Understand "kill dennis" as killing dennis.
		
Instead of eating dennis:
	say "Dennis gets aroused."

Chapter 6 - Objects in Entrance

The ladder is in the entrance. The ladder is scenery.
The Welcome Mat is in the Entrance. The description of the welcome mat is "This seems out of place."
After taking or pushing or pulling the welcome mat for the first time:
	say "Moving the Welcome Mat reveals a hole.";
	now dirt is true.
	
Chapter 7 - Objects in Basement

The wall is in the Basement. The description of wall is "It seems like you can open this part of the wall." The wall is a thing.  the Room Key is a thing. A Room Key is inside the wall. The wall is closed,  and openable. The wall is undescribed.

The Room Key unlocks the North Door and South Door.  The description of room key is "Unlocks the North and South Room doors"

Calvin is a Man in the wall.  Calvin is not portable. The description of Calvin is "An elfish man who has seen better days."

Killing Calvin is an action applying to nothing. Understand "kill calvin" as killing calvin.

After killing calvin:
	if player is in Basement:
		say "He curses you and disappears.  You lose 5 health. (Health: [present health of the player])";
		Decrease present health of the player by 5;
		now Calvin is nowhere;
	otherwise:
		say " You don't see him."
	
Talking to Calvin is an action applying to nothing. Understand "talk to Calvin" as talking to Calvin. 
	Carry out talking to Calvin:
		Increase the present health of the player by 10;
		say "Dennis holds the key to the way out of here, but he is strong. you may stand a chance if you find his Knife that is stored in some kind of container. Here's a farewell gift. Calvin mutters a chant under his breath. You gain 10 health. Calvin disappears. (Health: [present health of the player])";
		now calvin is nowhere.
	
Michael is a Man in the Basement.  Michael is not portable. The description of Michael is "He is missing an arm and covered in blood."

Killing Michael is an action applying to nothing. Understand "kill michael" as killing michael.

Instead of killing Michael:
	if player is in Basement:
		say "You notice his missing arm and feel sorry for him." instead;
	Otherwise:
		say "Michael is not near you."
	
Talking to Michael is an action applying to nothing. Understand "talk to Michael" as talking to Michael.
	Carry out talking to Michael:
		say "Dennis hides the key to the doors inside one of the walls of the Basement."
		
Chapter 8 - Killing Dennis

Killing it with is an action applying to two things.

Check killing something with something:
	If the player is not carrying a knife:
		say "You don't have a knife!" instead;
	If the second noun is not the knife:
		say "You won't win!" instead;
	If the noun is the knife:
		say "You can't kill a knife." instead;
	If the noun is the player:
		say "Suicide is not the answer." instead;
	Otherwise:
		If the noun is killable:
			Decrease present health of the player by 10;
			Decrease monster health of Dennis by 5;
			say "You exchange blows with Dennis. You lose 10 health. [if monster health of dennis is 5] One more swing should end him [end if] (Health: [present health of the player])".
			
Carry out killing Dennis:
	if player is in South Room:
		if player is not carrying knife:	
			say "You lunge at him, but he takes no damage.";
			if dennis is dormant:
				say "He wakes up and is now enraged.";
				now dennis is enraged;
			otherwise:
				Decrease present health of the player by 10;
				say "Dennis slams you to a wall. You lose 10 health. (Health: [present health of the player]).";
		otherwise:
			if dennis is dormant:
				Decrease monster health of Dennis by 5;
				say "You lunge at Dennis and strike him with your knife. He wakes up and is now enraged. [if monster health of dennis is 5] One more swing should end him [end if]";
				now dennis is enraged;
			otherwise:
				Decrease present health of the player by 10;
				Decrease monster health of Dennis by 5;
				say "You exchange blows with Dennis. You lose 10 health. [if monster health of dennis is 5] One more swing should end him [end if] (Health: [present health of the player])";
	otherwise:
		say "Dennis is not near you".
			
Definition: a thing is notKnife if it is not the knife.

Understand "kill [something notKnife] with [knife]" as killing it with.