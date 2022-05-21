function onCreate()
	if (boyfriendName == 'bf-lofi') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-lofi'); --Character json file for the death animation
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'lofi_loss'); --put in mods/sounds/
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover/lofiGameOver'); --put in mods/music/
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover/lofiEnd'); --put in mods/music/
	end

	if (boyfriendName == 'bf') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'MDeath'); --put in mods/sounds/
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover/gameOverM'); --put in mods/music/
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover/gameOverEndM'); --put in mods/music/
	end

	if (boyfriendName == 'bfnerv') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'MDeath'); --put in mods/sounds/
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover/gameOverM'); --put in mods/music/
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover/gameOverEndM'); --put in mods/music/
	end

	if (boyfriendName == 'bfdem') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bfdem'); --Character json file for the death animation
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'dem_loss'); --put in mods/sounds/
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover/gameOverFatal'); --put in mods/music/
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover/gameOverEndFatal'); --put in mods/music/
	end
end