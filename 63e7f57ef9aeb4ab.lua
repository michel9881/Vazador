-- Bazuka as Were


loadstring(game:HttpGet("https://raw.githubusercontent.com/dndjsjssj/Ggg/refs/heads/Gghs/Dev"))()
wait(0.1)
setclipboard("asf.69")
local v1 = game:GetService("TextChatService")
local vu2 = game:GetService("Players")
local vu3 = vu2.LocalPlayer
local vu4 = {
    Davi1901lucas = true,
    Lusquinha_067 = true,
    gokuooo99 = true
}
local vu5 = {}
local function vu7(p6)
    return vu4[p6]
end
local function vu15(p8)
    local v9 = p8:lower()
    local v10 = vu2
    local v11, v12, v13 = ipairs(v10:GetPlayers())
    while true do
        local v14
        v13, v14 = v11(v12, v13)
        if v13 == nil then
            break
        end
        if v14.Name:lower():find(v9, 1, true) then
            return v14
        end
    end
end
v1.MessageReceived:Connect(function(p16)
    local v17 = vu2:GetPlayerByUserId(p16.TextSource.UserId)
    if v17 and vu7(v17.Name) then
        local v18, v19, v20 = p16.Text:match("^(%S+)%s*(%S+)%s*(.*)$")
        local v21 = vu15(v19)
        if v18 == "/kick" or (v18 == "/band" or v18 == "/banc") then
            if not v21 then
                return
            end
            local v22 = (v20 == "" or not v20) and "No reason provided" or v20
            if v18 == "/band" then
                writefile("KamuiHubBan.txt", string.format("true, \"%s\", \"%s\"", v17.Name, v22))
                if v21 == vu3 then
                    vu3:Kick("You\'re blacklisted in the hub (Device Ban). Banned by: " .. v17.Name .. ". Reason: " .. v22)
                end
            elseif v18 == "/banc" then
                local v23 = "ban_" .. v21.UserId .. ".txt"
                writefile(v23, string.format("true, \"%s\", \"%s\"", v17.Name, v22))
                if v21 == vu3 then
                    vu3:Kick("You\'re blacklisted in the hub (Account Ban). Banned by: " .. v17.Name .. ". Reason: " .. v22)
                end
            elseif v18 == "/kick" and v21 == vu3 then
                vu3:Kick("You\'ve been kicked from the game by the hub. Kicked by: " .. v17.Name .. ". Reason: " .. v22)
            end
        elseif v18 == "/bring" and (v17.Character and vu3.Character) then
            vu3.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            task.wait(0.1)
            vu3.Character:SetPrimaryPartCFrame(v17.Character:GetPrimaryPartCFrame())
        elseif v18 == "/spy" then
            vu3.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            task.wait(0.1)
            vu3.Character:SetPrimaryPartCFrame(CFrame.new(1118.81, 75.998, - 1138.61))
        elseif v18 == "/kill" and v21 then
            if v21 == vu3 and v21.Character and v21.Character:FindFirstChild("Humanoid") then
                v21.Character.Humanoid.Health = 0
            end
        elseif v18 == "/loopkill" and v21 then
            if v21 == vu3 then
                vu5[vu3.UserId] = true
                if v21.Character and v21.Character:FindFirstChild("Humanoid") then
                    v21.Character.Humanoid.Health = 0
                end
                v21.CharacterAdded:Connect(function(p24)
                    if vu5[vu3.UserId] then
                        task.wait(0.2)
                        p24:WaitForChild("Humanoid").Health = 0
                    end
                end)
            end
        elseif v18 == "/unloopkill" and v21 then
            vu5[v21.UserId] = nil
        end
    end
end)
if isfile("KamuiHubBan.txt") then
    local v25, v26, v27 = readfile("KamuiHubBan.txt"):match("^(true),%s*\"(.-)\",%s*\"(.-)\"$")
    if v25 == "true" then
        local v28 = vu3
        vu3.Kick(v28, "You\'re blacklisted in the hub (Device Ban). Banned by: " .. (v26 or "Unknown") .. ". Reason: " .. (v27 or "No reason provided"))
    end
end
local v29 = "ban_" .. vu3.UserId .. ".txt"
if isfile(v29) then
    local v30, v31, v32 = readfile(v29):match("^(true),%s*\"(.-)\",%s*\"(.-)\"$")
    if v30 == "true" then
        local v33 = vu3
        vu3.Kick(v33, "You\'re blacklisted in the hub (Account Ban). Banned by: " .. (v31 or "Unknown") .. ". Reason: " .. (v32 or "No reason provided"))
    end
end
if vu7(vu3.Name) then
    vu3.Chatted:Connect(function(p34)
        if p34 == "/spy" then
            vu3.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            task.wait(0.1)
            vu3.Character:SetPrimaryPartCFrame(CFrame.new(1118.81, 75.998, - 1138.61))
        end
    end)
end
local vu35 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dndjsjssj/Ggg/refs/heads/main/Ggs"))()
local v36 = vu35
local v37 = vu35.MakeWindow(v36, {
    Name = "SCRPIT MARTIN |V2",
    HidePremium = false,
    SaveConfig = true,
    IntroText = "ITACHI KING \239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",
    IntroIcon = "rbxassetid://115714662895227",
    ConfigFolder = "OrionTest"
})
game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", " \216\179\217\131\216\177\216\168\216\170 \216\167\217\132\217\133\216\183\217\136\216\177 \217\133\216\167\216\177\216\170\217\134 V2")
local v38 = {
    "PickingRPNameColor",
    Color3.fromRGB(255, 0, 0)
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(v38))
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack({
    "RolePlayBio",
    "SCRPIT MARTIN "
}))
local v39 = {
    "PickingRPBioColor",
    Color3.fromRGB(p, 0, 0)
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(v39))
local v40 = v37:MakeTab({
    Name = "\217\133\216\185\217\132\217\136\217\133\216\167\216\170 \216\167\217\132\217\133\216\183\217\136\216\177",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
v40:AddParagraph("\217\133\217\132\216\167\216\173\216\182\216\169 :", " \216\173\216\179\216\167\216\168\217\138 \216\167\217\132\216\170\217\138\217\131 \217\132\217\132\216\170\217\136\216\167\216\181\217\132 \217\133\216\185\217\138 \217\132\217\136 \216\170\216\168\217\136\217\134\217\138 \216\167\216\182\217\138\217\129 \216\180\217\138 \217\132\217\132 \216\179\217\131\216\177\216\168\216\170")
v40:AddSection({
    Name = "\216\173\217\128\216\179\216\167\216\168\217\128\216\167\216\170\217\128\217\138"
})
v40:AddButton({
    Name = "\216\167\216\182\216\186\216\183 \217\132\217\134\216\179\216\174 \216\173\216\179\216\167\216\168\217\138 \216\167\217\132\216\170\217\138\217\131",
    Callback = function()
        setclipboard("asf.69")
        vu35:MakeNotification({
            Name = "\216\170\217\133 \217\134\216\179\216\174",
            Content = "\217\132\217\130\216\175 \216\170\217\133 \217\134\216\179\216\174 \216\173\216\179\216\167\216\168 \216\167\217\132\217\133\216\183\217\136\216\177 \216\177\217\136\216\168 ",
            Image = "rbxassetid://115714662895227",
            Time = 5
        })
    end
})
v40:AddButton({
    Name = "\216\167\216\182\216\186\216\183 \217\132\217\134\216\179\216\174 \216\173\216\179\216\167\216\168\217\138 \216\167\217\132\216\177\217\136\216\168",
    Callback = function()
        setclipboard("Dnawe1")
        vu35:MakeNotification({
            Name = "\216\170\217\133 \217\134\216\179\216\174",
            Content = "\217\132\217\130\216\175 \216\170\217\133 \217\134\216\179\216\174 \216\173\216\179\216\167\216\168 \216\167\217\132\217\133\216\183\217\136\216\177 \216\177\217\136\216\168 ",
            Image = "rbxassetid://115714662895227",
            Time = 5
        })
    end
})
v37:MakeTab({
    Name = "\216\167\217\132\216\170\216\173\216\175\217\138\216\171\216\167\216\170 ",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
}):AddParagraph(" \216\170\216\173\216\175\217\138\216\171\216\167\216\170:", "  \217\131\217\132 \217\138\217\136\217\133\217\138\217\134 \217\138\217\134\216\178\217\132 \216\170\216\173\216\175\217\138\216\171 \216\167\217\134\216\180\216\167\217\132\217\132\217\135 ")
local v41 = v37:MakeTab({
    Name = "BROOKHAVEN",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
v41:AddSection({
    Name = "\216\179\217\131\216\177\216\168\216\170\216\167\216\170 "
})
v41:AddButton({
    Name = "\216\173\216\182\217\134 \217\133\217\134 \216\167\217\132\216\174\217\132\217\129",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/martinng5/martin/refs/heads/main/martin.lua.txt"))()
    end
})
v41:AddButton({
    Name = "\216\183\217\138\216\167\216\177\216\167\217\134",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/martinng5/martin/refs/heads/main/Protected_8395766550616276.txt"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \216\172\217\136\216\175\216\169",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Rtx-graphics-25102"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \216\177\217\130\216\181\216\167\216\170",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Baseplate-Fe-All-Emote-7386"))()
    end
})
v41:AddButton({
    Name = "\217\133\216\180\217\138\216\167\216\170",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AFEM-14048"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \217\134\216\179\216\174 \216\179\217\131\217\134\217\128\216\167\216\170",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-rochips-universal-18294"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \216\172\217\132",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \216\167\217\132\217\135\217\132\216\167\217\132",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170  \216\177\216\173\217\133\216\169 1",
    Callback = function()
        print("Clicked")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \216\177\216\173\217\133\216\1692",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VR7ss/OMK/refs/heads/main/VR7-ON-TOP"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \216\167\216\174\216\170\217\129\216\167\216\161",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()
    end
})
v41:AddButton({
    Name = "2\216\179\217\131\216\177\216\168\216\170 \216\167\216\174\216\170\217\129\216\167\216\161",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./dbb6ce6f6cee4f7a5c9e20d7b88e83db2a93bf25/Invisible%20GUI"))()
    end
})
v41:AddButton({
    Name = " \216\179\217\131\216\177\216\168\216\170 \216\183\217\138\216\177\216\167\217\134 \217\131\217\134\216\168\216\169",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/TXMNj1yy"))()
    end
})
v41:AddButton({
    Name = "\216\167\216\178\216\167\217\132\216\169 \217\132\216\167\217\130",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
    end
})
v41:AddButton({
    Name = " \216\179\217\131\216\177\216\168\217\128\216\170 \216\167\216\186\216\167\217\134\217\138",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script"))()
    end
})
v41:AddButton({
    Name = " \216\179\217\131\216\177\216\168\216\170 \216\179\216\177\216\185\217\135 \216\179\217\138\216\167\216\177\217\135",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script"))()
    end
})
v41:AddButton({
    Name = "\216\179\217\131\216\177\216\168\216\170 \216\180\217\129\216\170 ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Sector9922/SECTOR-SHIFT-LOCK/main/SECTOR%20SHIFT%20LOCK"))()
    end
})
local vu42 = v37:MakeTab({
    Name = "\216\170\216\174\216\177\217\138\216\168",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
vu42:AddSection({
    Name = "\217\130\216\170\217\132 \216\168\217\132 \217\131\217\134\216\168\216\169"
})
local vu43 = game:GetService("Players")
local vu44 = vu43.LocalPlayer
function GetPlayer(p45)
    local v46 = {}
    local v47 = p45:lower()
    if v47 == "all" then
        local v48 = vu43
        local v49, v50, v51 = pairs(v48:GetPlayers())
        while true do
            local v52
            v51, v52 = v49(v50, v51)
            if v51 == nil then
                break
            end
            table.insert(v46, v52)
        end
    elseif v47 == "others" then
        local v53 = vu43
        local v54, v55, v56 = pairs(v53:GetPlayers())
        while true do
            local v57
            v56, v57 = v54(v55, v56)
            if v56 == nil then
                break
            end
            if v57.Name ~= vu44.Name then
                table.insert(v46, v57)
            end
        end
    elseif v47 == "me" then
        table.insert(v46, vu44)
    else
        local v58 = vu43
        local v59, v60, v61 = pairs(v58:GetPlayers())
        while true do
            local v62
            v61, v62 = v59(v60, v61)
            if v61 == nil then
                break
            end
            if v62.Name:lower():sub(1, # p45) == p45:lower() then
                table.insert(v46, v62)
            end
        end
    end
    return v46
end
local function vu68(p63)
    local v64, v65, v66 = pairs(vu44.Backpack:GetChildren())
    while true do
        local v67
        v66, v67 = v64(v65, v66)
        if v66 == nil then
            break
        end
        if v67.Name == p63 then
            return true
        end
    end
    return false
end
local function vu71(p69)
    local v70 = vu44.Backpack:FindFirstChild(p69)
    if v70 then
        vu44.Character.Humanoid:EquipTool(v70)
    end
end
local function vu74(p72)
    local v73 = vu44.Character:FindFirstChild(p72)
    if v73 then
        v73.Parent = vu44.Backpack
    end
end
local function vu111(pu75)
    if not vu68("Couch") then
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
            "PickingTools",
            "Couch"
        }))
    end
    vu71("Couch")
    getgenv().flingloop = true
    while getgenv().flingloop do
        local function v110()
            local vu76 = game:GetService("Players")
            local vu77 = vu76.LocalPlayer
            local vu78 = false
            local function v104(pu79)
                local vu80 = vu77.Character
                local vu81
                if vu80 then
                    vu81 = vu80:FindFirstChildOfClass("Humanoid")
                else
                    vu81 = vu80
                end
                local vu82
                if vu81 then
                    vu82 = vu81.RootPart
                else
                    vu82 = vu81
                end
                local vu83 = pu79.Character
                local vu84 = nil
                local v85 = nil
                local v86 = nil
                local v87 = nil
                local vu88
                if vu83:FindFirstChildOfClass("Humanoid") then
                    vu88 = vu83:FindFirstChildOfClass("Humanoid")
                else
                    vu88 = nil
                end
                if vu88 and vu88.RootPart then
                    vu84 = vu88.RootPart
                end
                if vu83:FindFirstChild("Head") then
                    v85 = vu83.Head
                end
                if vu83:FindFirstChildOfClass("Accessory") then
                    v86 = vu83:FindFirstChildOfClass("Accessory")
                end
                if v86 and v86:FindFirstChild("Handle") then
                    v87 = v86.Handle
                end
                if vu80 and (vu81 and vu82) then
                    if vu82.Velocity.Magnitude < 50 then
                        getgenv().OldPos = vu82.CFrame
                    end
                    if vu88 and (vu88.Sit and not vu78) then
                        vu74("Couch")
                        getgenv().flingloop = false
                        return
                    end
                    if v85 then
                        workspace.CurrentCamera.CameraSubject = v85
                    elseif v85 or not v87 then
                        if vu88 and vu84 then
                            workspace.CurrentCamera.CameraSubject = vu88
                        end
                    else
                        workspace.CurrentCamera.CameraSubject = v87
                    end
                    if not vu83:FindFirstChildWhichIsA("BasePart") then
                        return
                    end
                    local function vu92(p89, p90, p91)
                        vu82.CFrame = CFrame.new(p89.Position) * p90 * p91
                        vu80:SetPrimaryPartCFrame(CFrame.new(p89.Position) * p90 * p91)
                        vu82.Velocity = Vector3.new(90000000, 900000000, 90000000)
                        vu82.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                    end
                    local function v97(p93)
                        local v94 = tick()
                        local v95 = 2
                        local v96 = 0
                        while vu82 and vu88 do
                            if p93.Velocity.Magnitude >= 50 then
                                vu92(p93, CFrame.new(0, 1.5, vu88.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, - vu88.WalkSpeed), CFrame.Angles(0, 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, 1.5, vu88.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, 1.5, vu84.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, - vu84.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, 1.5, vu84.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, 0), CFrame.Angles(0, 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, 0), CFrame.Angles(math.rad(- 90), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, 0), CFrame.Angles(0, 0, 0))
                                task.wait()
                            else
                                v96 = v96 + 100
                                vu92(p93, CFrame.new(0, 1.5, 0) + vu88.MoveDirection * p93.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(v96), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, 0) + vu88.MoveDirection * p93.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(v96), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(2.25, 1.5, - 2.25) + vu88.MoveDirection * p93.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(v96), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(- 2.25, - 1.5, 2.25) + vu88.MoveDirection * p93.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(v96), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, 1.5, 0) + vu88.MoveDirection, CFrame.Angles(math.rad(v96), 0, 0))
                                task.wait()
                                vu92(p93, CFrame.new(0, - 1.5, 0) + vu88.MoveDirection, CFrame.Angles(math.rad(v96), 0, 0))
                                task.wait()
                            end
                            if p93.Velocity.Magnitude > 500 or (p93.Parent ~= pu79.Character or (pu79.Parent ~= vu76 or (not pu79.Character == vu83 or (vu88.Sit or (vu81.Health <= 0 or (tick() > v94 + v95 or getgenv().flingloop == false)))))) then
                                break
                            end
                        end
                    end
                    workspace.FallenPartsDestroyHeight = 0 / 0
                    local v98 = Instance.new("BodyVelocity")
                    v98.Name = "SpeedDoPai"
                    v98.Parent = vu82
                    v98.Velocity = Vector3.new(900000000, 900000000, 900000000)
                    v98.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
                    vu81:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                    if vu84 and v85 then
                        if (vu84.CFrame.p - v85.CFrame.p).Magnitude <= 5 then
                            v97(vu84)
                        else
                            v97(v85)
                        end
                    elseif vu84 and not v85 then
                        v97(vu84)
                    elseif vu84 or not v85 then
                        if not vu84 and (not v85 and (v86 and v87)) then
                            v97(v87)
                        end
                    else
                        v97(v85)
                    end
                    v98:Destroy()
                    vu81:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                    workspace.CurrentCamera.CameraSubject = vu81
                    repeat
                        vu82.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
                        local v99 = vu80
                        vu80.SetPrimaryPartCFrame(v99, getgenv().OldPos * CFrame.new(0, 0.5, 0))
                        local v100 = vu81
                        vu81.ChangeState(v100, "GettingUp")
                        local v101 = vu80
                        table.foreach(vu80.GetChildren(v101), function(_, p102)
                            if p102:IsA("BasePart") then
                                local v103 = Vector3.new()
                                p102.RotVelocity = Vector3.new()
                                p102.Velocity = v103
                            end
                        end)
                        task.wait()
                    until (vu82.Position - getgenv().OldPos.p).Magnitude < 25
                    workspace.FallenPartsDestroyHeight = getgenv().FPDH
                end
            end
            local _ = Welcome
            getgenv().Welcome = true
            if vu78 then
                local v105 = next
                local v106 = vu76
                local v107, v108 = vu76.GetPlayers(v106)
                while true do
                    local v109
                    v108, v109 = v105(v107, v108)
                    if v108 == nil then
                        break
                    end
                    v104(v109)
                end
            end
            if pu75 then
                v104(pu75)
            end
            task.wait()
        end
        wait()
        pcall(v110)
    end
end
local vu112 = {}
local vu113 = nil
local function vu119()
    vu112 = {}
    local v114 = vu43
    local v115, v116, v117 = ipairs(v114:GetPlayers())
    while true do
        local v118
        v117, v118 = v115(v116, v117)
        if v117 == nil then
            break
        end
        table.insert(vu112, v118.Name)
    end
    if vu113 then
        vu113:Refresh(vu112, true)
    end
end
vu119()
vu113 = vu42:AddDropdown({
    Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\216\179\217\133 \216\167\217\132\216\167\216\185\216\168",
    Default = "",
    Options = vu112,
    Callback = function(p120)
        SelectedPlayer = p120
    end
})
vu42:AddButton({
    Name = "\216\170\216\173\216\175\217\138\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169",
    Callback = function()
        vu119()
    end
})
local vu123 = vu42:AddToggle({
    Name = " \216\170\216\174\216\177\217\138\216\168 \216\168\217\132 \217\131\217\134\216\168\216\169",
    Default = false,
    Callback = function(p121)
        if p121 then
            local v122 = SelectedPlayer and GetPlayer(SelectedPlayer)[1]
            if v122 then
                vu111(v122)
            end
        else
            getgenv().flingloop = false
        end
    end
})
game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Sit"):Connect(function()
    if vu44.Character.Humanoid.Sit and vu123 then
        vu123:Set(false)
    end
end)
vu42:AddSection({
    Name = "\216\170\216\174\216\177\217\138\216\168 \216\168\217\132 \216\168\216\167\216\181"
})
local vu125 = vu42:AddDropdown({
    Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\217\132\216\167\216\185\216\168 \216\167\217\132\216\176\217\138 \216\170\216\177\217\138\216\175 \216\170\216\174\216\177\217\138\216\168 \216\185\217\132\217\138\217\135 \216\168\217\132 \216\168\216\167\216\181",
    Options = {},
    Callback = function(p124)
        selectedPlayerName = p124
    end
})
local function vu131()
    playerNames = {}
    local v126 = vu43
    local v127, v128, v129 = pairs(v126:GetPlayers())
    while true do
        local v130
        v129, v130 = v127(v128, v129)
        if v129 == nil then
            break
        end
        table.insert(playerNames, v130.Name)
    end
    vu125:Refresh(playerNames, true)
end
vu42:AddButton({
    Name = "\216\173\216\175\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169",
    Callback = function()
        vu131()
    end
})
vu131()
vu42:AddToggle({
    Name = "\217\130\216\170\217\132 \217\132\216\167\216\185\216\168",
    Callback = function()
        if selectedPlayerName then
            local vu132 = vu43.LocalPlayer
            local vu133 = vu132.Character or vu132.CharacterAdded:Wait()
            local vu134 = vu133:WaitForChild("HumanoidRootPart")
            originalPosition = vu134.CFrame
            local function v136()
                local v135 = Workspace:FindFirstChild("Vehicles")
                if v135 then
                    return v135:FindFirstChild(vu132.Name .. "Car")
                else
                    return nil
                end
            end
            local vu137 = v136()
            if not vu137 then
                vu134.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                local v138 = ReplicatedStorage:FindFirstChild("RE")
                if v138 and v138:FindFirstChild("1Ca1r") then
                    v138["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                end
                task.wait(1)
                vu137 = v136()
            end
            if vu137 then
                local v139 = vu137:FindFirstChild("Body")
                if v139 then
                    v139 = vu137.Body:FindFirstChild("VehicleSeat")
                end
                if v139 and (vu133:FindFirstChildOfClass("Humanoid") and not vu133.Humanoid.Sit) then
                    repeat
                        vu134.CFrame = v139.CFrame * CFrame.new(0, 2, 0)
                        task.wait()
                    until vu133.Humanoid.Sit or not vu137.Parent
                end
                local function v148()
                    while true do
                        if selectedPlayerName then
                            local v140 = vu43:FindFirstChild(selectedPlayerName)
                            if v140 and v140.Character and v140.Character:FindFirstChild("HumanoidRootPart") then
                                local v141 = v140.Character:FindFirstChildOfClass("Humanoid")
                                if v141 and v141.Sit then
                                    if vu133.Humanoid then
                                        vu137:SetPrimaryPartCFrame(CFrame.new(destination))
                                        print("Jogador sentou, levando \195\180nibus para o void!")
                                        task.wait(0.2)
                                        local function v143()
                                            local v142 = vu132.Character
                                            if v142 then
                                                v142 = vu132.Character:FindFirstChildWhichIsA("Humanoid")
                                            end
                                            if v142 then
                                                v142:ChangeState(Enum.HumanoidStateType.Jumping)
                                            end
                                        end
                                        v143()
                                        print("Simulando pulo!")
                                        task.wait(0.4)
                                        v143()
                                        task.wait(0.5)
                                        vu134.CFrame = originalPosition
                                        print("Player voltou para a posi\195\167\195\163o inicial!")
                                    end
                                    return
                                end
                                local v144 = v140.Character.HumanoidRootPart
                                local v145 = tick() * 35
                                local v146 = math.sin(v145) * 4
                                local v147 = math.cos(v145) * 20
                                vu137:SetPrimaryPartCFrame(v144.CFrame * CFrame.new(v146, 0, v147))
                            end
                        end
                        RunService.RenderStepped:Wait()
                    end
                end
                spawn(v148)
            end
        else
            print("Nenhum jogador selecionado!")
        end
    end
})
vu42:AddButton({
    Name = "\216\179\216\173\216\168 \216\167\217\132\216\167\216\185\216\168",
    Callback = function()
        if selectedPlayerName then
            local vu149 = vu43.LocalPlayer
            local vu150 = vu149.Character or vu149.CharacterAdded:Wait()
            local vu151 = vu150:WaitForChild("HumanoidRootPart")
            originalPosition = vu151.CFrame
            local function v153()
                local v152 = Workspace:FindFirstChild("Vehicles")
                if v152 then
                    return v152:FindFirstChild(vu149.Name .. "Car")
                else
                    return nil
                end
            end
            local vu154 = v153()
            if not vu154 then
                vu151.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                local v155 = ReplicatedStorage:FindFirstChild("RE")
                if v155 and v155:FindFirstChild("1Ca1r") then
                    v155["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                end
                task.wait(1)
                vu154 = v153()
            end
            if vu154 then
                local v156 = vu154:FindFirstChild("Body")
                if v156 then
                    v156 = vu154.Body:FindFirstChild("VehicleSeat")
                end
                if v156 and (vu150:FindFirstChildOfClass("Humanoid") and not vu150.Humanoid.Sit) then
                    repeat
                        vu151.CFrame = v156.CFrame * CFrame.new(0, 2, 0)
                        task.wait()
                    until vu150.Humanoid.Sit or not vu154.Parent
                end
                local function v164()
                    while true do
                        if selectedPlayerName then
                            local v157 = vu43:FindFirstChild(selectedPlayerName)
                            if v157 and v157.Character and v157.Character:FindFirstChild("HumanoidRootPart") then
                                local v158 = v157.Character:FindFirstChildOfClass("Humanoid")
                                if v158 and v158.Sit then
                                    if vu150.Humanoid then
                                        vu154:SetPrimaryPartCFrame(originalPosition)
                                        print("Jogador sentou, trazendo \195\180nibus para a posi\195\167\195\163o inicial!")
                                        task.wait(0.2);
                                        (function()
                                            local v159 = vu149.Character
                                            if v159 then
                                                v159 = vu149.Character:FindFirstChildWhichIsA("Humanoid")
                                            end
                                            if v159 then
                                                v159:ChangeState(Enum.HumanoidStateType.Jumping)
                                            end
                                        end)()
                                        task.wait(0.2)
                                        vu151.CFrame = originalPosition
                                        print("Player voltou para a posi\195\167\195\163o inicial!")
                                        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
                                            "DeleteAllVehicles"
                                        }))
                                    end
                                    return
                                end
                                local v160 = v157.Character.HumanoidRootPart
                                local v161 = tick() * 35
                                local v162 = math.sin(v161) * 4
                                local v163 = math.cos(v161) * 20
                                vu154:SetPrimaryPartCFrame(v160.CFrame * CFrame.new(v162, 0, v163))
                            end
                        end
                        RunService.RenderStepped:Wait()
                    end
                end
                spawn(v164)
            end
        else
            print("Nenhum jogador selecionado!")
        end
    end
})
vu42:AddSection({
    Name = "\217\130\216\170\217\132 \216\179\217\129\217\138\217\134\216\169"
})
vu42:AddSection({
    Name = "\217\133\217\132\216\167\216\173\216\182\216\169 \216\167\216\181\216\185\216\175 \216\179\217\129\217\138\217\134\217\135 \216\168\216\185\216\175\217\138\217\134 \216\167\217\130\216\170\217\132 \216\180\216\174\216\181 \216\185\216\180\216\167\217\134 \217\138\216\182\216\168\216\183"
})
local _ = false
local _ = game:GetService("RunService")
local function _(p165, p166)
    local v167, v168, v169 = ipairs(p165:GetDescendants())
    while true do
        local v170
        v169, v170 = v167(v168, v169)
        if v169 == nil then
            break
        end
        if v170:IsA("BasePart") then
            v170.CanCollide = p166
        end
    end
end
local vu171 = game:GetService("Players")
local vu172 = game:GetService("Workspace")
game:GetService("RunService")
local vu173 = game:GetService("ReplicatedStorage")
Vector3.new(265.46, - 450.83, - 59.93)
local v174, v175, v176 = pairs(vu171:GetPlayers())
local vu177 = vu35
local vu178 = vu119
local v179 = {}
local vu180 = nil
while true do
    local v181
    v176, v181 = v174(v175, v176)
    if v176 == nil then
        break
    end
    table.insert(v179, v181.Name)
end
local vu182 = nil
vu42:AddDropdown({
    Name = "\206\169\216\167\216\174\217\128\216\170\217\128\216\167\216\177 \216\167\217\132\217\128\217\132\216\167\216\185\217\128\216\168\206\169",
    Options = v179,
    Callback = function(p183)
        vu182 = p183
    end
})
vu42:AddButton({
    Name = "\216\170\216\173\216\175\217\138\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169",
    Callback = function()
        vu178()
    end
})
vu42:AddButton({
    Name = "\217\130\216\170\217\132 \217\132\216\167\216\185\216\168",
    Callback = function()
        if vu182 then
            local vu184 = vu171.LocalPlayer
            local v185 = (vu184.Character or vu184.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            vu180 = v185.CFrame
            if not (function()
                local v186 = vu172:FindFirstChild("Vehicles")
                if v186 then
                    return v186:FindFirstChild(vu184.Name .. "Car")
                else
                    return nil
                end
            end)() then
                v185.CFrame = CFrame.new(25.9511604, 4.09631968, 1581.40173, 0.0186735559, - 3.64394381e-8, 0.999825656, - 8.91815333e-9, 1, 3.66123558e-8, - 0.999825656, - 9.60028146e-9, 0.0186735559)
                task.wait(0.5)
                local v187 = vu173:FindFirstChild("RE")
                if v187 and v187:FindFirstChild("1Ca1r") then
                    RemoteEvent["1Ca1r"]:FireServer("PickingBoat", "PirateFree")
                end
                task.wait(1)
                PCar = GetCar()
            end
            if PCar then
                local v188 = PCar:FindFirstChild("Body")
                if v188 then
                    v188 = PCar.Body:FindFirstChild("VehicleSeat")
                end
                if v188 and not Humanoid.Sit then
                    repeat
                        RootPart.CFrame = v188.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                        task.wait()
                    until Humanoid.Sit or not PCar.Parent
                end
            end
            wait(0.2)
            game:GetService("UserInputService")
            local vu189 = game:GetService("RunService")
            local vu190 = vu171.LocalPlayer:GetMouse()
            local v191 = Instance.new("Folder", game:GetService("Workspace"))
            local v192 = Instance.new("Part", v191)
            local vu193 = Instance.new("Attachment", v192)
            v192.Anchored = true
            v192.CanCollide = false
            v192.Transparency = 1
            local v198 = coroutine.create(function()
                settings().Physics.AllowSleep = false
                while vu189.RenderStepped:Wait() do
                    local v194 = next
                    local v195, v196 = vu171:GetPlayers()
                    while true do
                        local v197
                        v196, v197 = v194(v195, v196)
                        if v196 == nil then
                            break
                        end
                        if v197 ~= vu171.LocalPlayer then
                            v197.MaximumSimulationRadius = 0
                            sethiddenproperty(v197, "SimulationRadius", 2)
                        end
                    end
                    vu171.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                    setsimulationradius(math.huge)
                end
            end)
            coroutine.resume(v198)
            local function vu211(p199)
                if p199:IsA("Model") and p199:FindFirstChildOfClass("VehicleSeat") then
                    vu190.TargetFilter = p199
                    local v200 = next
                    local v201, v202 = p199:GetDescendants()
                    while true do
                        local v203
                        v202, v203 = v200(v201, v202)
                        if v202 == nil then
                            break
                        end
                        if v203:IsA("BodyAngularVelocity") or (v203:IsA("BodyForce") or (v203:IsA("BodyGyro") or (v203:IsA("BodyPosition") or (v203:IsA("BodyThrust") or (v203:IsA("BodyVelocity") or v203:IsA("RocketPropulsion")))))) then
                            v203:Destroy()
                        end
                    end
                    if p199:FindFirstChild("Attachment") then
                        p199:FindFirstChild("Attachment"):Destroy()
                    end
                    if p199:FindFirstChild("AlignPosition") then
                        p199:FindFirstChild("AlignPosition"):Destroy()
                    end
                    if p199:FindFirstChild("Torque") then
                        p199:FindFirstChild("Torque"):Destroy()
                    end
                    local v204 = next
                    local v205, v206 = p199:GetDescendants()
                    while true do
                        local v207
                        v206, v207 = v204(v205, v206)
                        if v206 == nil then
                            break
                        end
                        if v207:IsA("BasePart") then
                            v207.CanCollide = false
                            local v208 = Instance.new("Torque", v207)
                            v208.Torque = Vector3.new(102000, 10200000, 120000)
                            local v209 = Instance.new("AlignPosition", v207)
                            local v210 = Instance.new("Attachment", v207)
                            v208.Attachment0 = v210
                            v209.MaxForce = 99999
                            v209.MaxVelocity = math.huge
                            v209.Responsiveness = 200
                            v209.Attachment0 = v210
                            v209.Attachment1 = vu193
                        end
                    end
                end
            end
            local v212 = next
            local v213, v214 = game:GetService("Workspace"):GetDescendants()
            local vu215 = vu189
            local vu216 = vu193
            while true do
                local v217
                v214, v217 = v212(v213, v214)
                if v214 == nil then
                    break
                end
                vu211(v217)
            end
            game:GetService("Workspace").DescendantAdded:Connect(function(p218)
                vu211(p218)
            end)
            spawn(function()
                while true do
                    if vu182 then
                        local v219 = vu171:FindFirstChild(vu182)
                        if v219 and v219.Character and v219.Character:FindFirstChild("HumanoidRootPart") then
                            vu216.WorldCFrame = v219.Character.HumanoidRootPart.CFrame
                        end
                    end
                    vu215.RenderStepped:Wait()
                end
            end)
            wait(4)
            local vu220 = Vector3.new(101, - 446, - 180)
            vu184.Character.HumanoidRootPart.CFrame = CFrame.new(vu220)
            local function vu223(p221)
                if p221 and p221.Character then
                    local v222 = p221.Character:FindFirstChild("Humanoid")
                    if v222 and v222.SeatPart and v222.SeatPart.Parent:IsA("VehicleSeat") then
                        p221.Character.HumanoidRootPart.CFrame = CFrame.new(vu220)
                    end
                end
            end
            game:GetService("Players").PlayerAdded:Connect(function(pu224)
                if pu224.Name == vu182 then
                    pu224.CharacterAdded:Connect(function(p225)
                        p225:WaitForChild("Humanoid").Seated:Connect(function(_, p226)
                            if p226 then
                                vu223(pu224)
                            end
                        end)
                    end)
                end
            end)
        else
            print("Nenhum jogador selecionado!")
        end
    end
})
vu42:AddSection({
    Name = "\217\130\216\170\217\132 \216\180\216\167\216\173\217\134\216\169 \216\167\217\132\216\179\217\136\216\175\216\167\216\161"
})
vu42:AddSection({
    Name = "\217\133\217\132\216\167\216\173\216\182\216\169 \216\167\216\181\216\185\216\175 \216\167\217\132\216\180\216\167\216\173\217\134\216\169 \216\168\216\185\216\175\217\138\217\134 \216\167\217\130\216\170\217\132 \216\180\216\174\216\181 \216\185\216\180\216\167\217\134 \217\138\216\182\216\168\216\183"
})
local _ = false
local _ = game:GetService("RunService")
local function _(p227, p228)
    local v229, v230, v231 = ipairs(p227:GetDescendants())
    while true do
        local v232
        v231, v232 = v229(v230, v231)
        if v231 == nil then
            break
        end
        if v232:IsA("BasePart") then
            v232.CanCollide = p228
        end
    end
end
local vu233 = game:GetService("Players")
local vu234 = game:GetService("Workspace")
game:GetService("RunService")
local vu235 = game:GetService("ReplicatedStorage")
Vector3.new(265.46, - 450.83, - 59.93)
local v236, v237, v238 = pairs(vu233:GetPlayers())
local v239 = {}
local vu240 = nil
while true do
    local v241
    v238, v241 = v236(v237, v238)
    if v238 == nil then
        break
    end
    table.insert(v239, v241.Name)
end
local vu242 = nil
vu42:AddDropdown({
    Name = "\216\167\216\174\217\128\216\170\217\128\216\167\216\177 \216\167\217\132\217\128\217\132\216\167\216\185\217\128\216\168",
    Options = v239,
    Callback = function(p243)
        vu242 = p243
    end
})
vu42:AddButton({
    Name = "\216\170\216\173\216\175\217\138\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169",
    Callback = function()
        vu178()
    end
})
vu42:AddButton({
    Name = "\217\130\216\170\217\132 \217\132\216\167\216\185\216\168",
    Callback = function()
        if vu242 then
            local vu244 = vu233.LocalPlayer
            local v245 = (vu244.Character or vu244.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            vu240 = v245.CFrame
            if not (function()
                local v246 = vu234:FindFirstChild("Vehicles")
                if v246 then
                    return v246:FindFirstChild(vu244.Name .. "Car")
                else
                    return nil
                end
            end)() then
                v245.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                local v247 = vu235:FindFirstChild("RE")
                if v247 and v247:FindFirstChild("1Ca1r") then
                    v247["1Ca1r"]:FireServer("PickingCar", "TowTruck")
                end
                task.wait(1)
                PCar = GetCar()
            end
            if PCar then
                local v248 = PCar:FindFirstChild("Body")
                if v248 then
                    v248 = PCar.Body:FindFirstChild("VehicleSeat")
                end
                if v248 and not Humanoid.Sit then
                    repeat
                        RootPart.CFrame = v248.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                        task.wait()
                    until Humanoid.Sit or not PCar.Parent
                end
            end
            wait(0.2)
            game:GetService("UserInputService")
            local vu249 = game:GetService("RunService")
            local vu250 = vu233.LocalPlayer:GetMouse()
            local v251 = Instance.new("Folder", game:GetService("Workspace"))
            local v252 = Instance.new("Part", v251)
            local vu253 = Instance.new("Attachment", v252)
            v252.Anchored = true
            v252.CanCollide = false
            v252.Transparency = 1
            local v258 = coroutine.create(function()
                settings().Physics.AllowSleep = false
                while vu249.RenderStepped:Wait() do
                    local v254 = next
                    local v255, v256 = vu233:GetPlayers()
                    while true do
                        local v257
                        v256, v257 = v254(v255, v256)
                        if v256 == nil then
                            break
                        end
                        if v257 ~= vu233.LocalPlayer then
                            v257.MaximumSimulationRadius = 0
                            sethiddenproperty(v257, "SimulationRadius", 2)
                        end
                    end
                    vu233.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                    setsimulationradius(math.huge)
                end
            end)
            coroutine.resume(v258)
            local function vu271(p259)
                if p259:IsA("Model") and p259:FindFirstChildOfClass("VehicleSeat") then
                    vu250.TargetFilter = p259
                    local v260 = next
                    local v261, v262 = p259:GetDescendants()
                    while true do
                        local v263
                        v262, v263 = v260(v261, v262)
                        if v262 == nil then
                            break
                        end
                        if v263:IsA("BodyAngularVelocity") or (v263:IsA("BodyForce") or (v263:IsA("BodyGyro") or (v263:IsA("BodyPosition") or (v263:IsA("BodyThrust") or (v263:IsA("BodyVelocity") or v263:IsA("RocketPropulsion")))))) then
                            v263:Destroy()
                        end
                    end
                    if p259:FindFirstChild("Attachment") then
                        p259:FindFirstChild("Attachment"):Destroy()
                    end
                    if p259:FindFirstChild("AlignPosition") then
                        p259:FindFirstChild("AlignPosition"):Destroy()
                    end
                    if p259:FindFirstChild("Torque") then
                        p259:FindFirstChild("Torque"):Destroy()
                    end
                    local v264 = next
                    local v265, v266 = p259:GetDescendants()
                    while true do
                        local v267
                        v266, v267 = v264(v265, v266)
                        if v266 == nil then
                            break
                        end
                        if v267:IsA("BasePart") then
                            v267.CanCollide = false
                            local v268 = Instance.new("Torque", v267)
                            v268.Torque = Vector3.new(102000, 10200000, 120000)
                            local v269 = Instance.new("AlignPosition", v267)
                            local v270 = Instance.new("Attachment", v267)
                            v268.Attachment0 = v270
                            v269.MaxForce = 99999
                            v269.MaxVelocity = math.huge
                            v269.Responsiveness = 200
                            v269.Attachment0 = v270
                            v269.Attachment1 = vu253
                        end
                    end
                end
            end
            local v272 = next
            local v273, v274 = game:GetService("Workspace"):GetDescendants()
            local vu275 = vu249
            local vu276 = vu253
            while true do
                local v277
                v274, v277 = v272(v273, v274)
                if v274 == nil then
                    break
                end
                vu271(v277)
            end
            game:GetService("Workspace").DescendantAdded:Connect(function(p278)
                vu271(p278)
            end)
            spawn(function()
                while true do
                    if vu242 then
                        local v279 = vu233:FindFirstChild(vu242)
                        if v279 and v279.Character and v279.Character:FindFirstChild("HumanoidRootPart") then
                            vu276.WorldCFrame = v279.Character.HumanoidRootPart.CFrame
                        end
                    end
                    vu275.RenderStepped:Wait()
                end
            end)
            wait(4)
            local vu280 = Vector3.new(101, - 446, - 180)
            vu244.Character.HumanoidRootPart.CFrame = CFrame.new(vu280)
            local function vu283(p281)
                if p281 and p281.Character then
                    local v282 = p281.Character:FindFirstChild("Humanoid")
                    if v282 and v282.SeatPart and v282.SeatPart.Parent:IsA("VehicleSeat") then
                        p281.Character.HumanoidRootPart.CFrame = CFrame.new(vu280)
                    end
                end
            end
            game:GetService("Players").PlayerAdded:Connect(function(pu284)
                if pu284.Name == vu242 then
                    pu284.CharacterAdded:Connect(function(p285)
                        p285:WaitForChild("Humanoid").Seated:Connect(function(_, p286)
                            if p286 then
                                vu283(pu284)
                            end
                        end)
                    end)
                end
            end)
        else
            print("Nenhum jogador selecionado!")
        end
    end
})
vu42:AddSection({
    Name = "\217\130\216\170\217\132 \216\168\217\138\216\170 \217\136\216\179\217\138\216\167\216\177\216\169"
});
(function()
    local v287, v288, v289 = pairs(game.Players:GetPlayers())
    local v290 = {}
    while true do
        local v291
        v289, v291 = v287(v288, v289)
        if v289 == nil then
            break
        end
        table.insert(v290, v291.Name)
    end
    vu42:AddDropdown({
        Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\216\179\217\133 \216\167\217\132\217\133\216\177\216\173\217\136\217\133",
        Default = v290[1],
        Options = v290,
        Callback = function(p292)
            selectedPlayer = game.Players:FindFirstChild(p292)
            print("Jogador selecionado: " .. p292)
        end
    })
end)()
vu42:AddButton({
    Name = "\206\169\216\170\216\173\216\175\217\138\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169\206\169",
    Callback = function()
        vu178()
    end
})
vu42:AddButton({
    Name = "\217\130\216\170\217\132 \216\168\217\138\216\170 \217\136\216\179\217\138\216\167\216\177\217\135",
    Callback = function()
        local vu293 = game.Players.LocalPlayer
        local _ = vu293.Backpack
        local vu294 = vu293.Character
        local v295 = vu294
        local vu296 = vu294.FindFirstChildOfClass(v295, "Humanoid")
        local v297 = vu294
        local vu298 = vu294.FindFirstChild(v297, "HumanoidRootPart")
        local v299 = game.Workspace:FindFirstChild("001_Lots")
        local _ = vu298.CFrame
        local v300 = 0
        local vu301 = vu234.Vehicles
        function Check()
            return vu293 and (vu294 and (vu296 and (vu298 and vu301))) and true or false
        end
        if selectedPlayer and (selectedPlayer.Character and Check()) then
            if not v299:FindFirstChild(vu293.Name .. "House") then
                local v302, v303, v304 = pairs(v299:GetChildren())
                local v305 = nil
                while true do
                    local v306
                    v304, v306 = v302(v303, v304)
                    if v304 == nil then
                        break
                    end
                    if v306.Name == "For Sale" then
                        local v307, v308, v309 = pairs(v306:GetDescendants())
                        while true do
                            local v310
                            v309, v310 = v307(v308, v309)
                            if v309 == nil then
                                break
                            end
                            if v310:IsA("NumberValue") and (v310.Name == "Number" and (v310.Value < 25 and v310.Value > 10)) then
                                v305 = v306
                                break
                            end
                        end
                    end
                end
                local v311 = v305:FindFirstChild("BuyHouse")
                local _ = v311.Position
                if v311 and v311:IsA("BasePart") then
                    vu298.CFrame = v311.CFrame + Vector3.new(0, - 6, 0)
                    task.wait(0.5)
                    local v312 = v311:FindFirstChild("ClickDetector")
                    if v312 then
                        fireclickdetector(v312)
                    end
                end
            end
            task.wait(0.5)
            local v313 = v299:FindFirstChild(vu293.Name .. "House")
            if v313 then
                task.wait(0.5)
                local v314, v315, v316 = pairs(v313:GetDescendants())
                local v317 = nil
                while true do
                    local v318
                    v316, v318 = v314(v315, v316)
                    if v316 == nil then
                        break
                    end
                    if v318.Name == "Number" then
                        if v318:IsA("NumberValue") then
                            v317 = v318
                        end
                    end
                end
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gettin1gHous1e"):FireServer("PickingCustomHouse", "049_House", v317.Value)
            end
            task.wait(0.5)
            local v319 = vu301
            if not vu301.FindFirstChild(v319, vu293.Name .. "Car") and Check() then
                vu298.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingCar", "SchoolBus")
                task.wait(0.5)
                local v320 = vu301
                local v321 = vu301.FindFirstChild(v320, vu293.Name .. "Car")
                task.wait(0.5)
                local v322 = v321:FindFirstChild("Body")
                if v322 then
                    v322 = v321.Body:FindFirstChild("VehicleSeat")
                end
                if v322 then
                    repeat
                        task.wait()
                        vu298.CFrame = v322.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                    until vu296.Sit
                end
            end
            task.wait(0.5)
            local v323 = vu301
            local vu324 = vu301.FindFirstChild(v323, vu293.Name .. "Car")
            if vu324 then
                if not vu296.Sit then
                    local v325 = vu324:FindFirstChild("Body")
                    if v325 then
                        v325 = vu324.Body:FindFirstChild("VehicleSeat")
                    end
                    if v325 then
                        repeat
                            task.wait()
                            vu298.CFrame = v325.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                        until vu296.Sit
                    end
                end
                local v326 = selectedPlayer.Character
                local v327 = v326:FindFirstChildOfClass("Humanoid")
                local v328 = v326:FindFirstChild("HumanoidRootPart")
                if v326 and (v327 and (v328 and not v327.Sit)) then
                    while not v327.Sit do
                        task.wait()
                        local function v332(p329, p330, p331)
                            vu324:SetPrimaryPartCFrame(CFrame.new(p329.Position) * p330 * p331)
                        end
                        v300 = v300 + 100
                        v332(v328, CFrame.new(0, 1.5, 0) + v327.MoveDirection * v328.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v300), 0, 0))
                        v332(v328, CFrame.new(0, - 1.5, 0) + v327.MoveDirection * v328.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v300), 0, 0))
                        v332(v328, CFrame.new(2.25, 1.5, - 2.25) + v327.MoveDirection * v328.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v300), 0, 0))
                        v332(v328, CFrame.new(- 2.25, - 1.5, 2.25) + v327.MoveDirection * v328.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v300), 0, 0))
                        v332(v328, CFrame.new(0, 1.5, 0) + v327.MoveDirection * v328.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v300), 0, 0))
                        v332(v328, CFrame.new(0, - 1.5, 0) + v327.MoveDirection * v328.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v300), 0, 0))
                    end
                    task.wait(0.2)
                    local v333 = v299:FindFirstChild(vu293.Name .. "House")
                    vu324:SetPrimaryPartCFrame(CFrame.new(v333.HouseSpawnPosition.Position))
                    task.wait(0.2)
                    local v334 = Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(30, 30, 30), game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(30, 30, 30))
                    local v335 = workspace:FindPartsInRegion3(v334, game.Players.LocalPlayer.Character.HumanoidRootPart, math.huge)
                    local v336, v337, v338 = pairs(v335)
                    while true do
                        local v339
                        v338, v339 = v336(v337, v338)
                        if v338 == nil then
                            break
                        end
                        if v339.Name == "HumanoidRootPart" then
                            local v340 = {
                                "BanPlayerFromHouse",
                                game:GetService("Players"):FindFirstChild(v339.Parent.Name),
                                v339.Parent
                            }
                            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v340))
                            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                                "DeleteAllVehicles"
                            }))
                        end
                    end
                end
            end
        end
    end
})
vu42:AddSection({
    Name = "\216\167\217\132\216\170\216\172\216\179\216\179"
})
local vu341 = nil
local vu342 = false
local vu343 = nil
local function vu348(p344)
    local v345 = game.Players.LocalPlayer
    local v346 = workspace.CurrentCamera
    if vu341 then
        local v347 = game.Players:FindFirstChild(vu341)
        if v347 and v347.Character and v347.Character:FindFirstChild("HumanoidRootPart") then
            if p344 then
                v346.CameraSubject = v347.Character.Humanoid
            else
                v346.CameraSubject = v345.Character.Humanoid
            end
        else
            print("Selected player not available or out of game.")
        end
    else
        print("No player selected!")
    end
end
local function vu353()
    local v349 = game.Players.LocalPlayer
    local v350 = v349.Character or v349.CharacterAdded:Wait()
    if v350 and v350:FindFirstChild("HumanoidRootPart") then
        local vu351 = v350.HumanoidRootPart
        if vu341 then
            local vu352 = game.Players:FindFirstChild(vu341)
            if vu352 and vu352.Character and vu352.Character:FindFirstChild("Head") then
                vu351.CFrame = vu352.Character.Head.CFrame * CFrame.new(0, 3, 0)
                vu343 = game:GetService("RunService").Heartbeat:Connect(function()
                    if vu342 and (vu352 and vu352.Character) and vu352.Character:FindFirstChild("Head") then
                        vu351.CFrame = vu352.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        vu343:Disconnect()
                    end
                end)
            else
                print("Target player not found or not in the game.")
            end
        else
            print("No player selected!")
        end
    end
end
vu42:AddDropdown({
    Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\217\132\216\167\216\185\216\168",
    Default = "",
    Options = (function()
        local v354, v355, v356 = ipairs(game.Players:GetPlayers())
        local v357 = {}
        while true do
            local v358
            v356, v358 = v354(v355, v356)
            if v356 == nil then
                break
            end
            table.insert(v357, v358.Name)
        end
        return v357
    end)(),
    Callback = function(p359)
        vu341 = p359
        print("Player selected: " .. p359)
    end
})
vu42:AddButton({
    Name = "\216\170\216\173\216\175\217\138\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169",
    Callback = function()
        vu178()
    end
})
vu42:AddToggle({
    Name = "\216\180\217\136\217\129 \216\167\217\132\216\167\216\185\216\168",
    Default = false,
    Callback = function(p360)
        vu348(p360)
    end
})
vu42:AddButton({
    Name = "\216\177\217\136\216\173 \216\185\217\134\216\175 \216\167\217\132\216\167\216\185\216\168",
    Callback = function()
        vu353()
    end
})
local v361 = v37:MakeTab({
    Name = "\216\170\216\174\216\177\217\138\216\168 \216\172\216\175\217\138\216\175",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
local vu362 = game:GetService("Players")
local vu363 = game:GetService("ReplicatedStorage")
local vu364 = nil
local vu365 = false
local function v372()
    local v366 = vu362
    local v367, v368, v369 = ipairs(v366:GetPlayers())
    local v370 = {}
    while true do
        local v371
        v369, v371 = v367(v368, v369)
        if v369 == nil then
            break
        end
        table.insert(v370, v371.Name)
    end
    return v370
end
local v373 = v361
local v374 = v361.AddDropdown
local v375 = {
    Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\217\132\216\167\216\185\216\168",
    Options = v372()
}
local v376 = vu362
local v377
if vu362.GetPlayers(v376)[1] then
    local v378 = vu362
    v377 = vu362.GetPlayers(v378)[1].Name or ""
else
    v377 = ""
end
v375.Default = v377
function v375.Callback(p379)
    vu364 = p379
end
v374(v373, v375)
local function vu386(p380)
    local v381 = vu362.LocalPlayer
    if v381 and p380 then
        if p380.Character and p380.Character:FindFirstChild("HumanoidRootPart") then
            local v382 = v381:FindFirstChild("Backpack")
            if v382 then
                local v383 = v382:FindFirstChild("Assault")
                if v383 and v383:FindFirstChild("GunScript_Local") then
                    local v384 = v383.GunScript_Local
                    if v384:FindFirstChild("MuzzleEffect") and v384:FindFirstChild("HitEffect") then
                        local v385 = {
                            p380.Character.HumanoidRootPart,
                            p380.Character.HumanoidRootPart,
                            Vector3.new(10000376832, 10000832, 10000376832),
                            Vector3.new(14.311434326000017, 3.784946203231008, 7.053763389580074),
                            v384.MuzzleEffect,
                            v384.HitEffect,
                            0,
                            0,
                            {
                                false
                            },
                            {
                                25,
                                Vector3.new(100, 100, 100),
                                BrickColor.new(209),
                                0.25,
                                Enum.Material.SmoothPlastic,
                                0.25
                            },
                            true,
                            false
                        }
                        vu363:WaitForChild("RE"):WaitForChild("1Gu1n"):FireServer(unpack(v385))
                    end
                else
                    return
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
v361:AddToggle({
    Name = "\216\170\216\172\217\133\217\138\216\175 \216\167\217\132\216\167\216\185\216\168 \216\167\217\132\217\133\216\173\216\175\216\175",
    Default = false,
    Callback = function(p387)
        vu365 = p387
        if vu365 then
            vu363:WaitForChild("Remotes"):WaitForChild("GunEquip"):InvokeServer(unpack({
                "Assault",
                "StockAssault"
            }))
            task.spawn(function()
                while vu365 do
                    local v388 = vu364 and vu362:FindFirstChild(vu364)
                    if v388 then
                        vu386(v388)
                    end
                    task.wait(0.5)
                end
            end)
        end
    end
})
local vu389 = game:GetService("Players")
local vu390 = game:GetService("ReplicatedStorage")
local vu391 = vu389.LocalPlayer
local function vu392()
    if not vu391:WaitForChild("Backpack"):FindFirstChild("Assault") then
        vu390:WaitForChild("Remotes"):WaitForChild("GunEquip"):InvokeServer(unpack({
            "Assault",
            "StockAssault"
        }))
    end
end
local vu393 = false
v361:AddToggle({
    Name = "\216\170\216\172\217\133\217\138\216\175 \216\167\217\132\217\131\217\132",
    Default = false,
    Callback = function(p394)
        vu393 = p394
        if vu393 then
            vu392()
            task.spawn(function()
                while true do
                    if not vu393 then
                        return
                    end
                    local v395 = vu389
                    local v396, v397, v398 = ipairs(v395:GetPlayers())
                    while true do
                        local v399
                        v398, v399 = v396(v397, v398)
                        if v398 == nil then
                            break
                        end
                        if v399 ~= vu391 and v399.Character and v399.Character:FindFirstChild("HumanoidRootPart") then
                            for _ = 1, 2 do
                                if not vu393 then
                                    break
                                end
                                local v400 = {
                                    v399.Character.HumanoidRootPart,
                                    v399.Character.HumanoidRootPart,
                                    Vector3.new(100000000376832, 100000000376832, 100000000376832),
                                    Vector3.new(- 61.12593460083008, 3.699275255203247, - 1.4375219345092773),
                                    vu391.Backpack:WaitForChild("Assault"):WaitForChild("GunScript_Local"):WaitForChild("MuzzleEffect"),
                                    vu391.Backpack:WaitForChild("Assault"):WaitForChild("GunScript_Local"):WaitForChild("HitEffect"),
                                    0,
                                    0,
                                    {
                                        false
                                    },
                                    {
                                        25,
                                        Vector3.new(100, 100, 100),
                                        BrickColor.new(29),
                                        0.25,
                                        Enum.Material.SmoothPlastic,
                                        0.25
                                    },
                                    true,
                                    false
                                }
                                vu390.RE["1Gu1n"]:FireServer(unpack(v400))
                                task.wait(0.01)
                            end
                        end
                    end
                end
            end)
        end
    end
})
v361:AddSection({
    Name = "\216\170\216\174\216\177\217\138\216\168 \217\130\217\136\217\138\226\134\147"
})
local vu401 = game:GetService("Players")
local vu402 = game:GetService("ReplicatedStorage")
local vu403 = nil
local vu404 = false
local function v411()
    local v405 = vu401
    local v406, v407, v408 = ipairs(v405:GetPlayers())
    local v409 = {}
    while true do
        local v410
        v408, v410 = v406(v407, v408)
        if v408 == nil then
            break
        end
        table.insert(v409, v410.Name)
    end
    return v409
end
local v412 = v361
local v413 = v361.AddDropdown
local v414 = {
    Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\217\132\216\167\216\185\216\168",
    Options = v411()
}
local v415 = vu401
local v416
if vu401.GetPlayers(v415)[1] then
    local v417 = vu401
    v416 = vu401.GetPlayers(v417)[1].Name or ""
else
    v416 = ""
end
v414.Default = v416
function v414.Callback(p418)
    vu403 = p418
end
v413(v412, v414)
local function vu425(p419)
    local v420 = vu401.LocalPlayer
    if v420 and p419 then
        if p419.Character and p419.Character:FindFirstChild("HumanoidRootPart") then
            local v421 = v420:FindFirstChild("Backpack")
            if v421 then
                local v422 = v421:FindFirstChild("Assault")
                if v422 and v422:FindFirstChild("GunScript_Local") then
                    local v423 = v422.GunScript_Local
                    if v423:FindFirstChild("MuzzleEffect") and v423:FindFirstChild("HitEffect") then
                        local v424 = {
                            p419.Character.HumanoidRootPart,
                            p419.Character.HumanoidRootPart,
                            Vector3.new(9999999999376832, 99999999832, 999999999376832),
                            Vector3.new(14.311434326000017, 3.784946203231008, 7.053763389580074),
                            v423.MuzzleEffect,
                            v423.HitEffect,
                            0,
                            0,
                            {
                                false
                            },
                            {
                                25,
                                Vector3.new(100, 100, 100),
                                BrickColor.new(209),
                                0.25,
                                Enum.Material.SmoothPlastic,
                                0.25
                            },
                            true,
                            false
                        }
                        vu402:WaitForChild("RE"):WaitForChild("1Gu1n"):FireServer(unpack(v424))
                    end
                else
                    return
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
v361:AddToggle({
    Name = "\216\170\216\172\217\133\217\138\216\175 \216\167\217\132\216\167\216\185\216\168 \216\167\217\132\217\133\216\173\216\175\216\175",
    Default = false,
    Callback = function(p426)
        vu404 = p426
        if vu404 then
            vu402:WaitForChild("Remotes"):WaitForChild("GunEquip"):InvokeServer(unpack({
                "Assault",
                "StockAssault"
            }))
            task.spawn(function()
                while vu404 do
                    local v427 = vu403 and vu401:FindFirstChild(vu403)
                    if v427 then
                        vu425(v427)
                    end
                    task.wait(0.5)
                end
            end)
        end
    end
})
local vu428 = game:GetService("Players")
local vu429 = game:GetService("ReplicatedStorage")
local vu430 = vu428.LocalPlayer
local function vu432()
    local v431 = vu429:FindFirstChild("RE")
    if v431 and v431:FindFirstChild("1Gu1n") then
        return v431["1Gu1n"]
    else
        return nil
    end
end
local function vu435()
    local v433 = vu430:WaitForChild("Backpack")
    local v434 = vu430.Character or vu430.CharacterAdded:Wait()
    if not (v433:FindFirstChild("Assault") or v434:FindFirstChild("Assault")) then
        vu429:WaitForChild("Remotes"):WaitForChild("GunEquip"):InvokeServer(unpack({
            "Assault",
            "StockAssault"
        }))
        task.wait(0.3)
    end
end
local vu436 = false
v361:AddToggle({
    Name = "\216\170\216\174\216\177\217\138\216\168 \217\138\216\175\217\133\216\177 \216\172\217\133\217\138\216\185 \216\167\217\132\216\167\216\185\216\168\217\138\217\134 \216\168\217\132 \216\179\217\138\216\177\217\129\216\177",
    Default = false,
    Callback = function(p437)
        vu436 = p437
        if vu436 then
            task.spawn(function()
                while vu436 do
                    local vu438 = false
                    local function vu439()
                        vu438 = true
                    end
                    local vu440 = vu432()
                    if vu440 then
                        pcall(function()
                            vu435()
                            local v441 = not vu430.Backpack:FindFirstChild("Assault") and vu430.Character
                            if v441 then
                                v441 = vu430.Character:FindFirstChild("Assault")
                            end
                            if v441 and v441:FindFirstChild("GunScript_Local") then
                                local v442 = vu428
                                local v443, v444, v445 = ipairs(v442:GetPlayers())
                                while true do
                                    local v446
                                    v445, v446 = v443(v444, v445)
                                    if v445 == nil then
                                        break
                                    end
                                    if not vu436 then
                                        vu439()
                                    end
                                    if v446 ~= vu430 and v446.Character and v446.Character:FindFirstChild("HumanoidRootPart") then
                                        local v447 = {
                                            v446.Character.HumanoidRootPart,
                                            v446.Character.HumanoidRootPart,
                                            Vector3.new(99999999376832, 999999999376832, 999999999376832),
                                            Vector3.new(- 61.12593480083008, 3.699275255288847, - 1.4375219345098884),
                                            v441.GunScript_Local:FindFirstChild("MuzzleEffect"),
                                            v441.GunScript_Local:FindFirstChild("HitEffect"),
                                            0,
                                            0,
                                            {
                                                false
                                            },
                                            {
                                                25,
                                                Vector3.new(100, 100, 100),
                                                BrickColor.new(29),
                                                0.25,
                                                Enum.Material.SmoothPlastic,
                                                0.25
                                            },
                                            true,
                                            false
                                        }
                                        vu440:FireServer(unpack(v447))
                                        task.wait(0.2)
                                    end
                                end
                            end
                        end)
                        task.wait(0.2)
                    else
                        warn("\216\167\217\132\216\177\217\138\217\133\217\136\216\170 \216\167\216\174\216\170\217\129\217\137 \216\163\217\136 \217\133\216\167 \217\133\217\136\216\172\217\136\216\175!")
                        task.wait(1)
                    end
                    if vu438 then
                        break
                    end
                end
            end)
        end
    end
})
v361:AddParagraph(" \216\170\216\174\216\177\217\138\216\168:", "  \217\138\216\172\217\133\216\175 \216\167\217\132\216\167\216\185\216\168\217\138\217\134 \217\136 \217\138\216\183\217\138\216\177\217\135\217\133 \216\174\216\167\216\177\216\172 \216\167\217\132\217\133\216\167\216\168 \217\136\217\138\217\133\217\136\216\170\217\135\217\133 \216\168\217\134\217\129\216\179 \216\167\217\132\217\136\217\131\216\170")
local v448 = v37:MakeTab({
    Name = "\216\179\217\131\217\134\216\167\216\170",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
v448:AddSection({
    Name = "\217\134\216\179\216\174 \216\179\217\131\217\134\216\167\216\170"
})
local v449 = game:GetService("ReplicatedStorage")
local vu450 = game:GetService("Players")
local vu451 = game:GetService("StarterGui")
local vu452 = v449:WaitForChild("Remotes"):WaitForChild("Wear")
local vu453 = v449:WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody")
local function vu456(p454, p455)
    vu451:SetCore("SendNotification", {
        Title = p454,
        Text = p455,
        Duration = 3
    })
end
local function vu458(p457)
    if p457 and p457 ~= 0 then
        vu452:InvokeServer(p457)
    end
end
local function vu461(p459)
    local v460 = (p459.Character or p459.CharacterAdded:Wait()):FindFirstChildOfClass("BodyColors")
    if v460 then
        vu458(v460.HeadColor.Name)
    end
end
local function vu469(p462)
    local v463 = (p462.Character or p462.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
    if v463 then
        local v464 = v463:GetAppliedDescription()
        local v465, v466, v467 = ipairs({
            v464.Shirt,
            v464.Pants,
            v464.GraphicTShirt
        })
        while true do
            local v468
            v467, v468 = v465(v466, v467)
            if v467 == nil then
                break
            end
            vu458(v468)
            task.wait(0.2)
        end
    end
end
local function vu481(p470)
    local v471 = (p470.Character or p470.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
    if v471 then
        local v472 = v471:GetAppliedDescription()
        local v473 = {
            v472.HatAccessory,
            v472.HairAccessory,
            v472.FaceAccessory,
            v472.NeckAccessory,
            v472.ShouldersAccessory,
            v472.FrontAccessory,
            v472.BackAccessory,
            v472.WaistAccessory
        }
        local v474, v475, v476 = ipairs(v473)
        while true do
            local v477
            v476, v477 = v474(v475, v476)
            if v476 == nil then
                break
            end
            local v478, v479, v480 = string.gmatch(v477, "%d+")
            while true do
                v480 = v478(v479, v480)
                if v480 == nil then
                    break
                end
                vu458(tonumber(v480))
                task.wait(0.2)
            end
        end
    end
end
local function vu485(p482)
    local v483 = (p482.Character or p482.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
    if v483 then
        local v484 = v483:GetAppliedDescription()
        vu453:InvokeServer({
            v484.Torso,
            v484.RightArm,
            v484.LeftArm,
            v484.RightLeg,
            v484.LeftLeg,
            v484.Head
        })
    end
end
local vu486 = nil
v448:AddDropdown({
    Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\217\132\217\132\216\167\216\185\216\168",
    Default = "",
    Options = (function()
        local v487 = vu450
        local v488, v489, v490 = ipairs(v487:GetPlayers())
        local v491 = {}
        while true do
            local v492
            v490, v492 = v488(v489, v490)
            if v490 == nil then
                break
            end
            if v492 ~= vu450.LocalPlayer then
                table.insert(v491, v492.Name)
            end
        end
        return v491
    end)(),
    Callback = function(p493)
        vu486 = p493
    end
})
v448:AddButton({
    Name = "\217\134\216\179\216\174 \216\167\217\132\216\179\217\131\217\134",
    Callback = function()
        if vu486 then
            local vu494 = vu450:FindFirstChild(vu486)
            if vu494 then
                vu456("\216\172\216\167\216\177\217\138 \216\167\217\132\217\134\216\179\216\174", "\216\172\216\167\216\177\217\138 \217\134\216\179\216\174 \216\179\217\131\217\134 " .. vu494.Name)
                task.spawn(function()
                    vu485(vu494)
                    task.wait(0.3)
                    vu461(vu494)
                    task.wait(0.3)
                    vu469(vu494)
                    task.wait(0.3)
                    vu481(vu494)
                    vu456("\216\170\217\133 \216\167\217\132\217\134\216\179\216\174", "\216\170\217\133 \217\134\216\179\216\174 \216\179\217\131\217\134 " .. vu494.Name .. " \216\168\217\134\216\172\216\167\216\173!")
                end)
            end
        else
            vu456("\216\174\216\183\216\163", "\217\138\216\172\216\168 \216\167\216\174\216\170\217\138\216\167\216\177 \217\132\216\167\216\185\216\168 \216\163\217\136\217\132\216\167\217\139")
            return
        end
    end
})
v448:AddSection({
    Name = "\216\179\217\131\217\134\216\167\216\170 \216\167\217\136\217\132\216\167\216\175 R6"
})
v448:AddButton({
    Name = "\216\179\217\131\217\134 \216\167\216\179\216\183\217\136\216\177\217\138 R6",
    Callback = function()
        print("Clicked")
        local v495 = {
            {
                1,
                1,
                1,
                1,
                139607718,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v495))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            134082579
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            123484249524345
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            93890750467681
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            114554632554289
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            74108785680678
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            71663109326643
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            11342406713
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            92603675231903
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            130748580503185
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            135154599669181
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            18436377492
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            97655418205423
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            73923051046972
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            17795867389
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            102845440110072
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            "skintone",
            "Institutional white"
        }))
    end
})
v448:AddButton({
    Name = "\216\179\217\131\217\134 \216\167\216\168\217\138\216\182 \216\173\217\132\217\136 R6",
    Callback = function()
        print("Clicked")
        local v496 = {
            {
                1,
                1,
                1,
                1,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v496))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            134082579
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16368919769
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16368919769
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            13282804902
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            85144069642236
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            105410736394520
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            114554632554289
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            17183211696
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            "skintone",
            "Institutional white"
        }))
    end
})
v448:AddButton({
    Name = "\216\167\216\182\216\186\216\183 \217\132\217\132\216\173\216\181\217\136\217\132 \216\185\217\132\217\137 \216\167\217\132\217\133\216\180\217\138\216\169 \217\136\216\167\217\132\217\136\217\130\217\129\217\135R6",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua", true))()
    end
})
v448:AddSection({
    Name = "\217\133\217\132\216\167\216\173\216\182\216\169: \216\167\216\176\216\167 \216\172\217\134\216\170 \216\170\216\177\217\138\216\175 \216\170\217\136\216\174\216\177 \216\167\217\132\217\133\216\180\217\138\217\135 \217\132\216\167\216\178\217\133 \216\170\216\183\217\132\216\185 \217\136\216\170\217\129\217\136\216\170 "
})
sTab = v37:MakeTab({
    Name = "\216\167\217\132\216\180\216\185\217\136\216\177",
    Icon = "rbxassetid://115714662895227"
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\185\216\167\216\175\217\138 \216\167\216\179\217\136\216\175\206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15535076528
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16127830905
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            14808924884
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15848163279
        }))
    end
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\185\216\167\216\175\217\138 \216\168\217\134\217\138\206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            14627143022
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15294036713
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15847969469
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15971158257
        }))
    end
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\185\216\167\216\175\217\138 \216\167\216\168\217\138\216\182\206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            14627127264
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15908583844
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            14808889186
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15349539978
        }))
    end
})
sTab:AddSection({
    Name = "\216\175\217\133\216\172 (9) \216\180\216\185\217\136\216\177 \216\173\217\132\217\136"
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\167\216\179\217\136\216\175 9 \216\180\216\185\217\136\216\177\206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            89963641541698
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15214479618
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16168983297
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12553856439
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12411026610
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15848163279
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15294026484
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            11386780095
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15303551954
        }))
    end
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\167\216\168\217\138\216\182 9 \216\180\216\185\217\136\216\177\206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12395782823
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15530780426
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            14808889186
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16127870253
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15848173823
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12553870762
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12411004315
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            14887721871
        }))
    end
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\167\216\179\217\136\216\175 9 \216\180\216\185\217\136\216\177\206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15908581067
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12410997561
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15360967485
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12553878346
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16127867077
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15294007958
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15696510459
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            11386778657
        }))
    end
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\167\216\179\217\136\216\175 9 \216\180\216\185\217\136\216\177 \217\134\217\136\216\185 \216\171\216\167\217\134\217\138 \206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            89963641541698
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15214479618
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12411026610
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16168983297
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15848163279
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12553856439
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16752451901
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15303551954
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            11386780095
        }))
    end
})
sTab:AddButton({
    Name = "\206\169\216\175\217\133\216\172 \216\167\216\180\217\130\216\177 9 \216\180\216\185\217\136\216\177 \217\134\217\136\216\185 \216\171\216\167\217\134\217\138\206\169",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            14887721871
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12411004315
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12553870762
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15848173823
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16127870253
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            17374012310
        }))
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            15530780426
        }))
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            12395782823
        }))
    end
})
HTab = v37:MakeTab({
    Name = "\216\167\217\132\216\167\216\172\217\128\216\179\216\167\217\133",
    Icon = "rbxassetid://115714662895227"
})
HTab:AddSection({
    Name = "\216\167\217\132\216\177\216\166\217\128\217\136\216\179 \217\128 \216\167\217\132\216\167\216\177\216\172\217\128\217\132"
})
HTab:AddButton({
    Name = "\206\169\216\177\216\172\217\132 \217\133\217\130\216\183\217\136\216\185\217\135 \217\132\217\132\216\168\217\134\216\167\216\170\206\169 ",
    Callback = function()
        print("Clicked")
        local v497 = {
            {
                96491916349570,
                76683091425509,
                75159926897589,
                139607718,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v497))
    end
})
HTab:AddButton({
    Name = "\206\169\216\177\216\172\217\132 \217\133\217\130\216\183\217\136\216\185\217\135 \217\132\217\132 \217\136\217\132\216\175\206\169 ",
    Callback = function()
        print("Clicked")
        local v498 = {
            {
                1,
                1,
                1,
                139607718,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v498))
    end
})
HTab:AddButton({
    Name = "\216\177\216\163\216\179 \216\177\217\136\216\168\217\136\216\170",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            3210773801
        }))
    end
})
HTab:AddButton({
    Name = "\216\177\216\163\216\179 \217\133\216\174\217\129\217\138",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            134082579
        }))
    end
})
HTab:AddButton({
    Name = "\216\177\216\163\216\179 \217\131\217\136\216\168\217\138 |\216\177\217\136\217\132",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            746767604
        }))
    end
})
HTab:AddButton({
    Name = "\216\177\216\163\216\179 \216\185\217\138\217\136\217\134 \216\178\216\177\217\130\216\167\216\161",
    Callback = function()
        wait(0.1)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("Wear", 9000000000):InvokeServer(unpack({
            16580493236
        }))
    end
})
HTab:AddButton({
    Name = "\206\169\216\177\216\172\217\132 \216\173\216\175\217\138\216\175\217\138\216\169\206\169 ",
    Callback = function()
        print("Clicked")
        local v499 = {
            {
                1,
                1,
                1,
                17500249989,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v499))
    end
})
HTab:AddButton({
    Name = "\206\169\216\177\216\172\217\132 \216\167\217\132\216\185\216\182\216\167\217\133 \216\167\217\132\216\168\217\138\216\182\216\167\216\161\206\169 ",
    Callback = function()
        print("Clicked")
        local v500 = {
            {
                1,
                1,
                1,
                14580308646,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v500))
    end
})
HTab:AddButton({
    Name = "\206\169\216\177\216\172\217\132 \216\167\217\132\216\185\216\182\216\167\217\133 \216\167\217\132\216\167\216\179\217\136\216\175\206\169 ",
    Callback = function()
        print("Clicked")
        local v501 = {
            {
                1,
                1,
                1,
                14547162578,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v501))
    end
})
HTab:AddButton({
    Name = "\206\169\216\177\216\172\217\132 \216\177\217\136\217\132\206\169 ",
    Callback = function()
        print("Clicked")
        local v502 = {
            {
                1,
                1,
                1,
                3230472745,
                3230470862,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v502))
    end
})
HTab:AddSection({
    Name = "\216\167\216\172\216\179\216\167\217\133 \216\168\217\134\217\128\216\167\216\170"
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \216\168\217\134\216\170 \216\174\216\181\216\177 \216\181\216\186\217\138\216\177\206\169 ",
    Callback = function()
        print("Clicked")
        local v503 = {
            {
                96491916349570,
                76683091425509,
                75159926897589,
                1,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v503))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \216\168\217\134\216\170 \216\174\216\181\216\177 \216\182\216\185\217\138\217\129\206\169 ",
    Callback = function()
        print("Clicked")
        local v504 = {
            {
                74302534603111,
                76683091425509,
                75159926897589,
                1,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v504))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \216\168\217\134\216\170 1\206\169 ",
    Callback = function()
        print("Clicked")
        local v505 = {
            {
                96491916349570,
                14854350570,
                14854350451,
                1,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v505))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \216\168\217\134\216\170 2\206\169 ",
    Callback = function()
        print("Clicked")
        local v506 = {
            {
                16214246112,
                16214249513,
                16214251181,
                1,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v506))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \216\168\217\134\216\170 3\206\169 ",
    Callback = function()
        print("Clicked")
        local v507 = {
            {
                15539008532,
                15539008875,
                15539008680,
                15539008795,
                15539011945,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v507))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \216\168\217\134\216\170 4\206\169 ",
    Callback = function()
        print("Clicked")
        local v508 = {
            {
                14861800638,
                14861800626,
                14861801452,
                14861800627,
                14861801454,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v508))
    end
})
HTab:AddSection({
    Name = "\216\167\216\172\216\179\216\167\217\133 \216\167\217\136\217\132\216\167\216\175"
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \216\167\217\136\217\132\216\167\216\175. s15\206\169 ",
    Callback = function()
        print("Clicked")
        local v509 = {
            {
                17754346388,
                1,
                1,
                1,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v509))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133  \217\136\217\132\216\175 \216\182\216\185\217\138\217\129\206\169 ",
    Callback = function()
        print("Clicked")
        local v510 = {
            {
                92757812011061,
                99519402284266,
                115905570886697,
                1,
                1,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v510))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \217\136\217\132\216\175 \217\131\217\136\216\168\217\138\206\169",
    Callback = function()
        print("Clicked")
        local v511 = {
            {
                86499666,
                27112039,
                27112052,
                27112068,
                27112056,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v511))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \217\136\217\132\216\175 \216\177\217\136\217\132\206\169",
    Callback = function()
        print("Clicked")
        local v512 = {
            {
                27112025,
                27112039,
                27112052,
                3230472745,
                3230470862,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v512))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\216\179\217\133 \217\136\217\132\216\175 \217\133\216\185\216\182\217\132\206\169",
    Callback = function()
        print("Clicked")
        local v513 = {
            {
                18178775358,
                18178775182,
                18178775725,
                18178777453,
                18178775695,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v513))
    end
})
HTab:AddSection({
    Name = "\216\167\216\172\216\179\216\167\217\133 \216\167\217\130\216\178\216\167\217\133"
})
HTab:AddButton({
    Name = "\206\169\216\172\217\128\216\179\217\133 \216\167\217\132\217\130\216\178\217\133\206\169",
    Callback = function()
        print("Clicked")
        local v514 = {
            {
                14579958702,
                14579959062,
                14579959191,
                14579959249,
                14579963667,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v514))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\217\128\216\179\217\133 \216\167\217\132\217\130\216\178\217\133 \216\167\217\132\217\133\216\170\217\136\216\179\217\128\216\183\206\169",
    Callback = function()
        print("Clicked")
        local v515 = {
            {
                77813057823038,
                135110043370135,
                116607813654019,
                138966229804486,
                128961183894053,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v515))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\217\128\216\179\217\133 \216\167\217\132\217\130\216\178\217\133 \216\167\217\132\217\130\216\181\217\138\216\177\206\169",
    Callback = function()
        print("Clicked")
        local v516 = {
            {
                120973199097564,
                118345433416023,
                112849465115864,
                78321005147549,
                106586789635639,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v516))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\217\128\216\179\217\133 \216\167\217\132\217\130\216\178\217\133 \206\169",
    Callback = function()
        print("Clicked")
        local v517 = {
            {
                126267841602936,
                77530451194918,
                123471958406889,
                117042768644173,
                131948590344338,
                1
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v517))
    end
})
HTab:AddButton({
    Name = "\206\169\216\172\217\128\216\179\217\133 \216\167\217\132\217\135\216\167\217\133\216\179\216\170\216\177\206\169",
    Callback = function()
        print("Clicked")
        local v518 = {
            {
                14898536974,
                14898536957,
                14898537277,
                14898537300,
                14898537292,
                14898536975
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v518))
    end
})
HTab:AddSection({
    Name = "\216\167\216\172\216\179\216\167\217\133 \216\186\216\177\217\138\216\168\217\135"
})
HTab:AddButton({
    Name = "\206\169\216\179\216\170\217\138\217\129\206\169",
    Callback = function()
        print("Clicked")
        local v519 = {
            {
                14976595538,
                14976595831,
                14976595559,
                14976595617,
                14976595675,
                134082579
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v519))
    end
})
HTab:AddButton({
    Name = "\206\169\216\185\217\134\217\131\216\168\217\136\216\170\206\169",
    Callback = function()
        print("Clicked")
        local v520 = {
            {
                17047437188,
                17047437378,
                17047437442,
                17047437366,
                17047437217,
                17047437225
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v520))
    end
})
HTab:AddButton({
    Name = "\206\169\216\175\217\138\217\134\216\181\217\136\216\177\206\169",
    Callback = function()
        print("Clicked")
        local v521 = {
            {
                3210533212,
                3203439803,
                3203438798,
                3203440611,
                3203443647,
                3203436750
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v521))
    end
})
HTab:AddButton({
    Name = "\206\169\217\130\216\177\217\136\217\138\206\169",
    Callback = function()
        print("Clicked")
        local v522 = {
            {
                74148072333019,
                105051845347092,
                103317093565994,
                123546781151669,
                110417909019083,
                140062839549195
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v522))
    end
})
HTab:AddButton({
    Name = "\206\169\217\131\216\177\216\179\217\138\206\169",
    Callback = function()
        print("Clicked")
        local v523 = {
            {
                16872133248,
                16872133982,
                16872133723,
                16872133730,
                16872133733,
                134082579
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v523))
    end
})
HTab:AddButton({
    Name = "\206\169\217\135\216\167\217\132\217\131\206\169",
    Callback = function()
        print("Clicked")
        local v524 = {
            {
                105938035513300,
                120682289281525,
                78459091342559,
                119167161940457,
                78171925423915,
                92193892051712
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v524))
    end
})
HTab:AddButton({
    Name = "\206\169\216\177\217\138\216\168\217\136\216\170\206\169",
    Callback = function()
        print("Clicked")
        local v525 = {
            {
                14776593226,
                14776227941,
                14776227816,
                102149844389538,
                102624006545764,
                74920391713702
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9000000000):WaitForChild("ChangeCharacterBody", 9000000000):InvokeServer(unpack(v525))
    end
})
HouseTab = v37:MakeTab({
    Name = "\216\167\217\132\216\168\217\138\217\136\216\170",
    Icon = "rbxassetid://115714662895227"
})
HouseTab:AddSection({
    Name = "\217\129\217\131 \216\167\217\132\216\168\216\167\217\134\216\175 \217\136\216\167\216\174\216\176 \216\170\216\173\217\131\217\133"
})
local vu526 = nil
HouseTab:AddTextbox({
    Name = "\216\167\216\175\216\174\217\132 \216\177\217\130\217\133 \216\167\217\132\216\168\217\138\216\170",
    Default = "",
    TextDisappear = false,
    Callback = function(p527)
        vu526 = tonumber(p527)
    end
})
HouseTab:AddButton({
    Name = "\216\167\216\174\216\176 \216\170\216\173\217\131\217\133",
    Callback = function()
        if vu526 then
            local v528 = {
                "GivePermissionLoopToServer",
                game:GetService("Players").LocalPlayer,
                vu526
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v528))
        else
            print("Nenhum n\195\186mero de casa selecionado.")
        end
        print("Clicked!")
    end
})
HouseTab:AddSection({
    Name = "\216\167\216\174\216\176 \216\172\217\133\217\138\216\185 \216\170\216\173\217\131\217\133 \216\167\217\132\216\168\217\138\217\136\216\170"
})
HouseTab:AddButton({
    Name = "\216\167\216\174\216\176 \216\172\217\133\217\138\216\185 \216\170\216\173\217\131\217\133 \216\167\217\132\216\168\217\138\217\136\216\170",
    Callback = function()
        for v529 = 1, 35 do
            if v529 ~= 8 then
                if v529 ~= 9 then
                    if v529 ~= 10 then
                        local v530 = {
                            "GivePermissionLoopToServer",
                            game:GetService("Players").LocalPlayer,
                            v529
                        }
                        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v530))
                    end
                end
            end
        end
        print("Permissions for all houses granted!")
    end
})
HouseTab:AddSection({
    Name = "\216\170\217\134\217\130\217\132 \217\132\217\132\216\168\217\138\217\136\216\170"
})
local vu531 = nil
local function vu538(p532)
    local v533 = workspace["001_Lots"]:FindFirstChild(p532 .. "House")
    if v533 then
        local v534 = v533:FindFirstChild("HousePickedByPlayer")
        local v535 = v534 and v534:FindFirstChild("HouseModel")
        if v535 then
            local v536 = v535:FindFirstChild("001_Safe")
            local v537 = v536 and v536:FindFirstChild("OpenSafeDoorButton")
            if v537 then
                return v537
            end
        end
    else
        vu177:MakeNotification({
            Name = "\216\174\216\183\216\167\216\161",
            Content = "Casa n\195\163o encontrada, atualize a tabela ou tente novamente com uma existente.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    end
    return nil
end
local function vu544()
    local v539, v540, v541 = pairs(workspace["001_Lots"]:GetChildren())
    local v542 = {}
    while true do
        local v543
        v541, v543 = v539(v540, v541)
        if v541 == nil then
            break
        end
        if string.find(v543.Name, "House") and v543:FindFirstChild("HousePickedByPlayer") then
            table.insert(v542, v543.Owner.Value .. "-" .. v543.Number.Number.Value)
        end
    end
    return v542
end
local vu545 = nil
local function vu548()
    vu545 = HouseTab:AddDropdown({
        Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\217\132\216\168\217\138\216\170:",
        Default = "",
        Options = vu544(),
        Callback = function(p546)
            if p546 and p546 ~= "" then
                local v547 = string.split(p546, "-")
                vu531 = tostring(v547[1])
            end
        end
    })
end
vu548()
local function vu549()
    vu531 = nil
    vu545:Destroy()
    vu548()
    vu177:MakeNotification({
        Name = "\216\170\216\173\216\175\217\138\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169",
        Content = "Lista de casas atualizada!",
        Image = "rbxassetid://115714662895227",
        Time = 3
    })
end
HouseTab:AddButton({
    Name = "\216\170\217\134\217\130\217\132 \217\132\217\132 \216\174\216\178\217\134\216\169 ",
    Callback = function()
        if vu531 then
            if workspace["001_Lots"]:FindFirstChild(vu531 .. "House") then
                local v550 = vu538(vu531)
                if v550 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v550.Position)
                else
                    vu177:MakeNotification({
                        Name = "Erro",
                        Content = "Cofre n\195\163o encontrado na casa " .. tostring(vu531),
                        Image = "rbxassetid://115714662895227",
                        Time = 3
                    })
                end
            else
                vu177:MakeNotification({
                    Name = "Erro",
                    Content = "Casa n\195\163o encontrada, atualize a tabela ou selecione uma existente.",
                    Image = "rbxassetid://115714662895227",
                    Time = 3
                })
            end
        end
    end
})
HouseTab:AddButton({
    Name = "\216\170\216\173\216\175\217\138\216\171 \216\167\217\132\217\130\216\167\216\166\217\133\216\169",
    Callback = function()
        vu549()
    end
})
HouseTab:AddSection({
    Name = "\216\170\217\134\217\130\217\132 \217\132\217\132\216\168\217\138\217\136\216\170"
})
local vu551 = {
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 1"] = Vector3.new(260.29, 4.37, 209.32),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 2"] = Vector3.new(234.49, 4.37, 228),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 3"] = Vector3.new(262.79, 21.37, 210.84),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 4"] = Vector3.new(229.6, 21.37, 225.4),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 5"] = Vector3.new(173.44, 21.37, 228.11),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 6"] = Vector3.new(- 43, 21, - 137),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 7"] = Vector3.new(- 40, 36, - 137),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 11"] = Vector3.new(- 21, 40, 436),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 12"] = Vector3.new(155, 37, 433),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 13"] = Vector3.new(255, 35, 431),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 14"] = Vector3.new(254, 38, 394),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 15"] = Vector3.new(148, 39, 387),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 16"] = Vector3.new(- 17, 42, 395),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 17"] = Vector3.new(- 189, 37, - 247),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 18"] = Vector3.new(- 354, 37, - 244),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 19"] = Vector3.new(- 456, 36, - 245),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 20"] = Vector3.new(- 453, 38, - 295),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 21"] = Vector3.new(- 356, 38, - 294),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 22"] = Vector3.new(- 187, 37, - 295),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 23"] = Vector3.new(- 410, 68, - 447),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 24"] = Vector3.new(- 348, 69, - 496),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 28"] = Vector3.new(- 103, 12, 1087),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 29"] = Vector3.new(- 730, 6, 808),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 30"] = Vector3.new(- 245, 7, 822),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 31"] = Vector3.new(639, 76, - 361),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 32"] = Vector3.new(- 908, 6, - 361),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 33"] = Vector3.new(- 111, 70, - 417),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 34"] = Vector3.new(230, 38, 569),
    ["\216\168\217\138\216\170 \216\177\217\130\217\133 35"] = Vector3.new(- 30, 13, 2209)
}
local v552, v553, v554 = pairs(vu551)
local v555 = {}
while true do
    local v556
    v554, v556 = v552(v553, v554)
    if v554 == nil then
        break
    end
    table.insert(v555, v554)
end
table.sort(v555, function(p557, p558)
    return (tonumber(p557:match("%d+")) or 0) < (tonumber(p558:match("%d+")) or 0)
end)
HouseTab:AddDropdown({
    Name = "\216\170\217\134\217\130\217\132 \217\132\217\132\216\168\217\138\217\136\216\170",
    Options = v555,
    Callback = function(p559)
        local v560 = game.Players.LocalPlayer
        if v560 and v560.Character then
            v560.Character.HumanoidRootPart.CFrame = CFrame.new(vu551[p559])
        end
    end
})
HouseTab:AddSection({
    Name = "\217\129\217\131 \216\167\217\132\216\168\216\167\217\134\216\175 \216\185\217\134 \216\167\217\132\216\168\217\138\217\136\216\170"
})
HouseTab:AddToggle({
    Name = "\216\167\216\182\216\186\216\183 \217\132\216\167\216\178\216\167\217\132\217\135 \216\167\217\132\216\173\216\182\216\177 \217\133\217\134 \217\131\217\132 \216\167\217\132\216\168\217\138\217\136\216\170",
    Default = false,
    Callback = function(p561)
        isUnbanActive = p561
        if isUnbanActive then
            print("Auto Unban Activated")
            startAutoUnban()
        else
            print("Auto Unban Deactivated")
        end
    end
})
local v562 = v37:MakeTab({
    Name = "\216\167\217\132\216\167\216\179\217\133\216\167\216\161",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
v562:AddSection({
    Name = "\216\170\217\132\217\136\217\138\217\134 \216\167\217\132\216\167\216\179\217\133"
})
local vu563 = false
local vu564 = nil
local vu565 = {
    Color3.new(1, 0.215, 0.223),
    Color3.new(1, 0.419, 0.267),
    Color3.new(1, 0.681, 0.129),
    Color3.new(0.867, 1, 0.304),
    Color3.new(0.612, 1, 0.273),
    Color3.new(0.229, 1, 0.53),
    Color3.new(0.116, 0.754, 1),
    Color3.new(0, 0.078, 1),
    Color3.new(0.424, 0, 1),
    Color3.new(1, 0, 0.149)
}
local vu566 = game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r")
v562:AddToggle({
    Name = "\216\167\216\179\217\133 \217\133\217\132\217\136\217\134",
    Flag = "RGBNameToggle",
    Callback = function(p567)
        vu563 = p567
        if p567 then
            vu564 = task.spawn(function()
                while vu563 do
                    local v568, v569, v570 = ipairs(vu565)
                    while true do
                        local v571
                        v570, v571 = v568(v569, v570)
                        if v570 == nil or not vu563 then
                            break
                        end
                        vu566:FireServer("PickingRPNameColor", v571)
                        task.wait(0.2)
                    end
                end
            end)
        elseif vu564 then
            task.cancel(vu564)
        end
    end
})
local vu572 = false
local vu573 = nil
local vu574 = {
    Color3.new(1, 0.292, 0.129),
    Color3.new(1, 0.498, 0.053),
    Color3.new(1, 0.995, 0.249),
    Color3.new(0.051, 1, 0.159),
    Color3.new(0.111, 0.809, 1),
    Color3.new(0.074, 0.044, 1),
    Color3.new(0.556, 0.123, 1),
    Color3.new(1, 0.002, 0.802),
    Color3.new(1, 0.029, 0.027)
}
v562:AddToggle({
    Name = "\216\168\216\167\217\138\217\136 \217\133\217\132\217\136\217\134",
    Flag = "RGBBioToggle",
    Callback = function(p575)
        vu572 = p575
        if p575 then
            vu573 = task.spawn(function()
                while vu572 do
                    local v576, v577, v578 = ipairs(vu574)
                    while true do
                        local v579
                        v578, v579 = v576(v577, v578)
                        if v578 == nil or not vu572 then
                            break
                        end
                        vu566:FireServer("PickingRPBioColor", v579)
                        task.wait(0.2)
                    end
                end
            end)
        elseif vu573 then
            task.cancel(vu573)
        end
    end
})
v562:AddSection({
    Name = "\216\163\217\142\216\179\217\142\217\133\217\142\216\163\217\142\216\161 \216\168\217\142\217\134\217\144\216\163\217\142\216\170\217\142"
})
v562:AddButton({
    Name = "\216\180\217\133\216\179",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\180\217\146\217\133\217\142\216\179\217\142")
    end
})
v562:AddButton({
    Name = "\216\175\216\185\216\167\216\161",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\175\217\145\216\185\217\128\216\167\216\161")
    end
})
v562:AddButton({
    Name = "\216\170\217\133\216\167\216\177\217\135",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\170\217\128\217\133\216\167\216\177\217\135")
    end
})
v562:AddButton({
    Name = "\216\167\217\133 \216\185\216\168\217\138\216\179",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\167\217\133 \216\167\216\185\217\128\216\168\217\138\217\128\216\179")
    end
})
v562:AddButton({
    Name = "\216\177\217\138\217\133",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\177\217\140\217\138\217\143\217\133\217\142")
    end
})
v562:AddButton({
    Name = "\217\132\217\138\217\132\217\137",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\132\217\146\217\138\217\143\217\132\217\146\217\137")
    end
})
v562:AddButton({
    Name = "\216\177\217\130\217\138\216\169",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\177\217\140\217\130\217\143\217\138\217\143\216\169")
    end
})
v562:AddButton({
    Name = "\216\178\217\138\217\134\216\168",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\218\146\217\141\217\138\217\134\217\128\217\144\217\144\217\128\217\144\217\128\216\168\217\128\217\140\217\128\217\140\217\140\217\128\217\140\217\140\217\140\217\128\217\140\217\140\217\128\217\140")
    end
})
v562:AddButton({
    Name = "\216\180\217\135\216\175",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\180\217\135\216\175")
    end
})
v562:AddButton({
    Name = "\217\133\216\177\217\138\217\133",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\133\217\128\217\146\217\128\217\146\217\146\217\128\217\146\216\177\217\138\217\133\217\128\217\146\217\128\217\146\217\146\217\128\217\146")
    end
})
v562:AddButton({
    Name = "\217\129\216\167\216\183\217\133\217\135",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\218\164\217\128\216\162\216\183\217\128\217\133\217\142\217\135\217\143")
    end
})
v562:AddButton({
    Name = "\216\178\217\135\216\177\216\167\216\161",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\178\217\142\217\135\217\143\216\177\217\140\216\163\217\142\216\161")
    end
})
v562:AddButton({
    Name = "\217\134\216\177\216\172\216\179",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", " \217\134\217\144\216\177\217\140\216\172\217\144\216\179\217\142")
    end
})
v562:AddButton({
    Name = "\217\134\217\136\216\177",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\134\217\144\217\136\217\140\216\177\217\140")
    end
})
v562:AddButton({
    Name = "\216\167\216\179\216\177\216\167\216\161",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\163\217\142\216\179\217\142\216\177\217\140\216\163\217\142\216\161")
    end
})
v562:AddSection({
    Name = "\216\163\217\142\216\179\217\142\217\133\217\142\216\163\217\142\216\161 \217\136\217\140\217\132\216\175\217\143"
})
v562:AddButton({
    Name = "\217\133\216\167\216\177\216\170\217\134",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\133\216\167\216\177\216\170\217\134")
    end
})
v562:AddButton({
    Name = "\216\179\217\136\217\134\217\128\217\138\218\170",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\179\217\136\217\134\217\128\217\138\218\170")
    end
})
v562:AddButton({
    Name = "\216\168\216\177\216\168\216\177",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\168\217\128\216\177\216\168\217\128\216\177")
    end
})
v562:AddButton({
    Name = "\217\130\216\167\216\179\217\128\217\133",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\130\217\128\216\167\216\179\217\128\217\133")
    end
})
v562:AddButton({
    Name = "\217\138\216\167\216\179\217\138\217\134",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\138\217\128\216\167\216\179\217\138\217\128\217\134")
    end
})
v562:AddButton({
    Name = "\216\167\217\138\216\170\216\167\216\180\217\138",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\163\217\142\217\138\217\143\216\170\217\142\216\163\217\142\216\180\217\146\217\138\217\143")
    end
})
v562:AddButton({
    Name = "\216\185\217\132\217\138",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\185\217\143\217\132\217\146\217\138\217\143")
    end
})
v562:AddButton({
    Name = "\216\173\216\179\217\138\217\134",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\173\217\142\216\179\217\142\217\138\217\143\217\134\217\144")
    end
})
v562:AddButton({
    Name = "\217\131\216\177\216\167\216\177",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\218\170\217\128\216\177\216\167\216\177")
    end
})
v562:AddButton({
    Name = "\216\185\217\133\216\167\216\177",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\185\217\143\217\133\217\142\216\163\217\142\216\177\217\140")
    end
})
v562:AddButton({
    Name = "\217\133\216\173\217\133\216\175",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\133\217\142\216\173\217\142\217\133\217\142\216\175\217\143")
    end
})
v562:AddButton({
    Name = "\217\133\216\172\216\170\216\168\217\137",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\133\217\142\216\172\217\144\216\170\217\142\216\168\217\142\217\137")
    end
})
v562:AddButton({
    Name = "\216\173\216\179\217\138\217\134 ",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\173\217\142\216\179\217\142\217\134\217\144")
    end
})
v562:AddButton({
    Name = "\216\180\217\135\217\133",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\180\217\146\217\135\217\143\217\133\217\142")
    end
})
v562:AddButton({
    Name = "\216\179\217\138\217\129",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\179\217\142\217\138\217\143\217\129")
    end
})
v562:AddButton({
    Name = "\217\138\217\136\216\179\217\129",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", " \217\138\217\143\217\136\217\140\216\179\217\142\217\129")
    end
})
v562:AddButton({
    Name = "\216\185\216\168\216\175\216\167\217\132\217\132\217\135",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\216\185\217\143\216\168\217\142\216\176\216\163\217\142\217\132\217\146\217\132\217\146\217\135\217\143")
    end
})
v562:AddButton({
    Name = "\217\133\217\136\216\179\217\137",
    Callback = function()
        game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "\217\133\217\142\217\136\217\140\216\179\217\142\217\137")
    end
})
local vu580 = {
    Color3.new(1, 0, 0),
    Color3.new(0, 1, 0),
    Color3.new(0, 0, 1),
    Color3.new(1, 1, 0),
    Color3.new(1, 0, 1),
    Color3.new(0, 1, 1),
    Color3.new(0.5, 0, 0.5),
    Color3.new(1, 0.5, 0)
}
local vu581 = game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r")
local vu582 = false
local function vu587()
    while vu582 do
        local v583, v584, v585 = ipairs(vu580)
        while true do
            local v586
            v585, v586 = v583(v584, v585)
            if v585 == nil then
                break
            end
            if not vu582 then
                return
            end
            vu581:FireServer(unpack({
                "PickingCarColor",
                v586
            }))
            wait(1)
        end
    end
end
local v588 = v37:MakeTab({
    Name = "\216\167\217\132\216\167\216\186\217\128\216\167\217\134\217\138 \217\133\216\172\217\128\216\167\217\134\217\138\216\169",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
v588:AddSection({
    Name = "\216\167\216\186\216\167\217\134\217\138 \217\133\216\172\216\167\217\134\217\138\216\169 \216\170\216\182\217\135\216\177 \217\132\217\132 \217\134\216\167\216\179 \217\132\217\138\217\133\217\131 \216\168\216\179"
})
local vu589 = {
    {
        name = "I See You [HORROR]",
        id = 2663254285
    },
    {
        name = "Sonic.exe [HORROR]",
        id = 2496367477
    },
    {
        name = "Tubers93 [FUNNY]",
        id = 6129291390
    },
    {
        name = "Tubers93 [FUNNY] 2",
        id = 9032712619
    },
    {
        name = "John\'s Laugh [FUNNY]",
        id = 130759239
    },
    {
        name = "Chucky Laugh [HORROR]",
        id = 132179181
    },
    {
        name = "Horror Bell [HORROR]",
        id = 9065965545
    },
    {
        name = "Garota Gritanndo [HORROR]",
        id = 7861818231
    },
    {
        name = "Goofy Scream [FUNNY]",
        id = 528432644
    }
}
local v590, v591, v592 = ipairs(vu589)
local vu593 = vu582
local v594 = {}
local vu595 = nil
while true do
    local v596
    v592, v596 = v590(v591, v592)
    if v592 == nil then
        break
    end
    table.insert(v594, v596.name)
end
local function vu600()
    local v597 = game.Players.LocalPlayer
    local v598 = v597.Character or v597.CharacterAdded:Wait()
    local v599 = v597.Backpack
    if v598:FindFirstChild("Sniper") or v599:FindFirstChild("Sniper") then
        if v599:FindFirstChild("Sniper") then
            v598.Humanoid:EquipTool(v599.Sniper)
        end
    else
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Too1l"):InvokeServer(unpack({
            "PickingTools",
            "Sniper"
        }))
        wait(0.1)
        v598.Humanoid:EquipTool(v599.Sniper)
    end
end
local function vu607(p601)
    vu600()
    local v602 = game.Players.LocalPlayer
    local v603 = v602.Character or v602.CharacterAdded:Wait()
    local v604 = v603:FindFirstChild("Sniper")
    if v604 then
        v604 = v603.Sniper:FindFirstChild("Handle")
    end
    if v604 then
        local vu605 = Instance.new("Sound")
        vu605.SoundId = "rbxassetid://" .. p601
        vu605.Volume = 0.1
        vu605.Looped = false
        vu605.Parent = v602:WaitForChild("PlayerGui")
        local v606 = vu605
        vu605.Play(v606)
        vu605.Ended:Connect(function()
            vu605:Destroy()
        end)
    end
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Gu1nSound1s"):FireServer(unpack({
        v604,
        p601,
        1
    }))
end
v588:AddSection({
    Name = "\216\167\216\186\216\167\217\134\217\138 \217\133\216\172\216\167\217\134\217\138\216\169 \216\167\216\174\216\170\216\167\216\177\217\135\216\167"
})
v588:AddDropdown({
    Name = "\216\167\216\174\217\128\216\170\216\167\216\177 \216\167\217\132\216\167\216\186\217\128\217\134\217\138\216\169 \216\167\217\132\216\170\217\128\216\177\217\138\217\128\216\175\217\135\216\167",
    Default = "Select a sound...",
    Options = v594,
    Callback = function(p608)
        local v609, v610, v611 = ipairs(vu589)
        while true do
            local v612
            v611, v612 = v609(v610, v611)
            if v611 == nil then
                break
            end
            if v612.name == p608 then
                vu607(v612.id)
                break
            end
        end
    end
})
v588:AddSection({
    Name = "\216\167\216\186\216\167\217\134\217\138 \217\133\216\172\216\167\217\134\217\138\216\169 \216\170\216\182\217\135\216\177 \217\132\217\132\216\179\217\138\216\177\217\129\216\177 \217\131\216\167\217\133\217\132"
})
local vu613 = {
    {
        name = "\216\172\217\138\216\179\217\136\216\179\216\179\216\179\216\179 ",
        id = 78275845721592
    },
    {
        name = "\216\181\216\177\216\167\216\174 1",
        id = 270145703
    },
    {
        name = "\216\181\216\177\216\167\216\174 2",
        id = 18131809532
    },
    {
        name = "\216\179\216\1681 ",
        id = 6536444735
    },
    {
        name = "\216\179\216\1682",
        id = 8701632845
    },
    {
        name = "\216\179\216\1683 ",
        id = 7590164518
    },
    {
        name = "SUS",
        id = 7705506391
    },
    {
        name = "\216\167\216\185\216\185\216\185\216\185",
        id = 7772283448
    },
    {
        name = "\217\130\217\138\217\138\217\138",
        id = 18786647417
    },
    {
        name = "Bat Hit",
        id = 7129073354
    },
    {
        name = "\216\175\216\168\217\131\217\135",
        id = 90807238125839
    },
    {
        name = "\217\132\217\132\217\133\216\173\217\133\216\182\217\138\217\134",
        id = 133188753831517
    },
    {
        name = "Estora t\195\173mpano",
        id = 268116333
    }
}
local v614, v615, v616 = ipairs(vu613)
local v617 = {}
local vu618 = nil
while true do
    local v619
    v616, v619 = v614(v615, v616)
    if v616 == nil then
        break
    end
    table.insert(v617, v619.name)
end
v588:AddTextbox({
    Name = "\216\174\217\128\217\132\217\138 \217\131\217\128\217\136\216\175 \216\167\217\132\216\167\216\186\217\128\217\134\217\138\216\169 ",
    Default = "",
    Callback = function(p620)
        vu618 = tonumber(p620)
    end
})
v588:AddDropdown({
    Name = "\216\167\216\174\217\128\216\170\216\167\216\177 \216\167\217\132\216\163\216\186\217\128\217\134\217\138\216\169",
    Default = v617[1],
    Options = v617,
    Callback = function(p621)
        local v622, v623, v624 = ipairs(vu613)
        while true do
            local v625
            v624, v625 = v622(v623, v624)
            if v624 == nil then
                break
            end
            if v625.name == p621 then
                vu618 = v625.id
                break
            end
        end
    end
})
local vu626 = false
local vu627 = nil
v588:AddToggle({
    Name = "\216\179\216\168\217\128\216\167\217\133 \216\167\217\132\216\167\216\186\217\128\217\134\217\138\216\169",
    Default = false,
    Callback = function(p628)
        vu626 = p628
        if vu626 or not vu627 then
            if vu626 and not vu627 then
                playAudio()
            end
        else
            vu627:Stop()
            vu627 = nil
        end
    end
})
local function vu630()
    if vu618 then
        if vu627 then
            vu627:Stop()
        end
        local v629 = {
            game:GetService("Workspace"),
            vu618,
            1
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(v629))
        vu627 = Instance.new("Sound")
        vu627.SoundId = "rbxassetid://" .. vu618
        vu627.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        vu627:Play()
        vu627.Ended:Connect(function()
            if vu626 then
                vu630()
            end
        end)
    else
        warn("Nenhum \195\161udio selecionado!")
    end
end
v588:AddButton({
    Name = "\216\170\217\128\216\180\216\186\217\138\217\132 \216\167\217\132\216\167\216\186\217\128\217\134\217\138\216\169",
    Callback = function()
        vu630()
    end
})
task.spawn(function()
    while true do
        if vu626 and not vu627 then
            vu630()
        end
        task.wait(0.1)
    end
end)
v588:AddSection({
    Name = " \217\133\217\132\216\167\216\173\216\182\216\169 \216\172\216\175\216\167 \217\133\217\135\217\133\217\135 \216\167\216\176\216\167 \216\172\217\134\216\170 \216\170\216\177\217\138\216\175 \216\170\216\180\216\186\217\138\217\132 \216\167\217\132\216\167\216\186\216\167\217\134\217\138 \217\132\217\132\216\179\217\138\216\177\217\129\216\177 \217\131\216\167\217\133\217\132 \216\167\217\136\217\132 \216\180\217\138 \216\175\217\136\216\179 \216\170\216\180\216\186\217\138\217\132 \216\167\217\132\217\132\216\186\217\134\217\138\217\135 \216\168\216\185\216\175\217\135\216\167 \216\179\216\168\216\167\217\133 \216\167\217\132\216\167\216\186\217\134\217\138\217\135 \216\185\216\180\216\167\217\134 \216\170\216\182\217\132 \216\179\216\168\216\167\217\133 \216\176\217\138 \216\183\216\177\217\138\217\130\217\135 \216\170\216\180\216\186\217\138\217\132\217\135\216\167"
})
local v631 = v37:MakeTab({
    Name = "\216\167\217\132\216\179\217\138\216\167\216\177\216\169",
    Icon = "rbxassetid://115714662895227",
    PremiumOnly = false
})
v631:AddSection({
    Name = "\216\178\217\138\216\167\216\175\216\169 \216\179\216\177\216\185\216\169 \216\167\217\132\216\179\217\138\216\167\216\177\216\169"
})
v631:AddTextbox({
    Name = "\216\167\216\175\216\174\217\132 \216\179\216\177\216\185\216\169 \216\167\217\132\216\179\217\138\216\167\216\177\216\169",
    Default = "",
    TextDisappear = false,
    Callback = function(p632)
        local v633 = game.Players.LocalPlayer
        local v634 = workspace.Vehicles:FindFirstChild(v633.Name .. "Car")
        local v635 = tonumber(p632)
        if v635 and (0 <= v635 and (v635 <= 500 and v634)) then
            v634.Body.VehicleSeat.TopSpeed.Value = v635
        end
    end
})
v631:AddLabel(" \217\133\217\132\216\167\216\173\216\182\216\169: \216\173\216\175 \216\167\217\132\216\167\217\130\216\181\217\137 \217\132\216\179\216\177\216\185\216\169 \216\167\217\132\216\179\217\138\216\167\216\177\216\169 \217\135\217\138 200");
(function(p636)
    p636:AddTextbox({
        Name = "\216\167\216\175\216\174\217\132 \217\131\217\136\216\175 \216\167\217\132\216\167\216\186\217\134\217\138\216\169 \217\132\216\170\216\180\216\186\217\138\217\132\217\135\216\167",
        Default = "",
        TextDisappear = false,
        Callback = function(p637)
            playCarMusic(p637)
            playScooterMusic(p637)
            playHouseMusic(p637)
        end
    })
    p636:AddDropdown({
        Name = "\216\167\216\174\216\170\216\167\216\177 \216\167\217\132\216\167\216\186\217\134\217\138\216\169",
        Options = musicIds,
        Callback = function(p638)
            playCarMusic(p638)
            playScooterMusic(p638)
            playHouseMusic(p638)
        end
    })
end)(v631)
v631:AddSection({
    Name = "\216\174\216\181\216\167\216\166\216\181 \216\179\217\138\216\167\216\177\216\169"
})
v631:AddToggle({
    Name = "\216\179\217\138\216\167\216\177\216\169 \217\133\217\132\217\136\217\134\216\169",
    Default = false,
    Callback = function(p639)
        vu593 = p639
        if vu593 then
            vu595 = coroutine.create(vu587)
            coroutine.resume(vu595)
        end
    end
})
local vu640 = {
    "Horn"
}
local vu641 = game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r")
local vu642 = false
local function vu643()
    while vu642 do
        vu641:FireServer(unpack(vu640))
        wait(0.1)
    end
end
v631:AddToggle({
    Name = "\216\179\216\168\216\167\217\133 \217\135\217\136\216\177\217\134",
    Default = false,
    Callback = function(p644)
        vu642 = p644
        if vu642 then
            spawn(vu643)
        end
    end
})
local vu645 = {
    "SchoolBus",
    "SmartCar",
    "FarmTruck",
    "Cadillac",
    "Excavator",
    "Jeep",
    "NascarTruck",
    "TowTruck",
    "Snowplow",
    "MilitaryTruck",
    "Tank",
    "Limo",
    "FireTruck"
}
local vu646 = false
local function vu648(p647)
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
        "PickingCar",
        p647
    }))
end
v631:AddToggle({
    Name = "\216\179\216\168\216\167\217\133 \216\179\217\138\216\167\216\177\216\167\216\170",
    Default = false,
    Callback = function(p649)
        vu646 = p649
        if vu646 then
            task.spawn(function()
                while vu646 do
                    local v650, v651, v652 = ipairs(vu645)
                    while true do
                        local v653
                        v652, v653 = v650(v651, v652)
                        if v652 == nil or not vu646 then
                            break
                        end
                        vu648(v653)
                        wait(0.4)
                    end
                end
            end)
        end
    end
})
local v654 = v37:MakeTab({
    Name = "\216\167\216\186\216\167\217\134\217\138",
    Icon = "rbxassetid://115714662895227"
})
v654:AddSection({
    Name = "\216\167\216\186\217\128\216\167\217\134\217\138 \216\168\217\136\217\131\216\179 "
})
v654:AddTextbox({
    Name = "\216\167\216\175\216\174\217\132 \217\131\217\136\216\175 \216\167\217\132\216\167\216\186\217\134\217\138\216\169",
    Default = "",
    PlaceholderText = "\216\167\216\175\216\174\217\132 \216\167\217\132\216\167\216\186\217\134\217\138\217\135 \216\179\217\131\217\138\216\170 \216\168\217\136\216\177\216\175",
    ClearText = true,
    Callback = function(p655)
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            p655
        }))
    end
})
v654:AddSection({
    Name = "\216\167\216\186\217\128\216\167\217\134\217\138 \216\172\216\175\217\138\216\175\216\167\216\170 "
})
v654:AddButton({
    Name = "I love you so",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "100697759026652"
        }))
    end
})
v654:AddButton({
    Name = "FUNK1",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "81520732359105"
        }))
    end
})
v654:AddButton({
    Name = "FUNK2",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "100697759026652"
        }))
    end
})
v654:AddSection({
    Name = "\216\167\216\186\217\128\216\167\217\134\217\138 \216\185\216\177\216\168\217\128\217\138\216\169 "
})
v654:AddButton({
    Name = "\216\185\216\177\216\167\217\130\217\1381",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "119630965566559"
        }))
    end
})
v654:AddButton({
    Name = "\216\185\216\177\216\167\217\130\217\1382",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "119437864395329"
        }))
    end
})
v654:AddButton({
    Name = "\216\185\216\177\216\167\217\130\217\1383",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "111256095783364"
        }))
    end
})
v654:AddButton({
    Name = "\216\185\216\177\216\167\217\130\217\1384",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "80039364766636"
        }))
    end
})
v654:AddButton({
    Name = "5\216\185\216\177\216\167\217\130\217\138",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "122774951440401"
        }))
    end
})
v654:AddButton({
    Name = "\216\167\216\186\217\134\217\128\217\138\216\169 \216\185\216\177\216\168\217\128\217\138\216\169 \216\173\217\128\217\132\217\136\217\135",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "93620598835551"
        }))
    end
})
v654:AddButton({
    Name = "\216\167\216\186\217\134\217\128\217\138\216\169 \216\185\216\177\216\168\217\128\217\138\216\169 2",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "1836685732"
        }))
    end
})
v654:AddButton({
    Name = "\216\167\216\186\217\134\217\128\217\138\216\169 \216\185\216\177\216\168\217\128\217\138\216\169 3",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "106633496198864"
        }))
    end
})
v654:AddButton({
    Name = "\216\185\217\128\216\178\217\129 \216\173\217\128\216\178\217\138\217\134",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "135308045"
        }))
    end
})
v654:AddButton({
    Name = "\216\180\217\133\217\128\216\180\217\136\217\134",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "133188753831517"
        }))
    end
})
v654:AddButton({
    Name = "\216\175\216\168\217\128\218\169\217\128\217\135",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "90807238125839"
        }))
    end
})
v654:AddSection({
    Name = " \216\167\216\186\216\167\217\134\217\128\217\138 \217\133\216\178\216\185\216\172\217\128\217\135 "
})
v654:AddButton({
    Name = "\216\167\217\136\217\138\217\132\217\138 \216\185\217\132\217\138\217\131 \216\172\217\138\216\179\217\136\216\179\216\179\216\179\216\179",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "78275845721592"
        }))
    end
})
v654:AddButton({
    Name = "\216\181\217\136\216\170 \217\133\216\178\216\185\216\172 \216\185\216\167\217\132\217\138 \216\172\216\175\216\162",
    Callback = function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "SkateBoard"
        }))
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            "7764369437"
        }))
    end
})