
--[[MODULES]]--
local Vec2  = require 'src.lib.vec.Vec2'
local Color4 = require 'src.lib.color.Color4'

--[[CONSTANTS]]--
local RED = Color4.new(255, 0, 0)
local BLUE = Color4.new(0, 0, 255)

--[[VALUES]]--
local x = 0

--[[ONLOAD]]--
function love.load()
end

--[[ONUPDATE]]--
function love.update(dt)
    x = x + 50 * dt
end

--[[ONRENDER]]--
function love.draw()
    love.graphics.setColor(RED.r, 0, 0)
    love.graphics.rectangle("fill", x, 50, 40, 30)
end