-- Lua stuff
local sec = 0
local min = 0

function onStepHit()

        	-- triggered when the lua file is started
    
	if curStep == 528 then
	makeLuaSprite('hud', 'hud', 10, 30)
	setObjectCamera('hud', 'hud')
	setGraphicSize('hud', 230, 200)
	scaleObject('hud', 0.3, 0.3);
           setObjectOrder('hud', '9000')

	makeLuaText('misstext', "", 500, 180, 82)
	setObjectCamera('misstext', 'hud')
	setTextColor('misstext', 'FFFFFF')
	setTextSize('misstext', 45)
	setTextFont('misstext', 'sonic-hud-font.ttf')
	setTextAlignment('misstext', 'left')

	makeLuaText('scoretext', "", 500, 180, 126)
	setObjectCamera('scoretext', 'hud')
	setTextColor('scoretext', 'FFFFFF')
	setTextSize('scoretext', 45)
	setTextFont('scoretext', 'sonic-hud-font.ttf')
	setTextAlignment('scoretext', 'left')

	makeLuaText('timetext', "", 500, 180, 36)
	setObjectCamera('timetext', 'hud')
	setTextColor('timetext', 'FFFFFF')
	setTextSize('timetext', 45)
	setTextFont('timetext', 'sonic-hud-font.ttf')
	setTextAlignment('timetext', 'left')
	
	setProperty('scoreTxt.alpha', 0)
	setProperty('timeBar.alpha', 0)
  	setProperty('timeBarBG.alpha', 0)
  	setProperty('timeTxt.alpha', 0)

	addLuaSprite('hud', true)

	addLuaText('misstext')
	addLuaText('scoretext')
	addLuaText('timetext')
	end
	
	if curStep == 784 then
	setProperty('scoreTxt.alpha', 1)
	setProperty('timeBar.alpha', 1)
  	setProperty('timeBarBG.alpha', 1)
  	setProperty('timeTxt.alpha', 1)
	
	setProperty('misstext.alpha', 0)
	setProperty('scoretext.alpha', 0)
  	setProperty('timetext.alpha', 0)
	setProperty('hud.alpha', 0)
	end
end

function onUpdate(elapsed)
    songPos = getSongPosition()
    sec = songPos/1000
	min = songPos/60000
	-- start of "update", some variables weren't updated yet
	songLength = songLength - 30

  	setTextString('misstext', "" ..  misses)
  	setTextString('scoretext', "" ..  score)

	setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec))

  	if min >= 11 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*11)
  	elseif min >= 10 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*10)
  	elseif min >= 9 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*9)
  	elseif min >= 8 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*8)
  	elseif min >= 7 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*7)
  	elseif min >= 6 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*6)
  	elseif min >= 5 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*5)
  	elseif min >= 4 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*4)
  	elseif min >= 3 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*3)
  	elseif min >= 2 then
  		setTextString('timetext', math.floor(min) .. ":" .. math.floor(sec) - 60*2)
  	elseif min >= 1 then
  		sec = sec - 60
  	end

  	if downscroll == false then
  		setProperty('hud.y', 580)
  		setProperty('scoretext.y', 677)
  		setProperty('misstext.y', 632)
  		setProperty('timetext.y', 584)
  	end
end