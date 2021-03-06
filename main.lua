-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- By Matthew Swan

-- Your code here

--set the size of the buttons and the flash delay
button_size = 90
button_gap = 20
button_offset = button_gap+button_size/2
flash_delay = 500

--set the sounds
local soundTable = {

    saw1 = audio.loadSound( "green.wav" ),
    saw2 = audio.loadSound( "blue.wav" ),
    saw3 = audio.loadSound( "yellow.wav" ),
    saw4 = audio.loadSound( "red.wav" )
}

--set up the green button
local greenButton = display.newRect( button_offset, button_offset, button_size, button_size)

--make the green button green
function dimGreen()
    greenButton:setFillColor( 0, .5, 0 )   
end

dimGreen()
--light up the green button
function brightGreen()
    greenButton:setFillColor( 0, 1, 0 )   
end
--make the green mutton beep at the same time as the flash
function flashGreen()
    brightGreen()
    audio.play( soundTable["saw1"] )
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
    audio.play( soundTable["saw2"] )
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
    audio.play( soundTable["saw3"] )
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
    audio.play( soundTable["saw4"] )
    timer.performWithDelay(200, dimRed )    
end

function redTap()
    flashRed()
end

redButton:addEventListener( "tap", redTap )

--flashes the colour that its passed
function flashColour(delay,colour)
   if colour=="Green" then
           timer.performWithDelay(delay, flashGreen)
       elseif colour=="Blue" then
           timer.performWithDelay(delay, flashBlue)
       elseif colour=="Yellow" then
           timer.performWithDelay(delay, flashYellow)
       else
           timer.performWithDelay(delay, flashRed)
    end
end

--flash each colour in turn
function newtestSequence()
    colours={"Green","Blue","Yellow","Red"}
    for i, colour in ipairs(colours) do
        flashColour(i*flash_delay,colour)
   end
end

function oldtestSequence()
    --timer.performWithDelay(500, flashColour("Green") )
    --timer.performWithDelay(1000, flashColour("Blue") )
    --timer.performWithDelay(1500, flashColour("Yellow") )
    flashColour(2000,"Red")
end
-- preform the test sequence
function testSequence()
    timer.performWithDelay(500, flashGreen )
    timer.performWithDelay(1000, flashBlue )
    timer.performWithDelay(1500, flashYellow )
    timer.performWithDelay(2000, flashRed )
end

newtestSequence()
