-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local answerAsNumber = native.newTextField( display.contentCenterX, display.contentCenterY - 50, 100, 50)
answerAsNumber.id = ("answer textField")

local button = display.newImageRect ( "./assets/button.png", 50, 50)
button.x = display.contentCenterX
button.y = display.contentCenterY

local function buttonTouch (event)
	local number = tonumber(answerAsNumber.text)

	if number < 0 then
		local nText = display.newText ("Your number is negative", display.contentCenterX, display.contentCenterY + 50)
	elseif number > 0 then
			local pText = display.newText ("Your number is positive", display.contentCenterX, display.contentCenterY + 50)
	else
		local zText = display.newText ("Your number is zero", display.contentCenterX, display.contentCenterY + 50)
	end
end

button:addEventListener ('touch', buttonTouch)