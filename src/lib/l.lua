function table.indexOf(t, object)
    if type(t) ~= "table" then error("table expected, got " .. type(t), 2) end

    for i, v in pairs(t) do
        if object == v then
            return i
        end
    end
end
function table.find(t, object)
    for k, v in pairs(t) do
        if v == object then
            return {k, v}
        end
    end
    return {nil, nil}
end