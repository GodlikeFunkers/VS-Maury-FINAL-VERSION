function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Health Swap Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Health Swap Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes\\SWAPNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'notes\\HealthSwap-NoteSplashes'); --cool splash texture (you can change this)
			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote) -- dont mess with this stuff, its the code for the swapping
	if noteType == 'Health Swap Note' then
		curHealth = getProperty('health');
		swapValue = math.abs(curHealth - 2);
	setProperty('health',swapValue);
	playSound('swap', 0.7);
	end
end