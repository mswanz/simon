-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
button_size = 90
button_gap = 20
button_offset = button_gap+button_size/2

local greenButton = display.newRect( button_offset, button_offset, button_size, button_size)

function dimGreen()
    greenButton:setFillColor( 0, .5, 0 )   
end

dimGreen()

function brightGreen()
    greenButton:setFillColor( 0, 1, 0 )   
end

function flashGreen()
    brightGreen()
    timer.performWithDelay(200, dimGreen )    
end

function greenTap()
    flashGreen()
end

greenButton:addEventListener( "tap", greenTap )


local blueButton = display.newRect( button_offset, button_offset+button_size+button_gap, button_size, button_size)

function dimBlue()
    blueButton:setFillColor( 0, 0, .5 )   
end

dimBlue()

function brightBlue()
    blueButton:setFillColor( 0, 0, 1 )   
end

function flashBlue()
    brightBlue()
    timer.performWithDelay(200, dimBlue )    
end

function blueTap()
    flashBlue()
end

blueButton:addEventListener( "tap", blueTap )

local yellowButton = display.newRect( button_offset, button_offset+2*(button_size+button_gap), button_size, button_size)

function dimYellow()
    yellowButton:setFillColor( .5, .5, 0 )   
end

dimYellow()

function brightYellow()
    yellowButton:setFillColor( 1, 1, 0 )   
end

function flashYellow()
    brightYellow()
    timer.performWithDelay(200, dimYellow )    
end

function yellowTap()
    flashYellow()
end

yellowButton:addEventListener( "tap", yellowTap )

local redButton = display.newRect( button_offset, button_offset+3*(button_size+button_gap), button_size, button_size)

function dimRed()
    redButton:setFillColor( .5, 0, 0 )   
end

dimRed()

function brightRed()
    redButton:setFillColor( 1, 0, 0 )   
end

function flashRed()
    brightRed()
    timer.performWithDelay(200, dimRed )    
end

function redTap()
    flashRed()
end

redButton:addEventListener( "tap", redTap )
    timer.performWithDelay(500, flashGreen )
    timer.performWithDelay(1000, flashBlue )
    timer.performWithDelay(1500, flashYellow )
    timer.performWithDelay(2000, flashRed )
function playSequence()
    
end
playSequence()