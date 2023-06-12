
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('wheelieback', 'specimenbase', -600, -300);
	setScrollFactor('wheelieback', 1, 1);
	scaleObject('wheelieback', 3.5, 3.5)

	makeLuaSprite('unny', 'specimentable', -260, 0)
	setScrollFactor('unny', 1, 1)
	scaleObject('unny', 2.3, 2.3)

	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('wheelieback', false);
	addLuaSprite('unny', true)

end