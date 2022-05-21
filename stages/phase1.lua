finishedGameover = false;
startedPlaying = false;

function onCreate()
	-- background shit
	makeLuaSprite('stage1', 'maurystages\\phase1', -500, -600);
	scaleObject('stage1', 2.5, 2.5);
	
	addLuaSprite('stage1', false);

	function onUpdate(elapsed)
		if inGameOver and not startedPlaying and not finishedGameover then
			setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0.2);
		end
		if not finishedGameover and getProperty('boyfriend.animation.curAnim.name') == 'deathLoop' and not startedPlaying then
			math.randomseed(curBeat * 4)
			soundName = string.format('galaxyLines/Maury_Game_Over_%i', getRandomInt(1, 19))
			playSound(soundName, 1, 'voiceMaury')
			startedPlaying = true
		end
	end 
	
end