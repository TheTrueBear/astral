
local Font = {}

function Font.new(path, size)
    size = size or 16
    path = path or ""
    
    local self = setmetatable({}, Font)

    self.path = path
    self.size = size
    if path == "" then
        self.data = love.graphics.newFont(size)
    else
        self.data = love.graphics.newFont(path, size)
    end

    return self
end function Font.__index(t,k)return Font[k]end

return Font