function onBeatHit()
	if curBeat == 96 then --96
		makeLuaSprite('blackTransition', nil, -800, -300);
		makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
		addLuaSprite('blackTransition', true);
		setProperty('camHUD.visible', true);
	end
	if curBeat == 112 then --112
		removeLuaSprite('blackTransition');
		makeLuaSprite('whiteTransition', nil, -800, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
		setProperty('health', 1);
	end
	if curBeat == 272 then
		setProperty('camHUD.visible', false);
		makeLuaText('p1','In the stars,', 200, 525, 600);
		setTextSize('p1', 20);
		setObjectCamera('p1', 'other');
		addLuaText('p1', true);
	end
	if curBeat == 275 then
		makeLuaText('p2','our time is written.', 200, 525, 600);
		setTextSize('p2', 20);
		setObjectCamera('p2', 'other');
		addLuaText('p2', true);
		removeLuaText('p1')
	end
	if curBeat == 279 then
		makeLuaText('p3','your final fate,', 200, 525, 600);
		setTextSize('p3', 20);
		setObjectCamera('p3', 'other');
		addLuaText('p3', true);
		removeLuaText('p2')
	end
	if curBeat == 283 then
		makeLuaText('p4','that\'s what you\'re gettin\'!', 200, 525, 600);
		setTextSize('p4', 20);
		setObjectCamera('p4', 'other');
		addLuaText('p4', true);
		removeLuaText('p3')

	end
	if curBeat == 287 then
		makeLuaText('p5','Down here, your death', 200, 525, 600);
		setTextSize('p5', 20);
		setObjectCamera('p5', 'other');
		addLuaText('p5', true);
		removeLuaText('p4')

	end
	if curBeat == 291 then
		makeLuaText('p6','I guarantee...', 200, 525, 600);
		setTextSize('p6', 20);
		setObjectCamera('p6', 'other');
		addLuaText('p6', true);
		removeLuaText('p5')

	end
	if curBeat == 295 then
		makeLuaText('p7','THIS WORLD\'S THE LAST', 300, 525, 600);
		setTextSize('p7', 30);
		setObjectCamera('p7', 'other');
		setTextColor('p7', 'FF0000');
		addLuaText('p7', true);
		removeLuaText('p6')

	end
	if curBeat == 299 then
		makeLuaText('p8','YOU\'LL EVER SEE!', 300, 525, 600);
		setTextSize('p8', 30);
		setObjectCamera('p8', 'other');
		setTextColor('p8', 'FF0000');
		addLuaText('p8', true);
		removeLuaText('p7')
	end
	if curBeat == 303 then
		setProperty('camHUD.visible', true);
		setObjectCamera('p8', 'hud');
		removeLuaText('p8')
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	end
end

function onTweenCompleted(tag)
	if tag == 'whiteTransitionTwn' then
		removeLuaSprite('whiteTransition');
	end
end