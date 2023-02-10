
local Color4 = {}

function Color4.new(r, g, b, a)

    local self = setmetatable({}, Color4)

    a = a or 255
    self.ao = a
    self.ro = r
    self.go = g
    self.bo = b
    self.r = r / 255
    self.g = g / 255
    self.b = b / 255
    self.a = a / 255

    return self
end function Color4.__index(t,k)return Color4[k]end

return Color4