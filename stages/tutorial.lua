function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -700, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeAnimatedLuaSprite('stageend', 'tutorialstage\\stageend', -650, 600);
	addAnimationByPrefix('stageend', 'dance', 'stageend lights', 24, true);
	objectPlayAnimation('stageend', 'dance', false);
	setScrollFactor('stageend', 0.9, 0.9);
	scaleObject('stageend', 1.1, 1.1);

	makeLuaSprite('curtainsend', 'tutorialstage\\curtainsend', -525, -250);
	scaleObject('curtainsend', 0.9, 0.9);
	setScrollFactor('curtainsend', 1.5, 1.5);

	addLuaSprite('stageback', false);
	addLuaSprite('stageend', false);
	addLuaSprite('curtainsend', false);
	
end

function onBeatHit()
	objectPlayAnimation('stageend', 'idle', false);
end

function onCountdownTick(counter)
	onBeatHit();
end