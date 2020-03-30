---@generic K
---@param a K
---@param b table<K, K>
---@return K
function globalFunction(a, b)
    ---@type K
    local genericTypedVar = a
    return genericTypedVar
end

---@generic K
---@param a K
---@param b table<K, K>
---@return K
local function localFunction(a, b)
    ---@type K
    local genericTypedVar = a
    return genericTypedVar
end

---@class Scope
local Scope = {}

---@generic K
---@param a K
---@param b table<K, K>
---@return K
function Scope.method(a, b)
    ---@type K
    local genericTypedVar = a
    return genericTypedVar
end

---@generic K
---@param a K
---@param b table<K, K>
---@return K
local assignedFunction = function(a, b)
    ---@type K
    local genericTypedVar = a
    return genericTypedVar
end

---@generic K
---@param a K
---@return K
local outerFunction = function(a)
    ---@param b K
    local innerFunction = function(b)
        ---@type K
        local v
    end

    innerFunction("someValue") -- Expect error
    return a
end

outerFunction("someValue")


