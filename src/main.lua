
--[[MODULES]]--
local Vec2   = require 'src.lib.vec.Vec2'
local Color4 = require 'src.lib.color.Color4'
local Font   = require 'src.lib.Font'
local Input  = require 'src.lib.Input'

--[[CONSTANTS]]--

--[[VALUES]]--
local x = 0
local drawl = "asd"

--[[ONLOAD]]--
function love.load()
    I = Input.new()

    FONT = Font.new("assets/fonts/Gamer.ttf", 48)
    love.graphics.setFont(FONT.data)
end

--[[INPUT]]--
--*handed off to the input class
function love.mousepressed(_,_, button)  I:UpdateMousePress(button, true) end
function love.mousereleased(_,_, button) I:UpdateMousePress(button, false) end
function love.mousemoved(x, y)           I:UpdateMousePos(x, y) end
function love.keypressed(k)              I:UpdateKeyPress(k, true) end
function love.keyreleased(k)             I:UpdateKeyPress(k, false) end

--[[ONUPDATE]]--
function love.update(dt)
end

--[[ONRENDER]]--
function love.draw()
    love.graphics.print(tostring(I:IsKeyDown("lshift")))
    love.graphics.circle("fill", I.mouse.pos.x, I.mouse.pos.y, 25)

    I:UpdateMousePress(-1, -1)
    I:UpdateKeyPress(-1, -1)
end