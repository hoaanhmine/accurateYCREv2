function onCreate()
	makeLuaSprite('readthefiletitlelol', 'dablack', 0, 0);

    makeLuaSprite('introcircle', 'CircleYouCantRun', 777, 0);

    makeLuaSprite('introtext', 'TextYouCantRun', -1200, 0);
	
	scaleObject('readthefiletitlelol', 2.0, 2.0);
	
	setObjectCamera('readthefiletitlelol', 'other');
	setObjectCamera('introcircle', 'other');
	setObjectCamera('introtext', 'other');

   

    

    makeLuaSprite('vg', 'RedVG');

    setObjectCamera('vg', 'hud');
	
	addLuaSprite('readthefiletitlelol', true);
	addLuaSprite('introcircle', true);
	addLuaSprite('introtext', true);

end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 and curStep >= 1585 and curStep < 9999 then
        setProperty('health', health- 0.025);
    end
end

function onSongStart()
	doTweenX('circleTween', 'introcircle', -100, 2, 'quintOut')
	doTweenX('textTween', 'introtext', 100, 2, 'quintOut')
	runTimer('weeb2',2)
end

function onUpdate()
    if getProperty('vg.alpha') == 1 then
        doTweenAlpha('dothetweenvg', 'vg', 0, 1, 'quadInOut');
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'notfuckedanymore' then
        removeLuaSprite('theshitassthatdistractsyou', false);
    end
    if tag == 'bye1' then
        removeLuaSprite('wowa', false);
    end
    if tag == 'bye2' then
        removeLuaSprite('wowa2', false);
    end
	if tag == 'weeb2' then
		doTweenAlpha('graphicAlpha', 'readthefiletitlelol', 0, 0.4, 'linear');
		doTweenAlpha('circleAlpha', 'introcircle', 0, 0.4, 'linear');
		doTweenAlpha('textAlpha', 'introtext', 0, 0.4, 'linear');
		runTimer('savespace',2)
	end
	if tag == 'savespace' then
		removeLuaSprite('introtext', true)
		removeLuaSprite('introcircle', true)
		removeLuaSprite('readthefiletitlelol', true)
	end
end

function onTweenCompleted(tag)
    if tag == 'dothetweenvg' then
        doTweenAlpha('dothetweenvgagain', 'vg', 1, 1, 'quadInOut');
    end
end

function onEvent(name, value1, value2)
    if name == 'YOU MISSED THE STATIC NOTE NOW GET FUCKED' then
        makeAnimatedLuaSprite('theshitassthatdistractsyou', 'hitStatic', 0, 0);

        addAnimationByPrefix('FUCKYOU', 'static', 'staticANIMATION', 24, false);
        
        objectPlayAnimation('FUCKYOU', true);

        setObjectCamera('theshitassthatdistractsyou', 'hud');

        addLuaSprite('theshitassthatdistractsyou', true);

        runTimer('notfuckedanymore', 0.2, 1);
    end
end


function onStepHit()
    if curStep == 1 then 
        
        setProperty('vg.visible', false);

        addLuaSprite('vg', true);
    end 
    if curStep == 78 then 
        setProperty('vg.visible', true);
    end
end 




