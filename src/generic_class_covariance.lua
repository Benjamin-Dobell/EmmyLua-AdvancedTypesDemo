---@class GenericA<A>
local GenericA

---@class GenericB<B> : GenericA<B>
local GenericB

---@class GenericC<C> : GenericB<C>
local GenericC

---@type GenericA<string>
local genericA

---@type GenericB<string>
local genericB

---@type GenericC<string>
local genericC

genericA = genericB
genericA = genericC

genericB = genericA -- Expect error
genericB = genericC

genericC = genericA -- Expect error
genericC = genericB -- Expect error


---@class ClassA : GenericA<string>
local ClassA

---@class ClassB : ClassA
local ClassB

---@class ClassC : ClassB
local ClassC

---@type ClassA
local classA

---@type ClassB
local classB

---@type ClassC
local classC

classA = classB
classA = classC

classB = classA -- Expect error
classB = classC

classC = classA -- Expect error
classC = classB -- Expect error

genericA = classA
genericA = classB
genericA = classC


---@class ClassGenA<T>
local ClassGenA

---@class ClassGenB<T> : ClassGenA<string>
local ClassGenB

---@class ClassGenC<T> : ClassGenB<string>
local ClassGenC

---@type ClassGenA<string>
local classGenA

---@type ClassGenB<string>
local classGenB

---@type ClassGenC<string>
local classGenC

classGenA = classGenB
classGenA = classGenC

classGenB = classGenA -- Expect error
classGenB = classGenC

classGenC = classGenA -- Expect error
classGenC = classGenB -- Expect error
