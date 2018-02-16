-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Feb 2018
--
--  how to add a text field and button, so that you can enter text
-----------------------------------------------------------------------------------------

display.setDefault("background", 0.5, 0.9, 1 )

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 550, 100 )
answerTextField.id = "answer textField"

local myText = display.newText( "Enter your name here", 1024, 500, native.systemFont, 142 )
myText:setFillColor( 1, 0.5, 0.5 )

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"

local function enterButtonTouch( event )
	-- it is not perfect, but I will make it better soon
	print( answerTextField.text )

	return true

end

enterButton:addEventListener( "touch", enterButtonTouch )