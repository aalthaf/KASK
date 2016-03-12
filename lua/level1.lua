------------------------------------------------------------------------------------------------------------
--
--level1.lua
--
------------------------------------------------------------------------------------------------------------
local physics = require "physics"
physics.start()
local storyboard = require("storyboard")
local widget = require "widget"
local scene  = storyboard.newScene()
local bumpSound = audio.loadSound ("bump.wav")
local shootSound = audio.loadSound("shoot.wav")
local pauseBtn
local function onPauseBtnRelease(event)
	if speedx ~= 0 then -- if speed not equal to 0
		speedx = 0
		Runtime:removeEventListener("enterFrame", background1)
		Runtime:removeEventListener("enterFrame", background)
		physics.pause()
	else 
		speedx = 4
		Runtime:addEventListener("enterFrame", background1)
		Runtime:addEventListener("enterFrame", background)

		physics.start()
	end
end
function scene:createScene(event)

	local group = self.view
	speedx = 10
	movex = 0
	background1= display.newImage("bg1.JPG")
	background1:setReferencePoint(display.BottomLeftReferencePoint)
	background1.x, background1.y = 0,0
	group:insert(background1)


	background = display.newImage("background1.jpg")
	background:setReferencePoint(display.BottomLeftReferencePoint)
	background.x = 0
	background.y = 350
	group:insert(background)   
  
    ship = display.newImage("proto75x50.png")
    physics.setGravity(0,6)
    physics.addBody(ship,"static",{friction = 0.5 , bounce = 1})
    
    ship.x = display.contentWidth/2
    ship.y = display.contentHeight - 25
    group:insert(ship)

    enemyship = display.newImage("rsz_1enemy1.png")
    physics.addBody(enemyship,"dynamic",{friction=0.5 , bounce = 0.5})
    enemyship.x = display.contentWidth / 2 + 50
    enemyship.y = -100
    

    enemyship2 = display.newImage("rsz_enemy2.png")
    physics.addBody(enemyship2,"dynamic",{friction = 0.5 , bounce = 0.5})
    enemyship2.x = display.contentWidth/2 - 90
    enemyship2 = -100
    

    pauseBtn = widget.newButton{
    labelColor = {default={255}, over={128}},
    defaultFile = "pauseBtn.png", 
    overFile = "pauseBtn.png", 
    width = 25, height =25, 
    onRelease = onPauseBtnRelease
	}
	pauseBtn:setReferencePoint(display.CenterReferencePoint)
	pauseBtn.x = display.contentWidth/2
	pauseBtn.y = display.contentHeight - 260
	group:insert(pauseBtn)


    
    function lefthalftouch(event)
    	if event.x < (display.contentWidth *0.30) and event.phase ~="ended" then
    		movex = - speedx
    	end
    end
    function righthalftouch(event)
    	if event.x > (display.contentWidth *0.70) and event.phase ~="ended" then
    		movex =  speedx
    	end
    end
    function pauseTouch(event)
    	if event.x <(display.contentWidth *0.70) and event.x > (display.contentWidth *0.30) and event.phase ~="ended" then
    		physics.pause()
    		
 		end 
    end


	function moveShip(event)
		ship.x = ship.x + movex
	end
	function stop(event)
		if event.phase == "ended" then
			movex = 0
		end
	end
function StopShip(event)
	if (ship.x <= 28) then 
		ship.x = ship.x + (speedx*1.5)
		audio.play (bumpSound)
	elseif (ship.x >= 472) then 
		ship.x = ship.x - (speedx*1.5)
		audio.play (bumpSound)
	end
end    

end
function scrollcity(self, event)
	if self.y > 700 then
		self.y = 0
	else 
		self.y = self.y +2
	end
end
local xpos = display.contentWidth * 0.5
local radius = 15
local screenLeft = display.screenOriginX

function scene:enterScene(event)
	background1.enterFrame = scrollcity
    Runtime:addEventListener("enterFrame",background1)
    background.enterFrame = scrollcity
    Runtime:addEventListener("enterFrame",background)
    ---Arrows 
  	Runtime:addEventListener("touch",lefthalftouch)
    Runtime:addEventListener("touch",righthalftouch)
    ---Stop
    Runtime:addEventListener("touch" , stop)
    ship.enterFrame = moveShip
    ---Ship movement
    Runtime:addEventListener("enterFrame", ship)
    Runtime:addEventListener("enterFrame", StopShip)
end
function scene:exitScene(event)
	Runtime:removeEventListener("enterFrame",background1)
	Runtime:removeEventListener("enterFrame",background)	
end
function destroyScene(event)
	local group = self.view
end

-----------------------------------------------------------
scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)
----------------------------------------------------------

return scene

