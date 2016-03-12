------------------------------------------------------------------------------------------------------------
--
--allLevels.lua
--
-------------------------------------------------------------------------------------------------------------
local storyboard = require("storyboard")
local scene  = storyboard.newScene()
local widget = require "widget"
--------------------------------------------------------------------------------------------------------------
--local screenW, screenH, halfW = display.contentWidth, display.contentHeight, display.contentWidth*0.5
--------------------------------------------------------------------------------------------------------------
local level1Btn
local level2Btn
local level3Btn
local level4Btn
local level5Btn
local level6Btn
local level7Btn
local level8Btn
local level9Btn
local level10Btn
local level11btn
local level12Btn
local homeButton
local function onlevel1BtnRelease()
	storyboard.gotoScene("level1", "fade",600)
	return true
end
local function onlevel2BtnRelease()
	storyboard.gotoScene("level2", "fade",600)
	return true
end
local function onlevel3BtnRelease()
	storyboard.gotoScene("level3", "fade", 600)
	return true
end
local function onlevel4BtnRelease()
	storyboard.gotoScene("level4", "fade", 600)
	return true
end
local function onlevel5BtnRelease()
	storyboard.gotoScene("level5", "fade", 600)
	return true
end
local function onlevel6BtnRelease()
	storyboard.gotoScene("level6", "fade", 600)
	return true
end
local function onlevel7BtnRelease()
	storyboard.gotoScene("level7", "fade", 600)
	return true
end
local function onlevel8BtnRelease()
	storyboard.gotoScene("level8", "fade", 600)
	return true
end
local function onlevel9BtnRelease()
	storyboard.gotoScene("level9", "fade" ,600)
	return true
end
local function onlevel10BtnRelease()
	storyboard.gotoScene("level10", "fade", 600)
	return true
end
local function onLevel11BtnRelease()
	storyboard.gotoScene("level11", "fade", 600)
	return true
end
local function onlevel12BtnRelease()
	storyboard.gotoScene("level12", "fade", 600)
	return true
end
local function onhomeButtonRelease()
	storyboard.gotoScene("menu", "fade", 600)
	return true
end
--!!!!!! Create instances for all the buttons!!!!!!-----------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
function scene:createScene(event)
	local group = self.view
	local background = display.newImageRect("background1.jpg", display.contentWidth, display.contentHeight )
	background:setReferencePoint(display.TopLeftReferencePoint)
	background.x, background.y = 0,0
	level1Btn = widget.newButton{
		label = "1", 
		labelColor = {default={255}, over={128}}, 
		defaultFile="levelBtn.PNG", 
		overFile="levelBtn-click.PNG",
		width = 60, height = 60, 
		onRelease = onlevel1BtnRelease
	}
	level1Btn:setReferencePoint(display.CenterReferencePoint)
	level1Btn.x = display.contentWidth - 450
	level1Btn.y = display.contentHeight - 220
	
	level2Btn = widget.newButton{
		label = "2",
		labelColor = {default={225}, over={128}},
		defaultFile = "levelBtn.PNG", 
		overFile = "levelBtn-click.PNG",
		width = 60, height = 60, 
		onRelease = onlevel2BtnRelease
	}
	level2Btn:setReferencePoint(display.CenterReferencePoint)
	level2Btn.x = display.contentWidth - 370
	level2Btn.y = display.contentHeight - 220
	
	level3Btn = widget.newButton{
		label = "3",
		labelColor = {default={225}, over={128}},
		defaultFile = "levelBtn.PNG", 
		overFile = "levelBtn-click.PNG", 
		width = 60, height = 60, 
		onRelease = onlevel3BtnRelease
	} 
	level3Btn:setReferencePoint(display.CenterReferencePoint)
	level3Btn.x = display.contentWidth - 290
	level3Btn.y = display.contentHeight - 220

	level4Btn = widget.newButton{
		label = "4", 
		labelColor = {default={225}, over={128}}, 
		defaultFile = "levelBtn.PNG",
		overFile = "levelBtn-click.PNG",
		width = 60, height = 60,
		onRelease = onlevel4BtnRelease
	}
	level4Btn:setReferencePoint(display.CenterReferencePoint)
	level4Btn.x = display.contentWidth - 210
	level4Btn.y = display.contentHeight - 220

	level5Btn = widget.newButton{
		label = "5", 
		labelColor = {default={225}, over={128}}, 
		defaultFile = "levelBtn.PNG",
		overFile = "levelBtn-click.PNG",
		width = 60, height = 60,
		onRelease = onlevel5BtnRelease
	}
	level5Btn:setReferencePoint(display.CenterReferencePoint)
	level5Btn.x = display.contentWidth - 130
	level5Btn.y = display.contentHeight - 220

	level6Btn = widget.newButton{
		label = "6", 
		labelColor = {default={225}, over={128}}, 
		defaultFile = "levelBtn.PNG",
		overFile = "levelBtn-click.PNG",
		width = 60, height = 60,
		onRelease = onlevel6BtnRelease
	}
	level6Btn:setReferencePoint(display.CenterReferencePoint)
	level6Btn.x = display.contentWidth - 50
	level6Btn.y = display.contentHeight - 220

	level7Btn = widget.newButton{
		label = "7", 
		labelColor = {default={255}, over={128}}, 
		defaultFile="levelBtn.PNG", 
		overFile="levelBtn-click.PNG",
		width = 60, height = 60, 
		onRelease = onlevel7BtnRelease
	}
	level7Btn:setReferencePoint(display.CenterReferencePoint)
	level7Btn.x = display.contentWidth - 450
	level7Btn.y = display.contentHeight - 120

	level8Btn = widget.newButton{
		label = "8", 
		labelColor = {default={255}, over={128}}, 
		defaultFile="levelBtn.PNG", 
		overFile="levelBtn-click.PNG",
		width = 60, height = 60, 
		onRelease = onlevel8BtnRelease
	}
	level8Btn:setReferencePoint(display.CenterReferencePoint)
	level8Btn.x = display.contentWidth - 370
	level8Btn.y = display.contentHeight - 120

	level9Btn = widget.newButton{
		label = "9",
		labelColor = {default={255}, over = {128}},
		defaultFile = "levelBtn.PNG", 
		overFile = "levelBtn-click.PNG", 
		width = 60, height = 60, 
		onRelease = onlevel9BtnRelease	
	}
	level9Btn:setReferencePoint(display.CenterReferencePoint)
	level9Btn.x = display.contentWidth - 290
	level9Btn.y = display.contentHeight - 120

	level10Btn = widget.newButton{
		label = "10",
		labelColor = {default={255}, over = {128}},
		defaultFile = "levelBtn.PNG",
		overFile = "levelBtn-click.PNG",
		width = 60, height = 60, 
		onRelease = onlevel10BtnRelease
	}
	level10Btn:setReferencePoint(display.CenterReferencePoint)
	level10Btn.x = display.contentWidth - 210
	level10Btn.y = display.contentHeight - 120

	level11Btn = widget.newButton{
		label = "11",
		labelColor = {default={225}, over={128}}, 
		defaultFile = "levelBtn.PNG",
		overFile = "levelBtn-click.PNG", 
		width = 60, height = 60,
		onRelease = onLevel11BtnRelease
	}
	level11Btn:setReferencePoint(display.CenterReferencePoint)
	level11Btn.x = display.contentWidth - 130
	level11Btn.y = display.contentHeight - 120

	level12Btn = widget.newButton{
		label = "12",
		labelColor = {default={225}, over={128}},
		defaultFile = "levelBtn.PNG", 
		overFile = "levelBtn-click.PNG",
		width = 60, height = 60, 
		onRelease = onlevel12BtnRelease
	}
	level12Btn:setReferencePoint(display.CenterReferencePoint)
	level12Btn.x = display.contentWidth - 50
	level12Btn.y = display.contentHeight - 120

	homeButton = widget.newButton{
		label = "Home", 
		labelColor = {default={225}, over={128}},
		defaultFile = "homeButton.png",
		overFile = "homeButton-over.png",
		width = 120, height = 30,
		onRelease = onhomeButtonRelease
	}
	homeButton:setReferencePoint(display.CenterReferencePoint)
	homeButton.x = display.contentWidth / 2
	homeButton.y = display.contentHeight - 50

	group:insert(background)
	group:insert(level1Btn)
	group:insert(level2Btn)
	group:insert(level3Btn)
	group:insert(level4Btn)
	group:insert(level5Btn)
	group:insert(level6Btn)
	group:insert(level7Btn)
	group:insert(level8Btn)
	group:insert(level9Btn)
	group:insert(level10Btn)
	group:insert(level11Btn)
	group:insert(level12Btn)
	group:insert(homeButton)
end

function scene:enterScene(event)
	local group = self.view
end
function scene:exitScene(event)
	local group = self.view

end
function scene:destroyScene(event)
	local group = self.view
	if level1Btn then
		level1Btn:removeSelf()
		level1Btn = nil
	end
end
-------------------------------------------------------------------------------------------------------------
scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)
------------------------------------------------------------------------------------------------------------
return scene
