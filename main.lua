-----------------------------------------------------------------------------------------
--
-- how to calculate the area of a square
-- 
-----------------------------------------------------------------------------------------

local aOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 130, 300, 50 )
aOfSquareTextField.id = "a textField"

local bOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 210, 300, 50 )
bOfSquareTextField.id = "b textField"

local hOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 280, 300, 50 )
hOfSquareTextField.id = "h textField"

local areaOfSquareTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
areaOfSquareTextField.id = "area textField"
areaOfSquareTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./myAssests/Sprite/calculate.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
display.setDefault("background", 0, 255, 0)
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local lengthOfSquare
    local areaOfSquare
 
    aOfSquare = aOfSquareTextField.text
    bOfSquare = bOfSquareTextField.text
    hOfSquare = hOfSquareTextField.text
    areaOfSquare = ((aOfSquare + bOfSquare) / 2) * hOfSquare

    -- print( areaOfSquare )
    areaOfSquareTextField.text = "The area is " .. areaOfSquare

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )