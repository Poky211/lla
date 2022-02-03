function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Alt Shoot Note' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SHOOTNOTE_assets');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Alt Shoot Note' then
		characterPlayAnim('dad', 'shoot', true);
		setProperty('dad.specialAnim', true);
        triggerEvent('Screen Shake','0.05, 0.02','0.04, 0.02')
        health = getProperty('health')
        getProperty('health', 0.01);
        setProperty('health', health- 0.025);
	end
end


