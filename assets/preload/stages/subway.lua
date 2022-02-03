function onCreate()
	-- background shit
	makeLuaSprite('subway', 'station/subway', -550, -500);
	scaleObject('subway', 1.1, 1.1);
	
	makeAnimatedLuaSprite('cameos','station/pcameos',-550,-500)addAnimationByPrefix('cameos','dance','bop',24,true)
    objectPlayAnimation('cameos','dance',false)
    scaleObject('cameos', 1.1, 1.1);
    
    makeAnimatedLuaSprite('lights','station/lightsSheet',-550,-500)addAnimationByPrefix('lights','dance','Lights',24,true)
    objectPlayAnimation('lights','dance',false)
    scaleObject('lights', 1.1, 1.1);
    
    makeAnimatedLuaSprite('glows','station/glowsSheet',-550,-500)addAnimationByPrefix('glows','dance','Glows',24,true)
    objectPlayAnimation('glows','dance',false)
    scaleObject('glows', 1.1, 1.1);

	addLuaSprite('subway', false);
	addLuaSprite('cameos', false);
	addLuaSprite('lights', false);
	addLuaSprite('glows', false);
	
end
	
function onStepHit()
	if curStep == 444 then
		triggerEvent('Change Character', 'bf', 'bfbutgay');

		triggerEvent('Change Character', 'gf', 'nogf');

		triggerEvent('Change Character', 'dad', 'picobutgay');

		setProperty('subway.visible', false);
		
		setProperty('subwaygay.antialiasing', true);

		makeLuaSprite('subwaygay', 'station/subway but gay', -550, -500);
		scaleObject('subwaygay', 1.1, 1.1);

		addLuaSprite('subwaygay', false);
	
	end
	if curStep == 705 then
		triggerEvent('Change Character', 'bf', 'bf');

		triggerEvent('Change Character', 'gf', 'gf');

		triggerEvent('Change Character', 'dad', 'pico');

		setProperty('subwaygay.visible', false);

		setProperty('subway.visible', true);

    end
end