-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

---background
display.setDefault("background", 0, 370, 240)

----text field for age
local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 100, 250, 50 )
ageTextField.id = "age text Field"

----text that says "enter your age here" or something like that
local enterAgeText = display.newText( "Enter your age" , 160, 100, native.systemFont, 20)
enterAgeText.id = "enter age"
enterAgeText:setFillColor( 1, 1, 1)

----text field for day
local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 250, 50 )
dayTextField.id = "day text Field"

----text that says "enter your age here" or something like that
local enterDayText = display.newText( "Enter the day" , 160, 250, native.systemFont, 20)
enterDayText.id = "enter day"
enterDayText:setFillColor( 1, 1, 1)

------check button
local check = display.newImageRect( "assets/check.png", 150, 100 )
check.x = display.contentCenterX
check.y = 400
check.id = "check button" 

------output text replies if they should go to work, school, or stay home
local output = display.newText( " " , 160,10, native.systemFont, 20)
output.id = "output text"
output:setFillColor( 0, 0, 255)

-----function that determines what the output will be
local function checkButtonTouch( event )
	-- turn the inputs into numbers and strings
	local age = tonumber(ageTextField.text)
	local day = tostring(dayTextField.text)
	if day == "Saturday" or day == "Sunday" then
		output.text = "Time to relax for the weekend!"
	elseif (age <= 17) and (day == "Monday" or day == "Tuesday" or day == "Wednesday" or day == "Thursday" or day == "Friday") then
		output.text = "Time for school!"
	elseif (age >= 18) and (day == "Monday" or day == "Tuesday" or day == "Wednesday" or day == "Thursday" or day == "Friday") then
		output.text = "Time to go to work!"
	else
		output.text = "Invalid input"
	end
		

end

check:addEventListener( 'touch' , checkButtonTouch)