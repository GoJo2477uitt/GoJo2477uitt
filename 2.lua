if game.PlaceId == 10384852727 then

local w = game:GetService("Workspace")

local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()

local Window = Library:CreateWindow({
    Title = "quantum Hub",
    Footer = "Made by VoidscriptZ",
    Icon = nil,
    NotifySide = "Right",
    CornerRadius = 13,
    SidebarCompactWidth = 200,
    Compact = true,
    DisableSearch = false,
    ToggleKeybind = Enum.KeyCode.M,
    Size = UDim2.fromOffset(735,550)
})

Window:SetSidebarWidth(230)

local Main = Window:AddTab({
    Name = "Main",
    Description = "Main features",
    Icon = "house"
})

local Misc = Window:AddTab({
    Name = "Misc",
    Description = "OP Features",
    Icon = "gamepad"
})

local Logs = Window:AddTab({
    Name = "Logs",
    Description = "Announcement",
    Icon = "circle-alert"
})

local Other = Window:AddTab({
    Name = "Other",
    Description = "Other Script",
    Icon = "gamepad-2"
})

ThemeManager:SetLibrary(Library)

local CustomTheme = {
    BackgroundColor = Color3.fromRGB(15, 15, 15), 
    MainColor       = Color3.fromRGB(10, 10, 10),   -- Main panels/buttons
    AccentColor     = Color3.fromRGB(150, 200, 255),  -- Rift-style **orange highlights**
    OutlineColor    = Color3.fromRGB(120, 190, 255),   -- Dark gray outlines
    FontColor       = Color3.fromRGB(250, 250, 250) -- Bright white text
}

ThemeManager:SetDefaultTheme(CustomTheme)

ThemeManager:ThemeUpdate()

local itemgroup = Main:AddLeftGroupbox("Item Giver", "hammer")
local esgroup = Main:AddRightGroupbox("Instant Escape", "zap")

local Miscgroup = Misc:AddLeftGroupbox("OP", "rocket")

local Espgroup = Misc:AddRightGroupbox("ESP", "eye")

local Logsgroup = Logs:AddLeftGroupbox("Tips", "circle-alert")

local logsgroups = Logs:AddRightGroupbox("Subscribe", "youtube")

local scriptstatus = Logs:AddRightGroupbox("Script Status", "triangle-alert")

local otherscript = Other:AddLeftGroupbox("Other Script", "flame")

local otherscripts = Other:AddRightGroupbox("Server", "server")

local Workspace = game:GetService("Workspace")

local function GiveItem(itemName)
    for _, v in ipairs(Workspace:GetDescendants()) do
        if v:IsA("RemoteEvent") and v.Name == "InteractRemote" then
            local parent = v.Parent
            if parent and parent.Name == itemName then
                v:FireServer()
                return
            end

            local toolName = parent:FindFirstChild("Toolname")
            if toolName and toolName:IsA("StringValue") and toolName.Value == itemName then
                v:FireServer()
                return
            end
        end
    end
end

itemgroup:AddButton({
    Text = "Get Shotgun",
    Func = function()
        GiveItem("Shotgun")
    end
})

itemgroup:AddButton({
    Text = "Get Stun gun",
    Func = function()
        GiveItem("Stun gun")
    end
})

itemgroup:AddButton({
    Text = "Get Safe key",
    Func = function()
        GiveItem("Safe key")
    end
})

itemgroup:AddButton({
    Text = "Get Boat key",
    Func = function()
        GiveItem("Boat key")
    end
})

itemgroup:AddButton({
    Text = "Get Boat steering wheel",
    Func = function()
        GiveItem("Boat steering wheel")
    end
})

itemgroup:AddButton({
    Text = "Get Gasoline can",
    Func = function()
        GiveItem("Gasoline can")
    end
})

itemgroup:AddButton({
    Text = "Get Padlock key",
    Func = function()
        GiveItem("Padlock key")
    end
})

itemgroup:AddButton({
    Text = "Get Special key",
    Func = function()
        GiveItem("Special key")
    end
})

itemgroup:AddButton({
    Text = "Get Crowbar",
    Func = function()
        GiveItem("Crowbar")
    end
})

itemgroup:AddButton({
    Text = "Get Door handle",
    Func = function()
        GiveItem("Door handle")
    end
})

itemgroup:AddButton({
    Text = "Get Door lock",
    Func = function()
        GiveItem("Door lock")
    end
})

itemgroup:AddButton({
    Text = "Get Duct tape",
    Func = function()
        GiveItem("Duct tape")
    end
})

itemgroup:AddButton({
    Text = "Get Glass fuse",
    Func = function()
        GiveItem("Glass fuse")
    end
})

itemgroup:AddButton({
    Text = "Get Hand wheel",
    Func = function()
        GiveItem("Hand wheel")
    end
})

itemgroup:AddButton({
    Text = "Get Security key",
    Func = function()
        GiveItem("SecurityKey")
    end
})

itemgroup:AddButton({
    Text = "Get Grenade",
    Func = function()
        GiveItem("Grenade1")
    end
})

itemgroup:AddButton({
    Text = "Get Helicopter key",
    Func = function()
        GiveItem("Helicopter key")
    end
})

itemgroup:AddButton({
    Text = "Get Helicopter manual",
    Func = function()
        GiveItem("Helicopter manual")
    end
})

itemgroup:AddButton({
    Text = "Get Spark plug",
    Func = function()
        GiveItem("Spark plug")
    end
})

itemgroup:AddButton({
    Text = "Get Wrench",
    Func = function()
        GiveItem("Wrench")
    end
})

itemgroup:AddButton({
    Text = "Get SlendrinaMask",
    Func = function()
        GiveItem("SlendrinaMask")
    end
})

itemgroup:AddButton({
    Text = "Get Meat",
    Func = function()
        GiveItem("Meat")
    end
})

itemgroup:AddButton({
    Text = "Get Weapon key",
    Func = function()
        GiveItem("Weapon key")
    end
})

itemgroup:AddButton({
    Text = "Get Cutting pliers",
    Func = function()
        GiveItem("Cutting pliers")
    end
})

itemgroup:AddButton({
    Text = "Get A piece of a picture (1)",
    Func = function()
        GiveItem("A piece of a picture (1)")
    end
})

itemgroup:AddButton({
    Text = "Get A piece of a picture (2)",
    Func = function()
        GiveItem("A piece of a picture (2)")
    end
})

itemgroup:AddButton({
    Text = "Get A piece of a picture (3)",
    Func = function()
        GiveItem("A piece of a picture (3)")
    end
})

esgroup:AddButton({
    Text = "Door Escape",
    Func = function()
        local player = game.Players.LocalPlayer
local hrp = player.Character.HumanoidRootPart

for i = 1, 6 do
    local preset = workspace:FindFirstChild("Preset" .. i)
    if preset 
        and preset:FindFirstChild("Locks")
        and preset.Locks:FindFirstChild("Ending")
        and preset.Locks.Ending:FindFirstChild("Ending1") then

        local fire = preset.Locks.Ending.Ending1
        firetouchinterest(hrp, fire, 0)
        firetouchinterest(hrp, fire, 1)
    end
end
    end
})

esgroup:AddButton({
    Text = "Boat Escape",
    Func = function()
        local player = game.Players.LocalPlayer
local hrp = player.Character.HumanoidRootPart

for i = 1, 6 do
    local preset = workspace:FindFirstChild("Preset" .. i)
    if preset 
        and preset:FindFirstChild("Locks")
        and preset.Locks:FindFirstChild("Ending")
        and preset.Locks.Ending:FindFirstChild("Ending2") then

        local fire = preset.Locks.Ending.Ending2
        firetouchinterest(hrp, fire, 0)
        firetouchinterest(hrp, fire, 1)
    end
end
    end
})

esgroup:AddButton({
    Text = "Helicopter Escape",
    Func = function()
        local player = game.Players.LocalPlayer
local hrp = player.Character.HumanoidRootPart

for i = 1, 6 do
    local preset = workspace:FindFirstChild("Preset" .. i)
    if preset 
        and preset:FindFirstChild("Locks")
        and preset.Locks:FindFirstChild("Ending")
        and preset.Locks.Ending:FindFirstChild("Ending3") then

        local fire = preset.Locks.Ending.Ending3
        firetouchinterest(hrp, fire, 0)
        firetouchinterest(hrp, fire, 1)
    end
end
    end
})

Miscgroup:AddButton({
    Text = "Infinite Ammo",
    Func = function()
        local plr = game:GetService("Players").LocalPlayer
local b = plr.Backpack

for i, v in pairs(b:GetChildren()) do
    if v.Name == "StunGunAmmo" or v.Name == "ShotgunAmmo" then
        
        if v.Value <= 0 then
            v.Value = 2
        end

        v:GetPropertyChangedSignal("Value"):Connect(function()
            if v.Value <= 0 then
                v.Value = 2
            end
        end)
    end
end
    end
})

Miscgroup:AddButton({
    Text = "Anti Fall",
    Func = function()
local plr = game:GetService("Players").LocalPlayer
local playerGui = plr:WaitForChild("PlayerGui")

local function destroyFallSystem()
    for _, obj in pairs(playerGui:GetDescendants()) do
        if obj.Name == "FallSystem" then
            obj:Destroy()
        end
    end
end

destroyFallSystem()

playerGui.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "FallSystem" then
        descendant:Destroy()
    end
end)
end
})

Miscgroup:AddButton({
    Text = "Kill Grandpa",
    Func = function()
   for i = 1, 6 do
    local preset = workspace:FindFirstChild("Preset" .. i)
    if preset then
        local args = {
            preset:WaitForChild("Locks"):WaitForChild("Grandpa"):WaitForChild("Zombie"),
            Instance.new("Part", nil)
        }
        game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("ScreenGUI"):WaitForChild("ShotgunGUI"):WaitForChild("EnemyDamage"):FireServer(unpack(args))
    end
end
end
})

Miscgroup:AddButton({
    Text = "Kill Granny",
    Func = function()
   for i = 1, 6 do
    local preset = workspace:FindFirstChild("Preset" .. i)
    if preset then
        local args = {
            preset:WaitForChild("Locks"):WaitForChild("Granny"):WaitForChild("Zombie"),
            Instance.new("Part", nil)
        }
        game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUI"):WaitForChild("ScreenGUI"):WaitForChild("ShotgunGUI"):WaitForChild("EnemyDamage"):FireServer(unpack(args))
    end
end
end
})

local MyToggle = Miscgroup:AddToggle("MyToggle", {
    Text = "Auto Kill Granny",
    Default = false,
})

getgenv().AutoKills = false

function AutoKills()
    while getgenv().AutoKills do
        wait(0.3)
        for i = 1, 6 do
            local preset = workspace:FindFirstChild("Preset" .. i)
            if preset then
                local args = {
                    preset:WaitForChild("Locks"):WaitForChild("Granny"):WaitForChild("Zombie"),
                    Instance.new("Part", nil)
                }
                game:GetService("Players").LocalPlayer
                    :WaitForChild("PlayerGui")
                    :WaitForChild("MainGUI")
                    :WaitForChild("ScreenGUI")
                    :WaitForChild("ShotgunGUI")
                    :WaitForChild("EnemyDamage")
                    :FireServer(unpack(args))
            end
        end
    end
end

MyToggle:OnChanged(function(state)
    getgenv().AutoKills = state
    if state then
        spawn(AutoKills)
    end
end)

local MyToggle = Miscgroup:AddToggle("MyToggle", {
    Text = "Auto Kill Grandpa",
    Default = false,
})

getgenv().AutoKill = false

function AutoKill()
    while getgenv().AutoKill do
        wait(0.3)
        for i = 1, 6 do
            local preset = workspace:FindFirstChild("Preset" .. i)
            if preset then
                local args = {
                    preset:WaitForChild("Locks"):WaitForChild("Grandpa"):WaitForChild("Zombie"),
                    Instance.new("Part", nil)
                }
                game:GetService("Players").LocalPlayer
                    :WaitForChild("PlayerGui")
                    :WaitForChild("MainGUI")
                    :WaitForChild("ScreenGUI")
                    :WaitForChild("ShotgunGUI")
                    :WaitForChild("EnemyDamage")
                    :FireServer(unpack(args))
            end
        end
    end
end

MyToggle:OnChanged(function(state)
    getgenv().AutoKill = state
    if state then
        spawn(AutoKill)
    end
end)

local Workspace = game:GetService("Workspace")

getgenv().GrannyESPEnabled = false

local function ApplyGrannyESP(model)
    if not model:IsA("Model") then return end
    if model.Name ~= "Granny" then return end
    if model:FindFirstChild("GrannyESP") then return end

    local esp = Instance.new("Highlight")
    esp.Name = "GrannyESP"
    esp.FillColor = Color3.fromRGB(255, 0, 0)
    esp.OutlineColor = Color3.fromRGB(255, 255, 255)
    esp.OutlineTransparency = 0.1
    esp.Adornee = model
    esp.Parent = model
end

local function EnableGrannyESP()
    for _, v in ipairs(Workspace:GetDescendants()) do
        ApplyGrannyESP(v)
    end
end

local function DisableGrannyESP()
    for _, v in ipairs(Workspace:GetDescendants()) do
        if v:IsA("Model") and v.Name == "Granny" then
            local esp = v:FindFirstChild("GrannyESP")
            if esp then
                esp:Destroy()
            end
        end
    end
end

Workspace.DescendantAdded:Connect(function(desc)
    if getgenv().GrannyESPEnabled then
        ApplyGrannyESP(desc)
    end
end)

local GrannyESP_Toggle = Espgroup:AddToggle("GrannyESP", {
    Text = "ESP Granny",
    Default = false,
})

GrannyESP_Toggle:OnChanged(function(state)
    getgenv().GrannyESPEnabled = state

    if state then
        EnableGrannyESP()
    else
        DisableGrannyESP()
    end
end)

local Workspace = game:GetService("Workspace")

getgenv().GrandpaESPEnabled = false

local function ApplyGrandpaESP(model)
    if not model:IsA("Model") then return end
    if model.Name ~= "Grandpa" then return end
    if model:FindFirstChild("GrandpaESP") then return end

    local esp = Instance.new("Highlight")
    esp.Name = "GrandpaESP"
    esp.FillColor = Color3.fromRGB(255, 0, 0)
    esp.OutlineColor = Color3.fromRGB(255, 255, 255)
    esp.OutlineTransparency = 0.1
    esp.Adornee = model
    esp.Parent = model
end

local function EnableGrandpaESP()
    for _, v in ipairs(Workspace:GetDescendants()) do
        ApplyGrandpaESP(v)
    end
end

local function DisableGrandpaESP()
    for _, v in ipairs(Workspace:GetDescendants()) do
        if v:IsA("Model") and v.Name == "Grandpa" then
            local esp = v:FindFirstChild("GrandpaESP")
            if esp then
                esp:Destroy()
            end
        end
    end
end

Workspace.DescendantAdded:Connect(function(desc)
    if getgenv().GrandpaESPEnabled then
        ApplyGrandpaESP(desc)
    end
end)

local GrandpaESP_Toggle = Espgroup:AddToggle("GrannyESP", {
    Text = "ESP Grandpa",
    Default = false,
})

GrandpaESP_Toggle:OnChanged(function(state)
    getgenv().GrandpaESPEnabled = state

    if state then
        EnableGrandpaESP()
    else
        DisableGrandpaESP()
    end
end)

local LabelOptions = {
    Text = "Tips: You can Execute the Script with no need to Key system and its [Keyless]",
    DoesWrap = true
}
 
local Label = Logsgroup:AddLabel(LabelOptions)

local LabelOptions = {
    Text = [[
Owner of Script: VoidscriptZ 
UI Library Used: Obsidian UI Lib
Thanks for using my Script !
]],
    DoesWrap = true
}
 
local Label = Logsgroup:AddLabel(LabelOptions)

local LabelOptions = {
    Text = "Please Support my Youtube Channel the link in below.",
    DoesWrap = true
}
 
local Label = logsgroups:AddLabel(LabelOptions)

logsgroups:AddButton({
    Text = "Copy Youtube Link",
    Func = function()
        setclipboard("https://m.youtube.com/channel/UCTzypy2MR1aefYFXHv8I9LA Name YT: VoidscriptZ")
        Library:Notify({
    Title = "Successfully",
    Description = "Successfully Copy the link!",
    Time = 0.7,
})
    end
})

local LabelOptions = {
    Text = [[
The script is 🟢
- 🟢 Script is UP
- 🔴 Script is Down
]],
    DoesWrap = true
}

local Label = scriptstatus:AddLabel(LabelOptions)

local LabelOptions = {
    Text = "You're in Granny Multiplayer | Chapter 2",
    DoesWrap = true
}

local Label = scriptstatus:AddLabel(LabelOptions)

otherscript:AddButton({
    Text = "Load Infinite Yield",
    Func = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source", true))()
    end
})

otherscript:AddButton({
    Text = "Load Fly Script",
    Func = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/6rNxaNXY", true))()
    end
})

otherscript:AddButton({
    Text = "Load TP Tool",
    Func = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Zynpj9HN", true))()
    end
})

Library.ShowToggleFrameInKeybinds = true

Library.ShowCustomCursor = false

Logsgroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
    Default = "M",
    NoUI = false,
    Text = "Menu Keybind"
})

local OpenConnection

local function destroyWorkspaceOpen()
    for _, obj in ipairs(workspace:GetChildren()) do
        if obj.Name == "Open" then
            obj:Destroy()
        end
    end
end

local DestroyOpenToggle = Miscgroup:AddToggle("DestroyOpen", {
    Text = "Auto Destroy Bear trap",
    Default = false,
})

DestroyOpenToggle:OnChanged(function(state)
    if state then
        destroyWorkspaceOpen()

        OpenConnection = workspace.ChildAdded:Connect(function(child)
            if child.Name == "Open" then
                task.wait()
                child:Destroy()
            end
        end)
    else
        if OpenConnection then
            OpenConnection:Disconnect()
            OpenConnection = nil
        end
    end
end)
otherscripts:AddButton({
    Text = "Rejoin",
    Func = function()
        local TeleportService = game:GetService("TeleportService")

local function rejoinServer()
    local placeId = game.PlaceId
    local jobId = game.JobId
    
    print(" Rejoining server...")
    
    local success, errorMsg = pcall(function()
        TeleportService:TeleportToPlaceInstance(placeId, jobId)
    end)
    
    if success then
        print(" Rejoin initiated!")
    else
        print(" Rejoin failed:", errorMsg)
    end
end

rejoinServer()
    end
})

otherscripts:AddButton({
    Text = "Lowest Server",
    Func = function()
        local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local function findEmptyPublicServer()
    local placeId = game.PlaceId
    
    local success, servers = pcall(function()
        local response = game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100")
        return HttpService:JSONDecode(response)
    end)
    
    if not success or not servers then
        warn("Failed to get server list!")
        return
    end
    
    for _, server in pairs(servers.data) do
        if (server.playing == 1 or server.playing == 2) and server.id ~= game.JobId then
            print(" Found nearly empty server with " .. server.playing .. " player(s)!")
            print(" Teleporting...")
            
            pcall(function()
                TeleportService:TeleportToPlaceInstance(placeId, server.id)
            end)
            break
        end
    end
end

findEmptyPublicServer()
    end
})

otherscripts:AddButton({
    Text = "Server hop",
    Func = function()
        local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local function randomHop()
    local placeId = game.PlaceId
    
    local servers = HttpService:JSONDecode(game:HttpGet(
        "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?limit=50"
    ))
    
    for i = 1, 50 do
        local randomIndex = math.random(1, #servers.data)
        local randomServer = servers.data[randomIndex]
        
        if randomServer.id ~= game.JobId then
            TeleportService:TeleportToPlaceInstance(placeId, randomServer.id)
            break
        end
    end
end

randomHop()
    end
})
end
