local storyboard = require("storyboard")
local widget = require "widget"
local scene  = storyboard.newScene()

function scene:createScene(event)
	local  group = self.view
	background = display.newImage("level12.jpg")
	background:setReferencePoint(display.BottomLeftReferencePoint)
	background.x = 0
	background.y = 350
	group:insert(background)   
end
function scene:enterScene( event )
	local group = self.view
	
	-- INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
end


function scene:enterScene(event)
	local group = self.view
end
function scene:exitScene(event)
	local group = self.view

end
function scene:destroyScene(event)
	
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