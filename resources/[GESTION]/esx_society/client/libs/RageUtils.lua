

MFAClient.Menus = {}

---@param id string
---@param Title string
---@param Subtitle string
---@param TextureDictionary string
---@param TextureName string
MFAClient.CreateMenu = function(id, Title, Subtitle, TextureDictionary, TextureName)
    MFAClient.Menus[id] = RageUI.CreateMenu(Title, Subtitle, MFAConfig.PositionRUI.x, MFAConfig.PositionRUI.y, TextureDictionary or "mfa", TextureName or "mfa_lite")
    return MFAClient.Menus[id]
end

---@param id string
---@param parent string
---@param Title string
---@param Subtitle string
MFAClient.CreateSubMenu = function(id, parent, Title, Subtitle)
    MFAClient.Menus[id] = RageUI.CreateSubMenu(MFAClient.Menus[parent], Title, Subtitle, MFAConfig.PositionRUI.x, MFAConfig.PositionRUI.y)
    return MFAClient.Menus[id]
end

---@return RageUI.Menus
MFAClient.getMenu = function(id)
    return MFAClient.Menus[id]
end

---@param id string
---@param cb function
---@param timer number
MFAClient.OpenMenu = function(id, cb, timer)
    if RageUI.CurrentMenu == nil then
        MFAClient.ToggleMenu(id)
        ESX.PlayerData = ESX.GetPlayerData()
        CreateThread(function()
            while RageUI.CurrentMenu ~= nil do
                MFAClient.DisableControlsOnMenu()
                cb()
                Wait(timer)
            end
        end)
    end
end

---@param Refresh boolean
MFAClient.RefreshData = function(Refresh)
    local Selected = Refresh
    if Selected then
        ESX.PlayerData = ESX.GetPlayerData()
        MFAClient.menuF5PlayerWeapons = ESX.GetWeaponList()
        for i = 1, #MFAClient.menuF5PlayerWeapons, 1 do
            if MFAClient.menuF5PlayerWeapons[i].name == 'WEAPON_UNARMED' then
                MFAClient.menuF5PlayerWeapons[i] = nil
            else
                MFAClient.menuF5PlayerWeapons[i].hash = GetHashKey(MFAClient.menuF5PlayerWeapons[i].name)
            end
        end
    end
end

MFAClient.DisableControlsOnMenu = function()
    DisableControlAction(2, 51, true)
    DisableControlAction(2, 37, true)
    DisableControlAction(2, 45, true)
    DisableControlAction(2, 140, true)
end

---@param id string
MFAClient.ToggleMenu = function(id)
    RageUI.Visible(MFAClient.Menus[id], not RageUI.Visible(MFAClient.Menus[id]))
end

MFAClient.CloseMenu = function(id)
    RageUI.Visible(id, false)
end

---@param id string
MFAClient.GetMenuIsOpen = function(id)
    return MFAClient.Menus[id].Open
end

---@param id string
---@param header boolean
---@param instructional boolean
---@param content function
---@param panels function
MFAClient.IsVisible = function(id, header, instructional, content, panels)
    RageUI.IsVisible(MFAClient.Menus[id], header, MFAConfig.Planet, instructional, content, panels)
end

---@param label string
---@param description string
---@param Style table
---@param Enabled boolean
---@param cb function
---@param Submenu string
MFAClient.ButtonWithStyle = function(label, description, Style, Enabled, cb, Submenu)
    RageUI.ButtonWithStyle(label, description, Style or {}, Enabled, cb, MFAClient.Menus[Submenu])
end

---@param Label string
---@param Items table
---@param StartedAtIndex number
---@param Description string
---@param Style table
---@param Enabled boolean
---@param Actions function
---@param Submenu string
MFAClient.RList = function(Label, Items, StartedAtIndex, Description, Style, Enabled, Actions, Submenu)
    RageUI.List(Label, Items, StartedAtIndex, Description, Style or {}, Enabled, Actions, MFAClient.Menus[Submenu])
end

---Commands
---@param name string
---@param key string
---@param description string
---@param IsAdminOnly boolean
---@param cb function
MFAClient.RegisterKey = function(name, key, description, cb)
    local command = ("%s_ByTheo_%s"):format(GetCurrentResourceName(), name)
    RegisterCommand(command, function(source, args, rawCommand) cb(source, args, rawCommand)
    end)
    RegisterKeyMapping(command, description, "keyboard", key)
end

---@param entryTitle string
---@param textEntry string
---@param inputText string
---@param maxLength number
MFAClient.KeyboardInput = function(entryTitle, textEntry, inputText, maxLength)
    AddTextEntry(entryTitle, textEntry)
    DisplayOnscreenKeyboard(1, entryTitle, '', inputText, '', '', '', maxLength)

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        return result
    else
        Citizen.Wait(500)
        return nil
    end
end