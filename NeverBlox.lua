local Neverlose_Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mana42138/Neverlose-UI/main/Source.lua"))()
local Win = Neverlose_Main:Window({
    Title = "NEVERBLOX",
    CFG = "NeverBlox",
    Key = Enum.KeyCode.H,
    External = {
        KeySystem = false,
        Key = {
            "NEVERBLOX",
            "NEVERBLOX"
        }
    }
})

local TabSection1 = Win:TSection("Aim") -- Make a Tab Section

local Autofarm = TabSection1:Tab("AimBot") -- Make a Tab in the Tab Section

local AutoFSec1 = Autofarm:Section("Aim") -- Make a new Section in the Tab
local World2 = Autofarm:Section("HVH")

local World = Autofarm:Section("AntiAim-Pls-do-not-use")

local TestFarm1 = AutoFSec1:Button("Aim", function()
    print("❌AimBotz not available at the moment")
end)

World:Slider("Spin", 0, 500, 50, function()
    print("❌Spin not available at the moment")
end)

World:Dropdown("Haed", {"Down", "Up", "Spin"}, function(h)
    print("❌AntiAim not available at the moment")
end)

local TabSection2 = Win:TSection("ESP")

local Misc2 = TabSection2:Tab("WallHack")

local Config = Misc2:Section("ESP")
local Config2 = Misc2:Section("Zoom")

local content = "Hello world!"

local CreateConfig = Config:Button("ESP", function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/linemaster2/esp-library/main/library.lua"))();

--// Master switch
ESP.Enabled = true;

--// Enable boxes
ESP.ShowBox = true;

--// Set the box type to corner
ESP.BoxType = "Corner Box Esp";

--// Enable names
ESP.ShowName = true;

--// Enable Healhbar
ESP.ShowHealth = true;

--// Enable tracers
ESP.ShowTracer = true;

--// Enable Distance
ESP.ShowDistance = true;

--[[
    Enable skeletons: (currently broken)
    ESP.ShowSkeletons = true;
]]



--[[
    These are all the settings
    local ESP_SETTINGS = {
        BoxOutlineColor = Color3.new(0, 0, 0),
        BoxColor = Color3.new(1, 1, 1),
        NameColor = Color3.new(1, 1, 1),
        HealthOutlineColor = Color3.new(0, 0, 0),
        HealthHighColor = Color3.new(0, 1, 0),
        HealthLowColor = Color3.new(1, 0, 0),
        CharSize = Vector2.new(4, 6),
        Teamcheck = false,
        WallCheck = false,
        Enabled = false,
        ShowBox = false,
        BoxType = "2D",
        ShowName = false,
        ShowHealth = false,
        ShowDistance = false,
        ShowSkeletons = false,
        ShowTracer = false,
        TracerColor = Color3.new(1, 1, 1), 
        TracerThickness = 2,
        SkeletonsColor = Color3.new(1, 1, 1),
        TracerPosition = "Bottom",
    }
    ermm yep thats about it
]]
        Neverlose_Main:CreateCfg("Mana64")
end)

local CreateConfig = Config:Button("Chams", function()
    local FillColor = Color3.fromRGB(178, 34, 34)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
    Neverlose_Main:CreateCfg("Mana64")
end)

Config2:Slider("Zoom", 16, 120, 0, function(t)
    game.Workspace.Camera.FieldOfView = t
end)
