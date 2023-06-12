
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('BG2', 'space', -1800, -1500);
	setScrollFactor('BG2', 0.9, 0.9);
	scaleObject('BG2', 8, 8);


	makeLuaSprite('land', 'land asteroid', -1000, 300)
	setScrollFactor('land', 1, 1)
	scaleObject('land', 6.6, 6)

	makeLuaSprite('asteroidF', 'front asteroid', -2400, -400)
	setScrollFactor('asteroidF', 0.85, 0.85)
	scaleObject('asteroidF', 4, 4)

	makeLuaSprite('asteroidF2', 'front asteroid', 2000, -800)
	setScrollFactor('asteroidF2', 0.85, 0.85)
	scaleObject('asteroidF2', 4, 4)
	setProperty('asteroidF2.flipX', true)
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('BG2', false);
	addLuaSprite('land', false);
	addLuaSprite('asteroidF', true);
	addLuaSprite('asteroidF2', true)

	runTimer('correr', 1)
	runTimer('speen', 0.5)
end

function onTimerCompleted(t,l,ll)
    if t == 'correr' then
     setProperty('BG2.x', 3380)
     doTweenX('BG2','BG2', -4380, 1.0,'linear')
	 setProperty('asteroidF.x', 3380)
     doTweenX('asteroidF','asteroidF', -8380, 0.5,'linear')
	 setProperty('asteroidF2.x', 3380)
     doTweenX('asteroidF2','asteroidF2', -4380, 0.5,'linear')
             runTimer('correr',1.0)

     end
end