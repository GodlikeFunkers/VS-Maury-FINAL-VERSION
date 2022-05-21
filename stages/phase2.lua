finishedGameover = false;
startedPlaying = false;

function onCreate()
	-- background shit
	makeLuaSprite('stage2', 'maurystages\\phase2', -1500, -1800);
	scaleObject('stage2', 5, 5);
	
	addLuaSprite('stage2', false);

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