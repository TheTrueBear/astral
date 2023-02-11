

local Vec2 = require 'src.lib.vec.Vec2'
require 'src.lib.l'

local Input = {}

function Input.new()
    local self = setmetatable({}, Input)

    -- Data
    self.keys = {
        just = {},
        held = {},
        rlsd = {}
    }
    self.mouse = {
        just = {m1=false,m2=false,m3=false},
        held = {m1=false,m2=false,m3=false},
        rlsd = {m1=false,m2=false,m3=false},
        pos = Vec2.new(0, 0)
    }

    -- Return
    return self
end function Input.__index(t,k)return Input[k]end

function Input:UpdateMousePress(button, active)
    if active == -1 then
        self.mouse.just["m"..tostring(button)] = false
        self.mouse.rlsd["m"..tostring(button)] = false
    elseif active == true then
        self.mouse.just["m"..tostring(button)] = true
        self.mouse.held["m"..tostring(button)] = true
    else
        self.mouse.held["m"..tostring(button)] = false
        self.mouse.rlsd["m"..tostring(button)] = true
    end
end
function Input:UpdateMousePos(x, y) self.mouse.pos = Vec2.new(x, y) end

function Input:UpdateKeyPress(key, active)
    if active == -1 then
        table.remove(self.keys.just, table.indexOf(self.keys.just, string.lower(key)))
        table.remove(self.keys.rlsd, table.indexOf(self.keys.rlsd, string.lower(key)))
    elseif active == true then
        table.insert(self.keys.just, string.lower(key))
        table.insert(self.keys.held, string.lower(key))
    else
        table.remove(self.keys.held, table.indexOf(self.keys.held, string.lower(key)))
        table.insert(self.keys.rlsd, string.lower(key))
    end
end

function Input:IsKeyDown(key) return table.find(self.keys.held, key)[2] end
function Input:IsKeyJustDown(key) return table.find(self.keys.just, key)[2] end
function Input:IsKeyJustUp(key) return table.find(self.keys.rlsd, key)[2] end

return Input