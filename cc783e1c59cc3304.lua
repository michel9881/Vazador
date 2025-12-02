-- Bazuka as Were


local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Venom-devX/Modules/main/Universal/RedzLib.lua"))()
workspace.FallenPartsDestroyHeight = - math.huge
local vu2 = v1:MakeWindow({
    Title = "Chaos Hub V3 | Brookhaven RP | Portugu\195\170s",
    SubTitle = "by: Venom",
    LoadText = "Carregando Chaos Hub",
    Flags = "Chaos Hub V3 | Brookhaven"
})
pcall(function()
    vu2:Dialog({
        Title = "Atencao/Warning!",
        Text = "Link do discord copiado/Discord server link copied to clipboard",
        Options = {
            {
                "Ok",
                function()
                    return pcall(function()
                        setclipboard("https://discord.gg/DthGC4even")
                    end)
                end
            }
        }
    })
end)
local v3 = vu2
vu2.AddMinimizeButton(v3, {
    Button = {
        Image = "rbxassetid://131669852271916",
        BackgroundTransparency = 0
    },
    Corner = {
        CornerRadius = UDim.new(35, 1)
    }
})
local v4 = vu2
local v5 = vu2.MakeTab(v4, {
    Title = "Info",
    Icon = "rbxassetid://15309138473"
})
v5:AddDiscordInvite({
    Name = "Chaos Studio",
    Description = "Entre No Server do Discord do Chaos",
    Logo = "rbxassetid://131669852271916",
    Invite = "https://discord.gg/DthGC4even"
})
v5:AddSection({
    "Informa\195\167\195\181es do Script"
})
v5:AddParagraph({
    "Owner / Developer:",
    "Venom"
})
v5:AddParagraph({
    "Colabora\195\167\195\181es:",
    "Shelby, Rael, Crowly"
})
v5:AddParagraph({
    "Voc\195\170 est\195\161 usando:",
    "Chaos HUB BROOKHAVEN V3"
})
v5:AddParagraph({
    "Your executor:",
    executor
})
v5:AddSection({
    "Rejoin"
})
v5:AddButton({
    Name = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
})
game:GetService("HttpService")
local v6 = vu2
local v7 = vu2.MakeTab(v6, {
    Title = "Scripts Trolls",
    Icon = "rbxassetid://13364900349"
})
local v8 = vu2
local v9 = vu2.MakeTab(v8, {
    Title = "Whitelist",
    Icon = "paper"
})
function Update(p10, p11)
    return p10:Set(p11)
end
v9:AddSection({
    "Whitelist"
})
local vu12 = game:GetService("Players")
local v13, v14, v15 = pairs(vu12:GetPlayers())
local v16 = vu2
local v17 = {}
local vu18 = {}
while true do
    local v19
    v15, v19 = v13(v14, v15)
    if v15 == nil then
        break
    end
    table.insert(v17, v19.Name)
end
local vu20 = nil
local vu22 = v9:AddDropdown({
    Name = "Whitelist",
    Description = "Selecione um jogador",
    Options = v17,
    Default = "...",
    Flag = "dropdown teste",
    Callback = function(p21)
        vu20 = p21
    end
})
v9:AddButton({
    "Adicionar Player a Whitelist",
    function()
        return pcall(table.insert, vu18, vu20)
    end
})
v9:AddButton({
    "Remover Player da Whitelist",
    function()
        return pcall(function()
            return table.remove(vu18, table.find(vu18, vu20))
        end)
    end
})
vu12.PlayerAdded:Connect(function()
    local v23 = vu12
    local v24, v25, v26 = pairs(v23:GetPlayers())
    local v27 = {}
    while true do
        local v28
        v26, v28 = v24(v25, v26)
        if v26 == nil then
            break
        end
        table.insert(v27, v28.Name)
    end
    return Update(vu22, v27)
end)
vu12.PlayerRemoving:Connect(function()
    local v29 = vu12
    local v30, v31, v32 = pairs(v29:GetPlayers())
    local v33 = {}
    while true do
        local v34
        v32, v34 = v30(v31, v32)
        if v32 == nil then
            break
        end
        table.insert(v33, v34.Name)
    end
    return Update(vu22, v33)
end)
v7:AddSection({
    "Black Hole"
})
v7:AddButton({
    Name = "Black Hole",
    Description = " Ativando isso voc\195\170 puxa Parts at\195\169 o seu personagem",
    Callback = function()
        local v35 = game:GetService("Players")
        local vu36 = game:GetService("RunService")
        local vu37 = v35.LocalPlayer
        local vu38 = game:GetService("Workspace")
        local vu39 = 1
        local vu40 = 10
        local vu41 = false
        local function vu46()
            local v42 = (vu37.Character or vu37.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            local v43 = Instance.new("Folder", vu38)
            local v44 = Instance.new("Part", v43)
            local v45 = Instance.new("Attachment", v44)
            v44.Anchored = true
            v44.CanCollide = false
            v44.Transparency = 1
            return v42, v45
        end
        local vu47, vu48 = vu46()
        if not getgenv().Network then
            getgenv().Network = {
                BaseParts = {},
                Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
            }
            function Network.RetainPart(p49)
                if typeof(p49) == "Instance" and (p49:IsA("BasePart") and p49:IsDescendantOf(vu38)) then
                    table.insert(Network.BaseParts, p49)
                    p49.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
                    p49.CanCollide = false
                end
            end
            (function()
                vu37.ReplicationFocus = vu38
                vu36.Heartbeat:Connect(function()
                    sethiddenproperty(vu37, "SimulationRadius", math.huge)
                    local v50, v51, v52 = pairs(Network.BaseParts)
                    while true do
                        local v53
                        v52, v53 = v50(v51, v52)
                        if v52 == nil then
                            break
                        end
                        if v53:IsDescendantOf(vu38) then
                            v53.Velocity = Network.Velocity
                        end
                    end
                end)
            end)()
        end
        local function vu62(p54)
            if p54:IsA("Part") and not p54.Anchored and (not p54.Parent:FindFirstChild("Humanoid") and (not p54.Parent:FindFirstChild("Head") and p54.Name ~= "Handle")) then
                local v55 = next
                local v56, v57 = p54:GetChildren()
                while true do
                    local v58
                    v57, v58 = v55(v56, v57)
                    if v57 == nil then
                        break
                    end
                    if v58:IsA("BodyAngularVelocity") or (v58:IsA("BodyForce") or (v58:IsA("BodyGyro") or (v58:IsA("BodyPosition") or (v58:IsA("BodyThrust") or (v58:IsA("BodyVelocity") or v58:IsA("RocketPropulsion")))))) then
                        v58:Destroy()
                    end
                end
                if p54:FindFirstChild("Attachment") then
                    p54:FindFirstChild("Attachment"):Destroy()
                end
                if p54:FindFirstChild("AlignPosition") then
                    p54:FindFirstChild("AlignPosition"):Destroy()
                end
                if p54:FindFirstChild("Torque") then
                    p54:FindFirstChild("Torque"):Destroy()
                end
                p54.CanCollide = false
                local v59 = Instance.new("Torque", p54)
                v59.Torque = Vector3.new(1000000, 1000000, 1000000)
                local v60 = Instance.new("AlignPosition", p54)
                local v61 = Instance.new("Attachment", p54)
                v59.Attachment0 = v61
                v60.MaxForce = math.huge
                v60.MaxVelocity = math.huge
                v60.Responsiveness = 500
                v60.Attachment0 = v61
                v60.Attachment1 = vu48
            end
        end
        local function vu70()
            vu41 = not vu41
            if vu41 then
                local v63 = next
                local v64, v65 = vu38:GetDescendants()
                while true do
                    local v66
                    v65, v66 = v63(v64, v65)
                    if v65 == nil then
                        break
                    end
                    vu62(v66)
                end
                vu38.DescendantAdded:Connect(function(p67)
                    if vu41 then
                        vu62(p67)
                    end
                end)
                spawn(function()
                    while vu41 and vu36.RenderStepped:Wait() do
                        vu39 = vu39 + math.rad(2)
                        local v68 = math.cos(vu39) * vu40
                        local v69 = math.sin(vu39) * vu40
                        vu48.WorldCFrame = vu47.CFrame * CFrame.new(v68, 0, v69)
                    end
                end)
            else
                vu48.WorldCFrame = CFrame.new(0, - 1000, 0)
            end
        end
        vu37.CharacterAdded:Connect(function()
            local v71, v72 = vu46()
            vu48 = v72
            vu47 = v71
            if vu41 then
                vu70()
            end
        end)
        local v73 = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))():Window("Projeto LKB")
        v73:Slider("Radius Blackhole", 1, 100, 10, function(p74)
            vu40 = p74
        end)
        v73:Toggle("Blackhole", true, function(p75)
            if p75 then
                vu70()
            else
                vu41 = false
            end
        end)
        spawn(function()
            while true do
                repeat
                    vu36.RenderStepped:Wait()
                until vu41
                vu39 = vu39 + math.rad(angleSpeed)
            end
        end)
        vu70()
    end
})
v7:AddSection({
    "Puxar Parts"
})
v7:AddButton({
    Name = "Puxar Parts",
    Description = "Para usar, chegue perto do Player Selecionado",
    Callback = function()
        local v76 = Instance.new("ScreenGui")
        local vu77 = Instance.new("Frame")
        local vu78 = Instance.new("TextBox")
        local v79 = Instance.new("UITextSizeConstraint")
        local v80 = Instance.new("TextLabel")
        local v81 = Instance.new("UITextSizeConstraint")
        local vu82 = Instance.new("TextButton")
        local v83 = Instance.new("UITextSizeConstraint")
        v76.Name = "Gui"
        v76.Parent = gethui()
        v76.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        vu77.Name = "Main"
        vu77.Parent = v76
        vu77.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
        vu77.BorderColor3 = Color3.fromRGB(0, 0, 0)
        vu77.BorderSizePixel = 0
        vu77.Position = UDim2.new(0.335954279, 0, 0.542361975, 0)
        vu77.Size = UDim2.new(0.240350261, 0, 0.166880623, 0)
        vu77.Active = true
        vu77.Draggable = true
        vu78.Name = "Box"
        vu78.Parent = vu77
        vu78.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
        vu78.BorderColor3 = Color3.fromRGB(0, 0, 0)
        vu78.BorderSizePixel = 0
        vu78.Position = UDim2.new(0.0980926454, 0, 0.218712583, 0)
        vu78.Size = UDim2.new(0.801089942, 0, 0.364963502, 0)
        vu78.FontFace = Font.new("rbxasset://fonts/families/SourceSansSemibold.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        vu78.PlaceholderText = "Player here"
        vu78.Text = ""
        vu78.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu78.TextScaled = true
        vu78.TextSize = 31
        vu78.TextWrapped = true
        v79.Parent = vu78
        v79.MaxTextSize = 31
        v80.Name = "Label"
        v80.Parent = vu77
        v80.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
        v80.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v80.BorderSizePixel = 0
        v80.Size = UDim2.new(1, 0, 0.160583943, 0)
        v80.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        v80.Text = "Bring Parts | Made by: Lusquinha_067"
        v80.TextColor3 = Color3.fromRGB(255, 255, 255)
        v80.TextScaled = true
        v80.TextSize = 14
        v80.TextWrapped = true
        v81.Parent = v80
        v81.MaxTextSize = 21
        vu82.Name = "Button"
        vu82.Parent = vu77
        vu82.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
        vu82.BorderColor3 = Color3.fromRGB(0, 0, 0)
        vu82.BorderSizePixel = 0
        vu82.Position = UDim2.new(0.183284417, 0, 0.656760991, 0)
        vu82.Size = UDim2.new(0.629427791, 0, 0.277372271, 0)
        vu82.Font = Enum.Font.Nunito
        vu82.Text = "Bring | Off"
        vu82.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu82.TextScaled = true
        vu82.TextSize = 28
        vu82.TextWrapped = true
        v83.Parent = vu82
        v83.MaxTextSize = 28
        local vu84 = game:GetService("Players")
        local vu85 = game:GetService("RunService")
        local vu86 = vu84.LocalPlayer
        local v87 = game:GetService("UserInputService")
        local vu88 = game:GetService("Workspace")
        local vu89 = nil
        local vu90 = nil
        mainStatus = true
        v87.InputBegan:Connect(function(p91, p92)
            if p91.KeyCode == Enum.KeyCode.RightControl and not p92 then
                mainStatus = not mainStatus
                vu77.Visible = mainStatus
            end
        end)
        local v93 = Instance.new("Folder", vu88)
        local v94 = Instance.new("Part", v93)
        local vu95 = Instance.new("Attachment", v94)
        v94.Anchored = true
        v94.CanCollide = false
        v94.Transparency = 1
        if not getgenv().Network then
            getgenv().Network = {
                BaseParts = {},
                Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
            }
            function Network.RetainPart(p96)
                if p96:IsA("BasePart") and p96:IsDescendantOf(vu88) then
                    table.insert(Network.BaseParts, p96)
                    p96.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
                    p96.CanCollide = false
                end
            end
            (function()
                vu86.ReplicationFocus = vu88
                vu85.Heartbeat:Connect(function()
                    sethiddenproperty(vu86, "SimulationRadius", math.huge)
                    local v97, v98, v99 = pairs(Network.BaseParts)
                    while true do
                        local v100
                        v99, v100 = v97(v98, v99)
                        if v99 == nil then
                            break
                        end
                        if v100:IsDescendantOf(vu88) then
                            v100.Velocity = Network.Velocity
                        end
                    end
                end)
            end)()
        end
        local function vu109(p101)
            if p101:IsA("BasePart") and not p101.Anchored and (not p101.Parent:FindFirstChildOfClass("Humanoid") and (not p101.Parent:FindFirstChild("Head") and p101.Name ~= "Handle")) then
                local v102, v103, v104 = ipairs(p101:GetChildren())
                while true do
                    local v105
                    v104, v105 = v102(v103, v104)
                    if v104 == nil then
                        break
                    end
                    if v105:IsA("BodyMover") or v105:IsA("RocketPropulsion") then
                        v105:Destroy()
                    end
                end
                if p101:FindFirstChild("Attachment") then
                    p101:FindFirstChild("Attachment"):Destroy()
                end
                if p101:FindFirstChild("AlignPosition") then
                    p101:FindFirstChild("AlignPosition"):Destroy()
                end
                if p101:FindFirstChild("Torque") then
                    p101:FindFirstChild("Torque"):Destroy()
                end
                p101.CanCollide = false
                local v106 = Instance.new("Torque", p101)
                v106.Torque = Vector3.new(100000, 100000, 100000)
                local v107 = Instance.new("AlignPosition", p101)
                local v108 = Instance.new("Attachment", p101)
                v106.Attachment0 = v108
                v107.MaxForce = math.huge
                v107.MaxVelocity = math.huge
                v107.Responsiveness = 200
                v107.Attachment0 = v108
                v107.Attachment1 = vu95
            end
        end
        local vu110 = false
        local vu111 = nil
        local function vu118()
            vu110 = not vu110
            if vu110 then
                vu82.Text = "Bring Parts | On"
                local v112 = vu88
                local v113, v114, v115 = ipairs(v112:GetDescendants())
                while true do
                    local v116
                    v115, v116 = v113(v114, v115)
                    if v115 == nil then
                        break
                    end
                    vu109(v116)
                end
                vu111 = vu88.DescendantAdded:Connect(function(p117)
                    if vu110 then
                        vu109(p117)
                    end
                end)
                spawn(function()
                    while vu110 and vu85.RenderStepped:Wait() do
                        vu95.WorldCFrame = vu90.CFrame
                    end
                end)
            else
                vu82.Text = "Bring Parts | Off"
                if vu111 then
                    vu111:Disconnect()
                end
            end
        end
        local function vu127(p119)
            local v120 = string.lower(p119)
            local v121 = vu84
            local v122, v123, v124 = pairs(v121:GetPlayers())
            while true do
                local v125
                v124, v125 = v122(v123, v124)
                if v124 == nil then
                    break
                end
                local v126 = string.lower(v125.Name)
                if string.find(v126, v120) then
                    return v125
                end
                if string.find(string.lower(v125.DisplayName), v120) then
                    return v125
                end
            end
        end
        local vu128 = nil
        local function v130()
            Instance.new("Script", vu78).Parent.FocusLost:Connect(function(p129)
                if p129 then
                    vu128 = vu127(vu78.Text)
                    if vu128 then
                        vu78.Text = vu128.Name
                        print("Player found:", vu128.Name)
                    else
                        print("Player not found")
                    end
                end
            end)
        end
        coroutine.wrap(v130)()
        local function v131()
            Instance.new("Script", vu82).Parent.MouseButton1Click:Connect(function()
                if vu128 then
                    vu89 = vu128.Character or vu128.CharacterAdded:Wait()
                    vu90 = vu89:WaitForChild("HumanoidRootPart")
                    vu118()
                else
                    print("Player is not selected")
                end
            end)
        end
        coroutine.wrap(v131)()
    end
})
v7:AddSection({
    "Invis\195\173vel"
})
v7:AddButton({
    Name = "Ficar Invis\195\173vel",
    Description = "Ficar invis\195\173vel FE",
    Callback = function()
        local v132 = {
            {
                102344834840946,
                70400527171038,
                0,
                0,
                0,
                0
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack(v132))
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(111858803548721)
        local v133, v134, v135 = ipairs({
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.BackAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FaceAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FrontAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.NeckAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HatAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HairAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.ShouldersAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.WaistAccessory,
            game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.GraphicTShirt
        })
        local v136 = {}
        while true do
            local v137
            v135, v137 = v133(v134, v135)
            if v135 == nil then
                break
            end
            local v138, v139, v140 = string.gmatch(v137, "%d+")
            while true do
                v140 = v138(v139, v140)
                if v140 == nil then
                    break
                end
                table.insert(v136, tonumber(v140))
            end
        end
        wait()
        local v141, v142, v143 = ipairs(v136)
        while true do
            local vu144
            v143, vu144 = v141(v142, v143)
            if v143 == nil then
                break
            end
            task.spawn(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(vu144)
                print(vu144)
            end)
        end
    end
})
v7:AddSection({
    "Avatar RGB"
})
local vu145 = {
    "Bright red",
    "Lime green",
    "Bright blue",
    "Bright yellow",
    "Bright cyan",
    "Hot pink",
    "Royal purple"
}
local vu146 = false
local function vu148(p147)
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeBodyColor"):FireServer(unpack({
        p147
    }))
end
local function vu154(p149)
    vu146 = p149
    if vu146 then
        while vu146 do
            local v150, v151, v152 = ipairs(vu145)
            while true do
                local v153
                v152, v153 = v150(v151, v152)
                if v152 == nil then
                    break
                end
                if not vu146 then
                    return
                end
                vu148(v153)
                wait(0.5)
            end
        end
    end
end
v7:AddToggle({
    Name = "RGB Character",
    Description = "Deixa seu personagem RGB",
    Default = false,
    Callback = function(p155)
        vu154(p155)
    end
})
v7:AddSection({
    "Cabelo RGB"
})
local vu156 = {
    Color3.new(1, 1, 0),
    Color3.new(0, 0, 1),
    Color3.new(1, 0, 1),
    Color3.new(1, 1, 1),
    Color3.new(0, 1, 0),
    Color3.new(0.5, 0, 1),
    Color3.new(1, 0.647, 0),
    Color3.new(0, 1, 1)
}
local vu157 = false
local function vu160()
    local v158 = 1
    while vu157 and vu157 do
        local v159 = {
            "ChangeHairColor2",
            vu156[v158]
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Max1y"):FireServer(unpack(v159))
        wait(0.1)
        v158 = v158 % # vu156 + 1
    end
end
v7:AddToggle({
    Name = "Cabelo RGB",
    Description = "Deixa Seu Cabelo RGB",
    Default = false,
    Callback = function(p161)
        vu157 = p161
        if vu157 then
            vu160()
        end
    end
})
v7:AddSection({
    "Anti Sit"
})
v7:AddToggle({
    Name = "Anti Sit",
    Description = "N\195\163o Deixa seu personagem Sentar",
    Default = false,
    Callback = function(p162)
        local vu163 = game.Players.LocalPlayer
        local vu164 = {}
        local v165 = game:GetService("RunService")
        local function vu169(pu166)
            if pu166 then
                pu166:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                local v168 = pu166.StateChanged:Connect(function(_, p167)
                    if p167 == Enum.HumanoidStateType.Seated then
                        pu166:ChangeState(Enum.HumanoidStateType.GettingUp)
                    end
                end)
                table.insert(vu164, v168)
            end
        end
        local function v173()
            local function v171(p170)
                vu169((p170:WaitForChild("Humanoid")))
            end
            local v172 = vu163.CharacterAdded:Connect(v171)
            table.insert(vu164, v172)
            if vu163.Character then
                v171(vu163.Character)
            end
        end
        local function v179()
            local v174, v175, v176 = ipairs(vu164)
            while true do
                local v177
                v176, v177 = v174(v175, v176)
                if v176 == nil then
                    break
                end
                v177:Disconnect()
            end
            vu164 = {}
            local v178 = vu163.Character
            if v178 then
                v178 = vu163.Character:FindFirstChildOfClass("Humanoid")
            end
            if v178 then
                v178:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            end
        end
        if p162 then
            v173()
            local v181 = v165.Heartbeat:Connect(function()
                local v180 = vu163.Character
                if v180 then
                    v180 = vu163.Character:FindFirstChildOfClass("Humanoid")
                end
                if v180 then
                    v180:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                end
            end)
            table.insert(vu164, v181)
        else
            v179()
        end
    end
})
local v182 = v16:MakeTab({
    Title = "Glitch",
    Icon = "hammer"
})
v182:AddSection({
    "Select Player"
})
local v183 = v182
local vu184 = game:GetService("Players")
local v185 = game:GetService("ReplicatedStorage")
local vu186 = game:GetService("RunService")
local vu187 = vu184.LocalPlayer
local vu188 = v185.RE:FindFirstChild("1Gu1n")
local vu189 = nil
local vu190 = false
local vu191 = {}
local function vu198()
    local v192 = vu184
    local v193, v194, v195 = ipairs(v192:GetPlayers())
    local v196 = {}
    while true do
        local v197
        v195, v197 = v193(v194, v195)
        if v195 == nil then
            break
        end
        if v197 ~= vu187 then
            table.insert(v196, v197.Name)
        end
    end
    return v196
end
local vu200 = v183:AddDropdown({
    Name = "Jogador Alvo",
    Description = "Selecione o alvo do fling",
    Options = vu198(),
    Default = "...",
    Flag = "AlvoSelecionado",
    Callback = function(p199)
        vu189 = p199
    end
})
v183:AddButton({
    "Atualizar lista de players",
    function()
        return pcall(function()
            Update(vu200, vu198())
        end)
    end
})
v183:AddToggle({
    Name = "Spectar Player",
    Default = false,
    Callback = function(pu201)
        local vu202 = workspace.CurrentCamera
        local function v206()
            if pu201 and vu189 then
                local v203 = vu184:FindFirstChild(vu189)
                local v204 = v203 and v203.Character and v203.Character:FindFirstChild("Humanoid")
                if v204 then
                    vu202.CameraSubject = v204
                end
            else
                local v205 = vu187.Character and vu187.Character:FindFirstChild("Humanoid")
                if v205 then
                    vu202.CameraSubject = v205
                end
            end
        end
        if pu201 then
            if not getgenv().CameraConnection then
                getgenv().CameraConnection = vu186.Heartbeat:Connect(v206)
            end
        else
            if getgenv().CameraConnection then
                getgenv().CameraConnection:Disconnect()
                getgenv().CameraConnection = nil
            end
            v206()
        end
    end
})
local function vu207()
    return {
        Vector3.new(0, 10000000, 0),
        Vector3.new(20000000, 0, 0),
        Vector3.new(- 20000000, 0, 0),
        Vector3.new(0, 10000000, 0),
        Vector3.new(0, 0, 20000000),
        Vector3.new(0, 0, - 20000000)
    }
end
local function vu218(pu208)
    if pu208 and pu208 ~= vu187 then
        if not vu191[pu208] then
            local vu209 = vu207()
            local vu210 = 1
            local vu211 = nil
            vu211 = vu186.Heartbeat:Connect(function()
                if vu190 then
                    local v212 = pu208.Character
                    local v213
                    if v212 then
                        v213 = v212:FindFirstChild("HumanoidRootPart")
                    else
                        v213 = v212
                    end
                    if v212 then
                        v212 = v212:FindFirstChildOfClass("Humanoid")
                    end
                    if v213 and (v212 and v212.Health > 0) then
                        local v214 = vu209[vu210]
                        vu210 = vu210 % # vu209 + 1
                        local v215 = {
                            v213,
                            v213,
                            v214,
                            v213.Position
                        }
                        local v216 = vu187.Backpack:FindFirstChild("Assault")
                        if v216 then
                            v216 = vu187.Backpack.Assault.GunScript_Local:FindFirstChild("MuzzleEffect")
                        end
                        v215[5] = v216
                        local v217 = vu187.Backpack:FindFirstChild("Assault")
                        if v217 then
                            v217 = vu187.Backpack.Assault.GunScript_Local:FindFirstChild("HitEffect")
                        end
                        v215[6] = v217
                        v215[7] = 0
                        v215[8] = 0
                        v215[9] = {
                            false
                        }
                        v215[10] = {
                            25,
                            Vector3.new(100, 100, 100),
                            BrickColor.new(29),
                            0.25,
                            Enum.Material.SmoothPlastic,
                            0.25
                        }
                        v215[11] = true
                        v215[12] = false
                        vu188:FireServer(unpack(v215))
                    end
                else
                    vu211:Disconnect()
                    vu191[pu208] = nil
                    return
                end
            end)
            vu191[pu208] = vu211
        end
    else
        return
    end
end
local function vu223()
    local v219, v220, v221 = pairs(vu191)
    while true do
        local v222
        v221, v222 = v219(v220, v221)
        if v221 == nil then
            break
        end
        v222:Disconnect()
    end
    vu191 = {}
end
v182:AddSection({
    "Annoy"
})
v182:AddParagraph({
    "Aten\195\167\195\163o",
    "Ele para de funcionar quando est\195\161 ativado e o player morre!"
})
v183:AddToggle({
    Name = "Annoy",
    Callback = function(p224)
        vu190 = p224
        vu223()
        if vu190 then
            if vu189 ~= "all" then
                local v225 = vu184:FindFirstChild(vu189)
                if v225 then
                    vu218(v225)
                end
            else
                local v226 = vu184
                local v227, v228, v229 = ipairs(v226:GetPlayers())
                while true do
                    local v230
                    v229, v230 = v227(v228, v229)
                    if v229 == nil then
                        break
                    end
                    if v230 ~= vu187 then
                        vu218(v230)
                    end
                end
            end
        end
    end
})
v182:AddSection({
    "Freeze"
})
v182:AddToggle({
    Name = "Freeze Player [FE]",
    Callback = function(p231)
        if p231 then
            if not vu188 then
                return
            end
            getgenv().FreezeConnection = vu186.Stepped:Connect(function()
                local v232 = vu184
                local v233, v234, v235 = ipairs(v232:GetPlayers())
                while true do
                    local v236
                    v235, v236 = v233(v234, v235)
                    if v235 == nil then
                        break
                    end
                    if v236 ~= vu187 and (v236.Name:find(vu189) and v236.Character and v236.Character:FindFirstChild("HumanoidRootPart")) then
                        local v237 = Vector3.new(math.random(100000000000000, 1000000000000000), math.random(100000000000000, 1000000000000000), math.random(100000000000000, 1000000000000000))
                        local v238 = {
                            v236.Character.HumanoidRootPart,
                            v236.Character.HumanoidRootPart,
                            v237,
                            v236.Character.HumanoidRootPart.Position,
                            nil,
                            nil,
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
                        vu188:FireServer(unpack(v238))
                    end
                end
            end)
        elseif getgenv().FreezeConnection then
            local _ = pcall
        end
    end
})
v182:AddButton({
    "Freeze All Players [FE]",
    function()
        local vu239 = 1
        vu186.Stepped:Connect(function()
            local v240 = vu184:GetPlayers()
            if # v240 >= 2 then
                vu239 = vu239 + 1
                if vu239 > # v240 then
                    vu239 = 1
                end
                local v241 = v240[vu239]
                if table.find(Whitelist, v241.Name) == nil then
                    if v241 == vu187 then
                        vu239 = vu239 + 1
                        if vu239 > # v240 then
                            vu239 = 1
                        end
                        v241 = v240[vu239]
                    end
                    if v241 and v241.Character and v241.Character:FindFirstChild("HumanoidRootPart") then
                        local v242 = Vector3.new(math.random(100000000000000, 1000000000000000), math.random(100000000000000, 1000000000000000), math.random(100000000000000, 1000000000000000))
                        local v243 = {
                            v241.Character.HumanoidRootPart,
                            v241.Character.HumanoidRootPart,
                            v242,
                            v241.Character.HumanoidRootPart.Position
                        }
                        local v244 = vu187.Backpack:FindFirstChild("Assault")
                        if v244 then
                            v244 = vu187.Backpack.Assault.GunScript_Local:FindFirstChild("MuzzleEffect")
                        end
                        v243[5] = v244
                        local v245 = vu187.Backpack:FindFirstChild("Assault")
                        if v245 then
                            v245 = vu187.Backpack.Assault.GunScript_Local:FindFirstChild("HitEffect")
                        end
                        v243[6] = v245
                        v243[7] = 0
                        v243[8] = 0
                        v243[9] = {
                            false
                        }
                        v243[10] = {
                            25,
                            Vector3.new(100, 100, 100),
                            BrickColor.new(29),
                            0.25,
                            Enum.Material.SmoothPlastic,
                            0.25
                        }
                        v243[11] = true
                        v243[12] = false
                        vu188:FireServer(unpack(v243))
                    end
                end
            else
                return
            end
        end)
    end
})
v182:AddSection({
    "Lag Player"
})
local vu246 = {}
local vu247 = false
v182:AddToggle({
    Name = "Lag player",
    Callback = function()
        local v248 = game:GetService("Players")
        local v249 = game:GetService("ReplicatedStorage")
        local vu250 = game:GetService("RunService")
        local vu251 = v248.LocalPlayer
        local vu252 = v249.RE:FindFirstChild("1Gu1n")
        local function vu257()
            local v253 = {}
            for _ = 1, 10000 do
                local v254 = math.random(- 500, 500)
                local v255 = math.random(200, 800)
                local v256 = math.random(- 500, 500)
                table.insert(v253, Vector3.new(v254, v255, v256))
            end
            return v253
        end
        local function v269(pu258)
            if pu258 and pu258 ~= vu251 then
                if not vu246[pu258] then
                    local vu259 = vu257()
                    local vu260 = 1
                    local vu261 = nil
                    vu261 = vu250.Heartbeat:Connect(function()
                        if vu247 then
                            local v262 = pu258.Character
                            if v262 then
                                local v263 = v262:FindFirstChild("HumanoidRootPart")
                                local v264 = v262:FindFirstChildOfClass("Humanoid")
                                if v263 and v264 then
                                    if v264.Health > 0 then
                                        local v265 = vu259[vu260]
                                        vu260 = vu260 + 1
                                        if vu260 > # vu259 then
                                            vu260 = 1
                                        end
                                        local v266 = {
                                            v263,
                                            v263,
                                            v265,
                                            v263.Position
                                        }
                                        local v267 = vu251.Backpack:FindFirstChild("Assault")
                                        if v267 then
                                            v267 = vu251.Backpack.Assault.GunScript_Local:FindFirstChild("MuzzleEffect")
                                        end
                                        v266[5] = v267
                                        local v268 = vu251.Backpack:FindFirstChild("Assault")
                                        if v268 then
                                            v268 = vu251.Backpack.Assault.GunScript_Local:FindFirstChild("HitEffect")
                                        end
                                        v266[6] = v268
                                        v266[7] = 0
                                        v266[8] = 0
                                        v266[9] = {
                                            false
                                        }
                                        v266[10] = {
                                            25,
                                            Vector3.new(100, 100, 100),
                                            BrickColor.new(29),
                                            0.25,
                                            Enum.Material.SmoothPlastic,
                                            0.25
                                        }
                                        v266[11] = true
                                        v266[12] = false
                                        vu252:FireServer(unpack(v266))
                                    else
                                        vu261:Disconnect()
                                        vu246[pu258] = nil
                                    end
                                else
                                    return
                                end
                            else
                                return
                            end
                        else
                            vu261:Disconnect()
                            vu246[pu258] = nil
                            return
                        end
                    end)
                    vu246[pu258] = vu261
                end
            else
                return
            end
        end
        local function v274()
            local v270, v271, v272 = pairs(vu246)
            while true do
                local v273
                v272, v273 = v270(v271, v272)
                if v272 == nil then
                    break
                end
                v273:Disconnect()
            end
            vu246 = {}
        end
        vu247 = Value
        v274()
        if not vu247 then
            return
        end
        local v275 = vu189
        if v275 == "" then
            return
        end
        if v275:lower() ~= "all" then
            local v276, v277, v278 = ipairs(v248:GetPlayers())
            local v279 = vu251
            while true do
                local v280
                v278, v280 = v276(v277, v278)
                if v278 == nil then
                    break
                end
                if v280 ~= v279 and string.find(v280.Name:lower(), v275:lower()) then
                    v269(v280)
                    break
                end
            end
        else
            local v281, v282, v283 = ipairs(v248:GetPlayers())
            while true do
                local v284
                v283, v284 = v281(v282, v283)
                if v283 == nil then
                    break
                end
                v269(v284)
            end
        end
    end
})
v182:AddSection({
    "Stuck Player"
})
local vu285 = {}
local vu286 = false
v182:AddToggle({
    Name = "Stuck Player",
    Callback = function(p287)
        local v288 = game:GetService("Players")
        local v289 = game:GetService("ReplicatedStorage")
        local vu290 = game:GetService("RunService")
        local vu291 = v288.LocalPlayer
        local vu292 = v289.RE:FindFirstChild("1Gu1n")
        local function vu294()
            local v293 = {}
            for _ = 1, 270 do
                table.insert(v293, Vector3.new(0, 1550999999992882, 0))
            end
            return v293
        end
        local function v306(pu295)
            if pu295 and pu295 ~= vu291 then
                if not vu285[pu295] then
                    local vu296 = vu294()
                    local vu297 = 1
                    local vu298 = nil
                    vu298 = vu290.Heartbeat:Connect(function()
                        if vu286 then
                            local v299 = pu295.Character
                            if v299 then
                                local v300 = v299:FindFirstChild("HumanoidRootPart")
                                local v301 = v299:FindFirstChildOfClass("Humanoid")
                                if v300 and v301 then
                                    if v301.Health > 0 then
                                        local v302 = vu296[vu297]
                                        vu297 = vu297 + 1
                                        if vu297 > # vu296 then
                                            vu297 = 1
                                        end
                                        local v303 = {
                                            v300,
                                            v300,
                                            v302,
                                            v300.Position
                                        }
                                        local v304 = vu291.Backpack:FindFirstChild("Assault")
                                        if v304 then
                                            v304 = vu291.Backpack.Assault.GunScript_Local:FindFirstChild("MuzzleEffect")
                                        end
                                        v303[5] = v304
                                        local v305 = vu291.Backpack:FindFirstChild("Assault")
                                        if v305 then
                                            v305 = vu291.Backpack.Assault.GunScript_Local:FindFirstChild("HitEffect")
                                        end
                                        v303[6] = v305
                                        v303[7] = 0
                                        v303[8] = 0
                                        v303[9] = {
                                            false
                                        }
                                        v303[10] = {
                                            25,
                                            Vector3.new(100, 100, 100),
                                            BrickColor.new(29),
                                            0.25,
                                            Enum.Material.SmoothPlastic,
                                            0.25
                                        }
                                        v303[11] = true
                                        v303[12] = false
                                        vu292:FireServer(unpack(v303))
                                    else
                                        vu298:Disconnect()
                                        vu285[pu295] = nil
                                    end
                                else
                                    return
                                end
                            else
                                return
                            end
                        else
                            vu298:Disconnect()
                            vu285[pu295] = nil
                            return
                        end
                    end)
                    vu285[pu295] = vu298
                end
            else
                return
            end
        end
        local function v311()
            local v307, v308, v309 = pairs(vu285)
            while true do
                local v310
                v309, v310 = v307(v308, v309)
                if v309 == nil then
                    break
                end
                v310:Disconnect()
            end
            vu285 = {}
        end
        vu286 = p287
        v311()
        if not vu286 then
            return
        end
        local v312 = vu189
        if v312 == "..." then
            return
        end
        if v312:lower() ~= "all" then
            local v313, v314, v315 = ipairs(v288:GetPlayers())
            local v316 = vu291
            while true do
                local v317
                v315, v317 = v313(v314, v315)
                if v315 == nil then
                    break
                end
                if v317 ~= v316 and string.find(v317.Name:lower(), v312:lower()) then
                    v306(v317)
                    break
                end
            end
        else
            local v318, v319, v320 = ipairs(v288:GetPlayers())
            while true do
                local v321
                v320, v321 = v318(v319, v320)
                if v320 == nil then
                    break
                end
                v306(v321)
            end
        end
    end
})
v182:AddSection({
    "Glitch Car"
})
local vu322 = {}
local vu323 = Value
v182:AddToggle({
    Name = "Glitch Car",
    Callback = function(p324)
        if p324 then
            local v325 = game:GetService("Players")
            local v326 = game:GetService("ReplicatedStorage")
            local vu327 = game:GetService("RunService")
            local vu328 = v325.LocalPlayer
            local vu329 = v326.RE:FindFirstChild("1Gu1n")
            local function vu330()
                return {
                    Vector3.new(0, 50, 0),
                    Vector3.new(50, 0, 0),
                    Vector3.new(- 5000000009888, 0, 0),
                    Vector3.new(0, 0, 50),
                    Vector3.new(0, 0, - 50),
                    Vector3.new(25, 25, 0),
                    Vector3.new(- 25, - 25, 0),
                    Vector3.new(0, 25, 25),
                    Vector3.new(0, - 25, - 25),
                    Vector3.new(25, 0, 25),
                    Vector3.new(- 25, 0, - 25)
                }
            end
            local function v342(pu331)
                if pu331 and pu331 ~= vu328 then
                    if not vu322[pu331] then
                        local vu332 = vu330()
                        local vu333 = 1
                        local vu334 = nil
                        vu334 = vu327.Heartbeat:Connect(function()
                            if vu323 then
                                local v335 = pu331.Character
                                if v335 then
                                    local v336 = v335:FindFirstChild("HumanoidRootPart")
                                    local v337 = v335:FindFirstChildOfClass("Humanoid")
                                    if v336 and v337 then
                                        if v337.Health > 0 then
                                            local v338 = vu332[vu333]
                                            vu333 = vu333 + 1
                                            if vu333 > # vu332 then
                                                vu333 = 1
                                            end
                                            local v339 = {
                                                v336,
                                                v336,
                                                v338,
                                                v336.Position
                                            }
                                            local v340 = vu328.Backpack:FindFirstChild("Assault")
                                            if v340 then
                                                v340 = vu328.Backpack.Assault.GunScript_Local:FindFirstChild("MuzzleEffect")
                                            end
                                            v339[5] = v340
                                            local v341 = vu328.Backpack:FindFirstChild("Assault")
                                            if v341 then
                                                v341 = vu328.Backpack.Assault.GunScript_Local:FindFirstChild("HitEffect")
                                            end
                                            v339[6] = v341
                                            v339[7] = 0
                                            v339[8] = 0
                                            v339[9] = {
                                                false
                                            }
                                            v339[10] = {
                                                25,
                                                Vector3.new(100, 100, 100),
                                                BrickColor.new(29),
                                                0.25,
                                                Enum.Material.SmoothPlastic,
                                                0.25
                                            }
                                            v339[11] = true
                                            v339[12] = false
                                            vu329:FireServer(unpack(v339))
                                        else
                                            vu334:Disconnect()
                                            vu322[pu331] = nil
                                        end
                                    else
                                        return
                                    end
                                else
                                    return
                                end
                            else
                                vu334:Disconnect()
                                vu322[pu331] = nil
                                return
                            end
                        end)
                        vu322[pu331] = vu334
                    end
                else
                    return
                end
            end
            local function v347()
                local v343, v344, v345 = pairs(vu322)
                while true do
                    local v346
                    v345, v346 = v343(v344, v345)
                    if v345 == nil then
                        break
                    end
                    v346:Disconnect()
                end
                vu322 = {}
            end
            vu323 = p324
            v347()
            if not vu323 then
                return
            end
            local v348, v349, v350 = ipairs(v325:GetPlayers())
            local v351 = vu328
            while true do
                local v352
                v350, v352 = v348(v349, v350)
                if v350 == nil then
                    break
                end
                if v352 ~= v351 and string.find(v352.Name:lower(), vu189) then
                    v342(v352)
                    break
                end
            end
        else
            local v353, v354, v355 = pairs(vu322)
            while true do
                local v356
                v355, v356 = v353(v354, v355)
                if v355 == nil then
                    break
                end
                v356:Disconnect()
            end
            vu322 = {}
        end
    end
})
v182:AddParagraph({
    "INFO",
    "Isso impede o player de andar em carros"
})
local v357 = v16:MakeTab({
    Title = "Troll Players",
    Icon = "rbxassetid://131153193945220 "
})
local vu358 = game:GetService("ReplicatedStorage"):FindFirstChild("RE")
if vu358 then
    vu358 = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1n")
end
local vu359 = game:GetService("Players")
local vu360 = vu359.LocalPlayer
local vu361 = game:GetService("ReplicatedStorage")
local vu362 = game:GetService("VirtualInputManager")
local vu363 = game:GetService("RunService")
local vu364 = workspace.CurrentCamera
local vu365 = nil
getgenv().Target = nil
local vu366 = vu360.Character
local vu367
if vu366 then
    vu367 = vu366:WaitForChild("Humanoid")
else
    vu367 = vu366
end
local vu368
if vu366 then
    vu368 = vu366:WaitForChild("HumanoidRootPart")
else
    vu368 = vu366
end
local function vu371()
    local v369 = vu360.Character
    local v370 = v369 and (v369:FindFirstChild("Chaos.Couch") or vu360.Backpack:FindFirstChild("Chaos.Couch"))
    if v370 then
        v370:Destroy()
    end
    vu361:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
end
vu360.CharacterAdded:Connect(function(p372)
    vu366 = p372
    vu367 = p372:WaitForChild("Humanoid")
    vu368 = p372:WaitForChild("HumanoidRootPart")
    vu371()
    vu367.Died:Connect(function()
        vu371()
    end)
end)
if vu367 then
    vu367.Died:Connect(function()
        vu371()
    end)
end
v357:AddSection({
    Name = "Troll Player"
})
local vu380 = v357:AddDropdown({
    Name = "Selecionar Jogador",
    Options = (function()
        local v373 = vu359:GetPlayers()
        local v374, v375, v376 = ipairs(v373)
        local v377 = {}
        while true do
            local v378
            v376, v378 = v374(v375, v376)
            if v376 == nil then
                break
            end
            if v378 ~= vu360 then
                table.insert(v377, v378.Name)
            end
        end
        return v377
    end)(),
    Default = "",
    Callback = function(p379)
        vu365 = p379
        getgenv().Target = p379
        print("Jogador selecionado: " .. tostring(p379))
    end
})
v357:AddButton({
    Name = "Atualizar Player List",
    Callback = function()
        local v381 = vu359:GetPlayers()
        local v382 = {}
        if vu380 and # v381 > 0 then
            local v383, v384, v385 = ipairs(v381)
            while true do
                local v386
                v385, v386 = v383(v384, v385)
                if v385 == nil then
                    break
                end
                if v386.Name ~= vu360.Name then
                    table.insert(v382, v386.Name)
                end
            end
            vu380:Set(v382)
            print("Lista de jogadores atualizada: ", table.concat(v382, ", "))
            if vu365 and not vu359:FindFirstChild(vu365) then
                vu365 = nil
                getgenv().Target = nil
                vu380:SetValue("...")
                print("Sele\195\167\195\163o resetada, jogador n\195\163o est\195\161 mais no servidor.")
            end
        else
            print("Erro: Dropdown n\195\163o encontrado ou nenhum jogador dispon\195\173vel.")
        end
    end
})
v357:AddButton({
    Name = "Teleportar at\195\169 o Player",
    Callback = function()
        if vu365 and vu359:FindFirstChild(vu365) then
            local v387 = vu360.Character
            if v387 then
                v387 = v387:FindFirstChild("HumanoidRootPart")
            end
            if v387 then
                local v388 = vu359:FindFirstChild(vu365)
                if v388 and v388.Character and v388.Character:FindFirstChild("HumanoidRootPart") then
                    v387.CFrame = v388.Character.HumanoidRootPart.CFrame
                else
                    print("Erro: Player alvo n\195\163o encontrado ou sem HumanoidRootPart")
                end
            else
                warn("Erro: HumanoidRootPart do jogador local n\195\163o encontrado")
            end
        else
            print("Erro: Player n\195\163o selecionado ou n\195\163o existe")
            return
        end
    end
})
v357:AddToggle({
    Name = "Spectar Player",
    Default = false,
    Callback = function(pu389)
        local vu390 = workspace.CurrentCamera
        local function v394()
            if pu389 then
                local v391 = vu359:FindFirstChild(vu365)
                local v392 = v391 and v391.Character and v391.Character:FindFirstChild("Humanoid")
                if v392 then
                    vu390.CameraSubject = v392
                end
            else
                local v393 = vu360.Character and vu360.Character:FindFirstChild("Humanoid")
                if v393 then
                    vu390.CameraSubject = v393
                end
            end
        end
        if pu389 then
            if not getgenv().CameraConnection then
                getgenv().CameraConnection = vu363.Heartbeat:Connect(v394)
            end
        else
            if getgenv().CameraConnection then
                getgenv().CameraConnection:Disconnect()
                getgenv().CameraConnection = nil
            end
            v394()
        end
    end
})
v357:AddSection({
    Name = "Couch"
})
v357:AddButton({
    Name = "Kill Player",
    Callback = function()
        if vu365 then
            local vu395 = vu359:FindFirstChild(vu365)
            if vu395 and vu395.Character then
                local vu396 = vu360.Character
                if vu396 then
                    local vu397 = vu396:FindFirstChildOfClass("Humanoid")
                    local vu398 = vu396:FindFirstChild("HumanoidRootPart")
                    local v399 = vu395.Character
                    if v399 then
                        v399 = vu395.Character:FindFirstChild("HumanoidRootPart")
                    end
                    if vu397 and (vu398 and v399) then
                        local vu400 = vu398.Position
                        local vu401 = Vector3.new(145.51, - 350.09, 21.58)
                        vu361:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                        task.wait(0.2)
                        vu361.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                        task.wait(0.3)
                        local v402 = vu360.Backpack:FindFirstChild("Couch")
                        if v402 then
                            v402.Parent = vu396
                        end
                        task.wait(0.1)
                        vu362:SendKeyEvent(true, Enum.KeyCode.F, false, game)
                        task.wait(0.1)
                        vu397:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                        vu397.PlatformStand = false
                        vu364.CameraSubject = vu395.Character:FindFirstChild("Head") or (v399 or vu397)
                        local vu403 = Instance.new("BodyPosition")
                        vu403.Name = "BringPosition"
                        vu403.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        vu403.D = 10
                        vu403.P = 30000
                        vu403.Position = vu398.Position
                        vu403.Parent = v399
                        task.spawn(function()
                            local v404 = tick()
                            local v405 = 0
                            while tick() - v404 < 5 and (vu395 and vu395.Character) and vu395.Character:FindFirstChildOfClass("Humanoid") do
                                local v406 = vu395.Character:FindFirstChildOfClass("Humanoid")
                                if not v406 or v406.Sit then
                                    break
                                end
                                local v407 = vu395.Character.HumanoidRootPart
                                local v408 = v407.Position + v407.Velocity / 1.5
                                v405 = v405 + 50
                                vu398.CFrame = CFrame.new(v408 + Vector3.new(0, 2, 0)) * CFrame.Angles(math.rad(v405), 0, 0)
                                vu403.Position = vu398.Position + Vector3.new(2, 0, 0)
                                task.wait()
                            end
                            vu403:Destroy()
                            vu397:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                            vu397.PlatformStand = false
                            vu364.CameraSubject = vu397
                            local v409 = vu396
                            local v410, v411, v412 = pairs(v409:GetDescendants())
                            while true do
                                local v413
                                v412, v413 = v410(v411, v412)
                                if v412 == nil then
                                    break
                                end
                                if v413:IsA("BasePart") then
                                    v413.Velocity = Vector3.zero
                                    v413.RotVelocity = Vector3.zero
                                end
                            end
                            task.wait(0.1)
                            vu398.CFrame = CFrame.new(vu401)
                            task.wait(0.3)
                            local v414 = vu396:FindFirstChild("Couch")
                            if v414 then
                                v414.Parent = vu360.Backpack
                            end
                            task.wait(0.01)
                            vu361.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                            task.wait(0.2)
                            vu398.CFrame = CFrame.new(vu400)
                        end)
                    else
                        warn("Erro: Componentes necess\195\161rios n\195\163o encontrados")
                    end
                else
                    warn("Erro: Personagem do jogador local n\195\163o encontrado")
                    return
                end
            else
                warn("Erro: Jogador alvo n\195\163o encontrado ou sem personagem")
                return
            end
        else
            warn("Erro: Nenhum jogador selecionado")
            return
        end
    end
})
v357:AddButton({
    Name = "Puxar Player",
    Callback = function()
        if vu365 then
            local vu415 = vu359:FindFirstChild(vu365)
            if vu415 and vu415.Character then
                local vu416 = vu360.Character
                if vu416 then
                    local vu417 = vu416:FindFirstChildOfClass("Humanoid")
                    local vu418 = vu416:FindFirstChild("HumanoidRootPart")
                    local v419 = vu415.Character
                    if v419 then
                        v419 = vu415.Character:FindFirstChild("HumanoidRootPart")
                    end
                    if vu417 and (vu418 and v419) then
                        local vu420 = vu418.Position
                        vu361:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                        task.wait(0.2)
                        vu361.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                        task.wait(0.3)
                        local v421 = vu360.Backpack:FindFirstChild("Couch")
                        if v421 then
                            v421.Parent = vu416
                        end
                        task.wait(0.1)
                        vu362:SendKeyEvent(true, Enum.KeyCode.F, false, game)
                        task.wait(0.1)
                        vu417:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                        vu417.PlatformStand = false
                        vu364.CameraSubject = vu415.Character:FindFirstChild("Head") or (v419 or vu417)
                        local vu422 = Instance.new("BodyPosition")
                        vu422.Name = "BringPosition"
                        vu422.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        vu422.D = 10
                        vu422.P = 30000
                        vu422.Position = vu418.Position
                        vu422.Parent = v419
                        task.spawn(function()
                            local v423 = tick()
                            local v424 = 0
                            while tick() - v423 < 5 and (vu415 and vu415.Character) and vu415.Character:FindFirstChildOfClass("Humanoid") do
                                local v425 = vu415.Character:FindFirstChildOfClass("Humanoid")
                                if not v425 or v425.Sit then
                                    break
                                end
                                local v426 = vu415.Character.HumanoidRootPart
                                local v427 = v426.Position + v426.Velocity / 1.5
                                v424 = v424 + 50
                                vu418.CFrame = CFrame.new(v427 + Vector3.new(0, 2, 0)) * CFrame.Angles(math.rad(v424), 0, 0)
                                vu422.Position = vu418.Position + Vector3.new(2, 0, 0)
                                task.wait()
                            end
                            vu422:Destroy()
                            vu417:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                            vu417.PlatformStand = false
                            vu364.CameraSubject = vu417
                            local v428 = vu416
                            local v429, v430, v431 = pairs(v428:GetDescendants())
                            while true do
                                local v432
                                v431, v432 = v429(v430, v431)
                                if v431 == nil then
                                    break
                                end
                                if v432:IsA("BasePart") then
                                    v432.Velocity = Vector3.zero
                                    v432.RotVelocity = Vector3.zero
                                end
                            end
                            task.wait(0.1)
                            vu418.Anchored = true
                            vu418.CFrame = CFrame.new(vu420)
                            task.wait(0.001)
                            vu418.Anchored = false
                            task.wait(0.7)
                            local v433 = vu416:FindFirstChild("Couch")
                            if v433 then
                                v433.Parent = vu360.Backpack
                            end
                            task.wait(0.001)
                            vu361.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                        end)
                    else
                        warn("Erro: Componentes necess\195\161rios n\195\163o encontrados")
                    end
                else
                    warn("Erro: Personagem do jogador local n\195\163o encontrado")
                    return
                end
            else
                warn("Erro: Jogador alvo n\195\163o encontrado ou sem personagem")
                return
            end
        else
            warn("Erro: Nenhum jogador selecionado")
            return
        end
    end
})
v357:AddSection({
    Name = "Couch sem ir at\195\169 o alvo"
})
v357:AddButton({
    Name = "Kill Player",
    Callback = function()
        local v434 = vu359:FindFirstChild(getgenv().Target)
        if not v434 then
            warn("Erro: Nenhum jogador alvo selecionado")
            return
        end
        if not (v434.Character and v434.Character:FindFirstChild("HumanoidRootPart")) then
            warn("Erro: Jogador alvo sem personagem ou HumanoidRootPart")
            return
        end
        vu361.RE["1Clea1rTool1s"]:FireServer(unpack({
            "ClearAllTools"
        }))
        vu361.RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
            "PickingTools",
            "Couch"
        }))
        local v435 = vu360.Backpack:WaitForChild("Couch", 2)
        if not v435 then
            warn("Erro: Sof\195\161 n\195\163o encontrado no Backpack")
            return
        end
        v435.Name = "Chaos.Couch"
        local v436 = v435:FindFirstChild("Seat1")
        local v437 = v435:FindFirstChild("Seat2")
        local v438 = v435:FindFirstChild("Handle")
        if not (v436 and (v437 and v438)) then
            warn("Erro: Componentes do sof\195\161 n\195\163o encontrados")
            return
        end
        v436.Disabled = true
        v437.Disabled = true
        v438.Name = "Handle "
        v435.Parent = vu360.Character
        local v439 = Instance.new("BodyVelocity", v436)
        v439.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        v439.P = 1250
        v439.Velocity = Vector3.new(0, 0, 0)
        v439.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
        while true do
            for _ = 1, 35 do
                local v440 = {
                    x = 0,
                    y = 0,
                    z = 0
                }
                local v441 = v434.Character
                if v441 then
                    v441 = v434.Character.HumanoidRootPart
                end
                if not v441 then
                end
                v440.x = v441.Position.X + v441.Velocity.X / 2
                v440.y = v441.Position.Y + v441.Velocity.Y / 2
                v440.z = v441.Position.Z + v441.Velocity.Z / 2
                v436.CFrame = CFrame.new(Vector3.new(v440.x, v440.y, v440.z)) * CFrame.new(- 2, 2, 0)
                task.wait()
            end
            v439:Destroy()
            v435.Parent = vu360.Backpack
            task.wait()
            v435:FindFirstChild("Handle ").Name = "Handle"
            task.wait(0.2)
            v435.Parent = vu360.Character
            task.wait()
            v435.Parent = vu360.Backpack
            v435.Handle.Name = "Handle "
            task.wait(0.2)
            v435.Parent = vu360.Character
            v439 = Instance.new("BodyVelocity", v436)
            v439.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            v439.P = 1250
            v439.Velocity = Vector3.new(0, 0, 0)
            v439.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
            if v434.Character and (v434.Character.Humanoid and v434.Character.Humanoid.Sit == true) then
                task.wait()
                v435.Parent = vu360.Backpack
                v436.CFrame = CFrame.new(Vector3.new(9999, - 450, 9999))
                v437.CFrame = CFrame.new(Vector3.new(9999, - 450, 9999))
                v435.Parent = vu360.Character
                task.wait(0.1)
                v435.Parent = vu360.Backpack
                task.wait(2)
                local v442 = v436:FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W")
                if v442 then
                    v442:Destroy()
                end
                vu361.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
                return
            end
        end
    end
})
v357:AddButton({
    Name = "Puxar Player",
    Callback = function()
        local v443 = vu359:FindFirstChild(getgenv().Target)
        if not v443 then
            warn("Erro: Nenhum jogador alvo selecionado")
            return
        end
        if not (v443.Character and v443.Character:FindFirstChild("HumanoidRootPart")) then
            warn("Erro: Jogador alvo sem personagem ou HumanoidRootPart")
            return
        end
        vu361.RE["1Clea1rTool1s"]:FireServer(unpack({
            "ClearAllTools"
        }))
        vu361.RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
            "PickingTools",
            "Couch"
        }))
        local v444 = vu360.Backpack:WaitForChild("Couch", 2)
        if not v444 then
            warn("Erro: Sof\195\161 n\195\163o encontrado no Backpack")
            return
        end
        v444.Name = "Chaos.Couch"
        local v445 = v444:FindFirstChild("Seat1")
        local v446 = v444:FindFirstChild("Seat2")
        local v447 = v444:FindFirstChild("Handle")
        if not (v445 and (v446 and v447)) then
            warn("Erro: Componentes do sof\195\161 n\195\163o encontrados")
            return
        end
        v445.Disabled = true
        v446.Disabled = true
        v447.Name = "Handle "
        v444.Parent = vu360.Character
        local v448 = Instance.new("BodyVelocity", v445)
        v448.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        v448.P = 1250
        v448.Velocity = Vector3.new(0, 0, 0)
        v448.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
        while true do
            for _ = 1, 35 do
                local v449 = {
                    x = 0,
                    y = 0,
                    z = 0
                }
                local v450 = v443.Character
                if v450 then
                    v450 = v443.Character.HumanoidRootPart
                end
                if not v450 then
                end
                v449.x = v450.Position.X + v450.Velocity.X / 2
                v449.y = v450.Position.Y + v450.Velocity.Y / 2
                v449.z = v450.Position.Z + v450.Velocity.Z / 2
                v445.CFrame = CFrame.new(Vector3.new(v449.x, v449.y, v449.z)) * CFrame.new(- 2, 2, 0)
                task.wait()
            end
            v448:Destroy()
            v444.Parent = vu360.Backpack
            task.wait()
            v444:FindFirstChild("Handle ").Name = "Handle"
            task.wait(0.2)
            v444.Parent = vu360.Character
            task.wait()
            v444.Parent = vu360.Backpack
            v444.Handle.Name = "Handle "
            task.wait(0.2)
            v444.Parent = vu360.Character
            v448 = Instance.new("BodyVelocity", v445)
            v448.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            v448.P = 1250
            v448.Velocity = Vector3.new(0, 0, 0)
            v448.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
            if v443.Character and (v443.Character.Humanoid and v443.Character.Humanoid.Sit == true) then
                task.wait()
                v448:Destroy()
                v444.Parent = vu360.Backpack
                task.wait()
                v444:FindFirstChild("Handle ").Name = "Handle"
                task.wait(0.3)
                v444.Parent = vu360.Character
                task.wait(0.3)
                v444.Grip = CFrame.new(Vector3.new(0, 0, 0))
                task.wait(0.3)
                vu361.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
                return
            end
        end
    end
})
v357:AddSection({
    Name = "Bus"
})
v357:AddButton({
    Name = "Kill Player",
    Callback = function()
        local vu451 = vu360.Character
        local vu452
        if vu451 then
            vu452 = vu451:FindFirstChild("HumanoidRootPart")
        else
            vu452 = vu451
        end
        if vu452 then
            local vu453 = vu452.CFrame
            local function v455()
                local v454 = game.Workspace:FindFirstChild("Vehicles")
                if v454 then
                    return v454:FindFirstChild(vu360.Name .. "Car")
                else
                    return nil
                end
            end
            local vu456 = v455()
            if not vu456 then
                vu452.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                local v457 = vu361:FindFirstChild("RE")
                if v457 and v457:FindFirstChild("1Ca1r") then
                    v457["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                end
                task.wait(1)
                vu456 = v455()
            end
            if vu456 then
                local v458 = vu456:FindFirstChild("Body")
                if v458 then
                    v458 = vu456.Body:FindFirstChild("VehicleSeat")
                end
                if v458 and (vu451:FindFirstChildOfClass("Humanoid") and not vu451.Humanoid.Sit) then
                    repeat
                        vu452.CFrame = v458.CFrame * CFrame.new(0, 2, 0)
                        task.wait()
                    until vu451.Humanoid.Sit or not vu456.Parent
                    if vu451.Humanoid.Sit or not vu456.Parent then
                        local v459, v460, v461 = pairs(vu456.Body:GetChildren())
                        while true do
                            local v462
                            v461, v462 = v459(v460, v461)
                            if v461 == nil then
                                break
                            end
                            if v462:IsA("Seat") then
                                v462.CanTouch = true
                            end
                        end
                    end
                end
            end
            local function v470()
                while true do
                    if vu365 then
                        local v463 = vu359:FindFirstChild(vu365)
                        if v463 and v463.Character and v463.Character:FindFirstChild("HumanoidRootPart") then
                            local v464 = v463.Character:FindFirstChildOfClass("Humanoid")
                            if v464 and v464.Sit then
                                if vu451.Humanoid then
                                    vu456:SetPrimaryPartCFrame(CFrame.new(Vector3.new(9999, - 450, 9999)))
                                    print("Jogador sentou, levando \195\180nibus para o void!")
                                    task.wait(0.2);
                                    (function()
                                        local v465 = vu451
                                        if v465 then
                                            v465 = vu451:FindFirstChildWhichIsA("Humanoid")
                                        end
                                        if v465 then
                                            v465:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end)()
                                    print("Simulando pulo!")
                                    task.wait(0.5)
                                    vu452.CFrame = vu453
                                    print("Player voltou para a posi\195\167\195\163o inicial.")
                                end
                                return
                            end
                            local v466 = v463.Character.HumanoidRootPart
                            local v467 = tick() * 35
                            local v468 = math.sin(v467) * 4
                            local v469 = math.cos(v467) * 20
                            vu456:SetPrimaryPartCFrame(v466.CFrame * CFrame.new(v468, 0, v469))
                        end
                    end
                    vu363.RenderStepped:Wait()
                end
            end
            spawn(v470)
        else
            warn("Erro: HumanoidRootPart do jogador local n\195\163o encontrado")
        end
    end
})
v357:AddButton({
    Name = "Puxar Player",
    Callback = function()
        local vu471 = vu360.Character
        local v472
        if vu471 then
            v472 = vu471:FindFirstChild("HumanoidRootPart")
        else
            v472 = vu471
        end
        if v472 then
            local vu473 = v472.CFrame
            local function v475()
                local v474 = game.Workspace:FindFirstChild("Vehicles")
                if v474 then
                    return v474:FindFirstChild(vu360.Name .. "Car")
                else
                    return nil
                end
            end
            local vu476 = v475()
            if not vu476 then
                v472.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                local v477 = vu361:FindFirstChild("RE")
                if v477 and v477:FindFirstChild("1Ca1r") then
                    v477["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                end
                task.wait(1)
                vu476 = v475()
            end
            if vu476 then
                local v478 = vu476:FindFirstChild("Body")
                if v478 then
                    v478 = vu476.Body:FindFirstChild("VehicleSeat")
                end
                if v478 and (vu471:FindFirstChildOfClass("Humanoid") and not vu471.Humanoid.Sit) then
                    repeat
                        v472.CFrame = v478.CFrame * CFrame.new(0, 2, 0)
                        task.wait()
                    until vu471.Humanoid.Sit or not vu476.Parent
                end
            end
            local function v485()
                while true do
                    if vu365 then
                        local v479 = vu359:FindFirstChild(vu365)
                        if v479 and v479.Character and v479.Character:FindFirstChild("HumanoidRootPart") then
                            local v480 = v479.Character:FindFirstChildOfClass("Humanoid")
                            if v480 and v480.Sit then
                                if vu471.Humanoid then
                                    vu476:SetPrimaryPartCFrame(vu473)
                                    task.wait(0.7)
                                    vu361.RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                                        "DeleteAllVehicles"
                                    }))
                                end
                                return
                            end
                            local v481 = v479.Character.HumanoidRootPart
                            local v482 = tick() * 35
                            local v483 = math.sin(v482) * 4
                            local v484 = math.cos(v482) * 20
                            vu476:SetPrimaryPartCFrame(v481.CFrame * CFrame.new(v483, 0, v484))
                        end
                    end
                    vu363.RenderStepped:Wait()
                end
            end
            spawn(v485)
        else
            warn("Erro: HumanoidRootPart do jogador local n\195\163o encontrado")
        end
    end
})
v357:AddButton({
    Name = "Kill All Bus",
    Callback = function()
        local vu486 = game:GetService("Players")
        local vu487 = game:GetService("Workspace")
        local vu488 = game:GetService("RunService")
        local vu489 = game:GetService("ReplicatedStorage")
        local vu490 = Vector3.new(145.51, - 374.09, 21.58)
        local vu491 = nil
        local function vu493()
            local v492 = vu487:FindFirstChild("Vehicles")
            if v492 then
                return v492:FindFirstChild(vu486.LocalPlayer.Name .. "Car")
            else
                return nil
            end
        end
        local function vu505(p494, p495)
            while true do
                if p494 then
                    local v496 = vu486:FindFirstChild(p494)
                    if v496 and v496.Character and v496.Character:FindFirstChild("HumanoidRootPart") then
                        local v497 = v496.Character:FindFirstChildOfClass("Humanoid")
                        if v497 and v497.Sit then
                            local v498 = vu493()
                            if v498 then
                                v498:SetPrimaryPartCFrame(CFrame.new(vu490))
                                print("Jogador sentou, levando \195\180nibus para o void!")
                                task.wait(0.2)
                                local function v500()
                                    local v499 = vu486.LocalPlayer.Character
                                    if v499 then
                                        v499 = vu486.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
                                    end
                                    if v499 then
                                        v499:ChangeState(Enum.HumanoidStateType.Jumping)
                                    end
                                end
                                v500()
                                print("Simulando primeiro pulo!")
                                task.wait(0.4)
                                v500()
                                print("Simulando segundo pulo!")
                                task.wait(0.5)
                                if vu491 then
                                    vu486.LocalPlayer.Character.HumanoidRootPart.CFrame = vu491
                                    print("Player voltou para a posi\195\167\195\163o inicial Xique")
                                    task.wait(0.1)
                                    vu489:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
                                        "DeleteAllVehicles"
                                    }))
                                    print("Todos os ve\195\173culos foram deletados!")
                                end
                            end
                            if p495 then
                                p495()
                            end
                            return
                        end
                        local v501 = v496.Character.HumanoidRootPart
                        local v502 = tick() * 35
                        local _ = math.sin(v502) * 10
                        local v503 = math.cos(v502) * 20
                        local v504 = vu493()
                        if v504 then
                            v504:SetPrimaryPartCFrame(v501.CFrame * CFrame.new(0, 0, v503))
                        end
                    end
                end
                vu488.RenderStepped:Wait()
            end
        end
        local function vu515(p506, pu507)
            local vu508 = p506
            local v509 = vu486.LocalPlayer
            local v510 = v509.Character or v509.CharacterAdded:Wait()
            local v511 = v510:WaitForChild("HumanoidRootPart")
            vu491 = v511.CFrame
            local v512 = vu493()
            if not v512 then
                v511.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                local v513 = vu489:FindFirstChild("RE")
                if v513 and v513:FindFirstChild("1Ca1r") then
                    v513["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                end
                task.wait(1)
                v512 = vu493()
            end
            if v512 then
                local v514 = v512:FindFirstChild("Body")
                if v514 then
                    v514 = v512.Body:FindFirstChild("VehicleSeat")
                end
                if v514 and (v510:FindFirstChildOfClass("Humanoid") and not v510.Humanoid.Sit) then
                    repeat
                        v511.CFrame = v514.CFrame * CFrame.new(0, 2, 0)
                        task.wait()
                    until v510.Humanoid.Sit or not v512.Parent
                end
            end
            spawn(function()
                vu505(vu508, pu507)
            end)
        end
        local function vu517(pu516)
            if # pu516 ~= 0 then
                vu515(table.remove(pu516, 1).Name, function()
                    task.wait(0.5)
                    vu517(pu516)
                end)
            end
        end
        local v518 = vu486
        vu517(vu486.GetPlayers(v518))
    end
})
v357:AddButton({
    Name = "House Ban Kill",
    Callback = function()
        if not vu365 then
            print("Nenhum jogador selecionado!")
            return
        end
        local vu519 = game.Players.LocalPlayer
        local _ = vu519.Backpack
        local vu520 = vu519.Character
        local v521 = vu520
        local vu522 = vu520.FindFirstChildOfClass(v521, "Humanoid")
        local v523 = vu520
        local vu524 = vu520.FindFirstChild(v523, "HumanoidRootPart")
        local v525 = game.Workspace:FindFirstChild("001_Lots")
        local _ = vu524.CFrame
        local v526 = 0
        local vu527 = Workspace.Vehicles
        function Check()
            return vu519 and (vu520 and (vu522 and (vu524 and vu527))) and true or false
        end
        local v528 = game.Players:FindFirstChild(vu365)
        if v528 and (v528.Character and Check()) then
            if not v525:FindFirstChild(vu519.Name .. "House") then
                local v529, v530, v531 = pairs(v525:GetChildren())
                local v532 = {}
                while true do
                    local v533
                    v531, v533 = v529(v530, v531)
                    if v531 == nil then
                        break
                    end
                    if v533.Name == "For Sale" then
                        local v534, v535, v536 = pairs(v533:GetDescendants())
                        while true do
                            local v537
                            v536, v537 = v534(v535, v536)
                            if v536 == nil then
                                break
                            end
                            if v537:IsA("NumberValue") and (v537.Name == "Number" and (v537.Value < 25 and v537.Value > 10)) then
                                table.insert(v532, {
                                    Lot = v533,
                                    Number = v537.Value
                                })
                                break
                            end
                        end
                    end
                end
                if # v532 <= 0 then
                    print("Nenhuma casa dispon\195\131\194\173vel para compra!")
                    return
                end
                local v538 = v532[math.random(1, # v532)]
                local v539 = v538.Lot
                local v540 = v538.Number
                local v541 = v539:FindFirstChild("BuyHouse")
                local _ = v541.Position
                if v541 and v541:IsA("BasePart") then
                    vu524.CFrame = v541.CFrame + Vector3.new(0, - 6, 0)
                    task.wait(0.5)
                    local v542 = v541:FindFirstChild("ClickDetector")
                    if v542 then
                        fireclickdetector(v542)
                    end
                end
                task.wait(0.5)
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Lot:BuildProperty"):FireServer(unpack({
                    v540,
                    "056_House"
                }))
            end
            task.wait(0.5)
            local v543 = v525:FindFirstChild(vu519.Name .. "House")
            if v543 then
                task.wait(0.5)
                local v544, v545, v546 = pairs(v543:GetDescendants())
                local v547 = nil
                while true do
                    local v548
                    v546, v548 = v544(v545, v546)
                    if v546 == nil then
                        break
                    end
                    if v548.Name == "Number" then
                        if v548:IsA("NumberValue") then
                            v547 = v548
                        end
                    end
                end
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gettin1gHous1e"):FireServer("PickingCustomHouse", "049_House", v547.Value)
            end
            task.wait(0.5)
            local v549 = vu527
            if not vu527.FindFirstChild(v549, vu519.Name .. "Car") and Check() then
                vu524.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingCar", "SchoolBus")
                task.wait(0.5)
                local v550 = vu527
                local v551 = vu527.FindFirstChild(v550, vu519.Name .. "Car")
                task.wait(0.5)
                local v552 = v551:FindFirstChild("Body")
                if v552 then
                    v552 = v551.Body:FindFirstChild("VehicleSeat")
                end
                if v552 then
                    repeat
                        task.wait()
                        vu524.CFrame = v552.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                    until vu522.Sit
                end
            end
            task.wait(0.5)
            local v553 = vu527
            local vu554 = vu527.FindFirstChild(v553, vu519.Name .. "Car")
            if vu554 then
                if not vu522.Sit then
                    local v555 = vu554:FindFirstChild("Body")
                    if v555 then
                        v555 = vu554.Body:FindFirstChild("VehicleSeat")
                    end
                    if v555 then
                        repeat
                            task.wait()
                            vu524.CFrame = v555.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                        until vu522.Sit
                    end
                end
                local v556 = v528.Character
                local v557 = v556:FindFirstChildOfClass("Humanoid")
                local v558 = v556:FindFirstChild("HumanoidRootPart")
                if v556 and (v557 and (v558 and not v557.Sit)) then
                    while not v557.Sit do
                        task.wait()
                        local function v562(p559, p560, p561)
                            vu554:SetPrimaryPartCFrame(CFrame.new(p559.Position) * p560 * p561)
                        end
                        v526 = v526 + 100
                        v562(v558, CFrame.new(0, 1.5, 0) + v557.MoveDirection * v558.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v526), 0, 0))
                        v562(v558, CFrame.new(0, - 1.5, 0) + v557.MoveDirection * v558.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v526), 0, 0))
                        v562(v558, CFrame.new(2.25, 1.5, - 2.25) + v557.MoveDirection * v558.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v526), 0, 0))
                        v562(v558, CFrame.new(- 2.25, - 1.5, 2.25) + v557.MoveDirection * v558.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v526), 0, 0))
                        v562(v558, CFrame.new(0, 1.5, 0) + v557.MoveDirection * v558.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v526), 0, 0))
                        v562(v558, CFrame.new(0, - 1.5, 0) + v557.MoveDirection * v558.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v526), 0, 0))
                    end
                    task.wait(0.2)
                    local v563 = v525:FindFirstChild(vu519.Name .. "House")
                    vu554:SetPrimaryPartCFrame(CFrame.new(v563.HouseSpawnPosition.Position))
                    task.wait(0.2)
                    local v564 = Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(30, 30, 30), game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(30, 30, 30))
                    local v565 = workspace:FindPartsInRegion3(v564, game.Players.LocalPlayer.Character.HumanoidRootPart, math.huge)
                    local v566, v567, v568 = pairs(v565)
                    while true do
                        local v569
                        v568, v569 = v566(v567, v568)
                        if v568 == nil then
                            break
                        end
                        if v569.Name == "HumanoidRootPart" then
                            local v570 = {
                                "BanPlayerFromHouse",
                                game:GetService("Players"):FindFirstChild(v569.Parent.Name),
                                v569.Parent
                            }
                            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v570))
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
v357:AddButton({
    Name = "House Ban kill All",
    Callback = function()
        local vu571 = game:GetService("ReplicatedStorage")
        local v572 = game:GetService("Players")
        local vu573 = game:GetService("Workspace")
        local function v623(p574)
            local vu575 = game.Players.LocalPlayer
            local _ = vu575.Backpack
            local vu576 = vu575.Character
            local v577 = vu576
            local vu578 = vu576.FindFirstChildOfClass(v577, "Humanoid")
            local v579 = vu576
            local vu580 = vu576.FindFirstChild(v579, "HumanoidRootPart")
            local v581 = game.Workspace:FindFirstChild("001_Lots")
            local _ = vu580.CFrame
            local v582 = 0
            local vu583 = vu573.Vehicles
            function Check()
                return vu575 and (vu576 and (vu578 and (vu580 and vu583))) and true or false
            end
            if Check() then
                if not v581:FindFirstChild(vu575.Name .. "House") then
                    local v584, v585, v586 = pairs(v581:GetChildren())
                    local v587 = nil
                    while true do
                        local v588
                        v586, v588 = v584(v585, v586)
                        if v586 == nil then
                            break
                        end
                        if v588.Name == "For Sale" then
                            local v589, v590, v591 = pairs(v588:GetDescendants())
                            while true do
                                local v592
                                v591, v592 = v589(v590, v591)
                                if v591 == nil then
                                    break
                                end
                                if v592:IsA("NumberValue") and (v592.Name == "Number" and (v592.Value < 25 and v592.Value > 10)) then
                                    v587 = v588
                                    break
                                end
                            end
                        end
                    end
                    local v593 = v587:FindFirstChild("BuyHouse")
                    local _ = v593.Position
                    if v593 and v593:IsA("BasePart") then
                        vu580.CFrame = v593.CFrame + Vector3.new(0, - 6, 0)
                        task.wait(0.5)
                        local v594 = v593:FindFirstChild("ClickDetector")
                        if v594 then
                            fireclickdetector(v594)
                        end
                    end
                end
                task.wait(0.5)
                local v595 = v581:FindFirstChild(vu575.Name .. "House")
                if v595 then
                    task.wait(0.5)
                    local v596, v597, v598 = pairs(v595:GetDescendants())
                    local v599 = nil
                    while true do
                        local v600
                        v598, v600 = v596(v597, v598)
                        if v598 == nil then
                            break
                        end
                        if v600.Name == "Number" then
                            if v600:IsA("NumberValue") then
                                v599 = v600
                            end
                        end
                    end
                    task.wait(0.5)
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gettin1gHous1e"):FireServer("PickingCustomHouse", "049_House", v599.Value)
                end
                task.wait(0.5)
                local v601 = vu583
                if not vu583.FindFirstChild(v601, vu575.Name .. "Car") and Check() then
                    vu580.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                    task.wait(0.5)
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingCar", "SchoolBus")
                    task.wait(0.5)
                    local v602 = vu583
                    local v603 = vu583.FindFirstChild(v602, vu575.Name .. "Car")
                    task.wait(0.5)
                    local v604 = v603:FindFirstChild("Body")
                    if v604 then
                        v604 = v603.Body:FindFirstChild("VehicleSeat")
                    end
                    if v604 then
                        repeat
                            task.wait()
                            vu580.CFrame = v604.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                        until vu578.Sit
                    end
                end
                task.wait(0.5)
                local v605 = vu583
                local vu606 = vu583.FindFirstChild(v605, vu575.Name .. "Car")
                if vu606 then
                    if not vu578.Sit then
                        local v607 = vu606:FindFirstChild("Body")
                        if v607 then
                            v607 = vu606.Body:FindFirstChild("VehicleSeat")
                        end
                        if v607 then
                            repeat
                                task.wait()
                                vu580.CFrame = v607.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                            until vu578.Sit
                        end
                    end
                    local v608 = p574.Character
                    local v609 = v608:FindFirstChildOfClass("Humanoid")
                    local v610 = v608:FindFirstChild("HumanoidRootPart")
                    if v608 and (v609 and (v610 and not v609.Sit)) then
                        while not v609.Sit do
                            task.wait()
                            local function v614(p611, p612, p613)
                                vu606:SetPrimaryPartCFrame(CFrame.new(p611.Position) * p612 * p613)
                            end
                            v582 = v582 + 100
                            v614(v610, CFrame.new(0, 1.5, 0) + v609.MoveDirection * v610.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v582), 0, 0))
                            v614(v610, CFrame.new(0, - 1.5, 0) + v609.MoveDirection * v610.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v582), 0, 0))
                            v614(v610, CFrame.new(2.25, 1.5, - 2.25) + v609.MoveDirection * v610.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v582), 0, 0))
                            v614(v610, CFrame.new(- 2.25, - 1.5, 2.25) + v609.MoveDirection * v610.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v582), 0, 0))
                            v614(v610, CFrame.new(0, 1.5, 0) + v609.MoveDirection * v610.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v582), 0, 0))
                            v614(v610, CFrame.new(0, - 1.5, 0) + v609.MoveDirection * v610.Velocity.Magnitude / 1.1, CFrame.Angles(math.rad(v582), 0, 0))
                        end
                        task.wait(0.2)
                        local v615 = v581:FindFirstChild(vu575.Name .. "House")
                        vu606:SetPrimaryPartCFrame(CFrame.new(v615.HouseSpawnPosition.Position))
                        task.wait(0.2)
                        local v616 = Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(30, 30, 30), game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(30, 30, 30))
                        local v617 = workspace:FindPartsInRegion3(v616, game.Players.LocalPlayer.Character.HumanoidRootPart, math.huge)
                        local v618, v619, v620 = pairs(v617)
                        while true do
                            local v621
                            v620, v621 = v618(v619, v620)
                            if v620 == nil then
                                break
                            end
                            if v621.Name == "HumanoidRootPart" then
                                local v622 = {
                                    "BanPlayerFromHouse",
                                    game:GetService("Players"):FindFirstChild(v621.Parent.Name),
                                    v621.Parent
                                }
                                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v622))
                            end
                        end
                    end
                end
            end
            vu571:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
                "DeleteAllVehicles"
            }))
        end
        local v624, v625, v626 = pairs(v572:GetPlayers())
        while true do
            local v627
            v626, v627 = v624(v625, v626)
            if v626 == nil then
                break
            end
            if v627 ~= Player then
                v623(v627)
                task.wait(2)
            end
        end
    end
})
local vu628 = game:GetService("Players").LocalPlayer
local vu629 = workspace.CurrentCamera
local vu630 = false
local function vu687(p631)
    local vu632 = game:GetService("Players")
    local v633 = game:GetService("RunService")
    local _ = vu632.LocalPlayer.Character.HumanoidRootPart.Position
    local v634 = vu632.LocalPlayer.Character or vu632.LocalPlayer.CharacterAdded:Wait()
    v634:WaitForChild("HumanoidRootPart")
    local v635 = v634:GetPivot()
    v634:PivotTo(CFrame.new(1109.56591796875, 93.420654296875, - 1236.69580078125))
    task.wait(0.5)
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack({
        "PickingCar",
        "TowTruck"
    }))
    task.wait(0.5)
    v634:PivotTo(v635)
    local function v643(p636)
        local v637 = p636:lower()
        local v638 = vu632
        local v639, v640, v641 = ipairs(v638:GetPlayers())
        while true do
            local v642
            v641, v642 = v639(v640, v641)
            if v641 == nil then
                break
            end
            if v642 ~= vu632.LocalPlayer and v642.Name:lower():sub(1, # v637) == v637 then
                return v642
            end
        end
        return nil
    end
    local v644
    if p631 == "" then
        v644 = false
    else
        v644 = v643(p631)
    end
    if not v644 then
        local v645, v646, v647 = ipairs(vu632:GetPlayers())
        local v648 = {}
        while true do
            local v649, v650 = v645(v646, v647)
            if v649 == nil then
                break
            end
            v647 = v649
            if v650 ~= vu632.LocalPlayer then
                table.insert(v648, v650)
            end
        end
        v644 = # v648 > 0 and v648[math.random(1, # v648)]
        if not v644 then
            v644 = nil
        end
    end
    if v644 and v644.Character and v644.Character:FindFirstChild("HumanoidRootPart") then
        local vu651 = v644.Character.HumanoidRootPart
        workspace.CurrentCamera.CameraSubject = v644.Character:FindFirstChild("Humanoid")
        local v652 = workspace:FindFirstChild("Vehicles")
        if v652 then
            v652 = v652:FindFirstChild(vu632.LocalPlayer.Name .. "Car")
        end
        if v652 then
            v652 = v652:FindFirstChild("Body")
        end
        if v652 then
            v652 = v652:FindFirstChild("BodyPanels")
        end
        if v652 then
            v652 = v652:FindFirstChild("ModelMove2")
        end
        if v652 then
            local v653, v654, v655 = ipairs(v652:GetDescendants())
            local vu656 = {}
            while true do
                local v657, v658 = v653(v654, v655)
                if v657 == nil then
                    break
                end
                v655 = v657
                if v658:IsA("BasePart") and (v658.Size.Magnitude > 5 and (not v658.Anchored and v658.CanCollide)) then
                    v658.Anchored = false
                    v658.CanCollide = true
                    local v659, v660, v661 = ipairs(v658:GetChildren())
                    while true do
                        local v662
                        v661, v662 = v659(v660, v661)
                        if v661 == nil then
                            break
                        end
                        if v662:IsA("BodyVelocity") or v662:IsA("BodyAngularVelocity") then
                            v662:Destroy()
                        end
                    end
                    local v663 = Instance.new("BodyVelocity")
                    v663.MaxForce = Vector3.new(90000000000, 90000000000, 90000000000)
                    v663.P = 90000000000
                    v663.Velocity = Vector3.new()
                    v663.Parent = v658
                    local v664 = Instance.new("BodyAngularVelocity")
                    v664.MaxTorque = Vector3.new(900000000, 900000000, 900000000)
                    v664.AngularVelocity = Vector3.new()
                    v664.Parent = v658
                    table.insert(vu656, {
                        part = v658,
                        bv = v663,
                        bav = v664
                    })
                end
            end
            if # vu656 ~= 0 then
                local vu665 = 1.5
                local vu666 = 3750
                local vu667 = 10000
                local vu668 = 25000
                local function vu672(p669, p670, p671)
                    return math.sin(p669 * p670) * p671
                end
                v633.Heartbeat:Connect(function()
                    local v673 = tick()
                    local v674 = vu651.Position
                    local v675, v676, v677 = ipairs(vu656)
                    while true do
                        local v678
                        v677, v678 = v675(v676, v677)
                        if v677 == nil then
                            break
                        end
                        local v679 = v678.part
                        local v680 = v678.bv
                        local v681 = v678.bav
                        local v682 = v673 * vu666 + v677 * (2 * math.pi / # vu656)
                        local v683 = v674 + Vector3.new(math.cos(v682) * vu665 + vu672(v673 + v677, 15, 0.5), math.sin(v673 * vu666 * 0.8 + v677) * 3 + vu672(v673 * 10 + v677, 20, 0.3), math.sin(v682) * vu665 + vu672(v673 + v677 * 2, 12, 0.5))
                        local v684 = v683 - v679.Position
                        local v685 = v684.Magnitude
                        local v686 = math.clamp(v685 * 150 + vu672(v673 * 25 + v677, 40, 100), 0, vu667)
                        v680.Velocity = v684.Unit * v686
                        v681.AngularVelocity = Vector3.new(math.sin(v673 * 60 + v677) * vu668, math.cos(v673 * 90 + v677) * vu668, math.sin(v673 * 100 + v677) * vu668)
                        v679.CFrame = CFrame.new(v683) * CFrame.Angles(math.sin(v673 * 20 + v677) * math.pi / 3, math.cos(v673 * 15 + v677) * math.pi / 3, math.sin(v673 * 10 + v677) * math.pi / 3)
                    end
                end)
            else
                warn("Nenhuma parte v\195\161lida para fling.")
            end
        else
            warn("ModelMove2 n\195\163o encontrado.")
            return
        end
    else
        warn("Alvo inv\195\161lido")
        return
    end
end
local function vu712(p688)
    loadstring(base64.decode("bG9jYWwgU3RhcnRlckd1aSA9IGdhbWU6R2V0U2VydmljZSgiU3RhcnRlckd1aSIpCgpTdGFydGVyR3VpOlNldENvcmUoIlNlbmROb3RpZmljYXRpb24iLCB7CiAgICBUaXRsZSA9ICJDaGFvcyBIdWIgVjIgQmFsbCBGbGluZyIsCiAgICBUZXh0ID0gIkJ5IFZlbm9tIiwKICAgIER1cmF0aW9uID0gNQp9KQ=="))()
    local v689 = game:GetService("Players")
    local vu690 = v689.LocalPlayer
    local vu691 = vu690.Character or vu690.CharacterAdded:Wait()
    local v692 = vu691
    local v693 = vu691.WaitForChild(v692, "Humanoid")
    local v694 = vu691
    vu691.WaitForChild(v694, "HumanoidRootPart")
    local vu695 = vu690:WaitForChild("Backpack")
    local vu696 = workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")
    local function v697()
        if not vu695:FindFirstChild("SoccerBall") then
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
        end
        repeat
            task.wait()
        until vu695:FindFirstChild("SoccerBall")
        vu695.SoccerBall.Parent = vu691
        repeat
            task.wait()
        until vu696:FindFirstChild("Soccer" .. vu690.Name)
        vu691.SoccerBall.Parent = vu695
        return vu696:FindFirstChild("Soccer" .. vu690.Name)
    end
    local v698 = vu696
    local v699 = vu696.FindFirstChild(v698, "Soccer" .. vu690.Name) or v697()
    v699.CanCollide = false
    v699.Massless = true
    v699.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)
    if p688 == vu690 then
        return
    else
        local v700 = p688.Character
        if not (v700 and (v700:FindFirstChild("HumanoidRootPart") and v700:FindFirstChild("Humanoid"))) then
        end
        local v701 = v700.HumanoidRootPart
        local v702 = v700.Humanoid
        if v699:FindFirstChildWhichIsA("BodyVelocity") then
            v699:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
        end
        local v703 = Instance.new("BodyVelocity")
        v703.Name = "FlingPower"
        v703.Velocity = Vector3.new(900000000, 900000000, 900000000)
        v703.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        v703.P = math.huge
        v703.Parent = v699
        workspace.CurrentCamera.CameraSubject = v702
        os.time()
        while true do
            if true then
                if v701.Velocity.Magnitude <= 0 then
                    local v704, v705, v706 = pairs(v700:GetChildren())
                    while true do
                        local v707
                        v706, v707 = v704(v705, v706)
                        if v706 == nil then
                            break
                        end
                        if v707:IsA("BasePart") and (v707.CanCollide and not v707.Anchored) then
                            v699.CFrame = v707.CFrame
                            task.wait(0.00016666666666666666)
                        end
                    end
                else
                    local v708 = v701.Position.X + v701.Velocity.X / 1.5
                    local v709 = v701.Position.Y + v701.Velocity.Y / 1.5
                    local v710 = v701.Position.Z + v701.Velocity.Z / 1.5
                    local v711 = Vector3.new(v708, v709, v710)
                    v699.CFrame = CFrame.new(v711)
                    v699.Orientation = v699.Orientation + Vector3.new(45, 60, 30)
                end
            end
            task.wait(0.00016666666666666666)
            if v701.Velocity.Magnitude > 1000 or (v702.Health <= 0 or (not v700:IsDescendantOf(workspace) or p688.Parent ~= v689)) then
                workspace.CurrentCamera.CameraSubject = v693
            end
        end
    end
end
local vu713 = game:GetService("Players")
local vu714 = vu713.LocalPlayer
local function _(p715)
    local v716, v717, v718 = pairs(vu714.Backpack:GetChildren())
    while true do
        local v719
        v718, v719 = v716(v717, v718)
        if v718 == nil then
            break
        end
        if v719.Name == p715 then
            return true
        end
    end
    return false
end
local function _(p720)
    local v721 = vu714.Backpack:FindFirstChild(p720)
    if v721 then
        vu714.Character.Humanoid:EquipTool(v721)
    end
end
local function _(p722)
    local v723 = vu714.Character:FindFirstChild(p722)
    if v723 then
        v723.Parent = vu714.Backpack
    end
end
v357:AddSection({
    Name = "Canoe"
})
v357:AddButton({
    Name = "Kill Canoe",
    Callback = function()
        local v724 = getgenv().Target
        if v724 then
            local v725 = game.Players:FindFirstChild(v724)
            if v725 then
                local v726 = game.Players.LocalPlayer
                local vu727 = v726.Character or v726.CharacterAdded:Wait()
                local vu728 = vu727:WaitForChild("Humanoid")
                local vu729 = vu727:WaitForChild("HumanoidRootPart")
                if vu728.Sit then
                    vu728.Sit = false
                    task.wait(0.5)
                end
                vu729.CFrame = workspace.WorkspaceCom["001_CanoeCloneButton"].Button.CFrame
                task.wait(0.4)
                fireclickdetector(workspace.WorkspaceCom["001_CanoeCloneButton"].Button.ClickDetector, 0)
                task.wait(0.4)
                local vu730 = workspace.WorkspaceCom["001_CanoeStorage"].Canoe
                local vu731 = vu730:FindFirstChild("VehicleSeat")
                local v732
                if vu730.PrimaryPart then
                    v732 = 0
                else
                    vu730.PrimaryPart = vu731
                    v732 = 0
                end
                repeat
                    vu727:MoveTo(vu731.Position + Vector3.new(0, 3, 0))
                    task.wait(0.01)
                    vu731:Sit(vu728)
                    v732 = v732 + 1
                until vu728.Sit or 100 < v732
                if vu728.Sit then
                    local vu733 = v725.Character or v725.CharacterAdded:Wait()
                    local v734 = vu733
                    local vu735 = vu733.WaitForChild(v734, "HumanoidRootPart")
                    local v736 = vu733
                    local vu737 = vu733.WaitForChild(v736, "Humanoid")
                    local vu738 = Instance.new("BodyForce", vu730.PrimaryPart)
                    local vu739 = Instance.new("BodyAngularVelocity", vu730.PrimaryPart)
                    vu739.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    vu739.AngularVelocity = Vector3.new(5000, 25000, 5000)
                    vu739.P = 1000000000
                    local v740 = game:GetService("RunService")
                    local vu741 = true
                    local vu742 = 0
                    local vu743 = 5
                    local vu744 = 20
                    local vu745 = 10
                    local vu746 = 8
                    local vu747 = 50
                    local vu748 = nil
                    vu748 = v740.Heartbeat:Connect(function(p749)
                        if vu741 and (vu728.Sit and (vu733 and (vu737 and vu737.Health > 0))) then
                            vu742 = vu742 + p749
                            if vu737.SeatPart then
                                local v750 = CFrame.new(0, - 12000, 0)
                                for _ = 1, 30 do
                                    vu730:SetPrimaryPartCFrame(v750)
                                    vu727:SetPrimaryPartCFrame(v750)
                                    vu733:SetPrimaryPartCFrame(v750)
                                    task.wait()
                                end
                                if vu731 then
                                    vu731.Throttle = 0
                                    vu731.Steer = 0
                                end
                                if vu730:FindFirstChild("BodyVelocity") then
                                    vu730.BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                                end
                                if vu730:FindFirstChild("BodyAngularVelocity") then
                                    vu730.BodyAngularVelocity.AngularVelocity = Vector3.new(0, 0, 0)
                                end
                                if vu729.Position.Y < - 1000 then
                                    vu728.Sit = false
                                    task.wait(0.2)
                                    vu729.CFrame = CFrame.new(1118.81, 75.998, - 1138.61)
                                    task.wait(0.2)
                                    pcall(function()
                                        if vu730 and vu730.Parent then
                                            vu730:Destroy()
                                        end
                                    end)
                                end
                                vu741 = false
                                vu748:Disconnect()
                                vu739:Destroy()
                                vu738:Destroy()
                            else
                                local v751 = vu743 + math.sin(vu742 * 10) * (vu744 - vu743) / 2
                                local v752 = vu747 * vu742
                                local v753 = math.cos(v752) * v751
                                local v754 = math.sin(v752) * v751
                                local v755 = vu735.CFrame.LookVector * math.sin(vu742 * vu746) * vu745
                                local v756 = vu735.Position + Vector3.new(v753, 5, v754) + v755
                                vu730:SetPrimaryPartCFrame(CFrame.new(v756, vu735.Position))
                                vu738.Force = (vu735.Position - vu730.PrimaryPart.Position).Unit * 1000000 + Vector3.new(0, workspace.Gravity * vu730.PrimaryPart:GetMass(), 0)
                            end
                        else
                            vu748:Disconnect()
                            vu739:Destroy()
                            vu738:Destroy()
                            return
                        end
                    end)
                else
                    warn("Falhou em sentar no barco.")
                end
            else
                warn("Jogador n\195\163o encontrado.")
                return
            end
        else
            warn("Nenhum jogador definido.")
            return
        end
    end
})
v357:AddSection({
    Name = "Fling"
})
v357:AddButton({
    "Freeze Player [FE]",
    function()
        if vu358 then
            getgenv().FreezeConnection = vu363.Stepped:Connect(function()
                local v757 = vu713
                local v758, v759, v760 = ipairs(v757:GetPlayers())
                while true do
                    local v761
                    v760, v761 = v758(v759, v760)
                    if v760 == nil then
                        break
                    end
                    if v761 ~= vu628 and (v761.Name:find(getgenv().Target) and v761.Character and v761.Character:FindFirstChild("HumanoidRootPart")) then
                        local v762 = Vector3.new(math.random(100000000000000, 1000000000000000), math.random(100000000000000, 1000000000000000), math.random(100000000000000, 1000000000000000))
                        local v763 = {
                            v761.Character.HumanoidRootPart,
                            v761.Character.HumanoidRootPart,
                            v762,
                            v761.Character.HumanoidRootPart.Position,
                            nil,
                            nil,
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
                        vu358:FireServer(unpack(v763))
                    end
                end
            end)
        end
    end
})
v357:AddButton({
    "Unreeze Player",
    function()
        if getgenv().FreezeConnection then
            local _ = pcall
        end
    end
})
local vu764 = true
v357:AddToggle({
    Name = "Fling - Boat",
    Default = false,
    Callback = function(p765)
        if vu764 then
            vu764 = false
        elseif p765 then
            if not (vu365 and game.Players:FindFirstChild(vu365)) then
                warn("Nenhum jogador selecionado ou n\195\163o existe")
                return
            end
            local vu766 = game.Players.LocalPlayer
            local vu767 = vu766.Character
            local v768
            if vu767 then
                v768 = vu767:FindFirstChildOfClass("Humanoid")
            else
                v768 = vu767
            end
            if vu767 then
                vu767 = vu767:FindFirstChild("HumanoidRootPart")
            end
            local vu769 = game.Workspace:FindFirstChild("Vehicles")
            if not (v768 and vu767) then
                warn("Humanoid ou RootPart inv\195\161lido")
                return
            end
            local vu770 = vu769:FindFirstChild(vu766.Name .. "Car") or (function()
                vu767.CFrame = CFrame.new(1754, - 2, 58)
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingBoat", "MilitaryBoatFree")
                task.wait(1)
                return vu769:FindFirstChild(vu766.Name .. "Car")
            end)()
            if not vu770 then
                warn("Falha ao spawnar o barco")
                return
            end
            local v771 = vu770:FindFirstChild("Body")
            if v771 then
                v771 = vu770.Body:FindFirstChild("VehicleSeat")
            end
            if not v771 then
                warn("Assento n\195\163o encontrado")
                return
            end
            repeat
                task.wait(0.1)
                vu767.CFrame = v771.CFrame * CFrame.new(0, 1, 0)
            until v768.SeatPart == v771
            print("Barco spawnado!")
            local v772 = game.Players:FindFirstChild(vu365)
            if not (v772 and v772.Character) then
                warn("Jogador n\195\163o encontrado")
                return
            end
            local v773 = v772.Character
            local v774 = v773:FindFirstChildOfClass("Humanoid")
            local vu775 = v773:FindFirstChild("HumanoidRootPart")
            if not (vu775 and v774) then
                warn("Humanoid ou RootPart do alvo n\195\163o encontrado")
                return
            end
            local vu776 = Instance.new("BodyAngularVelocity")
            vu776.Name = "Spinning"
            vu776.Parent = vu770.PrimaryPart
            vu776.MaxTorque = Vector3.new(0, math.huge, 0)
            vu776.AngularVelocity = Vector3.new(0, 369, 0)
            print("Fling ativo!")
            local function vu779(p777, p778)
                if vu770 and vu770.PrimaryPart then
                    vu770:SetPrimaryPartCFrame(CFrame.new(p777.Position + p778))
                end
            end
            task.spawn(function()
                while vu770 and (vu770.Parent and (vu775 and vu775.Parent)) do
                    task.wait(0.01)
                    vu779(vu775, Vector3.new(0, 1, 0))
                    vu779(vu775, Vector3.new(0, - 2.25, 5))
                    vu779(vu775, Vector3.new(0, 2.25, 0.25))
                    vu779(vu775, Vector3.new(- 2.25, - 1.5, 2.25))
                    vu779(vu775, Vector3.new(0, 1.5, 0))
                    vu779(vu775, Vector3.new(0, - 1.5, 0))
                    if vu770 and vu770.PrimaryPart then
                        local v780 = CFrame.Angles(math.rad(math.random(- 369, 369)), math.rad(math.random(- 369, 369)), math.rad(math.random(- 369, 369)))
                        vu770:SetPrimaryPartCFrame(CFrame.new(vu775.Position + Vector3.new(0, 1.5, 0)) * v780)
                    end
                end
                if vu776 and vu776.Parent then
                    vu776:Destroy()
                    print("Fling desativado")
                end
            end)
        else
            local v781 = game.Players.LocalPlayer
            local v782 = v781.Character
            local v783
            if v782 then
                v783 = v782:FindFirstChild("HumanoidRootPart")
            else
                v783 = v782
            end
            if v782 then
                v782 = v782:FindFirstChildOfClass("Humanoid")
            end
            local v784 = game.Workspace:FindFirstChild("Vehicles")
            if not (v783 and v782) then
                warn("Nenhum RootPart ou Humanoid encontrado!")
                return
            end
            v782.PlatformStand = true
            print("Jogador paralisado para reduzir efeitos do spin.")
            local v785, v786, v787 = pairs(v783:GetChildren())
            while true do
                local v788
                v787, v788 = v785(v786, v787)
                if v787 == nil then
                    break
                end
                if v788:IsA("BodyAngularVelocity") or v788:IsA("BodyVelocity") then
                    v788:Destroy()
                end
            end
            print("Spin e for\195\167as removidas do jogador.")
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("DeleteAllVehicles")
            task.wait(0.5)
            if v784 then
                v784 = v784:FindFirstChild(v781.Name .. "Car")
            end
            if v784 and v784.PrimaryPart then
                local v789, v790, v791 = pairs(v784.PrimaryPart:GetChildren())
                while true do
                    local v792
                    v791, v792 = v789(v790, v791)
                    if v791 == nil then
                        break
                    end
                    if v792:IsA("BodyAngularVelocity") or v792:IsA("BodyVelocity") then
                        v792:Destroy()
                    end
                end
                print("Spin removido do barco.")
            end
            task.wait(1)
            local v793 = Vector3.new(0, 1000, 0)
            local v794 = Instance.new("BodyPosition", v783)
            v794.Position = v793
            v794.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            local v795 = Instance.new("BodyGyro", v783)
            v795.CFrame = v783.CFrame
            v795.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            print("Jogador est\195\161 preso na coordenada segura.")
            task.wait(3)
            v794:Destroy()
            v795:Destroy()
            v782.PlatformStand = false
            print("Jogador liberado, seguro na posi\195\167\195\163o.")
        end
    end
})
print("Fling - Boat button created")
local vu796 = true
local vu797 = true
v357:AddToggle({
    Name = "Fling Ball",
    Default = false,
    Callback = function(p798)
        local v799 = game:GetService("Players").LocalPlayer
        local _ = v799.Character or pl.CharacterAdded:Wait()
        local _ = v799.Backpack
        workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")
        if vu797 then
            vu797 = false
        elseif p798 then
            vu712(game:GetService("Players")[vu365])
        end
    end
})
v357:AddToggle({
    Name = "Fling Truck",
    Default = false,
    Callback = function(p800)
        if vu796 then
            vu796 = false
        elseif p800 then
            vu687(vu365)
        else
            local v801 = game:GetService("Players").LocalPlayer.Character
            local v802 = v801:GetPivot()
            v801:PivotTo(CFrame.new(1109.56591796875, 93.420654296875, - 1236.69580078125))
            task.wait(0.5)
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                "PickingCar",
                "TowTruck"
            }))
            task.wait(0.5)
            v801:PivotTo(v802)
        end
    end
})
v357:AddButton({
    Name = "No tool fling",
    Description = "By Shelby",
    Callback = function()
        local vu803 = game:GetService("Players")
        local vu804 = game:GetService("ReplicatedStorage")
        local vu805 = vu803.LocalPlayer
        local v806 = vu805
        vu805.GetMouse(v806)
        local function vu808()
            local v807 = vu804.RE:FindFirstChild("1Clea1rTool1s")
            if v807 then
                v807:FireServer("ClearAllTools")
            end
        end
        local function vu810()
            local v809 = vu804.RE:FindFirstChild("1Too1l")
            if v809 then
                v809:InvokeServer("PickingTools", "Assault")
            end
        end
        local function vu811()
            return vu805.Backpack:FindFirstChild("Assault") ~= nil
        end
        local function vu817(p812)
            if p812 then
                local v813 = vu803:GetPlayerFromCharacter((p812:FindFirstAncestorOfClass("Model")))
                if v813 and v813 ~= vu805 then
                    local v814 = vu805.Backpack:FindFirstChild("Assault")
                    if v814 then
                        local v815 = v814:FindFirstChild("GunScript_Local")
                        if v815 then
                            local v816 = vu804.RE:FindFirstChild("1Gu1n")
                            if v816 then
                                v816:FireServer(p812, p812, Vector3.new(100000000000000, 100000000000000, 100000000000000), p812.Position, v815:FindFirstChild("MuzzleEffect"), v815:FindFirstChild("HitEffect"), 0, 0, {
                                    false
                                }, {
                                    25,
                                    Vector3.new(100, 100, 100),
                                    BrickColor.new(29),
                                    0.25,
                                    Enum.Material.SmoothPlastic,
                                    0.25
                                }, true, false)
                            end
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
        local vu818 = nil
        local function vu819()
            if not vu818 then
                _G.selectedTarget = getgenv().Target
                vu818 = vu817(target)
            end
        end
        local function vu820()
            if vu818 then
                vu818:Disconnect()
                vu818 = nil
            end
        end
        (function()
            if vu811() then
                vu808()
                task.wait(0.5)
            end
            vu810()
            task.wait(0.5)
            vu819()
        end)()
        vu805.Backpack.ChildAdded:Connect(function(p821)
            if p821.Name == "Assault" then
                vu820()
            end
        end)
        vu805.Character.ChildAdded:Connect(function(p822)
            if p822:IsA("Tool") and p822.Name == "Assault" then
                vu820()
            end
        end)
    end
})
local vu823 = true
v357:AddToggle({
    Name = "Fling Canoe",
    Description = "By Shelby",
    Default = false,
    Callback = function(p824)
        if vu823 then
            vu823 = false
        elseif p824 then
            local v825 = getgenv().Target
            if not v825 then
                warn("Nenhum jogador definido.")
                return
            end
            local v826 = game.Players:FindFirstChild(v825)
            if not v826 then
                warn("Jogador n\195\163o encontrado.")
                return
            end
            local v827 = game.Players.LocalPlayer
            local v828 = v827.Character or v827.CharacterAdded:Wait()
            local vu829 = v828:WaitForChild("Humanoid")
            local v830 = v828:WaitForChild("HumanoidRootPart")
            if vu829.Sit then
                vu829.Sit = false
                task.wait(0.5)
            end
            v830.CFrame = workspace.WorkspaceCom["001_CanoeCloneButton"].Button.CFrame
            task.wait(0.4)
            fireclickdetector(workspace.WorkspaceCom["001_CanoeCloneButton"].Button.ClickDetector, 0)
            task.wait(0.4)
            local vu831 = workspace.WorkspaceCom["001_CanoeStorage"].Canoe
            local v832 = vu831:FindFirstChild("VehicleSeat")
            local v833
            if vu831.PrimaryPart then
                v833 = 0
            else
                vu831.PrimaryPart = v832
                v833 = 0
            end
            repeat
                v828:MoveTo(v832.Position + Vector3.new(0, 3, 0))
                task.wait(0.01)
                v832:Sit(vu829)
                v833 = v833 + 1
            until vu829.Sit or 100 < v833
            if not vu829.Sit then
                warn("Falhou em sentar no barco.")
                return
            end
            local vu834 = v826.Character or v826.CharacterAdded:Wait()
            local v835 = vu834
            local vu836 = vu834.WaitForChild(v835, "HumanoidRootPart")
            local v837 = vu834
            local vu838 = vu834.WaitForChild(v837, "Humanoid")
            local vu839 = Instance.new("BodyForce", vu831.PrimaryPart)
            local vu840 = Instance.new("BodyAngularVelocity", vu831.PrimaryPart)
            vu840.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            vu840.AngularVelocity = Vector3.new(5000, 25000, 5000)
            vu840.P = 1000000000
            local v841 = game:GetService("RunService")
            local vu842 = true
            local vu843 = 0
            local vu844 = 5
            local vu845 = 20
            local vu846 = 35
            local vu847 = 35
            local vu848 = 50
            local vu849 = nil
            vu849 = v841.Heartbeat:Connect(function(p850)
                if vu842 and (vu829.Sit and (vu834 and (vu838 and vu838.Health > 0))) then
                    vu843 = vu843 + p850
                    local v851 = vu844 + math.sin(vu843 * 10) * (vu845 - vu844) / 2
                    local v852 = vu848 * vu843
                    local v853 = math.cos(v852) * v851
                    local v854 = math.sin(v852) * v851
                    local v855 = vu836.CFrame.LookVector * math.sin(vu843 * vu847) * vu846
                    local v856 = vu836.Position + Vector3.new(v853, 5, v854) + v855
                    vu831:SetPrimaryPartCFrame(CFrame.new(v856, vu836.Position))
                    vu839.Force = (vu836.Position - vu831.PrimaryPart.Position).Unit * 1000000 + Vector3.new(0, workspace.Gravity * vu831.PrimaryPart:GetMass(), 0)
                else
                    vu849:Disconnect()
                    vu840:Destroy()
                    vu839:Destroy()
                end
            end)
        else
            getgenv().FlingAtivo = false
            local v857 = game.Players.LocalPlayer
            local v858 = v857.Character or v857.CharacterAdded:Wait()
            local v859 = v858:FindFirstChild("Humanoid")
            local v860 = v858:FindFirstChild("HumanoidRootPart")
            if not (v859 and v860) then
                return
            end
            if v859.Sit then
                v859.Sit = false
                task.wait(0.3)
            end
            local v861 = workspace:FindFirstChild("WorkspaceCom")
            if v861 then
                local vu862 = v861:FindFirstChild("001_CanoeStorage")
                if vu862 and vu862:FindFirstChild("Canoe") then
                    pcall(function()
                        vu862.Canoe:Destroy()
                    end)
                end
            end
            local v863 = getgenv().RetornoPos or Vector3.new(1118.81, 75.998, - 1138.61)
            v860.CFrame = CFrame.new(v863)
            v859:ChangeState(Enum.HumanoidStateType.Physics)
            v860.Anchored = true
            v860.CFrame = CFrame.new(v863)
            v860.AssemblyLinearVelocity = Vector3.zero
            v860.AssemblyAngularVelocity = Vector3.zero
            print("Jogador teleportado para a posi\195\167\195\163o segura.");
            (function()
                local v864 = game.Players:FindFirstChild(getgenv().Target)
                if v864 and v864.Character then
                    local v865, v866, v867 = ipairs(v864.Character:GetDescendants())
                    while true do
                        local v868
                        v867, v868 = v865(v866, v867)
                        if v867 == nil then
                            break
                        end
                        if v868:IsA("BodyVelocity") or v868:IsA("Attachment") then
                            v868:Destroy()
                        end
                    end
                end
            end)()
            task.wait(2)
            v860.Anchored = false
            v859:ChangeState(Enum.HumanoidStateType.GettingUp)
            print("Jogador liberado com seguran\195\167a.")
        end
    end
})
v357:AddToggle({
    Name = "Couch Fling",
    Default = false,
    Callback = function(p869)
        vu630 = p869
        if p869 and vu365 then
            local vu870 = vu713:FindFirstChild(vu365)
            if not (vu870 and vu870.Character) then
                return
            end
            local vu871 = vu628.Character
            if vu871 then
                vu871 = vu628.Character:FindFirstChild("HumanoidRootPart")
            end
            local v872 = vu870.Character
            if v872 then
                v872 = vu870.Character:FindFirstChild("HumanoidRootPart")
            end
            if not (vu871 and v872) then
                return
            end
            local vu873 = vu628.Character
            local vu874 = vu873:FindFirstChildOfClass("Humanoid")
            local vu875 = vu871.CFrame
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack({
                "ClearAllTools"
            }))
            task.wait(0.2)
            local vu876 = {
                "PickingTools",
                "Couch"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(vu876))
            task.wait(0.3)
            local v877 = vu628.Backpack:FindFirstChild("Couch")
            if v877 then
                v877.Parent = vu873
            end
            task.wait(0.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
            task.wait(0.25)
            workspace.FallenPartsDestroyHeight = 0 / 0
            local vu878 = Instance.new("BodyVelocity")
            vu878.Name = "FlingForce"
            vu878.Velocity = Vector3.new(900000000, 900000000, 900000000)
            vu878.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
            vu878.Parent = vu871
            vu874:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            vu874.PlatformStand = false
            vu629.CameraSubject = vu870.Character:FindFirstChild("Head") or (v872 or vu874)
            task.spawn(function()
                local v879 = {
                    vu871
                }
                local v880 = 0
                while vu630 and (vu870 and vu870.Character) and (vu870.Character:FindFirstChildOfClass("Humanoid") and not vu870.Character:FindFirstChildOfClass("Humanoid").Sit) do
                    v880 = v880 + 50
                    local v881, v882, v883 = ipairs(v879)
                    while true do
                        local v884
                        v883, v884 = v881(v882, v883)
                        if v883 == nil then
                            break
                        end
                        local v885 = vu870.Character.HumanoidRootPart.Position.X
                        local v886 = vu870.Character.HumanoidRootPart.Position.Y
                        local v887 = vu870.Character.HumanoidRootPart.Position.Z
                        local v888 = v885 + vu870.Character.HumanoidRootPart.Velocity.X / 1.5
                        local v889 = v886 + vu870.Character.HumanoidRootPart.Velocity.Y / 1.5
                        local v890 = v887 + vu870.Character.HumanoidRootPart.Velocity.Z / 1.5
                        vu871.CFrame = CFrame.new(v888, v889, v890) * CFrame.Angles(math.rad(v880), 0, 0)
                    end
                    vu871.Velocity = Vector3.new(900000000, 900000000, 900000000)
                    vu871.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                    task.wait()
                end
                vu630 = false
                vu878:Destroy()
                vu874:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                vu874.PlatformStand = false
                vu871.CFrame = vu875
                vu629.CameraSubject = vu874
                local v891 = vu873
                local v892, v893, v894 = pairs(v891:GetDescendants())
                while true do
                    local v895
                    v894, v895 = v892(v893, v894)
                    if v894 == nil then
                        break
                    end
                    if v895:IsA("BasePart") then
                        v895.Velocity = Vector3.zero
                        v895.RotVelocity = Vector3.zero
                    end
                end
                vu874:UnequipTools()
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(vu876))
            end)
        end
    end
})
v357:AddToggle({
    Name = "Distance Fling",
    Default = false,
    Callback = function(p896)
        vu630 = p896
        if p896 and vu365 then
            local vu897 = vu713:FindFirstChild(vu365)
            if not (vu897 and vu897.Character) then
                return
            end
            local vu898 = vu897.Character
            if vu898 then
                vu898 = vu897.Character:FindFirstChild("HumanoidRootPart")
            end
            if not (handle and vu898) then
                return
            end
            local vu899 = vu628.Character
            local vu900 = vu899:FindFirstChildOfClass("Humanoid")
            local vu901 = handle.CFrame
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack({
                "ClearAllTools"
            }))
            task.wait(0.2)
            local vu902 = {
                "PickingTools",
                "Couch"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(vu902))
            task.wait(0.3)
            local v903 = vu628.Backpack:FindFirstChild("Couch")
            if v903 then
                v903.Parent = vu899
            end
            local vu904 = v903:FindFirstChild("Handle")
            if not vu904 and v903 then
                vu904 = v903:WaitForChild("Handle")
            end
            task.wait(0.2)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
            task.wait(0.25)
            workspace.FallenPartsDestroyHeight = 0 / 0
            local vu905 = Instance.new("BodyVelocity")
            vu905.Name = "FlingForce"
            vu905.Velocity = Vector3.new(900000000, 900000000, 900000000)
            vu905.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
            vu905.Parent = vu904
            vu900:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            vu900.PlatformStand = false
            vu629.CameraSubject = vu897.Character:FindFirstChild("Head") or (vu898 or vu900)
            task.spawn(function()
                local v906 = 0
                while vu630 and (vu897 and vu897.Character) and (vu897.Character:FindFirstChildOfClass("Humanoid") and not vu897.Character:FindFirstChildOfClass("Humanoid").Sit) do
                    v906 = v906 + 50
                    local v907 = vu898.Position.X + vu898.Velocity.X / 1.5
                    local v908 = vu898.Position.Y + vu898.Velocity.Y / 1.5
                    local v909 = vu898.Position.Z + vu898.Velocity.Z / 1.5
                    vu904.CFrame = CFrame.new(v907, v908, v909) * CFrame.Angles(math.rad(v906), 0, 0)
                    vu904.Velocity = Vector3.new(900000000, 900000000, 900000000)
                    vu904.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                    task.wait()
                end
                vu630 = false
                vu905:Destroy()
                vu900:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                vu900.PlatformStand = false
                vu904.CFrame = vu901
                vu629.CameraSubject = vu900
                local v910 = vu899
                local v911, v912, v913 = pairs(v910:GetDescendants())
                while true do
                    local v914
                    v913, v914 = v911(v912, v913)
                    if v913 == nil then
                        break
                    end
                    if v914:IsA("BasePart") then
                        v914.Velocity = Vector3.zero
                        v914.RotVelocity = Vector3.zero
                    end
                end
                vu900:UnequipTools()
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(vu902))
            end)
        end
    end
})
v357:AddSection({
    Name = "Click Kill Methods"
})
v357:AddButton({
    Name = "Click Fling Portas [Beta]",
    Description = "Para Usar, Recomendo chegar perto de outras portas, apos ela ir at\195\169 voc\195\170, clique no jogador que deseja flingar",
    Callback = function()
        local vu915 = game:GetService("Players")
        local vu916 = game:GetService("Workspace")
        local vu917 = game:GetService("RunService")
        local v918 = game:GetService("UserInputService")
        local vu919 = vu915.LocalPlayer
        local vu920 = (vu919.Character or vu919.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
        local vu921 = Instance.new("Part")
        vu921.Size = Vector3.new(100000, 100000, 100000)
        vu921.Transparency = 1
        vu921.Anchored = true
        vu921.CanCollide = false
        vu921.Name = "BlackHoleTarget"
        vu921.Parent = vu916
        local vu922 = Instance.new("Attachment")
        vu922.Name = "Luscaa_BlackHoleAttachment"
        vu922.Parent = vu921
        vu917.Heartbeat:Connect(function()
            vu921.CFrame = vu920.CFrame
        end)
        local vu923 = {}
        local function vu932(p924)
            if p924:IsA("BasePart") and (not p924.Anchored and string.find(p924.Name, "Door")) then
                if not p924:FindFirstChild("Luscaa_Attached") then
                    p924.CanCollide = false
                    local v925, v926, v927 = ipairs(p924:GetChildren())
                    while true do
                        local v928
                        v927, v928 = v925(v926, v927)
                        if v927 == nil then
                            break
                        end
                        if v928:IsA("AlignPosition") or (v928:IsA("Torque") or v928:IsA("Attachment")) then
                            v928:Destroy()
                        end
                    end
                    Instance.new("BoolValue", p924).Name = "Luscaa_Attached"
                    local v929 = Instance.new("Attachment", p924)
                    local v930 = Instance.new("AlignPosition", p924)
                    v930.Attachment0 = v929
                    v930.Attachment1 = vu922
                    v930.MaxForce = 1e20
                    v930.MaxVelocity = math.huge
                    v930.Responsiveness = 99999
                    local v931 = Instance.new("Torque", p924)
                    v931.Attachment0 = v929
                    v931.RelativeTo = Enum.ActuatorRelativeTo.World
                    v931.Torque = Vector3.new(math.random(- 1000000, 1000000) * 10000, math.random(- 1000000, 1000000) * 10000, math.random(- 1000000, 1000000) * 10000)
                    table.insert(vu923, {
                        Part = p924,
                        Align = v930
                    })
                end
            else
                return
            end
        end
        local v933, v934, v935 = ipairs(vu916:GetDescendants())
        local vu936 = vu922
        local vu937 = vu923
        while true do
            local v938
            v935, v938 = v933(v934, v935)
            if v935 == nil then
                break
            end
            if v938:IsA("BasePart") and string.find(v938.Name, "Door") then
                vu932(v938)
            end
        end
        vu916.DescendantAdded:Connect(function(p939)
            if p939:IsA("BasePart") and string.find(p939.Name, "Door") then
                vu932(p939)
            end
        end)
        local function vu953(p940)
            local v941 = p940.Character
            if v941 then
                local v942 = v941:FindFirstChild("HumanoidRootPart")
                if v942 then
                    local v943 = v942:FindFirstChild("ChaosHub_TargetAttachment")
                    if not v943 then
                        v943 = Instance.new("Attachment", v942)
                        v943.Name = "ChaosHub_TargetAttachment"
                    end
                    local v944, v945, v946 = ipairs(vu937)
                    while true do
                        local v947
                        v946, v947 = v944(v945, v946)
                        if v946 == nil then
                            break
                        end
                        if v947.Align then
                            v947.Align.Attachment1 = v943
                        end
                    end
                    local v948 = tick()
                    while tick() - v948 < 5 and v942.Velocity.Magnitude < 20 do
                        vu917.Heartbeat:Wait()
                    end
                    local v949, v950, v951 = ipairs(vu937)
                    while true do
                        local v952
                        v951, v952 = v949(v950, v951)
                        if v951 == nil then
                            break
                        end
                        if v952.Align then
                            v952.Align.Attachment1 = vu936
                        end
                    end
                end
            else
                return
            end
        end
        v918.TouchTap:Connect(function(p954, p955)
            if not p955 then
                local v956 = p954[1]
                local v957 = vu916.CurrentCamera:ScreenPointToRay(v956.X, v956.Y)
                local v958 = vu916:Raycast(v957.Origin, v957.Direction * 1000)
                if v958 and v958.Instance then
                    local v959 = vu915:GetPlayerFromCharacter(v958.Instance:FindFirstAncestorOfClass("Model"))
                    if v959 and v959 ~= vu919 then
                        vu953(v959)
                    end
                end
            end
        end)
    end
})
v357:AddButton({
    Name = "Click Fling Couch (Tool)",
    Callback = function()
        local vu960 = game:GetService("Players")
        local vu961 = game:GetService("ReplicatedStorage")
        local v962 = game:GetService("UserInputService")
        local vu963 = vu960.LocalPlayer
        local vu964 = workspace.CurrentCamera
        local vu965 = true
        local vu966 = false
        local v967 = "Click Fling Couch"
        local v968 = vu963:WaitForChild("Backpack")
        if not (v968:FindFirstChild(v967) or vu963.Character and vu963.Character:FindFirstChild(v967)) then
            local v969 = Instance.new("Tool")
            v969.Name = v967
            v969.RequiresHandle = false
            v969.CanBeDropped = false
            v969.Equipped:Connect(function()
                vu966 = true
            end)
            v969.Unequipped:Connect(function()
                vu966 = false
            end)
            v969.Parent = v968
        end
        local function vu992(pu970)
            if vu966 then
                if pu970 and (pu970.Character and pu970 ~= vu963) then
                    local vu971 = true
                    local vu972 = vu963.Character
                    if vu972 then
                        vu972 = vu963.Character:FindFirstChild("HumanoidRootPart")
                    end
                    local v973 = pu970.Character
                    if v973 then
                        v973 = pu970.Character:FindFirstChild("HumanoidRootPart")
                    end
                    if vu972 and v973 then
                        local vu974 = vu963.Character
                        local vu975 = vu974:FindFirstChildOfClass("Humanoid")
                        local vu976 = vu972.CFrame
                        vu961:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                        task.wait(0.2)
                        vu961.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                        task.wait(0.3)
                        local v977 = vu963.Backpack:FindFirstChild("Couch")
                        if v977 then
                            v977.Parent = vu974
                        end
                        task.wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
                        task.wait(0.25)
                        workspace.FallenPartsDestroyHeight = 0 / 0
                        local vu978 = Instance.new("BodyVelocity")
                        vu978.Name = "ForcaJogada"
                        vu978.Velocity = Vector3.new(900000000, 900000000, 900000000)
                        vu978.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        vu978.Parent = vu972
                        vu975:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                        vu975.PlatformStand = false
                        vu964.CameraSubject = pu970.Character:FindFirstChild("Head") or (v973 or vu975)
                        task.spawn(function()
                            local v979 = {
                                vu972
                            }
                            local v980 = 0
                            while vu971 and (pu970 and pu970.Character) and (pu970.Character:FindFirstChildOfClass("Humanoid") and not pu970.Character:FindFirstChildOfClass("Humanoid").Sit) do
                                v980 = v980 + 50
                                local v981, v982, v983 = ipairs(v979)
                                while true do
                                    local v984
                                    v983, v984 = v981(v982, v983)
                                    if v983 == nil then
                                        break
                                    end
                                    local v985 = pu970.Character.HumanoidRootPart
                                    local v986 = v985.Position + v985.Velocity / 1.5
                                    vu972.CFrame = CFrame.new(v986) * CFrame.Angles(math.rad(v980), 0, 0)
                                end
                                vu972.Velocity = Vector3.new(900000000, 900000000, 900000000)
                                vu972.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                                task.wait()
                            end
                            vu971 = false
                            vu978:Destroy()
                            vu975:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                            vu975.PlatformStand = false
                            vu972.CFrame = vu976
                            vu964.CameraSubject = vu975
                            local v987 = vu974
                            local v988, v989, v990 = pairs(v987:GetDescendants())
                            while true do
                                local v991
                                v990, v991 = v988(v989, v990)
                                if v990 == nil then
                                    break
                                end
                                if v991:IsA("BasePart") then
                                    v991.Velocity = Vector3.zero
                                    v991.RotVelocity = Vector3.zero
                                end
                            end
                            vu975:UnequipTools()
                            vu961.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                        end)
                        while vu971 do
                            task.wait()
                        end
                    end
                else
                    return
                end
            else
                return
            end
        end
        v962.TouchTap:Connect(function(p993, p994)
            if not p994 and (vu965 and vu966) then
                local v995 = p993[1]
                local v996 = vu964:ScreenPointToRay(v995.X, v995.Y)
                local v997 = workspace:Raycast(v996.Origin, v996.Direction * 1000)
                if v997 and v997.Instance then
                    local v998 = vu960:GetPlayerFromCharacter(v997.Instance:FindFirstAncestorOfClass("Model"))
                    if v998 and v998 ~= vu963 then
                        vu965 = false
                        vu992(v998)
                        task.delay(2, function()
                            vu965 = true
                        end)
                    end
                end
            end
        end)
    end
})
v357:AddButton({
    Name = "Click Fling Ball (Tool)",
    Callback = function()
        local vu999 = game:GetService("Players")
        game:GetService("ReplicatedStorage")
        local vu1000 = game:GetService("Workspace")
        local v1001 = game:GetService("UserInputService")
        local vu1002 = vu1000.CurrentCamera
        local vu1003 = vu999.LocalPlayer
        local v1004 = "Click Fling Ball"
        local vu1005 = false
        local v1006 = vu1003:WaitForChild("Backpack")
        if not v1006:FindFirstChild(v1004) then
            local v1007 = Instance.new("Tool")
            v1007.Name = v1004
            v1007.RequiresHandle = false
            v1007.CanBeDropped = false
            v1007.Equipped:Connect(function()
                vu1005 = true
            end)
            v1007.Unequipped:Connect(function()
                vu1005 = false
            end)
            v1007.Parent = v1006
        end
        local function vu1030(p1008)
            loadstring(base64.decode("bG9jYWwgU3RhcnRlckd1aSA9IGdhbWU6R2V0U2VydmljZSgiU3RhcnRlckd1aSIpCgpTdGFydGVyR3VpOlNldENvcmUoIlNlbmROb3RpZmljYXRpb24iLCB7CiAgICBUaXRsZSA9ICJDaGFvcyBIdWIgVjIgQmFsbCBGbGluZyIsCiAgICBUZXh0ID0gIkJ5IFZlbm9tIiwKICAgIER1cmF0aW9uID0gNQp9KQ=="))()
            local v1009 = game:GetService("Players")
            local vu1010 = v1009.LocalPlayer
            local vu1011 = vu1010.Character or vu1010.CharacterAdded:Wait()
            local v1012 = vu1011
            local v1013 = vu1011.WaitForChild(v1012, "Humanoid")
            local v1014 = vu1011
            vu1011.WaitForChild(v1014, "HumanoidRootPart")
            local vu1015 = vu1010:WaitForChild("Backpack")
            local vu1016 = workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")
            local function v1018()
                if not (vu1015:FindFirstChild("SoccerBall") or vu1011:FindFirstChild("SoccerBall")) then
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
                end
                repeat
                    task.wait()
                until vu1015:FindFirstChild("SoccerBall") or vu1011:FindFirstChild("SoccerBall")
                local v1017 = vu1015:FindFirstChild("SoccerBall")
                if v1017 then
                    v1017.Parent = vu1011
                end
                repeat
                    task.wait()
                until vu1016:FindFirstChild("Soccer" .. vu1010.Name)
                vu1011.SoccerBall.Parent = vu1015
                return vu1016:FindFirstChild("Soccer" .. vu1010.Name)
            end
            local v1019 = vu1016
            local v1020 = vu1016.FindFirstChild(v1019, "Soccer" .. vu1010.Name) or v1018()
            v1020.CanCollide = false
            v1020.Massless = true
            v1020.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)
            if p1008 == vu1010 then
                return
            else
                local v1021 = p1008.Character
                if not (v1021 and (v1021:FindFirstChild("HumanoidRootPart") and v1021:FindFirstChild("Humanoid"))) then
                end
                local v1022 = v1021.HumanoidRootPart
                local v1023 = v1021.Humanoid
                if v1020:FindFirstChildWhichIsA("BodyVelocity") then
                    v1020:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
                end
                local v1024 = Instance.new("BodyVelocity")
                v1024.Name = "FlingPower"
                v1024.Velocity = Vector3.new(900000000, 900000000, 900000000)
                v1024.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                v1024.P = math.huge
                v1024.Parent = v1020
                workspace.CurrentCamera.CameraSubject = v1023
                while true do
                    if true then
                        if v1022.Velocity.Magnitude <= 0 then
                            local v1025, v1026, v1027 = pairs(v1021:GetChildren())
                            while true do
                                local v1028
                                v1027, v1028 = v1025(v1026, v1027)
                                if v1027 == nil then
                                    break
                                end
                                if v1028:IsA("BasePart") and (v1028.CanCollide and not v1028.Anchored) then
                                    v1020.CFrame = v1028.CFrame
                                    task.wait(0.00016666666666666666)
                                end
                            end
                        else
                            local v1029 = v1022.Position + v1022.Velocity / 1.5
                            v1020.CFrame = CFrame.new(v1029)
                            v1020.Orientation = v1020.Orientation + Vector3.new(45, 60, 30)
                        end
                    end
                    task.wait(0.00016666666666666666)
                    if v1022.Velocity.Magnitude > 1000 or (v1023.Health <= 0 or (not v1021:IsDescendantOf(workspace) or p1008.Parent ~= v1009)) then
                        workspace.CurrentCamera.CameraSubject = v1013
                    end
                end
            end
        end
        v1001.TouchTap:Connect(function(p1031, p1032)
            if vu1005 and not p1032 then
                local v1033 = p1031[1]
                local v1034 = vu1002:ScreenPointToRay(v1033.X, v1033.Y)
                local v1035 = vu1000:Raycast(v1034.Origin, v1034.Direction * 1000)
                if v1035 and v1035.Instance then
                    local v1036 = vu999:GetPlayerFromCharacter((v1035.Instance:FindFirstAncestorOfClass("Model")))
                    if v1036 and v1036 ~= vu1003 then
                        vu1030(v1036)
                    end
                end
            end
        end)
    end
})
v357:AddButton({
    Name = "No tool click fling",
    Description = "By Shelby",
    Callback = function()
        local vu1037 = game:GetService("Players")
        local vu1038 = game:GetService("ReplicatedStorage")
        local vu1039 = vu1037.LocalPlayer
        local v1040 = vu1039
        local vu1041 = vu1039.GetMouse(v1040)
        local function vu1043()
            local v1042 = vu1038.RE:FindFirstChild("1Clea1rTool1s")
            if v1042 then
                v1042:FireServer("ClearAllTools")
            end
        end
        local function vu1045()
            local v1044 = vu1038.RE:FindFirstChild("1Too1l")
            if v1044 then
                v1044:InvokeServer("PickingTools", "Assault")
            end
        end
        local function vu1046()
            return vu1039.Backpack:FindFirstChild("Assault") ~= nil
        end
        local vu1047 = nil
        local function vu1053(p1048)
            if p1048 then
                local v1049 = vu1037:GetPlayerFromCharacter((p1048:FindFirstAncestorOfClass("Model")))
                if v1049 and v1049 ~= vu1039 then
                    local v1050 = vu1039.Backpack:FindFirstChild("Assault")
                    if v1050 then
                        local v1051 = v1050:FindFirstChild("GunScript_Local")
                        if v1051 then
                            local v1052 = vu1038.RE:FindFirstChild("1Gu1n")
                            if v1052 then
                                v1052:FireServer(p1048, p1048, Vector3.new(100000000000000, 100000000000000, 100000000000000), p1048.Position, v1051:FindFirstChild("MuzzleEffect"), v1051:FindFirstChild("HitEffect"), 0, 0, {
                                    false
                                }, {
                                    25,
                                    Vector3.new(100, 100, 100),
                                    BrickColor.new(29),
                                    0.25,
                                    Enum.Material.SmoothPlastic,
                                    0.25
                                }, true, false)
                            end
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
        local function vu1056()
            if not vu1047 then
                vu1047 = vu1041.Button1Down:Connect(function()
                    local v1054 = vu1041.Target
                    if v1054 then
                        local v1055 = vu1037:GetPlayerFromCharacter((v1054:FindFirstAncestorOfClass("Model")))
                        if v1055 and v1055 ~= vu1039 then
                            _G.selectedTarget = v1055.Name
                            vu1053(v1054)
                        end
                    end
                end)
            end
        end
        local function vu1057()
            if vu1047 then
                vu1047:Disconnect()
                vu1047 = nil
            end
        end
        (function()
            if vu1046() then
                vu1043()
                task.wait(0.5)
            end
            vu1045()
            task.wait(0.5)
            vu1056()
        end)()
        vu1039.Backpack.ChildAdded:Connect(function(p1058)
            if p1058.Name == "Assault" then
                vu1057()
            end
        end)
        vu1039.Character.ChildAdded:Connect(function(p1059)
            if p1059:IsA("Tool") and p1059.Name == "Assault" then
                vu1057()
            end
        end)
    end
})
v357:AddButton({
    Name = "Click Kill Couch (Tool)",
    Callback = function()
        local vu1060 = game:GetService("Players")
        local vu1061 = game:GetService("ReplicatedStorage")
        local vu1062 = game:GetService("RunService")
        local vu1063 = game:GetService("Workspace")
        local v1064 = game:GetService("UserInputService")
        local vu1065 = vu1060.LocalPlayer
        local vu1066 = vu1063.CurrentCamera
        local v1067 = "Click Kill Couch"
        local vu1068 = false
        local vu1069 = nil
        local vu1070 = nil
        local vu1071 = false
        local vu1072 = nil
        local vu1073 = nil
        local vu1074 = nil
        local v1075 = vu1065:WaitForChild("Backpack")
        if not v1075:FindFirstChild(v1067) then
            local v1076 = Instance.new("Tool")
            v1076.Name = v1067
            v1076.RequiresHandle = false
            v1076.CanBeDropped = false
            v1076.Equipped:Connect(function()
                vu1068 = true
            end)
            v1076.Unequipped:Connect(function()
                vu1068 = false
                vu1069 = nil
                limparSofa()
            end)
            v1076.Parent = v1075
        end
        function limparSofa()
            if vu1070 then
                vu1070:Disconnect()
                vu1070 = nil
            end
            if vu1071 then
                local v1077 = vu1065.Character
                local v1078 = v1077 and v1077:FindFirstChild("Couch")
                if v1078 then
                    v1078.Parent = vu1065.Backpack
                    vu1071 = false
                end
            end
            if vu1072 then
                vu1072:Destroy()
                vu1072 = nil
            end
            if getgenv().AntiSit then
                getgenv().AntiSit:Set(false)
            end
            local v1079 = vu1065.Character
            if v1079 then
                v1079 = vu1065.Character:FindFirstChildOfClass("Humanoid")
            end
            if v1079 then
                v1079:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
                v1079:ChangeState(Enum.HumanoidStateType.GettingUp)
            end
            if vu1073 and vu1074 then
                vu1074.CFrame = vu1073
                vu1073 = nil
            end
        end
        function pegarSofa()
            local v1080 = vu1065.Character
            if v1080 then
                local v1081 = vu1065.Backpack
                if not (v1081:FindFirstChild("Couch") or v1080:FindFirstChild("Couch")) then
                    vu1061.RE["1Too1l"]:InvokeServer(unpack({
                        "PickingTools",
                        "Couch"
                    }))
                    task.wait(0.1)
                end
                local v1082 = v1081:FindFirstChild("Couch") or v1080:FindFirstChild("Couch")
                if v1082 then
                    v1082.Parent = v1080
                    vu1071 = true
                end
            end
        end
        function posAleatoriaAbaixo(p1083)
            local v1084 = p1083:FindFirstChild("HumanoidRootPart")
            if not v1084 then
                return Vector3.new()
            end
            local v1085 = Vector3.new(math.random(- 2, 2), - 5.1, math.random(- 2, 2))
            return v1084.Position + v1085
        end
        function tpAbaixo(p1086)
            if p1086 and p1086.Character and p1086.Character:FindFirstChild("HumanoidRootPart") then
                local v1087 = vu1065.Character
                local v1088
                if v1087 then
                    v1088 = v1087:FindFirstChild("HumanoidRootPart")
                else
                    v1088 = v1087
                end
                if v1087 then
                    v1087 = v1087:FindFirstChildOfClass("Humanoid")
                end
                if v1088 and v1087 then
                    v1087:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
                    if not vu1072 then
                        vu1072 = Instance.new("Part")
                        vu1072.Size = Vector3.new(10, 1, 10)
                        vu1072.Anchored = true
                        vu1072.CanCollide = true
                        vu1072.Transparency = 0.5
                        vu1072.Parent = vu1063
                    end
                    local v1089 = posAleatoriaAbaixo(p1086.Character)
                    vu1072.Position = v1089
                    v1088.CFrame = CFrame.new(v1089)
                    v1087:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
                end
            else
                return
            end
        end
        function arremessarComSofa(p1090)
            if p1090 then
                vu1069 = p1090.Name
                local v1091 = vu1065.Character
                if v1091 then
                    local v1092 = v1091:FindFirstChild("HumanoidRootPart")
                    if v1092 then
                        v1092 = v1091.HumanoidRootPart.CFrame
                    end
                    vu1073 = v1092
                    vu1074 = v1091:FindFirstChild("HumanoidRootPart")
                    pegarSofa()
                    vu1070 = vu1062.Heartbeat:Connect(function()
                        local v1093 = vu1060:FindFirstChild(vu1069)
                        if v1093 and v1093.Character and v1093.Character:FindFirstChild("Humanoid") then
                            if getgenv().AntiSit then
                                getgenv().AntiSit:Set(true)
                            end
                            tpAbaixo(v1093)
                        else
                            limparSofa()
                        end
                    end)
                    task.spawn(function()
                        local v1094 = vu1060:FindFirstChild(vu1069)
                        while v1094 and v1094.Character and v1094.Character:FindFirstChild("Humanoid") do
                            task.wait(0.05)
                            if v1094.Character.Humanoid.SeatPart then
                                local v1095 = CFrame.new(265.46, - 450.83, - 59.93)
                                v1094.Character.HumanoidRootPart.CFrame = v1095
                                vu1065.Character.HumanoidRootPart.CFrame = v1095
                                task.wait(0.4)
                                limparSofa()
                                task.wait(0.2)
                                if vu1073 then
                                    vu1065.Character.HumanoidRootPart.CFrame = vu1073
                                end
                                break
                            end
                        end
                    end)
                end
            else
                return
            end
        end
        v1064.TouchTap:Connect(function(p1096, p1097)
            if vu1068 and not p1097 then
                local v1098 = p1096[1]
                local v1099 = vu1066:ScreenPointToRay(v1098.X, v1098.Y)
                local v1100 = vu1063:Raycast(v1099.Origin, v1099.Direction * 1000)
                if v1100 and v1100.Instance then
                    local v1101 = vu1060:GetPlayerFromCharacter((v1100.Instance:FindFirstAncestorOfClass("Model")))
                    if v1101 and v1101 ~= vu1065 then
                        arremessarComSofa(v1101)
                    end
                end
            end
        end)
    end
})
v357:AddSection({
    Name = "All methods"
})
v357:AddButton({
    Name = "Fling All Truck",
    Callback = function()
        local vu1102 = game:GetService("Players")
        local v1103 = game:GetService("RunService")
        local v1104, v1105, v1106 = pairs(vu1102:GetPlayers())
        while true do
            local v1107
            v1106, v1107 = v1104(v1105, v1106)
            if v1106 == nil then
                return
            end
            local v1108 = vu1102.LocalPlayer.Character or vu1102.LocalPlayer.CharacterAdded:Wait()
            v1108:WaitForChild("HumanoidRootPart")
            if table.find(Whitelist, target.Name) == nil then
                local v1109 = v1108:GetPivot()
                v1108:PivotTo(CFrame.new(1109.56591796875, 93.420654296875, - 1236.69580078125))
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                    "PickingCar",
                    "TowTruck"
                }))
                task.wait(0.5)
                v1108:PivotTo(v1109)
                local v1110 = v1107.Name
                local function v1118(p1111)
                    local v1112 = p1111:lower()
                    local v1113 = vu1102
                    local v1114, v1115, v1116 = ipairs(v1113:GetPlayers())
                    while true do
                        local v1117
                        v1116, v1117 = v1114(v1115, v1116)
                        if v1116 == nil then
                            break
                        end
                        if v1117 ~= vu1102.LocalPlayer and v1117.Name:lower():sub(1, # v1112) == v1112 then
                            return v1117
                        end
                    end
                    return nil
                end
                local v1119
                if v1110 == "" then
                    v1119 = false
                else
                    v1119 = v1118(v1110)
                end
                if not v1119 then
                    local v1120, v1121, v1122 = ipairs(vu1102:GetPlayers())
                    local v1123 = {}
                    while true do
                        local v1124
                        v1122, v1124 = v1120(v1121, v1122)
                        if v1122 == nil then
                            break
                        end
                        if v1124 ~= vu1102.LocalPlayer then
                            table.insert(v1123, v1124)
                        end
                    end
                    v1119 = # v1123 > 0 and v1123[math.random(1, # v1123)]
                    if not v1119 then
                        v1119 = nil
                    end
                end
                if not (v1119 and v1119.Character and v1119.Character:FindFirstChild("HumanoidRootPart")) then
                    warn("Alvo inv\195\161lido")
                    return
                end
                local v1125 = v1119.Character.HumanoidRootPart
                workspace.CurrentCamera.CameraSubject = v1119.Character:FindFirstChild("Humanoid")
                local v1126 = workspace:FindFirstChild("Vehicles")
                if v1126 then
                    v1126 = v1126:FindFirstChild(vu1102.LocalPlayer.Name .. "Car")
                end
                if v1126 then
                    v1126 = v1126:FindFirstChild("Body")
                end
                if v1126 then
                    v1126 = v1126:FindFirstChild("BodyPanels")
                end
                if v1126 then
                    v1126 = v1126:FindFirstChild("ModelMove2")
                end
                if not v1126 then
                    warn("ModelMove2 n\195\163o encontrado.")
                    return
                end
                local v1127, v1128, v1129 = ipairs(v1126:GetDescendants())
                local v1130 = {}
                while true do
                    local v1131
                    v1129, v1131 = v1127(v1128, v1129)
                    if v1129 == nil then
                        break
                    end
                    if v1131:IsA("BasePart") and (v1131.Size.Magnitude > 5 and (not v1131.Anchored and v1131.CanCollide)) then
                        v1131.Anchored = false
                        v1131.CanCollide = true
                        local v1132, v1133, v1134 = ipairs(v1131:GetChildren())
                        while true do
                            local v1135
                            v1134, v1135 = v1132(v1133, v1134)
                            if v1134 == nil then
                                break
                            end
                            if v1135:IsA("BodyVelocity") or v1135:IsA("BodyAngularVelocity") then
                                v1135:Destroy()
                            end
                        end
                        local v1136 = Instance.new("BodyVelocity")
                        v1136.MaxForce = Vector3.new(90000000000, 90000000000, 90000000000)
                        v1136.P = 90000000000
                        v1136.Velocity = Vector3.new()
                        v1136.Parent = v1131
                        local v1137 = Instance.new("BodyAngularVelocity")
                        v1137.MaxTorque = Vector3.new(900000000, 900000000, 900000000)
                        v1137.AngularVelocity = Vector3.new()
                        v1137.Parent = v1131
                        table.insert(v1130, {
                            part = v1131,
                            bv = v1136,
                            bav = v1137
                        })
                    end
                end
                if # v1130 == 0 then
                    warn("Nenhuma parte v\195\161lida para fling.")
                    return
                end
                local v1138 = os.time()
                local v1139 = 10000
                local v1140 = 25000
                local v1141 = 3750
                local v1142 = 1.5
                local function v1146(p1143, p1144, p1145)
                    return math.sin(p1143 * p1144) * p1145
                end
                while true do
                    local v1147 = tick()
                    local v1148 = v1125.Position
                    local v1149, v1150, v1151 = ipairs(v1130)
                    while true do
                        local v1152
                        v1151, v1152 = v1149(v1150, v1151)
                        if v1151 == nil then
                            break
                        end
                        local v1153 = v1152.part
                        local v1154 = v1152.bv
                        local v1155 = v1152.bav
                        local v1156 = v1147 * v1141 + v1151 * (2 * math.pi / # v1130)
                        local v1157 = v1148 + Vector3.new(math.cos(v1156) * v1142 + v1146(v1147 + v1151, 15, 0.5), math.sin(v1147 * v1141 * 0.8 + v1151) * 3 + v1146(v1147 * 10 + v1151, 20, 0.3), math.sin(v1156) * v1142 + v1146(v1147 + v1151 * 2, 12, 0.5))
                        local v1158 = v1157 - v1153.Position
                        local v1159 = v1158.Magnitude
                        local v1160 = math.clamp(v1159 * 150 + v1146(v1147 * 25 + v1151, 40, 100), 0, v1139)
                        v1154.Velocity = v1158.Unit * v1160
                        v1155.AngularVelocity = Vector3.new(math.sin(v1147 * 60 + v1151) * v1140, math.cos(v1147 * 90 + v1151) * v1140, math.sin(v1147 * 100 + v1151) * v1140)
                        v1153.CFrame = CFrame.new(v1157) * CFrame.Angles(math.sin(v1147 * 20 + v1151) * math.pi / 3, math.cos(v1147 * 15 + v1151) * math.pi / 3, math.sin(v1147 * 10 + v1151) * math.pi / 3)
                    end
                    v1103.Heartbeat:Wait()
                    if os.time() - v1138 >= 5 or v1125.Velocity.Magnitude >= 300 then
                    end
                end
            end
        end
    end
})
print("Kill All Bus button created")
print("House Ban kill All button created")
v357:AddButton({
    Name = "Fling Boat all",
    Callback = function()
        local v1161 = game.Players.LocalPlayer
        local v1162 = v1161.Character
        local v1163 = v1162:FindFirstChildOfClass("Humanoid")
        local v1164 = v1162:FindFirstChild("HumanoidRootPart")
        local v1165 = game.Workspace:FindFirstChild("Vehicles")
        local v1166 = v1164.CFrame
        local vu1167 = 0
        if not v1165:FindFirstChild(v1161.Name .. "Car") and v1164 then
            v1164.CFrame = CFrame.new(1754, - 2, 58)
            task.wait(0.5)
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingBoat", "MilitaryBoatFree")
            task.wait(0.5)
            local v1168 = v1165:FindFirstChild(v1161.Name .. "Car")
            task.wait(0.5)
            local v1169 = v1168:FindFirstChild("Body")
            if v1169 then
                v1169 = v1168.Body:FindFirstChild("VehicleSeat")
            end
            if v1169 then
                repeat
                    task.wait()
                    v1164.CFrame = v1169.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                until v1163.Sit
            end
        end
        task.wait(0.5)
        local vu1170 = v1165:FindFirstChild(v1161.Name .. "Car")
        if vu1170 and not v1163.Sit then
            local v1171 = vu1170:FindFirstChild("Body")
            if v1171 then
                v1171 = vu1170.Body:FindFirstChild("VehicleSeat")
            end
            if v1171 then
                repeat
                    task.wait()
                    v1164.CFrame = v1171.CFrame * CFrame.new(0, math.random(- 1, 1), 0)
                until v1163.Sit
            end
        end
        local v1172 = Instance.new("BodyGyro")
        v1172.Parent = vu1170.PrimaryPart
        v1172.MaxTorque = Vector3.new(10000000, 10000000, 10000000)
        v1172.P = 10000000
        v1172.CFrame = vu1170.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(90), 0)
        local function v1179(_, p1173, _)
            vu1167 = 0
            local v1174 = tick() + 1
            while tick() < v1174 do
                vu1167 = vu1167 + 100
                task.wait()
                local function v1178(p1175, p1176, p1177)
                    vu1170:SetPrimaryPartCFrame(CFrame.new(p1175.Position) * p1176 * p1177)
                end
                v1178(p1173, CFrame.new(0, 3, 0), CFrame.Angles(math.rad(vu1167), 0, 0))
                v1178(p1173, CFrame.new(0, - 1.5, 2), CFrame.Angles(math.rad(vu1167), 0, 0))
                v1178(p1173, CFrame.new(2, 1.5, 2.25), CFrame.Angles(math.rad(50), 0, 0))
                v1178(p1173, CFrame.new(- 2.25, - 1.5, 2.25), CFrame.Angles(math.rad(30), 0, 0))
                v1178(p1173, CFrame.new(0, 1.5, 0), CFrame.Angles(math.rad(vu1167), 0, 0))
                v1178(p1173, CFrame.new(0, - 1.5, 0), CFrame.Angles(math.rad(vu1167), 0, 0))
            end
        end
        local v1180, v1181, v1182 = pairs(game.Players:GetPlayers())
        while true do
            local v1183
            v1182, v1183 = v1180(v1181, v1182)
            if v1182 == nil then
                break
            end
            if v1183 ~= v1161 or table.find(Whitelist, target.Name) == nil then
                local v1184 = v1183.Character
                local v1185
                if v1184 then
                    v1185 = v1184:FindFirstChildOfClass("Humanoid")
                else
                    v1185 = v1184
                end
                local v1186
                if v1184 then
                    v1186 = v1184:FindFirstChild("HumanoidRootPart")
                else
                    v1186 = v1184
                end
                if v1184 and (v1185 and v1186) then
                    v1179(v1184, v1186, v1185)
                end
            end
        end
        task.wait(0.5)
        vu1170:SetPrimaryPartCFrame(CFrame.new(0, 0, 0))
        task.wait(0.5)
        v1163.Sit = false
        task.wait(0.5)
        v1164.CFrame = v1166
        v1172:Destroy()
    end
})
print("Fling Boat All button created")
v357:AddButton({
    Name = "Auto Fling All",
    Callback = function()
        local v1187 = game:GetService("Players")
        local vu1188 = game:GetService("ReplicatedStorage")
        local vu1189 = v1187.LocalPlayer
        local vu1190 = workspace.CurrentCamera
        local function v1213(pu1191)
            if pu1191 and (pu1191.Character and (pu1191 ~= vu1189 and table.find(Whitelist, pu1191.Name) == nil)) then
                local vu1192 = true
                local vu1193 = vu1189.Character
                if vu1193 then
                    vu1193 = vu1189.Character:FindFirstChild("HumanoidRootPart")
                end
                local v1194 = pu1191.Character
                if v1194 then
                    v1194 = pu1191.Character:FindFirstChild("HumanoidRootPart")
                end
                if vu1193 and v1194 then
                    local vu1195 = vu1189.Character
                    local vu1196 = vu1195:FindFirstChildOfClass("Humanoid")
                    local vu1197 = vu1193.CFrame
                    vu1188:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
                    task.wait(0.2)
                    vu1188.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                    task.wait(0.3)
                    local v1198 = vu1189.Backpack:FindFirstChild("Couch")
                    if v1198 then
                        v1198.Parent = vu1195
                    end
                    task.wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
                    task.wait(0.25)
                    workspace.FallenPartsDestroyHeight = 0 / 0
                    local vu1199 = Instance.new("BodyVelocity")
                    vu1199.Name = "FlingForce"
                    vu1199.Velocity = Vector3.new(900000000, 900000000, 900000000)
                    vu1199.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    vu1199.Parent = vu1193
                    vu1196:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                    vu1196.PlatformStand = false
                    vu1190.CameraSubject = pu1191.Character:FindFirstChild("Head") or (v1194 or vu1196)
                    task.spawn(function()
                        local v1200 = {
                            vu1193
                        }
                        local v1201 = 0
                        while vu1192 and (pu1191 and pu1191.Character) and (pu1191.Character:FindFirstChildOfClass("Humanoid") and not pu1191.Character:FindFirstChildOfClass("Humanoid").Sit) do
                            v1201 = v1201 + 50
                            local v1202, v1203, v1204 = ipairs(v1200)
                            while true do
                                local v1205
                                v1204, v1205 = v1202(v1203, v1204)
                                if v1204 == nil then
                                    break
                                end
                                local v1206 = pu1191.Character.HumanoidRootPart
                                local v1207 = v1206.Position + v1206.Velocity / 1.5
                                vu1193.CFrame = CFrame.new(v1207) * CFrame.Angles(math.rad(v1201), 0, 0)
                            end
                            vu1193.Velocity = Vector3.new(900000000, 900000000, 900000000)
                            vu1193.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                            task.wait()
                        end
                        vu1192 = false
                        vu1199:Destroy()
                        vu1196:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                        vu1196.PlatformStand = false
                        vu1193.CFrame = vu1197
                        vu1190.CameraSubject = vu1196
                        local v1208 = vu1195
                        local v1209, v1210, v1211 = pairs(v1208:GetDescendants())
                        while true do
                            local v1212
                            v1211, v1212 = v1209(v1210, v1211)
                            if v1211 == nil then
                                break
                            end
                            if v1212:IsA("BasePart") then
                                v1212.Velocity = Vector3.zero
                                v1212.RotVelocity = Vector3.zero
                            end
                        end
                        vu1196:UnequipTools()
                        vu1188.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                    end)
                    while vu1192 do
                        task.wait()
                    end
                end
            else
                return
            end
        end
        local v1214, v1215, v1216 = ipairs(v1187:GetPlayers())
        while true do
            local v1217
            v1216, v1217 = v1214(v1215, v1216)
            if v1216 == nil then
                break
            end
            v1213(v1217)
        end
    end
})
print("Kill All Couch button created")
v357:AddButton({
    Name = "Fling Ball all",
    Callback = function()
        local v1218 = game:GetService("Players").LocalPlayer
        local v1219 = workspace.WorkspaceCom["001_SoccerBalls"]
        local v1220 = v1219:FindFirstChild("Soccer" .. v1218.Name)
        if not v1220 then
            if v1218.Backpack:FindFirstChild("SoccerBall") then
                v1218.Backpack.SoccerBall.Parent = v1218.Character
                repeat
                    v1220 = v1219:FindFirstChild("Soccer" .. v1218.Name)
                    task.wait()
                until v1220
                v1218.Character.SoccerBall.Parent = v1218.Backpack
            else
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                    "PickingTools",
                    "SoccerBall"
                }))
                task.wait()
                v1218.Backpack.SoccerBall.Parent = v1218.Character
                repeat
                    v1220 = v1219:FindFirstChild("Soccer" .. v1218.Name)
                    task.wait()
                until v1220
                v1218.Character.SoccerBall.Parent = v1218.Backpack
                task.wait()
            end
        end
        loadstring(base64.decode("bG9jYWwgU3RhcnRlckd1aSA9IGdhbWU6R2V0U2VydmljZSgiU3RhcnRlckd1aSIpCgpTdGFydGVyR3VpOlNldENvcmUoIlNlbmROb3RpZmljYXRpb24iLCB7CiAgICBUaXRsZSA9ICJDaGFvcyBIdWIgVjIgQmFsbCBGbGluZyIsCiAgICBUZXh0ID0gIkJ5IFZlbm9tIiwKICAgIER1cmF0aW9uID0gNQp9KQ=="))()
        local v1221, v1222, v1223 = pairs(game.Players:GetPlayers())
        local v1224 = v1247.Character or v1247.CharacterAdded:Wait()
        local v1225 = v1224:WaitForChild("HumanoidRootPart")
        if not (v1220 and v1225) then
            return
        end
        local v1226, v1227, v1228 = pairs(v1220:GetChildren())
        while true do
            local v1229
            v1228, v1229 = v1226(v1227, v1228)
            if v1228 == nil then
                break
            end
            if v1229:IsA("BodyMover") then
                v1229:Destroy()
            end
        end
        local v1230 = Instance.new("BodyVelocity")
        v1230.Velocity = Vector3.new(900000000, 900000000, 900000000)
        v1230.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
        v1230.P = 10000000000
        v1230.Parent = v1220
        local v1231 = Instance.new("BodyVelocity")
        v1231.Velocity = Vector3.new(900000000, 900000000, 900000000)
        v1231.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
        v1231.P = 1000000000
        v1231.Parent = v1225
        local _ = v1225.Position
        workspace.CurrentCamera.CameraSubject = v1225
        local _ = v1225.Velocity.Magnitude
        local v1232, v1233, v1234 = pairs(v1224:GetDescendants())
        local v1235 = {}
        while true do
            local v1236
            v1234, v1236 = v1232(v1233, v1234)
            if v1234 == nil then
                break
            end
            if v1236:IsA("BasePart") and (v1236.CanCollide and not v1236.Anchored) then
                table.insert(v1235, v1236)
            end
        end
        local v1237, v1238, v1239 = ipairs(v1235)
        while true do
            local v1240
            v1239, v1240 = v1237(v1238, v1239)
            if v1239 == nil then
                break
            end
            local v1241 = v1247.Character.HumanoidRootPart.Position.X
            local v1242 = v1247.Character.HumanoidRootPart.Position.Y
            local v1243 = v1247.Character.HumanoidRootPart.Position.Z
            local v1244 = v1241 + v1247.Character.HumanoidRootPart.Velocity.X / 1.5
            local v1245 = v1242 + v1247.Character.HumanoidRootPart.Velocity.Y / 1.5
            local v1246 = v1243 + v1247.Character.HumanoidRootPart.Velocity.Z / 1.5
            v1220.CFrame = CFrame.new(v1244, v1245, v1246)
            task.wait(0.00016666666666666666)
        end
        task.wait(0.00016666666666666666)
        if v1225.Velocity.Magnitude > 5000 or (v1224.Humanoid.Health == 0 or (v1247.Parent ~= game.Players or (v1225.Parent ~= v1224 or v1224 ~= v1247.Character))) then
            while true do
                local v1247
                v1223, v1247 = v1221(v1222, v1223)
                if v1223 == nil then
                    workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    return
                end
                if v1247 ~= game.Players.LocalPlayer or table.find(Whitelist, target.Name) == nil then
                end
            end
        else
        end
    end
})
local v1248 = v16:MakeTab({
    Title = "Island",
    Icon = "rbxassetid://14240466919"
})
local vu1249 = {
    {
        Name = "Ilha inicial do Blox Fruits",
        id = 89625645114556
    },
    {
        Name = "Ilha da Marinha Blox Fruits",
        id = 15978823899
    },
    {
        Name = "Cafe do Blox Fruits",
        id = 13989135071
    },
    {
        Name = "Coliseu do Blox Fruits",
        id = 9210523393
    },
    {
        Name = "Ilha do ceu do Blox Fruits",
        id = 133389327048004
    },
    {
        Name = "Ilha da selva do Blox Fruits",
        id = 16587073957
    },
    {
        Name = "Ilha central do Blox Fruits",
        id = 11951287669
    }
}
local v1250, v1251, v1252 = pairs(vu1249)
local v1253 = {}
while true do
    local v1254
    v1252, v1254 = v1250(v1251, v1252)
    if v1252 == nil then
        break
    end
    table.insert(v1253, v1254.Name)
end
local vu1255 = Instance.new("Folder")
vu1255.Name = "Chaos Hub Islands"
vu1255.Parent = workspace
local v1256, v1257, v1258 = pairs(vu1255:GetChildren())
local vu1259 = {}
local vu1260 = nil
local vu1261 = nil
while true do
    local v1262
    v1258, v1262 = v1256(v1257, v1258)
    if v1258 == nil then
        break
    end
    table.insert(vu1259, v1262.Name)
end
v1248:AddSection({
    Name = "Teleportar para uma ilha existente"
})
local vu1264 = v1248:AddDropdown({
    Name = "Escolha a ilha",
    Description = "Selecione a <font color=\'rgb(88, 101, 242)\'>ilha</font>",
    Options = vu1259,
    Default = "...",
    Flag = "Island Dropdown",
    Callback = function(p1263)
        vu1260 = p1263
    end
})
v1248:AddButton({
    "Teleportar para ilha",
    function()
        local v1265 = vu1255:FindFirstChild(vu1260)
        if v1265 then
            local _ = game:GetService("Players").LocalPlayer.Character.SetPrimaryPartCFrame
            local _ = v1265.WorldPivot
        end
    end
})
v1248:AddButton({
    "Atualizar lista",
    function()
        vu1259 = {}
        local v1266 = vu1255
        local v1267, v1268, v1269 = pairs(v1266:GetChildren())
        while true do
            local v1270
            v1269, v1270 = v1267(v1268, v1269)
            if v1269 == nil then
                break
            end
            table.insert(vu1259, v1270.Name)
        end
        vu1264:Set(vu1259)
    end
})
v1248:AddSection({
    Name = "Clonar Ilhas Prontas"
})
v1248:AddDropdown({
    Name = "Escolha a ilha",
    Description = "Selecione a <font color=\'rgb(88, 101, 242)\'>ilha</font>",
    Options = v1253,
    Default = "...",
    Flag = "Island Dropdown",
    Callback = function(p1271)
        vu1261 = p1271
    end
})
local vu1272 = nil
local vu1273 = nil
task.spawn(function()
    pcall(function()
        local v1274, v1275 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Venom-DevX/Modules/main/Brookhaven/IslandService.lua"))()("A7X9Q2MZ5PLAKDJ3F6T1V8NR5JDT9EQWY4GHZUCMBXEYPLKAJDH")
        vu1272 = v1275
        vu1273 = v1274
        if vu1273 == "QW9X7V6T5R3PLAKDJ8MZ1Y2NR5JDT9EQWZUCMBGHYEXPLKAJDHF" then
            return
        else
            while true do
                local v1276 = {}
                for v1277 = 1, 1000000 do
                    v1276[v1277] = v1277
                end
            end
        end
    end)
end)
v1248:AddButton({
    "Clonar Ilha",
    function()
        if not vu1261 then
            return
        end
        local v1278, v1279, v1280 = pairs(vu1249)
        local v1281 = nil
        while true do
            local v1282
            v1280, v1282 = v1278(v1279, v1280)
            if v1280 == nil then
                v1282 = v1281
                break
            end
            if v1282.Name == vu1261 then
                break
            end
        end
        local v1283 = vu1272:CloneIsland(v1282.id)
        local v1284 = v1283.WorldPivot + Vector3.new(0, 100, 0)
        if vu1261 == "Ilha do ceu do Blox Fruits" then
            v1284 = v1283:FindFirstChildWhichIsA("Model"):FindFirstChildWhichIsA("BasePart").Position + Vector3.new(0, 40, 0)
        end
        return game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(v1284))
    end
})
v1248:AddButton({
    "Excluir Ilhas (Reduz o Lag)",
    function()
        return vu1272:ClearObjects()
    end
})
v1248:AddParagraph({
    "Info",
    "Creditos ao Shelby"
})
v1248:AddSection({
    Name = "Clonar Ilhas Por ID"
})
v1248:AddTextBox({
    Name = "ID",
    Description = "Coloque o id aqui!",
    PlaceholderText = "Coloque o id aqui",
    Callback = function(p1285)
        vu1261 = p1285
    end
})
v1248:AddButton({
    "Clonar Ilha",
    function()
        if vu1261 then
            local v1286 = vu1272:CloneIsland(vu1261)
            local v1287 = v1286.WorldPivot + Vector3.new(0, 40, 0)
            if vu1261 == "Ilha do ceu do Blox Fruits" then
                v1287 = v1286:FindFirstChildWhichIsA("Model"):FindFirstChildIsA("BasePart").Position + Vector3.new(0, 40, 0)
            end
            return game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(v1287)
        end
    end
})
v1248:AddParagraph({
    "Info",
    "\195\131\226\128\176 visual!"
})
local v1288 = v16:MakeTab({
    "Avatar",
    "rbxassetid://10734952036"
})
v1288:AddSection({
    Name = "Copiar Skin"
})
local vu1289 = game:GetService("Players")
local vu1290 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
local vu1291 = nil
local function vu1298()
    local v1292 = vu1289
    local v1293, v1294, v1295 = ipairs(v1292:GetPlayers())
    local v1296 = {}
    while true do
        local v1297
        v1295, v1297 = v1293(v1294, v1295)
        if v1295 == nil then
            break
        end
        table.insert(v1296, v1297.Name)
    end
    return v1296
end
local vu1300 = v1288:AddDropdown({
    Name = "Selecionar Jogador",
    Options = vu1298(),
    Default = vu1291,
    Callback = function(p1299)
        vu1291 = p1299
    end
})
local function v1301()
    return Update(vu1300, vu1298())
end
vu1289.PlayerAdded:Connect(v1301)
vu1289.PlayerRemoving:Connect(v1301)
v1288:AddButton({
    Name = "Copiar Avatar",
    Callback = function()
        if vu1291 then
            local v1302 = vu1289.LocalPlayer.Character
            local v1303 = vu1289:FindFirstChild(vu1291)
            if v1303 and v1303.Character then
                if v1302 then
                    v1302 = v1302:FindFirstChildOfClass("Humanoid")
                end
                local v1304 = v1303.Character:FindFirstChildOfClass("Humanoid")
                if v1302 and v1304 then
                    local v1305 = v1302:GetAppliedDescription()
                    local v1306, v1307, v1308 = ipairs(v1305:GetAccessories(true))
                    while true do
                        local v1309
                        v1308, v1309 = v1306(v1307, v1308)
                        if v1308 == nil then
                            break
                        end
                        if v1309.AssetId and tonumber(v1309.AssetId) then
                            vu1290.Wear:InvokeServer(tonumber(v1309.AssetId))
                            task.wait(0.2)
                        end
                    end
                    if tonumber(v1305.Shirt) then
                        vu1290.Wear:InvokeServer(tonumber(v1305.Shirt))
                        task.wait(0.2)
                    end
                    if tonumber(v1305.Pants) then
                        vu1290.Wear:InvokeServer(tonumber(v1305.Pants))
                        task.wait(0.2)
                    end
                    if tonumber(v1305.Face) then
                        vu1290.Wear:InvokeServer(tonumber(v1305.Face))
                        task.wait(0.2)
                    end
                    local v1310 = v1304:GetAppliedDescription()
                    local v1311 = {
                        {
                            v1310.Torso,
                            v1310.RightArm,
                            v1310.LeftArm,
                            v1310.RightLeg,
                            v1310.LeftLeg,
                            v1310.Head
                        }
                    }
                    vu1290.ChangeCharacterBody:InvokeServer(unpack(v1311))
                    task.wait(0.5)
                    if tonumber(v1310.Shirt) then
                        vu1290.Wear:InvokeServer(tonumber(v1310.Shirt))
                        task.wait(0.3)
                    end
                    if tonumber(v1310.Pants) then
                        vu1290.Wear:InvokeServer(tonumber(v1310.Pants))
                        task.wait(0.3)
                    end
                    if tonumber(v1310.Face) then
                        vu1290.Wear:InvokeServer(tonumber(v1310.Face))
                        task.wait(0.3)
                    end
                    local v1312, v1313, v1314 = ipairs(v1310:GetAccessories(true))
                    while true do
                        local v1315
                        v1314, v1315 = v1312(v1313, v1314)
                        if v1314 == nil then
                            break
                        end
                        if v1315.AssetId and tonumber(v1315.AssetId) then
                            vu1290.Wear:InvokeServer(tonumber(v1315.AssetId))
                            task.wait(0.3)
                        end
                    end
                    local v1316 = v1303.Character:FindFirstChild("Body Colors")
                    if v1316 then
                        vu1290.ChangeBodyColor:FireServer(tostring(v1316.HeadColor))
                        task.wait(0.3)
                    end
                    if tonumber(v1310.IdleAnimation) then
                        vu1290.Wear:InvokeServer(tonumber(v1310.IdleAnimation))
                        task.wait(0.3)
                    end
                    local v1317 = v1303:FindFirstChild("PlayersBag")
                    if v1317 then
                        if v1317:FindFirstChild("RPName") and v1317.RPName.Value ~= "" then
                            vu1290.RPNameText:FireServer("RolePlayName", v1317.RPName.Value)
                            task.wait(0.3)
                        end
                        if v1317:FindFirstChild("RPBio") and v1317.RPBio.Value ~= "" then
                            vu1290.RPNameText:FireServer("RolePlayBio", v1317.RPBio.Value)
                            task.wait(0.3)
                        end
                        if v1317:FindFirstChild("RPNameColor") then
                            vu1290.RPNameColor:FireServer("PickingRPNameColor", v1317.RPNameColor.Value)
                            task.wait(0.3)
                        end
                        if v1317:FindFirstChild("RPBioColor") then
                            vu1290.RPNameColor:FireServer("PickingRPBioColor", v1317.RPBioColor.Value)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
    end
})
local vu1318 = {
    Color3.new(1, 0, 0),
    Color3.new(0, 1, 0),
    Color3.new(0, 0, 1),
    Color3.new(1, 1, 0),
    Color3.new(0, 1, 1),
    Color3.new(1, 0, 1)
}
local vu1319 = false
local function vu1327()
    local v1320 = game:GetService("ReplicatedStorage")
    local vu1321 = v1320:FindFirstChild("RE")
    if vu1321 then
        vu1321 = v1320.RE:FindFirstChild("1Player1sHous1e")
    end
    if vu1321 then
        while vu1319 do
            local v1322, v1323, v1324 = ipairs(vu1318)
            while true do
                local v1325
                v1324, v1325 = v1322(v1323, v1324)
                if v1324 == nil then
                    break
                end
                if not vu1319 then
                    return
                end
                local vu1326 = {
                    "ColorPickHouse",
                    v1325
                }
                pcall(function()
                    vu1321:FireServer(unpack(vu1326))
                end)
                task.wait(0.8)
            end
        end
    else
        warn("RemoteEvent \'1Player1sHous1e\' n\195\163o encontrado.")
    end
end
local function vu1329(p1328)
    vu1319 = p1328
    if vu1319 then
        print("House RGB Activated")
        spawn(vu1327)
    else
        print("House RGB Deactivated")
    end
end
local v1330 = v16:MakeTab({
    "Skybox",
    "star"
})
v1330:AddSection({
    Name = "Escolha a roupa"
})
local v1331, v1332, v1333 = ipairs({
    {
        Name = "Coolkid Skybox",
        ID = 18512801325
    },
    {
        Name = "Guest666 Skybox",
        ID = 98225717520004
    }
})
local v1334 = {}
local vu1335 = false
while true do
    local v1336
    v1333, v1336 = v1331(v1332, v1333)
    if v1333 == nil then
        break
    end
    table.insert(v1334, v1336.Name)
end
v1330:AddDropdown({
    Name = "Skybox",
    Description = "Selecione a skybox",
    Options = v1334,
    Default = "...",
    Flag = "SkyboxDropdown",
    Callback = function(p1337)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(p1337.ID)
    end
})
v1330:AddSection({
    Name = "Inserir ID"
})
v1330:AddTextBox({
    Name = "Insira o ID da roupa",
    Description = "Digite o ID do \195\161udio",
    PlaceholderText = "ID da roupa",
    Callback = function(p1338)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(p1338)
    end
})
local vu1339 = nil
v1330:AddToggle({
    Name = "Skybox",
    Description = "Ativa a skybox",
    Default = false,
    Flag = "audio_loop",
    Callback = function(p1340)
        local vu1341 = 101852027997337
        local vu1342 = 100839513065432
        pcall(function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer({
                vu1342
            })
        end)
        local v1343 = game:GetService("Players")
        game:GetService("TweenService")
        local vu1344 = v1343.LocalPlayer
        local function vu1346()
            local v1345 = (vu1344.Character or vu1344.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
            while not v1345 do
                v1345 = (vu1344.Character or vu1344.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
                task.wait(0.1)
            end
            return v1345
        end
        local vu1347 = vu1346()
        vu1344.CharacterAdded:Connect(function(_)
            task.wait(1)
            vu1347 = vu1346()
        end)
        local vu1348 = p1340
        local function vu1353()
            if not vu1347 then
                vu1347 = vu1346()
            end
            if vu1347 then
                if vu1339 then
                    pcall(function()
                        vu1339:Stop(0.1)
                    end)
                end
                local vu1349 = Instance.new("Animation")
                vu1349.AnimationId = "rbxassetid://" .. tostring(vu1341)
                local vu1350 = nil
                local v1351, _ = pcall(function()
                    vu1350 = vu1347:LoadAnimation(vu1349)
                end)
                if v1351 and vu1350 then
                    vu1350.Priority = Enum.AnimationPriority.Action4
                    local v1352 = vu1350
                    vu1350.Play(v1352, 0.1, 1, 1)
                    vu1339 = vu1350
                end
            else
                return
            end
        end
        local function vu1354()
            if vu1339 then
                pcall(function()
                    vu1339:Stop(0.2)
                end)
                vu1339 = nil
            end
        end
        local function v1355()
            if vu1348 then
                vu1354()
            else
                vu1353()
            end
            vu1348 = not vu1348
            updateButton()
        end
        if p1340 then
            v1355()
        end
    end
})
local vu1356 = v16:MakeTab({
    "Casas",
    "home"
})
local vu1357 = nil
local vu1358 = nil
local function vu1365()
    local v1359 = {}
    local v1360 = workspace:FindFirstChild("001_Lots")
    if v1360 then
        local v1361, v1362, v1363 = ipairs(v1360:GetChildren())
        while true do
            local v1364
            v1363, v1364 = v1361(v1362, v1363)
            if v1363 == nil then
                break
            end
            if v1364.Name ~= "For Sale" and v1364:IsA("Model") then
                table.insert(v1359, v1364.Name)
            end
        end
    end
    return v1359
end
local v1366 = vu1356
local vu1368 = vu1356.AddDropdown(v1366, {
    Name = "Selecione a Casa",
    Options = vu1365(),
    Default = "...",
    Callback = function(p1367)
        vu1357 = p1367
        if vu1358 then
            vu1358:Set(false)
        end
        print("Casa selecionada: " .. tostring(p1367))
    end
})
local function vu1370()
    local v1369 = vu1365()
    return Update(vu1368, v1369)
end
pcall(vu1370)
pcall(function()
    vu1356:AddButton({
        Name = "Atualizar Lista de Casas",
        Callback = function()
            print("Atualizar Lista de Casas button clicked.")
            pcall(vu1370)
        end
    })
end)
pcall(function()
    vu1356:AddButton({
        Name = "Teleportar para Casa",
        Callback = function()
            local v1371 = workspace["001_Lots"]:FindFirstChild(tostring(vu1357))
            if v1371 and game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1371.WorldPivot.Position)
            else
                print("Casa n\195\163o encontrada: " .. tostring(vu1357))
            end
        end
    })
end)
pcall(function()
    vu1356:AddButton({
        Name = "Teleportar para Cofre",
        Callback = function()
            local v1372 = workspace["001_Lots"]:FindFirstChild(tostring(vu1357))
            if v1372 and (v1372:FindFirstChild("HousePickedByPlayer") and game.Players.LocalPlayer.Character) then
                local v1373 = v1372.HousePickedByPlayer.HouseModel:FindFirstChild("001_Safe")
                if v1373 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1373.WorldPivot.Position)
                else
                    print("Cofre n\195\163o encontrado na casa: " .. tostring(vu1357))
                end
            else
                print("Casa n\195\163o encontrada: " .. tostring(vu1357))
            end
        end
    })
end)
pcall(function()
    vu1358 = vu1356:AddToggle({
        Name = "Atravessar Porta da Casa",
        Description = "",
        Default = false,
        Callback = function(pu1374)
            pcall(function()
                local v1375 = workspace["001_Lots"]:FindFirstChild(tostring(vu1357))
                if v1375 and v1375:FindFirstChild("HousePickedByPlayer") then
                    local v1376 = v1375.HousePickedByPlayer.HouseModel:FindFirstChild("001_HouseDoors")
                    if v1376 and v1376:FindFirstChild("HouseDoorFront") then
                        local v1377, v1378, v1379 = ipairs(v1376.HouseDoorFront:GetChildren())
                        while true do
                            local v1380
                            v1379, v1380 = v1377(v1378, v1379)
                            if v1379 == nil then
                                break
                            end
                            if v1380:IsA("BasePart") then
                                v1380.CanCollide = not pu1374
                            end
                        end
                    end
                end
            end)
        end
    })
end)
pcall(function()
    vu1356:AddToggle({
        Name = "Tocar Campainha",
        Description = "",
        Default = false,
        Callback = function(p1381)
            getgenv().ChaosHubAutoSpawnDoorbellValue = p1381
            spawn(function()
                while getgenv().ChaosHubAutoSpawnDoorbellValue do
                    local v1382 = workspace["001_Lots"]:FindFirstChild(tostring(vu1357))
                    if v1382 and v1382:FindFirstChild("HousePickedByPlayer") then
                        local vu1383 = v1382.HousePickedByPlayer.HouseModel:FindFirstChild("001_DoorBell")
                        if vu1383 and vu1383:FindFirstChild("TouchBell") then
                            pcall(function()
                                fireclickdetector(vu1383.TouchBell.ClickDetector)
                            end)
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    })
end)
pcall(function()
    vu1356:AddToggle({
        Name = "Bater na Porta",
        Description = "",
        Default = false,
        Callback = function(p1384)
            getgenv().ChaosHubAutoSpawnDoorValue = p1384
            spawn(function()
                while getgenv().ChaosHubAutoSpawnDoorValue do
                    local v1385 = workspace["001_Lots"]:FindFirstChild(tostring(vu1357))
                    if v1385 and v1385:FindFirstChild("HousePickedByPlayer") then
                        local vu1386 = v1385.HousePickedByPlayer.HouseModel:FindFirstChild("001_HouseDoors")
                        if vu1386 and vu1386:FindFirstChild("HouseDoorFront") and vu1386.HouseDoorFront:FindFirstChild("Knock") then
                            pcall(function()
                                fireclickdetector(vu1386.HouseDoorFront.Knock.TouchBell.ClickDetector)
                            end)
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    })
end)
pcall(function()
    vu1356:AddSection({
        Name = "Teleporte Para Casas"
    })
end)
local vu1387 = {
    ["Casa 1"] = Vector3.new(260.29, 4.37, 209.32),
    ["Casa 2"] = Vector3.new(234.49, 4.37, 228),
    ["Casa 3"] = Vector3.new(262.79, 21.37, 210.84),
    ["Casa 4"] = Vector3.new(229.6, 21.37, 225.4),
    ["Casa 5"] = Vector3.new(173.44, 21.37, 228.11),
    ["Casa 6"] = Vector3.new(- 43, 21, - 137),
    ["Casa 7"] = Vector3.new(- 40, 36, - 137),
    ["Casa 11"] = Vector3.new(- 21, 40, 436),
    ["Casa 12"] = Vector3.new(155, 37, 433),
    ["Casa 13"] = Vector3.new(255, 35, 431),
    ["Casa 14"] = Vector3.new(254, 38, 394),
    ["Casa 15"] = Vector3.new(148, 39, 387),
    ["Casa 16"] = Vector3.new(- 17, 42, 395),
    ["Casa 17"] = Vector3.new(- 189, 37, - 247),
    ["Casa 18"] = Vector3.new(- 354, 37, - 244),
    ["Casa 19"] = Vector3.new(- 456, 36, - 245),
    ["Casa 20"] = Vector3.new(- 453, 38, - 295),
    ["Casa 21"] = Vector3.new(- 356, 38, - 294),
    ["Casa 22"] = Vector3.new(- 187, 37, - 295),
    ["Casa 23"] = Vector3.new(- 410, 68, - 447),
    ["Casa 24"] = Vector3.new(- 348, 69, - 496),
    ["Casa 28"] = Vector3.new(- 103, 12, 1087),
    ["Casa 29"] = Vector3.new(- 730, 6, 808),
    ["Casa 30"] = Vector3.new(- 245, 7, 822),
    ["Casa 31"] = Vector3.new(639, 76, - 361),
    ["Casa 32"] = Vector3.new(- 908, 6, - 361),
    ["Casa 33"] = Vector3.new(- 111, 70, - 417),
    ["Casa 34"] = Vector3.new(230, 38, 569),
    ["Casa 35"] = Vector3.new(- 30, 13, 2209)
}
local v1388, v1389, v1390 = pairs(vu1387)
local vu1391 = vu1356
local vu1392 = {}
while true do
    local v1393
    v1390, v1393 = v1388(v1389, v1390)
    if v1390 == nil then
        break
    end
    table.insert(vu1392, v1390)
end
table.sort(vu1392, function(p1394, p1395)
    return (tonumber(p1394:match("%d+")) or 0) < (tonumber(p1395:match("%d+")) or 0)
end)
pcall(function()
    vu1391:AddDropdown({
        Name = "Selecionar Casa",
        Options = vu1392,
        Callback = function(p1396)
            if p1396 then
                local v1397 = game.Players.LocalPlayer
                if v1397 and v1397.Character then
                    v1397.Character.HumanoidRootPart.CFrame = CFrame.new(vu1387[p1396])
                end
            end
        end
    })
end)
pcall(function()
    vu1391:AddLabel("Teleporte para a Casa que Quiser")
end)
pcall(function()
    vu1391:AddSection({
        Name = "Auto Unban"
    })
end)
local function vu1402()
    while vu1335 do
        pcall(function()
            local v1398, v1399, v1400 = pairs(game:GetService("Workspace"):WaitForChild("001_Lots"):GetDescendants())
            while true do
                local v1401
                v1400, v1401 = v1398(v1399, v1400)
                if v1400 == nil then
                    break
                end
                if v1401.Name:match("^BannedBlock%d+$") then
                    v1401:Destroy()
                end
            end
        end)
        task.wait(1)
    end
end
pcall(function()
    vu1391:AddToggle({
        Name = "Auto Unban",
        Default = false,
        Callback = function(p1403)
            vu1335 = p1403
            if vu1335 then
                print("Auto Unban Activated")
                spawn(vu1402)
            else
                print("Auto Unban Deactivated")
            end
        end
    })
end)
pcall(function()
    vu1391:AddLabel("Te desbane automaticamente das Casas")
end)
pcall(function()
    vu1391:AddSection({
        Name = "Casa RGB"
    })
end)
pcall(function()
    vu1391:AddToggle({
        Name = "Casa RGB",
        Default = false,
        Callback = function(p1404)
            vu1329(p1404)
        end
    })
end)
pcall(function()
    vu1391:AddLabel("Deixa a sua casa RGB")
end)
local v1405 = v16:MakeTab({
    "Audio All",
    "music"
})
v1405:AddSection({
    "Audio Todos os Players"
})
local vu1406 = {{Name="Yamete Kudasai",ID=108494476595033},{Name="Gritinho",ID=5710016194},{Name="Jumpscare Horroroso",ID=85435253347146},{Name="\195\129udio Alto",ID=6855150757},{Name="Ru\195\173do",ID=120034877160791},{Name="Jumpscare 2",ID=110637995610528},{Name="Risada Da Bruxa Minecraft",ID=116214940486087},{Name="The Boiled One",ID=137177653817621},{Name="Deitei Um Ave Maria Doido",ID=128669424001766},{Name="Mandrake Detected",ID=9068077052},{Name="Aaaaaaaaa",ID=80156405968805},{Name="AAAHHHH",ID=9084006093},{Name="amongus",ID=6651571134},{Name="Sus",ID=6701126635},{Name="Gritao AAAAAAAAA",ID=5853668794},{Name="UHHHHH COFFCOFF",ID=7056720271},{Name="SUS",ID=7153419575},{Name="Sonic.exe",ID=2496367477},{Name="Tubers93 1",ID=270145703},{Name="Tubers93 2",ID=18131809532},{Name="John\'s Laugh",ID=130759239},{Name="Nao sei KKKK",ID=6549021381},{Name="Grito",ID=80156405968805},{Name="Sus Audio",ID=7705506391},{Name="AAAH",ID=7772283448},{Name="Gay, gay",ID=18786647417},{Name="Bat Hit",ID=7129073354},{Name="Nuclear Siren",ID=675587093},{Name="Sem ideia de nome KK",ID=7520729342},{Name="Grito 2",ID=91412024101709},{Name="Gemid\195\163o",ID=106835463235574},{Name="Toma Jack",ID=132603645477541},{Name="Pede ifood pede",ID=133843750864059},{Name="I Ghost The down",ID=84663543883498},{Name="Compre OnLine Na shoope",ID=8747441609},{Name="Uh Que Nojo",ID=103440368630269},{Name="Sai dai Lava Prato",ID=101232400175829},{Name="Seloko num compensa",ID=78442476709262},{Name="Estora T\195\173mpano",ID=268116333},{Name="Jumpscare do Freddy",ID=2050522547},{Name="TRTF4 Bicho doido",ID=7192461985},{Name="Grito FNAC",ID=6298999168},{Name="OOF",ID=3060494212},{Name="Michael Hee Hee",ID=3048623108},{Name="Sou o Batman",ID=130769318},{Name="Musiquinha do elevador",ID=9119119619},{Name="OOOOOOOOOOOOO",ID=4551648646},{Name="Smooth Criminal top",ID=4883181281},{Name="Risada Sonic.exe",ID=2496367477},{Name="Jason Scary",ID=4503031546},{Name="\195\137 o M\195\161rio?!",ID=753921930},{Name="Rugido do Dino",ID=5908935575},{Name="Windows Ligando",ID=1626996526},{Name="Esqueleto Dan\195\167ante",ID=138081566},{Name="Noiceeee",ID=664740320},{Name="JOHN CENA",ID=536723564},{Name="Among Us - Revela\195\167\195\163o",ID=7109188321},{Name="Susto que some",ID=7772283448},{Name="Olha o cabelo do cara kkkkk",ID=7294616388},{Name="Guitarra do mal",ID=6965169740},{Name="Sr Pelo Gritando",ID=2542613889},{Name="Big Smoke",ID=1841406761},{Name="Jeff Quietinho...",ID=362990415},{Name="IM GAY kkkkk",ID=1735284953},{Name="Thanos Beatbox",ID=6732677236},{Name="Som Misterioso",ID=6694180424},{Name="Pum estranho",ID=6695903063},{Name="Para\195\173so do Gangsta",ID=6070263388},{Name="Carro Veloz",ID=1836780219},{Name="COMBOOOOOOO",ID=151149854},{Name="Miss\195\163o completa!",ID=6236460927},{Name="MONSTER KILL",ID=130772284},{Name="Pizza do Spiderman",ID=4577928184},{Name="SEGA!",ID=4784763177},{Name="Mario Grit\195\163o",ID=8444148575},{Name="Cachorro Rindo",ID=8449305114},{Name="Omae wa mou...",ID=6537598901},{Name="Drip Goku kkk",ID=6427919074},{Name="Hmmm Chez Burger",ID=1495409522},{Name="Grito Tom e Jerry",ID=7553397015},{Name="Som Assustador",ID=157636218},{Name="LALALA",ID=157043439},{Name="Hosp\195\173cio Som Louco",ID=1835337424},{Name="PC irritado",ID=630046194},{Name="Grito Tenebroso",ID=1835337231},{Name="Alarme Sinistro",ID=1835370059},{Name="Cama Assustadora",ID=9041745502},{Name="S\195\179 Horror",ID=9039981149},{Name="Sonic Esconde-Esconde",ID=1427189017},{Name="Ambiente de Medo",ID=8592341295},{Name="Jeff Rindo",ID=192088330},{Name="STOP POSTING BALLER",ID=13530438299},{Name="Among Us STOP",ID=6677157344},{Name="Eggman KKK",ID=1838396350},{Name="PARE AGORA CRIMINOSO",ID=1141391905},{Name="Bison YES",ID=281177401},{Name="Som Tenebroso ZO",ID=7991927928},{Name="I.M. MEEN!",ID=6129291390},{Name="Est\195\161tica Slender",ID=7220020324},{Name="Pyro Gritando",ID=142151940},{Name="Funk da Favela",ID=1841683877},{Name="Hino da Alemanha",ID=1838111511},{Name="Death is no more \239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189",ID=16831108393},{Name="Risos de Halloween",ID=7649680797},{Name="Risada de Palha\195\167o",ID=861942173},{Name="Risada Maligna",ID=6276581181},{Name="Rindo Do Nada",ID=7854285068},{Name="80s Horror Grit\195\163o",ID=9041745062},{Name="SCREAM 07",ID=9043345732},{Name="Risada do Capeta",ID=221057812},{Name="TF2 Rindo Forte",ID=3604140002},{Name="RISADA DIAB\195\147LICA",ID=9085226116},{Name="Risada Skibidi",ID=18135766937},{Name="Risada do William",ID=7184824254},{Name="Kayn Rindo",ID=7596002192},{Name="Jotaro: Yare yare...",ID=6670645219},{Name="Jotaro Resume Time",ID=5024909429},{Name="Jotaro Time Stop",ID=6678128695},{Name="Jotaro ORA ORA!",ID=6678126154},{Name="Banana Legal",ID=2843742891},{Name="Metal puro sinistro",ID=9042770276},{Name="Rockz\195\163o G\195\179tico",ID=91999828083838},{Name="M\195\186sica doida de fundo",ID=96865721675829},{Name="Sr Pelo Grito Total",ID=547868092},{Name="SPAGHETTI",ID=130992510},{Name="\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189Voc\195\170 devia kkkkk",ID=8432811897},{Name="Yoda Morrendo",ID=2977012439},{Name="CJ ERRADO!",ID=1488973826},{Name="Gato Rindo",ID=18260230947},{Name="Peido meme",ID=4809574295},{Name="FAIL kkkkk",ID=17748195478},{Name="Android Memes",ID=17517499979},{Name="Banheira Explodindo",ID=5535646989},{Name="Grito do Meme Doido",ID=80156405968805},{Name="Cuidado com o Jato!",ID=4910368846},{Name="Falso Mr. Beast",ID=99071954203460},{Name="Me D\195\161 Dinheiro, Por Favor!",ID=115036117519824},{Name="Mario no PS4",ID=4316136477},{Name="P\195\161ssaro Gritando",ID=15704325502},{Name="Rob\195\180 Bravo",ID=124967560907515},{Name="Hadouken do Street Fighter",ID=7169850467},{Name="Meme do Flightreacts",ID=104496776279828},{Name="Bomba Nuclear",ID=6435404036},{Name="Palha\195\167o Assustador",ID=18570268236},{Name="Grito Louco",ID=80959855784919},{Name="Musiquinha Ind\195\173gena",ID=108820459035129},{Name="Palavra do Eggman",ID=118035304314456},{Name="Risada do Eggman",ID=132534814962336},{Name="Jumpscare do Mapa Horror",ID=5351101493},{Name="Tic Tac Toe Assustador",ID=5710016194},{Name="Jumpscare do Fnaf 1",ID=6982454389},{Name="Pesadelo Fnaf 4",ID=6567183465},{Name="Som de Jumpscare",ID=577360152},{Name="Jumpscare Fnaf 6",ID=5220097513},{Name="Freddy Bravo",ID=4441197099},{Name="Inferno do Animador",ID=5600104377},{Name="Jumpscare Foxy",ID=108297983346928},{Name="Jumpscare Sovi\195\169tico",ID=136923704715029},{Name="\195\129udio do Luva de Pedreiro",ID=84342842607926},{Name="Ai, jorra, Lula",ID=18585340476},{Name="Sonic Metal Rindo",ID=134162722627695},{Name="Risada do Metal Sonic",ID=120157368473650},{Name="Sonic Verdadeiro",ID=116998555731655},{Name="Metal Sonic Feroz",ID=112863496598448},{Name="Street Fighter Grit\195\163o",ID=1839225035},{Name="Grito OH MEU DEUS",ID=73790496539188},{Name="Som Muito Alto",ID=8513151605},{Name="Pancada do Chaves",ID=18893898330},{Name="Ai Meu Cora\195\167\195\163o",ID=88347533205938},{Name="Nossaaaa!",ID=17654670293},{Name="Probleminha Meu?",ID=9063453269},{Name="Mensagem Misteriosa",ID=17780313297},{Name="Som Secreto",ID=7339658122},{Name="Encontro Surpresa",ID=1700316475},{Name="Homer doido",ID=5951850953},{Name="Ui, Que Gostoso",ID=138936629170553},{Name="Dan\195\167ando Gatinho",ID=112244173773874},{Name="Torcida Flamengo",ID=83209327610828},{Name="Bambam dan\195\167ando",ID=1136867475},{Name="BIRL! Som",ID=497934208},{Name="Meme do Cavalo",ID=5134648778},{Name="Tome Aqui!",ID=118715295670797},{Name="Ze da Manga",ID=133790455415729},{Name="Eu Sou Samuraiz\195\163o",ID=95779977008485},{Name="Amostra Divertida",ID=75501632675949},{Name="Didi Morreu",ID=71700111426066},{Name="Dudu falando meu nome",ID=129751173555656},{Name="Faz o L!",ID=94350012510206},{Name="Pizza do Spiderman",ID=4577928184},{Name="Ratinho Fofo",ID=97226541386312}}
local vu1407 = nil
v1405:AddTextBox({
    Name = "Insira o ID do \195\129udio ou Musica",
    Description = "Digite o ID do \195\161udio",
    PlaceholderText = "ID do \195\161udio",
    Callback = function(p1408)
        vu1407 = tonumber(p1408)
    end
})
local v1409, v1410, v1411 = ipairs(vu1406)
local vu1412 = vu1407
local v1413 = {}
while true do
    local v1414
    v1411, v1414 = v1409(v1410, v1411)
    if v1411 == nil then
        break
    end
    table.insert(v1413, v1414.Name)
end
v1405:AddDropdown({
    Name = "Selecione o \195\129udio",
    Description = "Escolha um \195\161udio da lista",
    Options = v1413,
    Default = v1413[1],
    Flag = "selected_audio",
    Callback = function(p1415)
        local v1416, v1417, v1418 = ipairs(vu1406)
        while true do
            local v1419
            v1418, v1419 = v1416(v1417, v1418)
            if v1418 == nil then
                break
            end
            if v1419.Name == p1415 then
                vu1412 = v1419.ID
                break
            end
        end
    end
})
local vu1420 = false
v1405:AddSection({
    "Loop de Audio"
})
local vu1421 = nil
local function vu1423()
    if vu1412 then
        local v1422 = {
            game:GetService("Workspace"),
            vu1412,
            1
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(v1422))
        vu1421 = Instance.new("Sound")
        vu1421.SoundId = "rbxassetid://" .. vu1412
        vu1421.Looped = true
        vu1421.Parent = workspace
        vu1421:Play()
    else
        warn("Nenhum \195\161udio selecionado!")
    end
end
local vu1424 = nil
v1405:AddToggle({
    Name = "Loop Tocar \195\129udio",
    Description = "Ativa o loop do \195\161udio",
    Default = false,
    Flag = "audio_loop",
    Callback = function(p1425)
        vu1420 = p1425
        if vu1420 then
            if vu1424 then
                task.spawn(vu1423)
            else
                vu1423()
            end
        elseif vu1421 then
            vu1421:Destroy()
        end
    end
})
v1405:AddToggle({
    Name = "Audio Estourado?",
    Description = "Deixa o audio tocar sem limite de tempo",
    Default = true,
    Flag = "audio_loop",
    Callback = function(p1426)
        vu1424 = p1426
    end
})
v1405:AddParagraph({
    "Info",
    "Loop de tocar \195\129udio (Todos players do Server ouvem)"
})
local function vu1429()
    if vu1412 then
        local v1427 = {
            game:GetService("Workspace"),
            vu1412,
            1
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(v1427))
        local v1428 = Instance.new("Sound")
        v1428.SoundId = "rbxassetid://" .. vu1412
        v1428.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        v1428:Play()
    else
        warn("Nenhum \195\161udio selecionado!")
    end
end
v1405:AddSection({
    "Tocar \195\129udio"
})
v1405:AddButton({
    "Tocar \195\129udio",
    function()
        vu1429()
    end
})
local vu1430 = game:GetService("ReplicatedStorage")
local vu1431 = 6314880174
local function vu1438(p1432)
    local function vu1434()
        local v1433 = workspace:FindFirstChild("Audio all client")
        if not v1433 then
            v1433 = Instance.new("Folder")
            v1433.Name = "Audio all client"
            v1433.Parent = workspace
        end
        return v1433
    end
    (function(p1435)
        if type(p1435) ~= "number" then
            print("Insira um n\195\186mero v\195\161lido!")
            return nil
        end
        local v1436 = vu1434()
        if v1436 then
            local v1437 = Instance.new("Sound")
            v1437.SoundId = "rbxassetid://" .. p1435
            v1437.Volume = 1
            v1437.Looped = false
            v1437.Parent = v1436
            v1437:Play()
            task.wait(1)
            v1437:Destroy()
        end
    end)(p1432)
end
local function vu1441(p1439)
    if type(p1439) ~= "number" then
        print("Insira um n\195\186mero v\195\161lido!")
        return nil
    end
    local v1440 = vu1430:FindFirstChild("1Gu1nSound1s", true)
    if v1440 then
        v1440:FireServer(workspace, p1439, 1)
    end
end
v1405:AddToggle({
    Name = "Estorar ouvido de geral KK",
    Description = "Toca \195\161udio repetidamente para todos",
    Default = false,
    Flag = "audio_spam",
    Callback = function(p1442)
        getgenv().Audio_All_loop_fast = p1442
        while getgenv().Audio_All_loop_fast do
            vu1441(vu1431)
            task.spawn(function()
                vu1438(vu1431)
            end)
            task.wait(0.03)
        end
    end
})
v1405:AddParagraph({
    "Info",
    "Todos do server ouvem o \195\161udio"
})
game:GetService("HttpService")
v1405:AddSection({
    "Audio Car"
})
v1405:AddButton({
    "Tocar audio no carro",
    function()
        return game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer("PickingCarMusicText", vu1431)
    end
})
v1405:AddParagraph({
    "Info:",
    "O som n\195\163o tem limite de tempo pra tocar, mas precisa de gamepass"
})
v1405:AddSection({
    "Audio Radio"
})
v1405:AddButton({
    "Tocar audio no radio (tool)",
    function()
        return game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("PlayerToolEvent"):FireServer("ToolMusicText", vu1431)
    end
})
v1405:AddParagraph({
    "Info:",
    "O som n\195\163o tem limite de tempo pra tocar, mas precisa de gamepass"
})
v1405:AddSection({
    "Audio House"
})
v1405:AddButton({
    "Tocar Audio na Casa",
    function()
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer("PickHouseMusicText", vu1431)
    end
})
v1405:AddParagraph({
    "Info:",
    "O som n\195\163o tem limite de tempo pra tocar, mas precisa de gamepass"
})
v1405:AddSection({
    "Audio Hoverboard"
})
v1405:AddButton({
    "Tocar Audio no Hoverboard",
    function()
        return game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer("PickingScooterMusicText", vu1431)
    end
})
local v1443 = v16:MakeTab({
    "Lag Server",
    "bomb"
})
v1443:AddSection({
    Name = "Shutdown Personalizado"
})
v1443:AddButton({
    Name = "Shutdown Servidor",
    Callback = function()
        for _ = 1, 495 do
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                "PickingTools",
                "FireHose"
            }))
            game:GetService("Players").LocalPlayer.Backpack.FireHose.ToolSound:FireServer(unpack({
                "FireHose",
                "DestroyFireHose"
            }))
        end
        local v1444 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, - 475, 999999999.414)
        local v1445 = game.Players.LocalPlayer.Character.HumanoidRootPart
        repeat
            wait()
        until v1445.Parent == nil
        repeat
            wait()
        until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1444
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script de Dupe",
            Text = "Shutdown Conclu\195\173do, Agora Vai Desligar",
            Button1 = "Ok",
            Duration = 5
        })
        wait()
        local v1446, v1447, v1448 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v1449
            v1448, v1449 = v1446(v1447, v1448)
            if v1448 == nil then
                break
            end
            if v1449.Name == "FireHose" then
                v1449.Parent = game.Players.LocalPlayer.Character
            end
        end
        wait(0.2)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script de Dupe",
            Text = "Iniciando duplica\195\167\195\163o, seja paciente",
            Button1 = "Ok",
            Duration = 5
        })
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999, - 475, 9999)
    end
})
v1443:AddButton({
    Name = "Shutdown Servidor (Erro de Internet)",
    Callback = function()
        for _ = 1, 535 do
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                "PickingTools",
                "FireHose"
            }))
            game:GetService("Players").LocalPlayer.Backpack.FireHose.ToolSound:FireServer(unpack({
                "FireHose",
                "DestroyFireHose"
            }))
        end
        local v1450 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, - 475, 999999999.414)
        local v1451 = game.Players.LocalPlayer.Character.HumanoidRootPart
        repeat
            wait()
        until v1451.Parent == nil
        repeat
            wait()
        until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1450
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script de Dupe",
            Text = "Shutdown Conclu\195\173do, Agora Vai Desligar",
            Button1 = "Ok",
            Duration = 5
        })
        wait()
        local v1452, v1453, v1454 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v1455
            v1454, v1455 = v1452(v1453, v1454)
            if v1454 == nil then
                break
            end
            if v1455.Name == "FireHose" then
                v1455.Parent = game.Players.LocalPlayer.Character
            end
        end
        wait(0.2)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script de Dupe",
            Text = "Iniciando duplica\195\167\195\163o, seja paciente",
            Button1 = "Ok",
            Duration = 5
        })
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999, - 475, 9999)
    end
})
v1443:AddButton({
    Name = "Shutdown Servidor (Erro de Conex\195\163o Expirada)",
    Callback = function()
        for _ = 1, 635 do
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                "PickingTools",
                "FireHose"
            }))
            game:GetService("Players").LocalPlayer.Backpack.FireHose.ToolSound:FireServer(unpack({
                "FireHose",
                "DestroyFireHose"
            }))
        end
        local v1456 = game.ascended
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1456
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script de Dupe",
            Text = "Shutdown Conclu\195\173do, Agora Vai Desligar",
            Button1 = "Ok",
            Duration = 5
        })
        wait()
        local v1457, v1458, v1459 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v1460
            v1459, v1460 = v1457(v1458, v1459)
            if v1459 == nil then
                break
            end
            if v1460.Name == "FireHose" then
                v1460.Parent = game.Players.LocalPlayer.Character
            end
        end
        wait(0.2)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script de Dupe",
            Text = "Iniciando duplica\195\167\195\163o, seja paciente",
            Button1 = "Ok",
            Duration = 5
        })
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999, - 475, 9999)
    end
})
v1443:AddSection({
    Name = "Lag com Laptop"
})
local vu1461 = {
    LagLaptop = false
}
local function vu1464(p1462)
    local v1463 = p1462:FindFirstChildWhichIsA("ClickDetector")
    if v1463 then
        fireclickdetector(v1463)
    end
end
local function vu1468(p1465, p1466)
    if p1465 then
        local v1467 = 0
        while v1467 < p1466 and vu1461.LagLaptop do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p1465.CFrame
            vu1464(p1465)
            v1467 = v1467 + 1
            wait(0.0001)
        end
    else
        warn("Laptop n\195\163o encontrado.")
    end
end
v1443:AddToggle({
    Name = "Lag com Laptop",
    Default = false,
    Callback = function(p1469)
        vu1461.LagLaptop = p1469
        if p1469 then
            local vu1470 = workspace:FindFirstChild("WorkspaceCom"):FindFirstChild("001_GiveTools"):FindFirstChild("Laptop")
            if vu1470 then
                spawn(function()
                    vu1468(vu1470, 999999999)
                end)
            else
                warn("Laptop n\195\163o encontrado.")
            end
        else
            print("Lag com Laptop desativado.")
        end
    end
})
v1443:AddParagraph({
    "Informa\195\167\195\163o de Lag",
    "O efeito de lag come\195\167a ap\195\179s 35 segundos"
})
v1443:AddSection({
    Name = "Lag com Telefone"
})
vu1461.LagPhone = false
local function vu1474(p1471, p1472)
    if p1471 then
        local v1473 = 0
        while v1473 < p1472 and vu1461.LagPhone do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p1471.CFrame
            vu1464(p1471)
            v1473 = v1473 + 1
            wait(0.01)
        end
    else
        warn("Telefone n\195\163o encontrado.")
    end
end
v1443:AddToggle({
    Name = "Lag com Telefone",
    Default = false,
    Callback = function(p1475)
        vu1461.LagPhone = p1475
        if p1475 then
            local vu1476 = workspace:FindFirstChild("WorkspaceCom"):FindFirstChild("001_CommercialStores"):FindFirstChild("CommercialStorage1"):FindFirstChild("Store"):FindFirstChild("Tools"):FindFirstChild("Iphone")
            if vu1476 then
                spawn(function()
                    vu1474(vu1476, 999999)
                end)
            else
                warn("Telefone n\195\163o encontrado.")
            end
        else
            print("Lag com Telefone desativado.")
        end
    end
})
v1443:AddParagraph({
    "Informa\195\167\195\163o de Lag",
    "O script come\195\167a a causar lag ap\195\179s 35 segundos"
})
v1443:AddSection({
    Name = "Lag com Bomba"
})
local vu1477 = false
v1443:AddToggle({
    Name = "Lag com Bomba",
    Default = false,
    Callback = function(p1478)
        if p1478 then
            vu1477 = true
            local vu1479 = game.Players.LocalPlayer
            local vu1480 = (vu1479.Character or vu1479.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            local v1481 = game:GetService("Workspace")
            local vu1482 = game:GetService("ReplicatedStorage")
            local vu1483 = v1481:WaitForChild("WorkspaceCom"):WaitForChild("001_CriminalWeapons"):WaitForChild("GiveTools"):WaitForChild("Bomb")
            task.spawn(function()
                while vu1477 do
                    if vu1483 and vu1480 then
                        vu1480.CFrame = vu1483.CFrame
                        fireclickdetector(vu1483.ClickDetector)
                        task.wait(0.00001)
                    else
                        task.wait(0.0001)
                    end
                end
            end)
            task.spawn(function()
                while vu1477 do
                    if vu1483 and vu1480 then
                        local v1484 = game:GetService("VirtualInputManager")
                        v1484:SendMouseButtonEvent(500, 500, 0, true, game, 0)
                        task.wait(1.5)
                        v1484:SendMouseButtonEvent(500, 500, 0, false, game, 0)
                        local v1485 = {
                            "Bomb" .. vu1479.Name
                        }
                        vu1482:WaitForChild("RE"):WaitForChild("1Blo1wBomb1sServe1r"):FireServer(unpack(v1485))
                    end
                    task.wait(1.5)
                end
            end)
        else
            vu1477 = false
        end
    end
})
v1443:AddParagraph({
    "Informa\195\167\195\163o de Lag",
    "O script come\195\167a a causar lag ap\195\179s 35 segundos"
})
local v1486 = v16:MakeTab({
    "Nomes",
    "Paper"
})
local vu1487 = false
local vu1488 = false
v1486:AddSection({
    Name = "Nome RGB"
})
v1486:AddToggle({
    Name = "Nome RGB",
    Description = "Ativar Nome RGB",
    Default = false,
    Callback = function(p1489)
        vu1487 = p1489
        print(p1489 and "RGB Name ativado" or "RGB Name desativado")
    end
})
v1486:AddSection({
    Name = "RGB BIO"
})
v1486:AddToggle({
    Name = "RGB BIO",
    Description = "Ativar RGB BIO",
    Default = false,
    Callback = function(p1490)
        vu1488 = p1490
        print(p1490 and "RGB BIO ativado" or "RGB BIO desativado")
    end
})
local vu1491 = {
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(0, 255, 0),
    Color3.fromRGB(0, 0, 255),
    Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(255, 0, 255),
    Color3.fromRGB(0, 255, 255),
    Color3.fromRGB(255, 165, 0),
    Color3.fromRGB(128, 0, 128),
    Color3.fromRGB(255, 20, 147)
}
spawn(function()
    while true do
        if vu1487 then
            local v1492 = {
                "PickingRPNameColor",
                vu1491[math.random(# vu1491)]
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r"):FireServer(unpack(v1492))
        end
        wait(0.7)
    end
end)
spawn(function()
    while true do
        if vu1488 then
            local v1493 = {
                "PickingRPBioColor",
                vu1491[math.random(# vu1491)]
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r"):FireServer(unpack(v1493))
        end
        wait(0.7)
    end
end)
v1486:AddSection({
    Name = "Adicionar Nomes no Jogador"
})
local v1494, v1495, v1496 = ipairs({
    {
        "Anonymus",
        " Anonymus "
    },
    {
        "PRO",
        " PRO "
    },
    {
        "ERR0R_666",
        " ERR0R_666 "
    },
    {
        "DARKNE1SSS",
        " DARKNE1SSS "
    },
    {
        "GHOST",
        " GHOST "
    },
    {
        "JOKER",
        " JOKER "
    },
    {
        "ADMIN",
        " ADMIN "
    },
    {
        "TUBERS93",
        " TUBERS 93 "
    },
    {
        "CO0LKID",
        " CO0 LKID "
    },
    {
        "GAME ATTACKED BY CHAOS",
        " GAME ATTACKED BY CHAOS "
    },
    {
        "INC0MUN",
        " INC0MUN"
    },
    {
        "BAD BOY",
        " BAD BOY "
    }
})
while true do
    local vu1497
    v1496, vu1497 = v1494(v1495, v1496)
    if v1496 == nil then
        break
    end
    v1486:AddButton({
        Name = "Name: " .. vu1497[1],
        Callback = function()
            game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", vu1497[2])
        end
    })
end
local v1498 = v16:MakeTab({
    "Carro",
    "car"
})
local vu1499 = {
    Color3.new(1, 0, 0),
    Color3.new(0, 1, 0),
    Color3.new(0, 0, 1),
    Color3.new(1, 1, 0),
    Color3.new(1, 0, 1),
    Color3.new(0, 1, 1),
    Color3.new(0.5, 0, 0.5),
    Color3.new(1, 0.5, 0)
}
local vu1500 = game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sCa1r")
local vu1501 = false
local vu1502 = nil
local function vu1507()
    while vu1501 do
        local v1503, v1504, v1505 = ipairs(vu1499)
        while true do
            local v1506
            v1505, v1506 = v1503(v1504, v1505)
            if v1505 == nil then
                break
            end
            if not vu1501 then
                return
            end
            vu1500:FireServer(unpack({
                "PickingCarColor",
                v1506
            }))
            wait(1)
        end
    end
end
v1498:AddButton({
    Name = "Remove All Cars",
    Callback = function()
        if false ~= true then
            local v1508 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1754, - 2, 58)
            wait(0.3)
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                "PickingBoat",
                "MilitaryBoatFree"
            }))
            wait(1)
            local v1509, v1510, v1511 = pairs(game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"]:GetDescendants())
            local v1512 = nil
            while true do
                local v1513
                v1511, v1513 = v1509(v1510, v1511)
                if v1511 == nil then
                    break
                end
                if v1513:IsA("VehicleSeat") then
                    v1512 = v1513
                end
            end
            while game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 do
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true and not game.Players.LocalPlayer.Character.Humanoid.SeatPart == v1512 then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1512.CFrame
                task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1512.CFrame + Vector3.new(0, 1, 0)
                task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1512.CFrame + Vector3.new(0, - 1, 0)
                task.wait()
                if game.Players.LocalPlayer.Character.Humanoid.SeatPart == v1512 then
                    local v1514, v1515, v1516 = pairs(game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"]:GetDescendants())
                    while true do
                        local v1517
                        v1516, v1517 = v1514(v1515, v1516)
                        if v1516 == nil then
                            break
                        end
                        if v1517.Name == "PhysicalWheel" then
                            v1517:Destroy()
                        end
                    end
                    local v1518 = Instance.new("BodyThrust", game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass)
                    v1518.Force = Vector3.new(50000, 0, 50000)
                    v1518.Name = "SUNTERIUM HUB FLING"
                    v1518.Location = game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.Position
                    local v1519, v1520, v1521 = pairs(game.workspace.Vehicles:GetChildren())
                    while true do
                        local v1522
                        v1521, v1522 = v1519(v1520, v1521)
                        if v1521 == nil then
                            break
                        end
                        local v1523, v1524, v1525 = pairs(v1522:GetDescendants())
                        while true do
                            local v1526
                            v1525, v1526 = v1523(v1524, v1525)
                            if v1525 == nil then
                                break
                            end
                            if v1526.Name == "VehicleSeat" then
                                local v1527 = Instance.new("BodyVelocity", game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass)
                                v1527.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                v1527.P = 1250
                                v1527.Velocity = Vector3.new(0, 0, 0)
                                v1527.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
                                for _ = 1, 25 do
                                    local v1528 = {
                                        x = 0,
                                        y = 0,
                                        z = 0,
                                        x = v1526.Position.X,
                                        y = v1526.Position.Y,
                                        z = v1526.Position.Z
                                    }
                                    v1528.x = v1528.x + v1526.Velocity.X / 2
                                    v1528.y = v1528.y + v1526.Velocity.Y / 2
                                    v1528.z = v1528.z + v1526.Velocity.Z / 2
                                    if v1528.y > - 200 then
                                        game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(v1528.x, v1528.y, v1528.z))
                                        task.wait()
                                        game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(v1528.x, v1528.y, v1528.z)) + Vector3.new(0, - 2, 0)
                                        task.wait()
                                        game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(v1528.x, v1528.y, v1528.z)) * CFrame.new(0, 0, 2)
                                        task.wait()
                                        game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(v1528.x, v1528.y, v1528.z)) * CFrame.new(2, 0, 0)
                                        task.wait()
                                    else
                                        game.workspace.Vehicles[game.Players.LocalPlayer.Name .. "Car"].Chassis.Mass.CFrame = CFrame.new(0, 1000, 0)
                                    end
                                    task.wait()
                                end
                            end
                        end
                    end
                    task.wait()
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack({
                        "DeleteAllVehicles"
                    }))
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    wait()
                    local v1529 = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
                    v1529.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    v1529.P = 1250
                    v1529.Velocity = Vector3.new(0, 0, 0)
                    v1529.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
                    wait(0.1)
                    for _ = 1, 2 do
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1508
                    end
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1508
                    wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy()
                    wait(0.2)
                    return
                end
            end
        end
    end
})
v1498:AddParagraph({
    "Informa\195\167\195\163o:",
    "Recomendo usar 2 vezes para garantir que todos os ve\195\173culos sejam removidos"
})
v1498:AddButton({
    Name = "Bring All Cars",
    Callback = function()
        local v1530 = next
        local v1531, v1532 = workspace.Vehicles:GetChildren()
        while true do
            local v1533
            v1532, v1533 = v1530(v1531, v1532)
            if v1532 == nil then
                break
            end
            v1533:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame())
        end
    end
})
v1498:AddParagraph({
    "Informa\195\167\195\163o:",
    "Puxa todos os carros do servidor at\195\169 voc\195\170"
})
v1498:AddSection({
    "Speed V1"
})
local vu1534 = 50
local vu1535 = 50
local function vu1541(p1536, p1537)
    local v1538 = game.Players.LocalPlayer
    local v1539 = workspace.Vehicles:FindFirstChild(v1538.Name .. "Car")
    if v1539 then
        local v1540 = v1539:FindFirstChild("Body").VehicleSeat
        if v1540 then
            v1540.TopSpeed.Value = p1536
            v1540.Turbo.Value = p1537
            wait(0.1)
            redzlib:MakeNotification({
                Name = "Chaos Hub",
                Content = "Done, You can Move Now!",
                Time = 5
            })
        else
            redzlib:MakeNotification({
                Name = "Error",
                Content = "Sit in car first!",
                Time = 5
            })
        end
    else
        redzlib:MakeNotification({
            Name = "Error",
            Content = "Put a Car First!",
            Time = 5
        })
    end
end
v1498:AddTextBox({
    Name = "Speed",
    PlaceholderText = "50",
    Callback = function(p1542)
        local v1543 = tonumber(p1542)
        if v1543 then
            vu1534 = v1543
        end
    end
})
v1498:AddTextBox({
    Name = "Turbo",
    PlaceholderText = "50",
    Callback = function(p1544)
        local v1545 = tonumber(p1544)
        if v1545 then
            vu1535 = v1545
        end
    end
})
v1498:AddTextBox({
    Name = "Drift",
    PlaceholderText = "50",
    Callback = function(p1546)
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sCa1r"):FireServer(unpack({
            "DriftingNumber",
            p1546
        }))
    end
})
v1498:AddButton({
    Name = "Aplicar Velocidade, Turbo e drift",
    Callback = function()
        vu1541(vu1534, vu1535)
    end
})
v1498:AddSection({
    "Turbo V2"
})
v1498:AddButton({
    Name = "Turbo V2 [Melhor]",
    Callback = function()
        local v1547 = game.Players.LocalPlayer
        local vu1548 = (v1547.Character or v1547.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
        local vu1549 = false
        local vu1550 = 30
        local vu1551 = Instance.new("ScreenGui", v1547.PlayerGui)
        local function v1557(_, p1552, p1553, p1554, p1555)
            local v1556 = Instance.new("ImageButton", vu1551)
            v1556.Size = UDim2.new(0, 60, 0, 60)
            v1556.Position = p1552
            v1556.BackgroundTransparency = 1
            v1556.Image = "rbxassetid://" .. p1553
            v1556.Rotation = p1554
            v1556.MouseButton1Down:Connect(p1555)
            return v1556
        end
        local v1558 = v1557("BotaoFrente", UDim2.new(0, 10, 0.35, 0), "18478249606", 0, function()
            vu1549 = true
            while vu1549 do
                if vu1548 then
                    vu1548.Velocity = vu1548.CFrame.LookVector * vu1550
                end
                task.wait()
            end
        end)
        local v1559 = v1557("BotaoTras", UDim2.new(0, 10, 0.5, 0), "18478249606", 180, function()
            vu1549 = true
            while vu1549 do
                if vu1548 then
                    vu1548.Velocity = - vu1548.CFrame.LookVector * vu1550
                end
                task.wait()
            end
        end)
        local v1560 = v1557("BotaoEsquerda", UDim2.new(1, - 210, 0.3, 0), "18478249606", - 90, function()
            vu1549 = true
            while vu1549 do
                if vu1548 then
                    vu1548.Velocity = - vu1548.CFrame.RightVector * vu1550
                end
                task.wait()
            end
        end)
        local v1561 = v1557("BotaoDireita", UDim2.new(1, - 140, 0.3, 0), "18478249606", 90, function()
            vu1549 = true
            while vu1549 do
                if vu1548 then
                    vu1548.Velocity = vu1548.CFrame.RightVector * vu1550
                end
                task.wait()
            end
        end)
        local function v1562()
            vu1549 = false
            if vu1548 then
                vu1548.Velocity = Vector3.new(0, 0, 0)
            end
        end
        v1558.MouseButton1Up:Connect(v1562)
        v1559.MouseButton1Up:Connect(v1562)
        v1560.MouseButton1Up:Connect(v1562)
        v1561.MouseButton1Up:Connect(v1562)
        local v1563 = Instance.new("ImageButton", vu1551)
        v1563.Size = UDim2.new(0, 60, 0, 60)
        v1563.Position = UDim2.new(1, - 130, 0, 10)
        v1563.BackgroundTransparency = 1
        v1563.Image = "rbxassetid://97607579386418"
        v1563.MouseButton1Down:Connect(function()
            vu1550 = 300
        end)
        local vu1564 = Instance.new("TextButton", vu1551)
        vu1564.Size = UDim2.new(0, 60, 0, 60)
        vu1564.Position = UDim2.new(0, 10, 0, 10)
        vu1564.BackgroundTransparency = 1
        vu1564.Text = "-"
        vu1564.TextSize = 40
        vu1564.TextColor3 = Color3.fromRGB(255, 255, 255)
        local vu1565 = {
            v1558,
            v1559,
            v1560,
            v1561,
            v1563
        }
        local vu1566 = false
        local function v1571()
            vu1566 = not vu1566
            local v1567, v1568, v1569 = ipairs(vu1565)
            while true do
                local v1570
                v1569, v1570 = v1567(v1568, v1569)
                if v1569 == nil then
                    break
                end
                v1570.Visible = not vu1566
            end
            if vu1566 then
                vu1564.Text = "+"
            else
                vu1564.Text = "-"
            end
        end
        vu1564.MouseButton1Down:Connect(v1571)
    end
})
v1498:AddParagraph({
    "Informa\195\167\195\163o:",
    "Ambos os turbos n\195\163o precisam de Gamepass"
})
v1498:AddSection({
    "Music for Cars, Houses"
})
local function vu1573(p1572)
    if p1572 and p1572 ~= "" then
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sCa1r"):FireServer(unpack({
            "PickingCarMusicText",
            p1572
        }))
    end
end
local function vu1575(p1574)
    if p1574 and p1574 ~= "" then
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack({
            "PickingScooterMusicText",
            p1574
        }))
    end
end
local function vu1577(p1576)
    if p1576 and p1576 ~= "" then
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack({
            "PickHouseMusicText",
            p1576
        }))
    end
end
v1498:AddTextBox({
    Name = "Music ID (Gamepass Required)",
    PlaceholderText = "Enter Music ID",
    Callback = function(p1578)
        vu1573(p1578)
        vu1575(p1578)
        vu1577(p1578)
    end
})
v1498:AddDropdown({
    Name = "Select Music (Gamepass Required)",
    Options = {
        "71373562243752",
        "138129019858244",
        "138480372357526",
        "122199933878670",
        "74187181906707",
        "82793916573031",
        "107421761958790",
        "91394092603440",
        "113198957973421",
        "81452315991527",
        "93786060174790",
        "74752089069476",
        "131592235762789",
        "132081774507495",
        "124394293950763",
        "83381647646350",
        "16190782181",
        "1841682637",
        "3148329638",
        "124928367733395",
        "106317184644394",
        "100247055114504",
        "107035638005233",
        "109351649716900",
        "84751398517083",
        "125259969174449",
        "89269071829332",
        "88094479399489",
        "72440232513341",
        "92893359226454",
        "111281710445018",
        "98677515506006",
        "105882833374061",
        "104541292443133",
        "105832154444494",
        "84733736048142",
        "94718473830640",
        "130324826943718",
        "123039027577735",
        "113312785512702",
        "139161205970637",
        "113768944849093",
        "135667903253566",
        "81335392002580",
        "77428091165211",
        "14145624031",
        "8080255618",
        "8654835474",
        "13530439502",
        "18841894272",
        "90323407842935",
        "136932193331774",
        "113504863495384",
        "1836175030",
        "79998949362539",
        "109188610023287",
        "134939857094956",
        "132245626038510",
        "124567809277408",
        "72591334498716",
        "76578817848504",
        "17422156627",
        "81902909302285",
        "130449561461006",
        "110519234838026",
        "106434295960535",
        "86271123924168",
        "85481949732828",
        "106476166672589",
        "87968531262747",
        "73966367524216",
        "137962454483542",
        "98371771055411",
        "111668097052966",
        "140095882383991",
        "122873874738223",
        "105461615542794"
    },
    Callback = function(p1579)
        vu1573(p1579)
        vu1575(p1579)
        vu1577(p1579)
    end
})
v1498:AddParagraph({
    "Note",
    "O script de m\195\186sica funciona em todos os carros e casas"
})
v1498:AddSection({
    "Car RGB"
})
v1498:AddToggle({
    Name = "Car RGB",
    Default = false,
    Callback = function(p1580)
        vu1501 = p1580
        if vu1501 then
            vu1502 = coroutine.create(vu1507)
            coroutine.resume(vu1502)
        end
    end
})
v1498:AddParagraph({
    "Note",
    "Ativando isso deixar\195\161 seu carro RGB"
})
v1498:AddSection({
    "Spam Horn"
})
local vu1581 = false
local vu1582 = {
    "Horn"
}
local function vu1583()
    while vu1581 do
        vu1500:FireServer(unpack(vu1582))
        wait(0.1)
    end
end
v1498:AddToggle({
    Name = "Spam Horn",
    Default = false,
    Callback = function(p1584)
        vu1581 = p1584
        if vu1581 then
            spawn(vu1583)
        end
    end
})
v1498:AddSection({
    "Fly Car"
})
v1498:AddButton({
    Name = "Fly Car",
    Callback = function()
        local vu1585 = Instance.new("ScreenGui")
        local v1586 = Instance.new("Frame")
        local vu1587 = Instance.new("Frame")
        local v1588 = Instance.new("TextButton")
        local vu1589 = Instance.new("TextBox")
        local vu1590 = Instance.new("TextButton")
        local v1591 = Instance.new("TextLabel")
        local v1592 = Instance.new("TextLabel")
        local vu1593 = Instance.new("TextLabel")
        local vu1594 = Instance.new("TextButton")
        local v1595 = Instance.new("TextLabel")
        local v1596 = Instance.new("TextButton")
        local vu1597 = Instance.new("TextButton")
        local vu1598 = Instance.new("Frame")
        local v1599 = Instance.new("TextButton")
        local v1600 = Instance.new("TextButton")
        vu1585.Name = "Car Fly gui v2"
        vu1585.Parent = game.CoreGui
        vu1585.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        v1586.Name = "Drag"
        v1586.Parent = vu1585
        v1586.Active = true
        v1586.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        v1586.BorderSizePixel = 0
        v1586.Draggable = true
        v1586.Position = UDim2.new(0.482438415, 0, 0.454874992, 0)
        v1586.Size = UDim2.new(0, 237, 0, 27)
        vu1587.Name = "FlyFrame"
        vu1587.Parent = v1586
        vu1587.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        vu1587.BorderSizePixel = 0
        vu1587.Draggable = true
        vu1587.Position = UDim2.new(- 0.00200000009, 0, 0.989000022, 0)
        vu1587.Size = UDim2.new(0, 237, 0, 139)
        v1588.Name = "ddnsfbfwewefe"
        v1588.Parent = vu1587
        v1588.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        v1588.BorderSizePixel = 0
        v1588.Position = UDim2.new(- 0.000210968778, 0, - 0.00395679474, 0)
        v1588.Size = UDim2.new(0, 237, 0, 27)
        v1588.Font = Enum.Font.SourceSans
        v1588.Text = "by Lusquinha_067"
        v1588.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1588.TextScaled = true
        v1588.TextSize = 14
        v1588.TextWrapped = true
        vu1589.Name = "Speed"
        vu1589.Parent = vu1587
        vu1589.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
        vu1589.BorderColor3 = Color3.fromRGB(0, 0, 191)
        vu1589.BorderSizePixel = 0
        vu1589.Position = UDim2.new(0.445025861, 0, 0.402877688, 0)
        vu1589.Size = UDim2.new(0, 111, 0, 33)
        vu1589.Font = Enum.Font.SourceSans
        vu1589.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
        vu1589.Text = "50"
        vu1589.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu1589.TextScaled = true
        vu1589.TextSize = 14
        vu1589.TextWrapped = true
        vu1590.Name = "Fly"
        vu1590.Parent = vu1587
        vu1590.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        vu1590.BorderSizePixel = 0
        vu1590.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
        vu1590.Size = UDim2.new(0, 199, 0, 32)
        vu1590.Font = Enum.Font.SourceSans
        vu1590.Text = "Enable"
        vu1590.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu1590.TextScaled = true
        vu1590.TextSize = 14
        vu1590.TextWrapped = true
        vu1590.MouseButton1Click:Connect(function()
            local v1601 = game.Players.LocalPlayer.Character.HumanoidRootPart
            vu1590.Visible = false
            vu1593.Text = "On"
            vu1593.TextColor3 = Color3.fromRGB(0, 255, 0)
            vu1594.Visible = true
            vu1598.Visible = true
            local v1602 = Instance.new("BodyVelocity", v1601)
            local vu1603 = Instance.new("BodyGyro", v1601)
            v1602.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            game:GetService("RunService").RenderStepped:connect(function()
                vu1603.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                vu1603.D = 5000
                vu1603.P = 100000
                vu1603.CFrame = game.Workspace.CurrentCamera.CFrame
            end)
        end)
        v1591.Name = "Speeed"
        v1591.Parent = vu1587
        v1591.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        v1591.BorderSizePixel = 0
        v1591.Position = UDim2.new(0.0759493634, 0, 0.402877688, 0)
        v1591.Size = UDim2.new(0, 87, 0, 32)
        v1591.ZIndex = 0
        v1591.Font = Enum.Font.SourceSans
        v1591.Text = "Speed:"
        v1591.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1591.TextScaled = true
        v1591.TextSize = 14
        v1591.TextWrapped = true
        v1592.Name = "Stat"
        v1592.Parent = vu1587
        v1592.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        v1592.BorderSizePixel = 0
        v1592.Position = UDim2.new(0.299983799, 0, 0.239817441, 0)
        v1592.Size = UDim2.new(0, 85, 0, 15)
        v1592.Font = Enum.Font.SourceSans
        v1592.Text = "Status:"
        v1592.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1592.TextScaled = true
        v1592.TextSize = 14
        v1592.TextWrapped = true
        vu1593.Name = "Stat2"
        vu1593.Parent = vu1587
        vu1593.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        vu1593.BorderSizePixel = 0
        vu1593.Position = UDim2.new(0.546535194, 0, 0.239817441, 0)
        vu1593.Size = UDim2.new(0, 27, 0, 15)
        vu1593.Font = Enum.Font.SourceSans
        vu1593.Text = "Off"
        vu1593.TextColor3 = Color3.fromRGB(255, 0, 0)
        vu1593.TextScaled = true
        vu1593.TextSize = 14
        vu1593.TextWrapped = true
        vu1594.Name = "Unfly"
        vu1594.Parent = vu1587
        vu1594.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        vu1594.BorderSizePixel = 0
        vu1594.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
        vu1594.Size = UDim2.new(0, 199, 0, 32)
        vu1594.Visible = false
        vu1594.Font = Enum.Font.SourceSans
        vu1594.Text = "Disable"
        vu1594.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu1594.TextScaled = true
        vu1594.TextSize = 14
        vu1594.TextWrapped = true
        vu1594.MouseButton1Click:Connect(function()
            local v1604 = game.Players.LocalPlayer.Character.HumanoidRootPart
            vu1590.Visible = true
            vu1593.Text = "Off"
            vu1593.TextColor3 = Color3.fromRGB(255, 0, 0)
            wait()
            vu1594.Visible = false
            vu1598.Visible = false
            v1604:FindFirstChildOfClass("BodyVelocity"):Destroy()
            v1604:FindFirstChildOfClass("BodyGyro"):Destroy()
        end)
        v1595.Name = "Vfly"
        v1595.Parent = v1586
        v1595.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        v1595.BorderSizePixel = 0
        v1595.Size = UDim2.new(0, 57, 0, 27)
        v1595.Font = Enum.Font.SourceSans
        v1595.Text = "Car fly"
        v1595.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1595.TextScaled = true
        v1595.TextSize = 14
        v1595.TextWrapped = true
        v1596.Name = "Close"
        v1596.Parent = v1586
        v1596.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        v1596.BorderSizePixel = 0
        v1596.Position = UDim2.new(0.875, 0, 0, 0)
        v1596.Size = UDim2.new(0, 27, 0, 27)
        v1596.Font = Enum.Font.SourceSans
        v1596.Text = "X"
        v1596.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1596.TextScaled = true
        v1596.TextSize = 14
        v1596.TextWrapped = true
        v1596.MouseButton1Click:Connect(function()
            vu1585:Destroy()
        end)
        vu1597.Name = "Minimize"
        vu1597.Parent = v1586
        vu1597.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        vu1597.BorderSizePixel = 0
        vu1597.Position = UDim2.new(0.75, 0, 0, 0)
        vu1597.Size = UDim2.new(0, 27, 0, 27)
        vu1597.Font = Enum.Font.SourceSans
        vu1597.Text = "-"
        vu1597.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu1597.TextScaled = true
        vu1597.TextSize = 14
        vu1597.TextWrapped = true
        function Mini()
            if vu1597.Text ~= "-" then
                if vu1597.Text == "+" then
                    vu1597.Text = "-"
                    vu1587.Visible = true
                end
            else
                vu1597.Text = "+"
                vu1587.Visible = false
            end
        end
        vu1597.MouseButton1Click:Connect(Mini)
        vu1598.Name = "Fly on"
        vu1598.Parent = vu1585
        vu1598.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        vu1598.BorderSizePixel = 0
        vu1598.Position = UDim2.new(0.117647067, 0, 0.550284624, 0)
        vu1598.Size = UDim2.new(0.148000002, 0, 0.314999998, 0)
        vu1598.Visible = false
        vu1598.Active = true
        vu1598.Draggable = true
        v1599.Name = "W"
        v1599.Parent = vu1598
        v1599.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        v1599.BorderSizePixel = 0
        v1599.Position = UDim2.new(0.134719521, 0, 0.0152013302, 0)
        v1599.Size = UDim2.new(0.708999991, 0, 0.499000013, 0)
        v1599.Font = Enum.Font.SourceSans
        v1599.Text = "^"
        v1599.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1599.TextScaled = true
        v1599.TextSize = 14
        v1599.TextWrapped = true
        v1599.TouchLongPress:Connect(function()
            local v1605 = game.Players.LocalPlayer.Character.HumanoidRootPart
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1605.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
        end)
        v1599.MouseButton1Click:Connect(function()
            local v1606 = game.Players.LocalPlayer.Character.HumanoidRootPart
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * vu1589.Text
            wait(0.1)
            v1606.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
        end)
        v1600.Name = "S"
        v1600.Parent = vu1598
        v1600.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
        v1600.BorderSizePixel = 0
        v1600.Position = UDim2.new(0.134000003, 0, 0.479999989, 0)
        v1600.Rotation = 180
        v1600.Size = UDim2.new(0.708999991, 0, 0.499000013, 0)
        v1600.Font = Enum.Font.SourceSans
        v1600.Text = "^"
        v1600.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1600.TextScaled = true
        v1600.TextSize = 14
        v1600.TextWrapped = true
        v1600.TouchLongPress:Connect(function()
            local v1607 = game.Players.LocalPlayer.Character.HumanoidRootPart
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1607.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
        end)
        v1600.MouseButton1Click:Connect(function()
            local v1608 = game.Players.LocalPlayer.Character.HumanoidRootPart
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * - vu1589.Text
            wait(0.1)
            v1608.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
        end)
    end
})
v1498:AddParagraph({
    "Note",
    "Ativando isso voc\195\170 pode voar com o seu carro"
})
v1498:AddSection({
    "Spam Car"
})
local vu1609 = {
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
local vu1610 = false
local function vu1612(p1611)
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack({
        "PickingCar",
        p1611
    }))
end
v1498:AddToggle({
    Name = "Spam Cars",
    Default = false,
    Callback = function(p1613)
        vu1610 = p1613
        if vu1610 then
            task.spawn(function()
                while vu1610 do
                    local v1614, v1615, v1616 = ipairs(vu1609)
                    while true do
                        local v1617
                        v1616, v1617 = v1614(v1615, v1616)
                        if v1616 == nil or not vu1610 then
                            break
                        end
                        vu1612(v1617)
                        wait(0.4)
                    end
                end
            end)
        end
    end
})
v1498:AddParagraph({
    "Informa\195\167\195\163o:",
    "Spamar v\195\161rios carros"
})
local vu1618 = game.Players.LocalPlayer
local vu1619 = {}
local function vu1624()
    vu1619 = {}
    local v1620, v1621, v1622 = pairs(game.Players:GetPlayers())
    while true do
        local v1623
        v1622, v1623 = v1620(v1621, v1622)
        if v1622 == nil then
            break
        end
        table.insert(vu1619, v1623.Name)
    end
    return vu1619
end
vu1624()
local v1625 = v16:MakeTab({
    "Crian\195\167a",
    "baby"
})
v1625:AddSection({
    Name = "Child"
})
local vu1626 = nil
local vu1628 = v1625:AddDropdown({
    Name = "Selecione um player para perseguir",
    Options = vu1619,
    Default = "...",
    Callback = function(p1627)
        if p1627 then
            if game.Players:FindFirstChild(p1627) then
                vu1626 = p1627
            else
                vu1626 = nil
            end
        end
    end
})
v1625:AddButton({
    Name = "Atualizar Player List",
    Callback = function()
        local v1629 = {}
        local v1630, v1631, v1632 = pairs(v1629:GetPlayers())
        while true do
            local v1633
            v1632, v1633 = v1630(v1631, v1632)
            if v1632 == nil then
                break
            end
            table.insert(v1629, v1633.Name)
        end
        return Update(vu1628, v1629)
    end
})
game.Players.PlayerAdded:Connect(function()
    local v1634, v1635, v1636 = pairs(game:GetService("Players"):GetPlayers())
    local v1637 = {}
    while true do
        local v1638
        v1636, v1638 = v1634(v1635, v1636)
        if v1636 == nil then
            break
        end
        table.insert(v1637, v1638.Name)
    end
    return Update(vu1628, v1637)
end)
game.Players.PlayerRemoving:Connect(function(_)
    local v1639, v1640, v1641 = pairs(game.Players:GetPlayers())
    local v1642 = {}
    while true do
        local v1643
        v1641, v1643 = v1639(v1640, v1641)
        if v1641 == nil then
            break
        end
        table.insert(v1642, v1643.Name)
    end
    return Update(vu1628, v1642)
end)
v1625:AddButton({
    Name = "Enviar crian\195\167a",
    Callback = function()
        if vu1626 then
            if not (workspace:FindFirstChild(vu1618.Name) and workspace[vu1618.Name]:FindFirstChild("FollowCharacter")) then
                local vu1644 = {
                    "CharacterFollowSpawnPlayer",
                    "BabyBoy"
                }
                local v1645, v1646 = pcall(function()
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(vu1644))
                end)
                if not v1645 then
                    warn("Erro ao enviar crian\195\167a: " .. v1646)
                end
            end
            task.wait(0.2)
            if workspace:FindFirstChild(vu1618.Name) then
                local v1647, v1648, v1649 = pairs(workspace[vu1618.Name]:GetChildren())
                while true do
                    local v1650
                    v1649, v1650 = v1647(v1648, v1649)
                    if v1649 == nil then
                        break
                    end
                    if v1650:IsA("BasePart") then
                        v1650.CanCollide = true
                    end
                end
            end
            local vu1651 = vu1626
            if workspace:FindFirstChild(vu1651) and (workspace:FindFirstChild(vu1618.Name) and workspace[vu1618.Name]:FindFirstChild("FollowCharacter")) then
                workspace[vu1618.Name].FollowCharacter.Parent = workspace[vu1651]
                if rawget(getgenv(), "RunService") then
                    return
                end
                getgenv().RunService = game:GetService("RunService").Heartbeat:Connect(function()
                    local v1652 = workspace[vu1651]:FindFirstChild("FollowCharacter")
                    local v1653 = v1652 and v1652:FindFirstChild("Torso") and (v1652.Torso:FindFirstChild("BodyPosition") and workspace[vu1651]:FindFirstChild("HumanoidRootPart"))
                    if v1653 then
                        v1652.Torso.BodyPosition.Position = v1653.Position - v1653.CFrame.LookVector * 3
                        v1652.Torso.BodyGyro.CFrame = v1653.CFrame
                    end
                end)
            end
        else
            warn("Nenhum jogador selecionado!")
        end
    end
})
v1625:AddButton({
    Name = "Retornar crian\195\167a",
    Callback = function()
        if rawget(getgenv(), "RunService") then
            getgenv().RunService:Disconnect()
            getgenv().RunService = nil
        end
        local vu1654 = {
            "DeleteFollowCharacter"
        }
        local v1655, v1656 = pcall(function()
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(vu1654))
        end)
        if not v1655 then
            warn("Erro ao retornar crian\195\167a: " .. v1656)
        end
        local vu1657 = {
            "CharacterFollowSpawnPlayer",
            "BabyBoy"
        }
        local v1658, v1659 = pcall(function()
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(vu1657))
        end)
        if not v1658 then
            warn("Erro ao spawnar crian\195\167a: " .. v1659)
        end
    end
})
v1625:AddToggle({
    Name = "Spectar Player",
    Default = false,
    Callback = function(p1660)
        local vu1661 = game:GetService("Players")
        local v1662 = game:GetService("RunService")
        local vu1663 = vu1661.LocalPlayer
        local vu1664 = workspace.CurrentCamera
        if p1660 then
            if not vu1626 then
                warn("Nenhum jogador selecionado para spectar!")
                return false
            end
            if not rawget(getgenv(), "CameraConnection") then
                getgenv().CameraConnection = v1662.Heartbeat:Connect(function()
                    local v1665 = vu1661:FindFirstChild(vu1626)
                    if v1665 and v1665.Character and v1665.Character:FindFirstChild("Humanoid") then
                        vu1664.CameraSubject = v1665.Character.Humanoid
                    else
                        if rawget(getgenv(), "CameraConnection") then
                            getgenv().CameraConnection:Disconnect()
                            getgenv().CameraConnection = nil
                        end
                        local v1666 = vu1664
                        local v1667
                        if vu1663.Character then
                            v1667 = vu1663.Character:FindFirstChild("Humanoid") or nil
                        else
                            v1667 = nil
                        end
                        v1666.CameraSubject = v1667
                    end
                end)
            end
        else
            if rawget(getgenv(), "CameraConnection") then
                getgenv().CameraConnection:Disconnect()
                getgenv().CameraConnection = nil
            end
            if vu1663.Character and vu1663.Character:FindFirstChild("Humanoid") then
                vu1664.CameraSubject = vu1663.Character.Humanoid
            end
        end
    end
})
v1625:AddParagraph({
    Title = "FE",
    Content = "Funcionalidades FE"
})
local v1668 = v16:MakeTab({
    "Local Player",
    "user"
})
v1668:AddSection({
    Name = "Velocidade, Gravidade e Pulo"
})
v1668:AddTextBox({
    Name = "Velocidade do Player",
    PlaceholderText = "Digite a velocidade",
    Callback = function(p1669)
        local v1670 = tonumber(p1669)
        if v1670 and vu1618.Character and vu1618.Character:FindFirstChild("Humanoid") then
            vu1618.Character.Humanoid.WalkSpeed = v1670
        else
            warn("Velocidade inv\195\161lida ou personagem n\195\163o encontrado!")
        end
    end
})
v1668:AddButton({
    Name = "Resetar velocidade",
    Callback = function()
        if vu1618.Character and vu1618.Character:FindFirstChild("Humanoid") then
            vu1618.Character.Humanoid.WalkSpeed = 16
        end
    end
})
v1668:AddTextBox({
    Name = "Tamanho do Pulo",
    PlaceholderText = "Digite a altura do pulo",
    Callback = function(p1671)
        local v1672 = tonumber(p1671)
        if v1672 and vu1618.Character and vu1618.Character:FindFirstChild("Humanoid") then
            vu1618.Character.Humanoid.JumpPower = v1672
        else
            warn("Altura de pulo inv\195\161lida ou personagem n\195\163o encontrado!")
        end
    end
})
v1668:AddButton({
    Name = "Resetar Pulo",
    Callback = function()
        if vu1618.Character and vu1618.Character:FindFirstChild("Humanoid") then
            vu1618.Character.Humanoid.JumpPower = 50
        end
    end
})
v1668:AddTextBox({
    Name = "Gravidade",
    PlaceholderText = "Digite a gravidade",
    Callback = function(p1673)
        local v1674 = tonumber(p1673)
        if v1674 then
            workspace.Gravity = v1674
        else
            warn("Gravidade inv\195\161lida!")
        end
    end
})
v1668:AddButton({
    Name = "Resetar Gravidade",
    Callback = function()
        workspace.Gravity = 196.2
    end
})
v1668:AddSection({
    Name = "Spam Chat"
})
local vu1675 = nil
local vu1676 = game:GetService("TextChatService")
local vu1677 = vu1676.ChatInputBarConfiguration
if vu1677 then
    vu1677 = vu1676.ChatInputBarConfiguration.TargetTextChannel
end
function sendchat(pu1678)
    if pu1678 and pu1678 ~= "" then
        if vu1676.ChatVersion ~= Enum.ChatVersion.LegacyChatService then
            if vu1677 then
                local v1679, v1680 = pcall(function()
                    vu1677:SendAsync(pu1678)
                end)
                if not v1679 then
                    warn("Erro ao enviar chat: " .. v1680)
                end
            end
        else
            local v1681, v1682 = pcall(function()
                game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(pu1678, "All")
            end)
            if not v1681 then
                warn("Erro ao enviar chat: " .. v1682)
            end
        end
    end
end
v1668:AddTextBox({
    Name = "Enter text",
    PlaceholderText = "Digite a mensagem",
    Callback = function(p1683)
        vu1675 = p1683
    end
})
v1668:AddButton({
    Name = "Send Chat",
    Callback = function()
        sendchat(vu1675)
    end
})
getgenv().ChaosHubEnviarDelay = 1
v1668:AddSlider({
    Name = "Delay do Spam",
    Min = 0.4,
    Max = 10,
    Default = 1,
    Increment = 0.1,
    Callback = function(p1684)
        getgenv().ChaosHubEnviarDelay = p1684
    end
})
v1668:AddToggle({
    Name = "Spam Chat",
    Default = false,
    Flag = "Spawn de textos",
    Callback = function(p1685)
        getgenv().ChaosHubSpawnText = p1685
        while getgenv().ChaosHubSpawnText do
            sendchat(vu1675)
            task.wait(getgenv().ChaosHubEnviarDelay)
        end
    end
})
v1668:AddButton({
    Name = "Spam chat Hacked By Chaos",
    Callback = function()
        if game:GetService("TextChatService").ChatVersion ~= Enum.ChatVersion.TextChatService then
            print("Nadaa")
        else
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("hi\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rServer: Hacked by Chaos Hub")
        end
    end
})
v1668:AddButton({
    Name = "Clear Chat",
    Callback = function()
        if game:GetService("TextChatService").ChatVersion ~= Enum.ChatVersion.TextChatService then
            print("Nadaa")
        else
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("hi\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rServer: Chat Cleared")
        end
    end
})
v1668:AddSection({
    Name = "Headsit"
})
local vu1686 = nil
local vu1687 = nil
local vu1689 = v1668:AddDropdown({
    Name = "Selecionar Player",
    Default = "",
    Options = vu1619,
    Callback = function(p1688)
        vu1686 = p1688
    end
})
v1668:AddToggle({
    Name = "Head Sit",
    Default = false,
    Callback = function(p1690)
        local v1691 = game.Players.LocalPlayer
        local v1692 = v1691.Character or v1691.CharacterAdded:Wait()
        local vu1693 = v1692:WaitForChild("HumanoidRootPart")
        local vu1694 = v1692:WaitForChild("Humanoid")
        if not vu1686 or vu1686 == "" then
            warn("Nenhum jogador selecionado para Head Sit!")
            return false
        end
        local vu1695 = game.Players:FindFirstChild(vu1686)
        if p1690 then
            if not (vu1695 and vu1695.Character) then
                warn("Jogador selecionado n\195\163o encontrado ou sem Character!")
                return false
            end
            vu1694.Sit = true
            if vu1687 then
                vu1687:Disconnect()
            end
            vu1687 = game:GetService("RunService").Heartbeat:Connect(function()
                if vu1695.Character and (vu1695.Character:FindFirstChild("Head") and vu1694.Sit) then
                    vu1693.CFrame = vu1695.Character.Head.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 1.6, 0.4)
                elseif vu1687 then
                    vu1687:Disconnect()
                    vu1687 = nil
                    vu1694.Sit = false
                end
            end)
        else
            if vu1687 then
                vu1687:Disconnect()
                vu1687 = nil
            end
            vu1694.Sit = false
        end
    end
})
v1668:AddButton({
    Name = "Atualizar tabela",
    Callback = function()
        vu1624()
        return Update(vu1689)
    end
})
v1668:AddSection({
    "Others"
})
v1668:AddButton({
    "Anti Lag",
    function()
        local v1696 = game:GetService("Players")
        game:GetService("Debris")
        game:GetService("RunService")
        local vu1697 = {
            "ParticleEmitter",
            "Smoke",
            "Fire",
            "Sparkles",
            "Explosion",
            "Trail",
            "Beam",
            "PointLight",
            "SpotLight",
            "SurfaceLight"
        }
        local function vu1703(p1698)
            local v1699, v1700, v1701 = ipairs(p1698:GetDescendants())
            while true do
                local v1702
                v1701, v1702 = v1699(v1700, v1701)
                if v1701 == nil then
                    break
                end
                if table.find(vu1697, v1702.ClassName) then
                    if v1702:IsA("ParticleEmitter") or v1702:IsA("Trail") then
                        v1702.Enabled = false
                    else
                        v1702:Destroy()
                    end
                end
            end
        end
        local function vu1714(pu1704)
            local function v1712(p1705)
                local v1706, v1707, v1708 = ipairs(p1705:GetChildren())
                local v1709 = {}
                while true do
                    local v1710
                    v1708, v1710 = v1706(v1707, v1708)
                    if v1708 == nil then
                        break
                    end
                    if v1710:IsA("Tool") then
                        local v1711 = v1710.Name
                        if v1709[v1711] then
                            v1710:Destroy()
                            warn("[ANTI-DUPE] Tool duplicada removida de", pu1704.Name, "->", v1711)
                        else
                            v1709[v1711] = true
                        end
                    end
                end
            end
            if pu1704.Character then
                v1712(pu1704.Character)
                vu1703(pu1704.Character)
            end
            local v1713 = pu1704:FindFirstChildOfClass("Backpack")
            if v1713 then
                v1712(v1713)
            end
        end
        local v1715, v1716, v1717 = ipairs(v1696:GetPlayers())
        local vu1718 = vu1697
        local vu1719 = vu1703
        while true do
            local vu1720
            v1717, vu1720 = v1715(v1716, v1717)
            if v1717 == nil then
                break
            end
            task.defer(function()
                vu1714(vu1720)
            end)
        end
        v1696.PlayerAdded:Connect(function(pu1721)
            pu1721.CharacterAdded:Connect(function(p1722)
                task.wait(1)
                vu1719(p1722)
                vu1714(pu1721)
            end)
            task.spawn(function()
                while pu1721.Parent do
                    vu1714(pu1721)
                    task.wait(5)
                end
            end)
        end)
        workspace.DescendantAdded:Connect(function(p1723)
            if table.find(vu1718, p1723.ClassName) then
                if p1723:IsA("ParticleEmitter") or p1723:IsA("Trail") then
                    p1723.Enabled = false
                else
                    p1723:Destroy()
                end
            end
        end)
    end
})
v1668:AddToggle({
    Name = "Esp Players",
    Default = false,
    Callback = function(p1724)
        local vu1725 = game:GetService("Players")
        local vu1726 = game:GetService("RunService")
        local vu1727 = game:GetService("CoreGui")
        local vu1728 = vu1725.LocalPlayer
        local vu1729 = p1724
        local function vu1731(p1730)
            return p1730:FindFirstChild("HumanoidRootPart") or (p1730:FindFirstChild("Torso") or p1730:FindFirstChild("UpperTorso"))
        end
        local function vu1735(p1732, p1733)
            local v1734 = 10 ^ (p1733 or 0)
            return math.floor(p1732 * v1734 + 0.5) / v1734
        end
        local function vu1741()
            local v1736 = vu1727
            local v1737, v1738, v1739 = pairs(v1736:GetChildren())
            while true do
                local v1740
                v1739, v1740 = v1737(v1738, v1739)
                if v1739 == nil then
                    break
                end
                if v1740.Name:find("_ESP") then
                    v1740:Destroy()
                end
            end
        end
        local function vu1751(pu1742)
            task.spawn(function()
                local v1743 = vu1727:FindFirstChild(pu1742.Name .. "_ESP")
                if v1743 then
                    v1743:Destroy()
                end
                repeat
                    task.wait()
                until pu1742.Character and vu1731(pu1742.Character) and pu1742.Character:FindFirstChildOfClass("Humanoid")
                local vu1744 = Instance.new("Folder")
                vu1744.Name = pu1742.Name .. "_ESP"
                vu1744.Parent = vu1727
                local vu1745 = Instance.new("Highlight")
                vu1745.Name = "Highlight"
                vu1745.Parent = vu1744
                vu1745.Adornee = pu1742.Character
                vu1745.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                vu1745.FillTransparency = 0.5
                vu1745.OutlineTransparency = 0
                vu1745.FillColor = pu1742.TeamColor.Color
                vu1745.OutlineColor = Color3.new(1, 1, 1)
                pu1742:GetPropertyChangedSignal("TeamColor"):Connect(function()
                    if vu1745 then
                        vu1745.FillColor = pu1742.TeamColor.Color
                    end
                end)
                if pu1742.Character:FindFirstChild("Head") then
                    local v1746 = Instance.new("BillboardGui")
                    v1746.Name = "Info"
                    v1746.Adornee = pu1742.Character.Head
                    v1746.Parent = vu1744
                    v1746.Size = UDim2.new(0, 100, 0, 150)
                    v1746.StudsOffset = Vector3.new(0, 1, 0)
                    v1746.AlwaysOnTop = true
                    local vu1747 = Instance.new("TextLabel")
                    vu1747.Parent = v1746
                    vu1747.BackgroundTransparency = 1
                    vu1747.Position = UDim2.new(0, 0, 0, - 50)
                    vu1747.Size = UDim2.new(0, 100, 0, 100)
                    vu1747.Font = Enum.Font.SourceSansSemibold
                    vu1747.TextSize = 20
                    vu1747.TextColor3 = Color3.new(1, 1, 1)
                    vu1747.TextStrokeTransparency = 0
                    vu1747.TextYAlignment = Enum.TextYAlignment.Bottom
                    local vu1748 = nil
                    vu1748 = vu1726.RenderStepped:Connect(function()
                        if pu1742.Character and vu1731(pu1742.Character) and (pu1742.Character:FindFirstChildOfClass("Humanoid") and (vu1728.Character and vu1731(vu1728.Character))) then
                            local v1749 = math.floor((vu1731(vu1728.Character).Position - vu1731(pu1742.Character).Position).Magnitude)
                            local v1750 = vu1735(pu1742.Character:FindFirstChildOfClass("Humanoid").Health, 1)
                            vu1747.Text = "Name: " .. pu1742.Name .. " | Health: " .. v1750 .. " | Studs: " .. v1749
                        end
                        if not vu1744.Parent then
                            vu1748:Disconnect()
                        end
                    end)
                end
                pu1742.CharacterAdded:Connect(function()
                    if vu1729 then
                        vu1751(pu1742)
                    end
                end)
            end)
        end
        local function vu1757()
            vu1741()
            local v1752 = vu1725
            local v1753, v1754, v1755 = pairs(v1752:GetPlayers())
            while true do
                local v1756
                v1755, v1756 = v1753(v1754, v1755)
                if v1755 == nil then
                    break
                end
                if v1756 ~= vu1728 and vu1729 then
                    vu1751(v1756)
                end
            end
        end
        if vu1729 then
            vu1757()
            vu1725.PlayerAdded:Connect(function(pu1758)
                if vu1729 then
                    pu1758.CharacterAdded:Connect(function()
                        task.wait(1)
                        if vu1729 then
                            vu1751(pu1758)
                        end
                    end)
                end
            end)
            vu1725.PlayerRemoving:Connect(function()
                task.wait(1)
                if vu1729 then
                    vu1757()
                end
            end)
        else
            vu1741()
        end
    end
})
local v1759 = v16:MakeTab({
    "Teleportes",
    "tp"
})
local v1760 = {
    {
        "Aos Bastidores",
        CFrame.new(192, 4, 272)
    },
    {
        "Ao Centro Urbano",
        CFrame.new(136, 4, 117)
    },
    {
        "\195\128 \195\129rea do Crime",
        CFrame.new(- 119, - 28, 235)
    },
    {
        "\195\128 Casa Deserta",
        CFrame.new(986, 4, 63)
    },
    {
        "Ao Portal da Ag\195\170ncia",
        CFrame.new(672, 4, - 296)
    },
    {
        "Ao Esconderijo",
        CFrame.new(505, - 75, 143)
    },
    {
        "\195\128 Escola",
        CFrame.new(- 312, 4, 211)
    },
    {
        "Ao Caf\195\169 Brook",
        CFrame.new(161, 8, 52)
    },
    {
        "Ao Ponto Inicial",
        CFrame.new(- 26, 4, - 23)
    },
    {
        "Ao Arco Principal",
        CFrame.new(- 589, 141, - 59)
    },
    {
        "Ao Hospital",
        CFrame.new(- 309, 4, 71)
    },
    {
        "\195\128 Base da Ag\195\170ncia",
        CFrame.new(179, 4, - 464)
    },
    {
        "\195\128 Sala Oculta da Oficina",
        CFrame.new(0, 4, - 495)
    },
    {
        "\195\128 Sala Secreta 2",
        CFrame.new(- 343, 4, - 613)
    },
    {
        "\195\128 Ilha Isolada",
        CFrame.new(- 1925, 23, 127)
    },
    {
        "\195\128 Pra\195\167a dos Hot\195\169is",
        CFrame.new(182, 4, 150)
    },
    {
        "Escalar Montanha 1",
        CFrame.new(- 670, 251, 765)
    },
    {
        "Ao Banco Principal",
        CFrame.new(2.28, 4.65, 254.58)
    },
    {
        "\195\128 Loja de Roupas",
        CFrame.new(- 46.15, 4.65, 253.2)
    },
    {
        "Ao Ref\195\186gio",
        CFrame.new(- 88.48, 22.05, 262.34)
    },
    {
        "\195\128 Cl\195\173nica Dent\195\161ria",
        CFrame.new(- 53.58, 22.15, 265.61)
    },
    {
        "\195\128 Cafeteria",
        CFrame.new(- 97.12, 4.65, 254.99)
    }
}
local v1761, v1762, v1763 = ipairs(v1760)
while true do
    local vu1764
    v1763, vu1764 = v1761(v1762, v1763)
    if v1763 == nil then
        break
    end
    v1759:AddButton({
        vu1764[1],
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = vu1764[2]
        end
    })
end
local v1765 = v16:MakeTab({
    "Itens",
    "backpack"
})
v1765:AddSection({
    Name = "Items Control"
})
v1765:AddButton({
    Name = "Clear All Tools",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack({
            "ClearAllTools"
        }))
    end
})
v1765:AddSection({
    Name = "Equip Items"
})
v1765:AddButton({
    Name = "Equipar todos os itens",
    Callback = function()
        local v1766, v1767, v1768 = pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())
        while true do
            local v1769
            v1768, v1769 = v1766(v1767, v1768)
            if v1768 == nil then
                break
            end
            if v1769:IsA("Tool") then
                v1769.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
})
local v1770 = v16:MakeTab({
    "Scripts Universais",
    "plane"
})
v1770:AddButton({
    Name = "ShiftLock",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/N2tiHgyv"))()
    end
})
v1770:AddButton({
    Name = "Ghost Hub",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-GhostHub-16534"))()
    end
})
v1770:AddButton({
    Name = "InfiniteYield - Cmd",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})
v1770:AddButton({
    Name = "TP Tool",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/err0r129/KptHadesBlair/main/Bao.lua"))()
    end
})
v1770:AddButton({
    Name = "Fly Gui",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fly-v3-7412"))()
    end
})
v1770:AddButton({
    Name = "Nameless Admin - Cmd",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
    end
})
v1770:AddButton({
    Name = "Telekinesis",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md", true))()
    end
})
return "GHavLp0TkNZiWuYBfJrEx7mXDC6bR9c3OnsFqdMAYVPl84eo52"