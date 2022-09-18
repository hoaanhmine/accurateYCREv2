function onCreate()
	-- background shit
	
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');
	
	precacheImage('RedVG')
	precacheImage('hitStatic')
	precacheImage('characters/ycr_bf_pixel')
	precacheImage('characters/ycr_sonic_sheet')
	precacheImage('SonicP2/greenhillsbiggggg')
	
	makeLuaSprite('bgLOL', 'SonicP2/bgLOL', -550, -150);
	makeLuaSprite('Tre', 'SonicP2/Tre', -550, -150);
	
	setProperty('bgLOL.antialiasing', true);
	setProperty('Tre.antialiasing', true);
	
	addLuaSprite('bgLOL', false)
	addLuaSprite('Tre', true)
end

function onBeatHit()

	if curBeat %1 == 0 then

	   setProperty('timeBar.color', getColorFromHex('cc1100'))-- put the hex code for the color here
	end

	if curBeat %2 == 0 then

	   setProperty('timeBar.color', getColorFromHex('cc1100'))-- put the hex code for the color here

	end

end

function onStepHit()
	if curStep == 528 then
		triggerEvent('Change Character', 'bf', 'bf-pixel-sonic');

		triggerEvent('Change Character', 'dad', 'PixelExe');

		setCharacterX('boyfriend', 1150);

		setCharacterY('boyfriend', -200);

		setCharacterX('dad', 250);

		setCharacterY('dad', 170);

		setCharacterX('gf', 440);

		setCharacterY('gf', -200);

		makeLuaSprite('thefrickinbg2', 'SonicP2/greenhillsbiggggg', -572, -426);
		setProperty('thefrickinbg2.antialiasing', false);
		setProperty('bgLOL.visible', false);
		setProperty('Tre.visible', false);

		addLuaSprite('thefrickinbg2', false);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'PIXEL_NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'PIXEL_NOTE_assets');
	
	end
	if curStep == 784 then
		triggerEvent('Change Character', 'bf', 'bf-encore');

		triggerEvent('Change Character', 'dad', 'ycr-mad');

		setCharacterX('boyfriend', 830);

		setCharacterY('boyfriend', 80);

		setCharacterX('dad', 30);

		setCharacterY('dad', -200);

		setCharacterX('gf', 300);

		setCharacterY('gf', 80);
		
		setProperty('thefrickinbg2.visible', false);
		
		setPropertyFromGroup('playerStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('playerStrums', 3, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 0, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 1, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 2, 'texture', 'NOTE_assets');
		setPropertyFromGroup('opponentStrums', 3, 'texture', 'NOTE_assets');

		setProperty('thefrickinbg2.visible', false);

		setProperty('bgLOL.visible', true);
		setProperty('Tre.visible', true);
    end
end