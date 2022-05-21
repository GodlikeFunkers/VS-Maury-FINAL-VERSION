function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Health Swap Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Miss Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes\\MISSNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'notes\\HealthSwap-NoteSplashes'); --cool splash texture (you can change this)			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote) -- dont mess with this stuff, its the code for the swapping
	if noteType == 'Miss Note' then
        health = getProperty('health')
        setProperty('health', health - 0.05);
		setProperty('boyfriend.specialAnim', true);

		if noteData == 0 then
			characterPlayAnim('bf', 'singLEFTmiss', true);
			playSound('missnote1', 0.7);
		end
		if noteData == 1 then
			characterPlayAnim('bf', 'singDOWNmiss', true);
			playSound('missnote2', 0.7);

		end
		if noteData == 2 then
			characterPlayAnim('bf', 'singUPmiss', true);
			playSound('missnote3', 0.7);
		end
		if noteData == 3 then
			characterPlayAnim('bf', 'singRIGHTmiss', true);
			playSound('missnote1', 0.7);
		end
	end
end