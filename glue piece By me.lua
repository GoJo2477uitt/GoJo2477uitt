local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Xms Hub X",
    Icon = "door-open",
    Author = "V 0.1",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    Background = "", -- rbxassetid only
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = true,
        Callback = function()
            print("clicked")
        end,
    },
    --[[
    KeySystem = { -- <- ↓ remove this all, if you dont neet the key system
        Key = { "1234", "5678" },
        Note = "Example Key System.",
        Thumbnail = {
            Image = "rbxassetid://",
            Title = "Thumbnail",
        },
        URL = "https://github.com/Footagesus/WindUI",
        SaveKey = true,
    },
    ]]
})



Window:EditOpenButton({
    Title = "Open Example UI",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})




local Tab = Window:Tab({
    Title = "Auto Farm ",
    Icon = "bird",
    Locked = false,
})

local Dropdown = Tab:Dropdown({
    Title = "Select Mod ",
    Values = { "Category A", "Category B", "Category C" },
    Value = "Category A",
    Callback = function(option) 
        print("Category selected: " .. option) 
    end
})


local Toggle = Tab:Toggle({
    Title = "Farm ",
    Desc = "Toggle Description",
    Icon = "bird",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})


local Dropdown = Tab:Dropdown({
    Title = "Select Boss",
    Values = { "Category A", "Category B", "Category C" },
    Value = { "Category A" },
    Multi = true,
    AllowNone = true,
    Callback = function(option) 
        print("Categories selected: " .. game:GetService("HttpService"):JSONEncode(option)) 
    end
})



local Toggle = Tab:Toggle({
    Title = "Farm ",
    Desc = "Toggle Description",
    Icon = "bird",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        print("Toggle Activated" .. tostring(state))
    end
})


local Tab = Window:Tab({
    Title = "TP",
    Icon = "bird",
    Locked = false,
})


local Button = Tab:Button({
    Title = "เกาะแรก",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
 local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(-10.9988079, -28.4999962, -445.091064, 0.998533249, 1.58810183e-12, 0.0541416407, 5.52279644e-09, 1, -1.01886165e-07, -0.0541416407, 1.02035735e-07, 0.998533249)}):Play()
end
})


local Button = Tab:Button({
    Title = "เกาะ สุ่มผล",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(-1243.9447, -10.9391336, 675.572449, -0.108717985, -7.29708313e-14, -0.994072616, -5.12874898e-09, 1, 5.60838598e-10, 0.994072616, 5.1593223e-09, -0.108717985)}):Play()
 end
})


local Button = Tab:Button({
    Title = "เกาะลอยฟ้า",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(-1085.74268, 363.483704, 1628.24207, -0.999463797, -4.11714912e-10, 0.0327426232, 3.05131307e-05, 0.999999583, 0.000931421469, -0.0327426083, 0.000931921124, -0.999463379)}):Play()
 end
})


local Button = Tab:Button({
    Title = "เกาะโยรุแท้",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(1437.42261, -27.9000072, 1264.98657, -0.723520637, 7.66230634e-09, -0.69030273, -0.000667146931, 0.999999523, 0.000699261669, 0.690302372, 0.000966463645, -0.723520339)}):Play()
 end
})


local Button = Tab:Button({
    Title = "เกาะโยรุปลอม",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(1784.95557, -27.0000057, -509.997345, 0.347708762, 6.26400354e-09, 0.93760258, 0.000909338589, 0.999999523, -0.000337233767, -0.937602162, 0.000969857327, 0.347708613)}):Play()
 end
})


local Button = Tab:Button({
    Title = "เกาะสลาม",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(-1277.22559, -28.6000061, -408.536804, -0.794014394, -9.52910995e-09, 0.607898951, 0.000640472805, 0.999999464, 0.000836576801, -0.607898593, 0.00105359685, -0.794013977)}):Play()
 end
})


local Button = Tab:Button({
    Title = "เกาะงู",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(-2313.31445, 14.9000053, 316.563721, -0.906890035, -5.51416468e-09, 0.421367347, 0.000427351566, 0.999999464, 0.000919782673, -0.421367139, 0.00101421378, -0.906889558)}):Play()
 end
})


local Button = Tab:Button({
    Title = "เกาะทราย",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(-2208.42456, -28.600008, 1464.7749, -0.40470621, 6.72641631e-09, -0.914446771, -0.000848371186, 0.999999583, 0.000375470525, 0.914446354, 0.000927745539, -0.404706031)}):Play()
 end
})


local Button = Tab:Button({
    Title = "เกาะน้ำตก",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(-594.60083, 74.39991, 2718.53247, -0.834304929, 7.36653716e-09, -0.551303267, -0.00057774951, 0.999999464, 0.000874340185, 0.551302969, 0.00104798155, -0.834304452)}):Play()
 end
})



local Button = Tab:Button({
    Title = "เกาะ Noob",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(710.178223, 23.3999958, 2568.7207, 0.960361302, 3.78281451e-09, 0.278758347, 0.000290500233, 0.999999464, -0.00100082729, -0.278758198, 0.00104213518, 0.960360765)}):Play()
 end
})



local Button = Tab:Button({
    Title = "เกาะกลาง",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(154.208862, 35.9742088, 907.076477, 0.99689275, 3.74904857e-07, -0.078770943, -8.25691532e-05, 0.999999464, -0.00104020187, 0.0787708983, 0.00104347372, 0.996892214)}):Play()
 end
})



local Button = Tab:Button({
    Title = "เกาะเหี้ยไรวะ",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(553.252686, -28.1800137, -629.555664, 0.573776066, -7.94125121e-09, -0.819012225, -0.0007663453, 0.999999583, -0.000536888896, 0.819011867, 0.00093570014, 0.573775828)}):Play()
 end
})



local Button = Tab:Button({
    Title = "เกาะคาร่า",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(30.8488979, -20.9500027, -1679.8717, 0.66264528, -8.29354097e-09, -0.748933375, -0.000707286177, 0.999999583, -0.000625807501, 0.748933077, 0.000944398635, 0.662644982)}):Play()
 end
})



local Button = Tab:Button({
    Title = "เกาะSans",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(2248.49536, -27.0000057, -1909.64307, -0.995601714, 1.24319688e-09, -0.0936866403, -8.73127065e-05, 0.999999583, 0.00092787965, 0.093686603, 0.000931978633, -0.995601296)}):Play()
 end
})



local Button = Tab:Button({
    Title = "เกาะเป็ด",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(2559.41699, 14.4901495, 1515.84338, 0.558848083, 8.60373817e-09, 0.829270065, 0.000869109936, 0.999999464, -0.000585706672, -0.829269588, 0.00104804791, 0.558847785)}):Play()
 end
})



local Button = Tab:Button({
    Title = "เกาะเคียว",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
local TweenService = game:GetService("TweenService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
TweenService:Create(hrp, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = CFrame.new(1684.21265, 191.099991, 2958.40112, -0.641767561, -3.21584981e-09, 0.766899228, -2.70382987e-08, 1, -1.84332603e-08, -0.766899228, -3.25655165e-08, -0.641767561)}):Play()
 end
})

local Section = Tab:NewSection("ผู้เล่น")

players = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(players,v.Name)
end

local Dropdown = Tab:Dropdown({
    Title = "Select Mod ",
    Values = { "Category A", "Category B", "Category C" },
    Value = "Category A",
    Callback = function(abc) 
        Select = abc
    end
})


local Button = Tab:Button({
    Title = "วาปหาคน",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
 end
})

