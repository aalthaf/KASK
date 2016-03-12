--------------------------
----help.lua
--------------------------
local storyboard = require ("storyboard")
local scene = storyboard.newScene()
local exitButton
local function onexitButtonRelease()
	storyboard.gotoScene("menu.lua","fade",700)
	return true
	
end 

function scene:createScene(event)
	local text = display.newText("Move the spaceship by\ntouching on the right part or\nleft part of the screen",60, 60, "Arial",15)
	local text = display.newText("Dodge the spaceships\nfor as much as you can. Shooting\nwill be coming soon with major changes.",60,150,"Arial",15)

	
end
function scene:enterScene( event )
	local group = self.view
	
	
end


function scene:exitScene( event )
	local group = self.view
	

end

-- If scene's view is removed, scene:destroyScene() will be called just prior to:
function scene:destroyScene( event )
	local group = self.view
	
	if LevelSelectButton then
		LevelSelectButton:removeSelf()	-- widgets must be manually removed
		LevelSelectButton = nil
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
