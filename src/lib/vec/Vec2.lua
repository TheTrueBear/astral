
--[[VECTOR 2 CLASS]]--
local Vec2 = {}

--Constructor
function Vec2.new(x, y)
    local self = setmetatable({}, Vec2)

    self.x = x
    self.y = y

    return self
end function Vec2.__index(t,k)return Vec2[k]end

-- Operator overloads
function Vec2:Add(other)
    return Vec2.new(self.x + other.x, self.y + other.y)
end
function Vec2:Sub(other)
    return Vec2.new(self.x - other.x, self.y - other.y)
end
function Vec2:Mul(other)
    return Vec2.new(self.x * other.x, self.y * other.y)
end
function Vec2:Div(other)
    return Vec2.new(self.x / other.x, self.y / other.y)
end

-- Methods
function Vec2:Round()
    return Vec2.new(math.ceil(self.x - 0.499999), math.ceil(self.y - 0.499999))
end
function Vec2:Table()
    return {self.x, self.y}
end
function Vec2:Length()
    return math.pow(math.sqrt(self.x * self.x + self.y * self.y), 2)
end
function Vec2:Normalize()
    local len = self:Length()
    return Vec2.new(self.x / len, self.y / len)
end

-- return
return Vec2