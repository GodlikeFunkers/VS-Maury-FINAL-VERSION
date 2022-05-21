function onCreate()
	-- background shit
	makeLuaSprite('room', 'maurystages\\Room', -600, -100);
	scaleObject('room', 1.2, 1.2);

	makeAnimatedLuaSprite('kitten','maurystages\\lofi_cat', 70, 565);
	addAnimationByPrefix('kitten','dance','cat', 3, true);
	objectPlayAnimation('kitten', 'dance', true);
   	scaleObject('kitten', 1.0, 1.0);

	makeAnimatedLuaSprite('test','maurystages\\box', 200, 500);
	addAnimationByPrefix('test', 'dance', 'boxTEST', 4, true);
	objectPlayAnimation('test', 'dance', true);
    scaleObject('test', 2.0, 2.0);
		
	function onBeatHit()
		-- triggered 4 times per section
		objectPlayAnimation('kitten', 'dance', true);
		objectPlayAnimation('box', 'dance', true);
	end
	
	function onCountdownTick(counter)
		onBeatHit();
	end

	addLuaSprite('test', false);
	addLuaSprite('room', false);
	addLuaSprite('kitten', false);

	makeLuaText('scrap','Scrapped Song from Autistic Blast: Lost Bits', 200, 0, 655);
	setTextSize('scrap', 20);
	setTextAlignment('scrap', 'left');
	setObjectCamera('scrap', 'other');
	addLuaText('scrap');

end