function opponentNoteHit()
	if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0.21 then
            setProperty('health', health - 0.05);
        end
		triggerEvent('Screen Shake','0.2,0.008','0.2,0.008')
    end
end

function onUpdate(elapsed) --Regain Health by pressing SPACE
	if getProperty('health') < 1 then
		makeLuaText('warn','Press [SPACE] to regain health!', 400, 450, 600);
		setTextSize('warn', 20);
		setObjectCamera('warn', 'other');
		setTextAlignment('warn', 'center');
		addLuaText('warn', true);
	end

    if keyJustPressed('space') and getProperty('health') < 1 then
		playSound('shield', 0.7);
        characterPlayAnim('boyfriend', 'dodge', true);
        setProperty('boyfriend.specialAnim', true);
		setProperty('health', 2);
    end

	if getProperty('health') > 1 then
		removeLuaText('warn')
	end
end