local display = false

RegisterCommand('testphone', function()
    SetDisplay(not display)
end)

RegisterNUICallback("close", function(data)
    SetDisplay(false)
end)

SetDisplay = function(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "open",
        status = bool
    })
end

--[[function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "open",
        status = bool
    })
end--]]