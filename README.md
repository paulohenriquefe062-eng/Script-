-- Dupe Pet Script
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChild("Humanoid")

local function dupePet()
    local pet = humanoid.Pet
    if pet then
        local newPet = pet:Clone()
        newPet.Parent = humanoid
        newPet.Name = "DuplicatedPet"
        newPet.PowerLevel.Value = 30 -- Set to desired power level
    end
end

dupePet()
