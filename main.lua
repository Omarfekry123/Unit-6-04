display.setDefault( "background", 125/255, 243/255, 200/255 )

display.newText( "Are you able to go to the museum?", display.contentCenterX, display.contentCenterY -160, native.systemFont, 20 )



local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + -120, 300, 40 )

answerTextField.id = "answerTextField"



local image = display.newImageRect( "assets/images/enterButton.png", 150, 75 )

image.x = display.contentCenterX

image.y = 185

image.id = "calculatebutton"



display.newText( "Age", display.contentCenterX, display.contentCenterY, native.systemFont, 30 )



local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 300, 40 )

ageTextField.id = "ageTextField"

ageTextField.inputType="number"



display.newText( "Day Of The Week", display.contentCenterX, display.contentCenterY +90, native.systemFont, 30 )



local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 300, 40 )

dayTextField.id = "dayTextField"



local function calculateButtonTouch( event )

	local age = tonumber(ageTextField.text)

	local day = dayTextField.text

	if age > 12 and age < 21 or day == "Tuesday" or day == "Thursday" then

		answerTextField.text = "Yes you can"

	else

		answerTextField.text = "No you're still young"

	end

end

image:addEventListener( "touch", calculateButtonTouch )-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here