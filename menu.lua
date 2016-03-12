-----------------------------------------------------------------------------------------
--
-- menu.lua
--
-----------------------------------------------------------------------------------------
local storyboard = require ("storyboard")
local scene = storyboard.newScene()
local widget = require "widget"
---------------------------------------------------------
local LevelSelectButton 
local function onLevelSelectButtonRelease ()
	storyboard.gotoScene("allLevels", "fade", 700)
	return true
end 
local  function onHelpButtonRelease()
	storyboard.gotoScene("help","fade",700)
	return true
end
-----------------------------------------------------------
function scene:createScene(event)
	local group = self.view
	
	helpbutton = widget.newButton{
		label = " ",
		labelColor = { default={255}, over={128}} ,
		defaultFile = "help.jpg",
		width=100, height = 100,
		onRelease = onHelpButtonRelease
	}
	helpbutton:setReferencePoint(display.CenterReferencePoint)
	helpbutton.x = display.contentWidth - 55
	helpbutton.y = display.contentHeight - 128

	
	local background = display.newImageRect("background1.jpg", display.contentWidth, display.contentHeight )
	background:setReferencePoint(display.TopLeftReferencePoint)
	background.x, background.y = 0,0
	LevelSelectButton = widget.newButton{
		label = "Select Level",
		labelColor = { default={255}, over={128}} ,
		defaultFile = "launch.PNG",
		overFile = "launch-click.PNG",
		width=200, height = 200,
		onRelease = onLevelSelectButtonRelease
	}
	LevelSelectButton:setReferencePoint(display.CenterReferencePoint)
	LevelSelectButton.x = display.contentWidth / 2
	LevelSelectButton.y = display.contentHeight - 128


	group:insert( background )
	group:insert( LevelSelectButton )
	group:insert(helpbutton)
end

-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
	
	-- INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
end

-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	
	-- INSERT code here (e.g. stop timers, remove listenets, unload sounds, etc.)
	
end

-- If scene's view is removed, scene:destroyScene() will be called just prior to:
function scene:destroyScene( event )
	local group = self.view
	
	if LevelSelectButton then
		LevelSelectButton:removeSelf()	-- widgets must be manually removed
		LevelSelectButton = nil
	end
	if helpbutton then
		helpbutton:removeSelf()
		helpbutton = nil
	end
end
--------------------------------------------------------------------
-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched whenever before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

-----------------------------------------------------------------------------------------

return scene