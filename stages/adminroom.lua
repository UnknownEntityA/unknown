
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('n', 'admin', 0, -200);
	setScrollFactor('n', 1, 1);
	scaleObject('n', 3, 3)

	makeLuaSprite('chair', 'chair1', 1150, 350)
	setScrollFactor('chair', 1, 1)
	scaleObject('chair', 1.2, 1.2)

	makeLuaSprite('chair1', 'chair2', 1720, 350)
	setScrollFactor('chair1', 1, 1)
	scaleObject('chair1', 1.2, 1.2)
	
	makeLuaSprite('stagefront', '', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('n', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('chair', false)
	addLuaSprite('chair1', false)
end