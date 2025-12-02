-- Bazuka as Were


local v1 = false
local vu2 = Color3.new(1, 0.917647, 0.0117647)
local vu3 = Color3.fromRGB(167, 167, 167)
if _G.rp then
    return warn("rochips already loaded!")
end
pcall(function()
    _G.rp = true
end)
local v4 = "V1.2.6"
local vu5 = "turn on \'part claim\' in localplayer page"
local vu6 = next
local vu7 = pcall
local _ = xpcall
local vu8 = type
local vu9 = typeof
local vu10 = game
local vu11 = vu10
if not vu11:IsLoaded() then
    vu11.Loaded:Wait()
end
lib = {}
local vu12 = vu11:FindFirstChildOfClass("Players")
local vu13 = vu12.LocalPlayer
local vu14 = vu13:GetMouse()
local vu15 = vu11:FindFirstChildOfClass("Workspace")
local vu16 = vu11:FindFirstChildOfClass("CoreGui")
local vu17 = vu13:FindFirstChildOfClass("PlayerGui")
local vu18 = vu11:FindFirstChildOfClass("RunService")
vu11:GetService("GuiService")
local vu19 = vu11:GetService("TweenService")
local vu20 = vu10:GetService("VirtualInputManager")
vu10:GetService("VirtualUser")
local vu21 = vu11:GetService("TextChatService")
local vu22 = vu11:GetService("ReplicatedStorage")
local vu23 = vu11:FindFirstChildOfClass("TeleportService")
vu11:FindFirstChildOfClass("AssetService")
local vu24 = vu13.Character
local vu25 = vu11:FindFirstChildOfClass("StarterGui")
vu11:FindFirstChildOfClass("UserInputService")
local v26 = vu18.Stepped
local vu27 = vu18.RenderStepped
local vu28 = vu18.Heartbeat
local v29 = getfenv()
os.date("*t")
local vu30 = v29.sethiddenproperty or v29.set_hidden_property or (v29.sethiddenprop or v29.set_hidden_prop)
if not (v29.setsimulationradius or v29.setsimradius) then
    local _ = v29.set_simulation_radius
end
local v31 = v29.readfile
local vu32 = v29.isfile
local vu33 = v29.delfile
local vu34 = Vector3.new
local vu35 = vu34(0, 0, 0)
local vu36 = CFrame.new
local vu37 = false
local vu38 = task.wait
local vu39 = task.spawn
local _ = task.delay
local vu40 = string.char
local vu41 = math.random
local _ = table.find
local vu42 = table.insert
local _ = table.remove
local vu43 = Instance.new
local vu44 = Instance.new
local vu45 = CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(90), 0, 0)
CFrame.Angles(0, 0, 0)
vu11:GetService("TextChatService")
local vu46 = loadstring or print
local vu47 = false
local vu48 = nil
local vu49 = false
local vu50 = false
vu12:GetUserThumbnailAsync(vu13.UserId, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
frozenParts = {}
idle1anim = nil
idle2anim = nil
walkanim = nil
runanim = nil
jumpanim = nil
climbanim = nil
fallanim = nil
swimanim = nil
swimidleanim = nil
defidle1anim = nil
defidle2anim = nil
defwalkanim = nil
defrunanim = nil
defjumpanim = nil
defclimbanim = nil
deffallanim = nil
defswimanim = nil
defswimidleanim = nil
local v51, v52 = vu7(function()
	-- upvalues: (ref) vu10, (ref) vu13
    return vu10:GetService("BadgeService"):UserHasBadgeAsync(vu13.UserId, 255944582115322)
end)
if vu10:GetService("MarketplaceService"):UserOwnsGamePassAsync(vu13.UserId, 892291136) then
    if vu13.UserId ~= 5808016088 then
        v1 = true
        print("tax")
        if not vu32(".cz.json") then
            writefile(".cz.json", "z")
        end
    end
else
    v1 = false
end
if v51 and v52 then
    if vu13.UserId ~= 5808016088 then
        v1 = true
        print("VlP")
        if not vu32(".cz.json") then
            writefile(".cz.json", "z")
        end
    end
else
    v1 = false
end
local vu53 = {
    "Head",
    "UpperTorso",
    "LowerTorso",
    "RightUpperArm",
    "LeftUpperArm",
    "RightLowerArm",
    "LeftLowerArm",
    "RightHand",
    "LeftHand",
    "RightUpperLeg",
    "LeftUpperLeg",
    "RightLowerLeg",
    "LeftLowerLeg",
    "RightFoot",
    "LeftFoot",
    "Torso",
    "Right Arm",
    "Left Arm",
    "Right Leg",
    "Left Leg",
    "HumanoidRootPart"
}
local function vu61(p54, p55, p56)
	-- upvalues: (ref) vu9
    if vu9(p54) == "Instance" then
        local v57, v58, v59 = pairs(p54:GetChildren())
        while true do
            local v60
            v59, v60 = v57(v58, v59)
            if v59 == nil then
                break
            end
            if v60.Name == p55 and v60:IsA(p56) then
                return v60
            end
        end
    end
    return nil
end
local function vu64(p62)
	-- upvalues: (ref) vu41, (ref) vu40
    local v63 = ""
    for _ = 1, p62 or vu41(8, 15) do
        if vu41(1, 2) ~= 1 then
            v63 = v63 .. vu40(vu41(97, 122)):upper()
        else
            v63 = v63 .. vu40(vu41(97, 122)):lower()
        end
    end
    return v63
end
local vu65 = nil
local vu66 = nil
({}).Text = ""
local function vu69()
	-- upvalues: (ref) vu66, (ref) vu13, (ref) vu10
    vu66 = nil
    local v67 = vu13.Character
    if v67 and v67.Parent then
        local v68 = v67:FindFirstChildOfClass("Humanoid") or v67:FindFirstChildWhichIsA("BasePart")
        if v68 then
            vu10:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
            vu10:GetService("Workspace").CurrentCamera.CameraSubject = v68
        end
    else
        mOut("character not found!", 1)
    end
end
local vu70 = vu32(".cz.json") and true or v1
local v71, v72, v73 = pairs({
    "qSvLua",
    "r0b33333",
    "D3nim_Blox",
    "sreymey2k",
    "mancenido02",
    "MastersMZ",
    "AduritianZ",
    "kshamitimmy"
})
local vu74 = vu66
local vu75 = false
local function vu78(p76)
    return p76:gsub("..", function(p77)
        return string.char(tonumber(p77, 16))
    end)
end
while true do
    local v79, v80 = v71(v72, v73)
    if v79 == nil then
        break
    end
    v73 = v79
    if v80 == vu13.Name and v80 == vu13.Character.Name then
        print("showcaser user")
        notif = Instance.new("Sound", vu13.Character)
        notif.Parent = vu13
        notif.Volume = 2
        notif.SoundId = "rbxassetid://3442983711"
        notif.Looped = false
        notif:Play()
        vu10:GetService("StarterGui"):SetCore("SendNotification", {
            ["Title"] = "showcaser mode",
            ["Text"] = "youtube showcaser",
            ["Icon"] = "rbxthumb://type=Asset&id=11574221331&w=150&h=150"
        })
        Duration = 11
        vu70 = true
    end
end
coroutine.wrap(function()
	-- upvalues: (ref) vu16, (ref) vu32, (ref) vu33, (ref) vu13
    if isfolder("d_android_script_dir") then
        local v81 = vu16
        local v82, v83, v84 = pairs(v81:GetDescendants())
        while true do
            local vu85
            v84, vu85 = v82(v83, v84)
            if v84 == nil then
                break
            end
            if vu85:FindFirstChild("Executor") and (vu85:FindFirstChild("Sidebar") and (vu85:FindFirstChild("Settings") and vu85:FindFirstChild("DarkOverlay"))) then
                if vu32("DeltaPlugins/.chip") then
                    vu33("DeltaPlugins/.chip")
                end
                local v86 = vu16
                local v87, v88, v89 = pairs(v86:GetDescendants())
                while true do
                    local vu90
                    v89, vu90 = v87(v88, v89)
                    if v89 == nil then
                        break
                    end
                    if vu90.DataCost == 22 and vu90:FindFirstChild("ImageButton") then
                        vu90.ImageButton.BackgroundTransparency = 0.2
                        vu90.ImageButton.Image = "http://www.roblox.com/asset/?id=100091047170095"
                        vu90.ImageButton.ImageColor3 = vu90.ImageButton.UIStroke.Color
                        vu90.ImageButton.UIStroke.Changed:Connect(function()
							-- upvalues: (ref) vu90, (ref) vu85
                            vu90.ImageButton.ImageColor3 = vu90.ImageButton.UIStroke.Color
                            if vu85:FindFirstChild("Sidebar") then
                                vu85:FindFirstChild("Sidebar").ActiveColor.Value = vu90.ImageButton.UIStroke.Color
                            end
                        end)
                        if vu85:FindFirstChild("Executor") and vu85.Executor.Executor.Overlay.Code:FindFirstChild("script1.lua") then
                            vu85.Executor.Executor.Overlay.Code["script1.lua"].PlaceholderText = "Thanks For Using Rochips universal!, \nI appreciate you " .. vu13.DisplayName .. "."
                        end
                        if vu85:FindFirstChild("Sidebar") then
                            vu85:FindFirstChild("Sidebar").ActiveColor.Value = vu90.ImageButton.UIStroke.Color
                        end
                    end
                end
            end
        end
    end
end)()
local vu91 = Vector2.new(10, 10)
local vu92 = 0.01
local vu93 = 0.9999999
local vu94 = Instance.new("Part")
Instance.new("Script")
local vu95 = Instance.new("SurfaceGui")
vu94.Anchored = true
vu94.Archivable = true
vu94.BackParamA = - 0.5
vu94.BackParamB = 0.5
vu94.BackSurface = Enum.SurfaceType.Smooth
vu94.BackSurfaceInput = Enum.InputType.NoInput
vu94.BottomParamA = - 0.5
vu94.BottomParamB = 0.5
vu94.BottomSurface = Enum.SurfaceType.Smooth
vu94.BottomSurfaceInput = Enum.InputType.NoInput
vu94.BrickColor = BrickColor.new("Medium stone grey")
vu94.CFrame = CFrame.new(17.25, 2, - 6.5) * CFrame.Angles(0, 0, - 1)
vu94.CanCollide = false
vu94.CollisionGroupId = "0"
vu94.Color = Color3.new(0.639216, 0.635294, 0.647059)
vu94.FrontParamA = - 0.5
vu94.FrontParamB = 0.5
vu94.FrontSurface = Enum.SurfaceType.Smooth
vu94.FrontSurfaceInput = Enum.InputType.NoInput
vu94.LeftParamA = - 0.5
vu94.LeftParamB = 0.5
vu94.LeftSurface = Enum.SurfaceType.Smooth
vu94.LeftSurfaceInput = Enum.InputType.NoInput
vu94.Locked = false
vu94.Material = Enum.Material.Plastic
vu94.Name = vu64()
vu94.Orientation = Vector3.new(0, 0, 0)
vu94.Parent = Workspace
vu94.Position = Vector3.new(17.25, 2, - 6.5)
vu94.Reflectance = 0
vu94.RightParamA = - 0.5
vu94.RightParamB = 0.5
vu94.RightSurface = Enum.SurfaceType.Smooth
vu94.RightSurfaceInput = Enum.InputType.NoInput
vu94.RotVelocity = Vector3.new(0, 0, 0)
vu94.Rotation = Vector3.new(0, 0, 0)
vu94.Shape = Enum.PartType.Block
vu94.Size = Vector3.new(7, 4, 2)
vu94.TopParamA = - 0.5
vu94.TopParamB = 0.5
vu94.TopSurface = Enum.SurfaceType.Smooth
vu94.TopSurfaceInput = Enum.InputType.NoInput
vu94.Transparency = 1
vu94.Velocity = Vector3.new(0, 0, 0)
local vu96 = CFrame.new(0, 0, 5)
local vu97 = 0.05
vu27:Connect(function()
	-- upvalues: (ref) vu10, (ref) vu97, (ref) vu96, (ref) vu19, (ref) vu94
    local v98 = vu10:GetService("Players").LocalPlayer:GetMouse()
    local _ = v98.ViewSizeX
    local _ = v98.ViewSizeY
    local v99 = (v98.X - v98.ViewSizeX / 2) * vu97
    local v100 = (v98.Y - v98.ViewSizeY / 2) * vu97
    local v101 = workspace.CurrentCamera.CFrame * vu96
    vu19:Create(vu94, TweenInfo.new(0.1), {
        ["CFrame"] = v101 * CFrame.Angles(0, math.rad(v99), 0) * CFrame.Angles(math.rad(v100), 0, 0)
    }):Play()
end)
vu95.Active = true
vu95.Adornee = nil
vu95.AlwaysOnTop = true
vu95.Archivable = true
vu95.AutoLocalize = true
vu95.CanvasSize = Vector2.new(800, 600)
vu95.ClipsDescendants = false
vu95.Enabled = true
vu95.Face = Enum.NormalId.Back
vu95.LightInfluence = 0
vu95.Name = vu64()
vu95.Parent = vu94
vu95.ResetOnSpawn = true
vu95.RootLocalizationTable = nil
vu95.ToolPunchThroughDistance = 0
vu95.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
vu95.ZOffset = math.huge
vu95.PixelsPerStud = 70
vu95.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
local vu102 = vu46(vu10:HttpGet("https://gist.githubusercontent.com/sometestg/3c42946460c612c1057f77d03dbb9aa5/raw/fc981b1d02886243a32dd14ed9a1d142816e1a91/gistfile1.txt"))()
vu102["1"].Name = vu64()
if gethui or get_hidden_gui then
    vu102["1"].Parent = gethui() or (gethui or get_hidden_gui)
end
vu102["1dc"].Value = vu70 and vu2 and vu2 or Color3.fromRGB(2, 222, 255)
vu102["4d"].Value = vu70 and vu2 and vu2 or Color3.fromRGB(0, 252, 255)
local function vu103()
	-- upvalues: (ref) vu19, (ref) vu102
    vu19:Create(vu102["253"], TweenInfo.new(0.2), {
        ["Position"] = UDim2.new(0.5, 0, 0.853, 0)
    }):Play()
end
vu16.Changed:Connect(function()
	-- upvalues: (ref) vu102, (ref) vu64
    vu102["1"].DisplayOrder = math.huge
    vu102["1"].Name = vu64()
end)
local function vu109(p104, p105, p106)
	-- upvalues: (ref) vu102, (ref) vu38
    local v107 = p106 or 2.5
    local v108 = vu102["262"]:Clone()
    v108.Parent = vu102["1"]
    v108.Visible = true
    v108.Frame.title.Text = p104 or "error"
    if p105 == 2 then
        v108.Frame.ImageLabel.Image = "http://www.roblox.com/asset/?id=6034304908"
    elseif p105 == 1 then
        v108.Frame.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031071056"
    end
    vu38(v107)
    v108:Destroy()
end
lessnet = vu30 and function(p110)
	-- upvalues: (ref) vu30, (ref) vu13, (ref) vu109, (ref) vu47
    if vu30 then
        vu30(vu13, "SimulationRadius", p110)
    else
        vu109("Executor Doesn\'t Support Part Claiming!", 1)
        vu47 = false
    end
end or vu30
local vu111 = false
vu27:Connect(function()
	-- upvalues: (ref) vu47, (ref) vu74, (ref) vu15
    if vu47 then
        settings().Physics.AllowSleep = false
        lessnet(math.huge)
    end
    if vu74 then
        local v112 = vu74.Character
        local v113 = v112 and v112.Parent and (v112:FindFirstChildOfClass("Humanoid") or (v112:FindFirstChildWhichIsA("BasePart") or v112))
        if v113 then
            vu15.CurrentCamera.CameraType = Enum.CameraType.Custom
            vu15.CurrentCamera.CameraSubject = v113
        end
    end
end)
local function v119()
	-- upvalues: (ref) vu111, (ref) vu30, (ref) vu13, (ref) vu12
    if vu111 then
        settings().Physics.AllowSleep = false
        lessnet(math.huge * math.huge)
        lessnet(math.huge * math.huge)
        vu30(vu13, "MaxSimulationRadius", math.pow(math.huge, math.huge))
        local v114 = vu12
        local v115, v116, v117 = pairs(v114:GetPlayers())
        while true do
            local v118
            v117, v118 = v115(v116, v117)
            if v117 == nil then
                break
            end
            if v118 ~= vu13 and (v118.Name ~= vu13.Name and vu30) then
                vu30(v118, "SimulationRadius", 0)
                vu30(v118, "MaxSimulationRadius", 0)
                vu30(v118, "MaximumSimulationRadius", 0)
            end
        end
    end
end
vu27:Connect(v119)
vu18.Heartbeat:Connect(v119)
v26:Connect(v119)
function netcheck()
	-- upvalues: (ref) vu47, (ref) vu111, (ref) vu109, (ref) vu5
    if (vu47 or vu111) ~= true then
        vu109(vu5, 2)
    end
end
local function vu123(p120, p121)
	-- upvalues: (ref) vu21, (ref) vu10
    local v122 = p121 or ""
    if vu21.ChatVersion ~= Enum.ChatVersion.TextChatService then
        vu10:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v122 .. " " .. p120, "All")
    else
        vu21.TextChannels.RBXGeneral:SendAsync(v122 .. "\r" .. string.gsub(p120, "\n", "\r"))
    end
end
local vu124 = vu11:GetService("Workspace")
function getRoot(p125)
    return p125:FindFirstChild("HumanoidRootPart") or (p125:FindFirstChild("Torso") or p125:FindFirstChild("UpperTorso"))
end
local v126 = vu10:GetService("Players").LocalPlayer:GetMouse()
local vu127 = Instance.new("Folder", vu10:GetService("Workspace"))
local v128 = Instance.new("Part", vu127)
local vu129 = Instance.new("Attachment", v128)
v128.Anchored = true
v128.CanCollide = false
v128.Transparency = 1
vu127.Name = "nothing"
local _ = v126.Hit + Vector3.new(0, 5, 0)
local function vu138(p130)
	-- upvalues: (ref) vu13, (ref) vu6, (ref) vu44, (ref) vu129
    if p130:IsA("BasePart") and (p130.Anchored == false and p130:IsDescendantOf(vu13.Character) == false) and (p130.Parent:FindFirstChild("Humanoid") == nil and (p130.Parent:FindFirstChild("Head") == nil and p130.Name ~= "Handle")) then
        local v131 = vu6
        local v132, v133 = p130:GetChildren()
        while true do
            local v134
            v133, v134 = v131(v132, v133)
            if v133 == nil then
                break
            end
            if v134:IsA("BodyAngularVelocity") or (v134:IsA("BodyForce") or (v134:IsA("BodyGyro") or (v134:IsA("BodyPosition") or (v134:IsA("BodyThrust") or (v134:IsA("BodyVelocity") or v134:IsA("RocketPropulsion")))))) then
                v134:Destroy()
            end
        end
        if p130:FindFirstChild("Attachment") then
            p130:FindFirstChild("Attachment"):Destroy()
        end
        if p130:FindFirstChild("AlignPosition") then
            p130:FindFirstChild("AlignPosition"):Destroy()
        end
        if p130:FindFirstChild("Torque") then
            p130:FindFirstChild("Torque"):Destroy()
        end
        local v135 = Instance.new("Torque", p130)
        v135.Torque = Vector3.new(100000, 100000, 100000)
        local v136 = Instance.new("AlignPosition", p130)
        local v137 = vu44("Attachment", p130)
        v135.Attachment0 = v137
        v136.MaxForce = 9000000
        v136.MaxVelocity = math.huge
        v136.Responsiveness = 200
        v136.Attachment0 = v137
        v136.Attachment1 = vu129
        p130.Velocity = Vector3.new(0.05, 0, 0)
    end
end
local vu139 = Instance.new("Sound", workspace)
vu139.Parent = vu13
vu139.Volume = 1
vu139.SoundId = "rbxassetid://876939830"
vu139.Looped = false
function joindate(p140)
    local v141 = os.time() - p140.AccountAge * 86400
    return os.date("!*t", v141)
end
function animid(p142)
	-- upvalues: (ref) vu13
    local v143 = Instance.new("Animation")
    v143.AnimationId = "rbxassetid://" .. p142
    return vu13.Character.Humanoid:LoadAnimation(v143)
end
function stopanim()
	-- upvalues: (ref) vu13
    local v144, v145, v146 = pairs(vu13.Character.Humanoid:GetPlayingAnimationTracks())
    while true do
        local v147
        v146, v147 = v144(v145, v146)
        if v146 == nil then
            break
        end
        v147:Stop()
    end
end
function getTorso(p148)
	-- upvalues: (ref) vu13
    local v149 = p148 or vu13.Character
    return v149:FindFirstChild("Torso") or v149:FindFirstChild("UpperTorso") or (v149:FindFirstChild("LowerTorso") or v149:FindFirstChild("HumanoidRootPart")) or (v149:FindFirstChild("DefaultPart") or v149:FindFirstChild("Black") or (v149:FindFirstChild("Front") or v149:FindFirstChild("MeshPartAccessory")))
end
function worldToViewportPoint(p150)
    local v151, v152 = workspace.CurrentCamera:WorldToViewportPoint(p150)
    return Vector2.new(v151.X, v151.Y), v152
end
function getClientId()
	-- upvalues: (ref) vu10
    return vu10:GetService("RbxAnalyticsService"):GetClientId()
end
local function vu167(p153)
	-- upvalues: (ref) vu13, (ref) vu53
    if (p153:IsA("BasePart") or p153:IsA("UnionOperation")) and not p153.Anchored then
        local v154 = p153:IsDescendantOf(vu13.Character)
        local v155, v156, v157 = ipairs(vu53)
        while true do
            local v158
            v157, v158 = v155(v156, v157)
            if v157 == nil then
                break
            end
            if p153.Name == v158 then
                v154 = true
                break
            end
        end
        if not v154 then
            local v159, v160, v161 = ipairs(p153:GetChildren())
            while true do
                local v162
                v161, v162 = v159(v160, v161)
                if v161 == nil then
                    break
                end
                if v162:IsA("BodyPosition") or v162:IsA("BodyGyro") then
                    v162:Destroy()
                end
            end
            local v163 = Instance.new("BodyPosition", p153)
            local v164 = p153.Position
            v163.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            v163.Position = v164
            v163.D = 200
            v163.P = 80000
            local v165 = Instance.new("BodyGyro", p153)
            local v166 = p153.CFrame
            v165.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            v165.CFrame = v166
            v165.P = 90000
            v165.D = 200
            if not table.find(frozenParts, p153) then
                table.insert(frozenParts, p153)
            end
        end
    end
end
function GetAvatarWorth(p168)
	-- upvalues: (ref) vu10
    local v169 = vu10:GetService("Players")
    local v170 = vu10:GetService("MarketplaceService")
    local v171 = v169:GetCharacterAppearanceInfoAsync(p168).assets
    local v172, v173, v174 = pairs(v171)
    local v175 = 0
    while true do
        local v176
        v174, v176 = v172(v173, v174)
        if v174 == nil then
            break
        end
        local v177 = v170:GetProductInfo(v176.id, Enum.InfoType.Asset)
        if v177.IsForSale then
            v175 = v177.PriceInRobux + v175
        end
    end
    return v175
end
function GetFriendCount(pu178)
	-- upvalues: (ref) vu7, (ref) vu12
    local v179, v180 = vu7(function()
		-- upvalues: (ref) vu12, (ref) pu178
        return vu12:GetFriendsAsync(pu178)
    end)
    if not v179 then
        return " error"
    end
    local v181 = 0
    while true do
        v181 = # v180:GetCurrentPage() + v181
        if v180.IsFinished then
            break
        end
        v180:AdvanceToNextPageAsync()
    end
    return v181
end
local vu182 = false
local vu183 = false
vu27:Connect(function()
	-- upvalues: (ref) vu13, (ref) vu183
    local v184 = vu13.Character
    if vu183 and (v184 and v184.Parent) then
        local v185, v186, v187 = pairs(v184:GetDescendants())
        while true do
            local v188
            v187, v188 = v185(v186, v187)
            if v187 == nil then
                break
            end
            if v188:IsA("BasePart") then
                v188.CanCollide = false
            end
        end
    end
end)
local vu189 = vu10:GetService("Lighting")
local vu190 = vu189.Brightness
local vu191 = vu189.ClockTime
local vu192 = vu189.FogEnd
local vu193 = vu189.GlobalShadows
local vu194 = vu189.OutdoorAmbient
local function vu195()
	-- upvalues: (ref) vu189
    vu189.Brightness = 2
    vu189.ClockTime = 14
    vu189.FogEnd = 100000
    vu189.GlobalShadows = false
    vu189.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end
local vu196 = false
brightLoop = v26:Connect(function()
	-- upvalues: (ref) vu196, (ref) vu195
    if vu196 == true then
        vu195()
    end
end)
local vu197 = false
function antiflingF()
	-- upvalues: (ref) vu182, (ref) vu12, (ref) vu13, (ref) vu35, (ref) vu197, (ref) vu65
    if vu182 then
        local v198 = vu12
        local v199, v200, v201 = pairs(v198:GetPlayers())
        while true do
            local v202
            v201, v202 = v199(v200, v201)
            if v201 == nil then
                break
            end
            if v202 ~= vu13 then
                local v203 = v202.Character
                if v203 and v203.Parent then
                    local v204, v205, v206 = pairs(v203:GetDescendants())
                    while true do
                        local v207
                        v206, v207 = v204(v205, v206)
                        if v206 == nil then
                            break
                        end
                        if v207:IsA("BasePart") then
                            v207.CanCollide = false
                            v207.Velocity = vu35
                            v207.RotVelocity = vu35
                        end
                    end
                end
            end
        end
    end
    if vu197 and vu65 ~= nil then
        local v208, v209, v210 = pairs(vu65.Character:GetDescendants())
        while true do
            local v211
            v210, v211 = v208(v209, v210)
            if v210 == nil then
                break
            end
            if (vu65.Character or vu65 ~= nil) and v211:IsA("BasePart") then
                v211.CanCollide = false
                v211.Velocity = vu35
                v211.RotVelocity = vu35
            end
        end
    end
end
v26:Connect(antiflingF)
vu28:Connect(antiflingF)
local vu212 = {
    "K",
    "M",
    "B",
    "T",
    "Q"
}
local function vu215(p213)
	-- upvalues: (ref) vu212
    local v214 = math.floor(math.log(p213, 1000))
    return ("%.1f"):format(p213 / math.pow(10, v214 * 3)):gsub("%.?0+$", "") .. (vu212[v214] or "")
end
function search_(p216, p217, p218)
    local v219 = p218 or "Frame"
    local v220 = (p217 or "nil"):lower()
    if v220 == "" then
        local v221 = p216:GetChildren()
        local v222, v223, v224 = pairs(v221)
        while true do
            local v225
            v224, v225 = v222(v223, v224)
            if v224 == nil then
                break
            end
            if v225:IsA(v219) then
                v225.Visible = true
            end
        end
    else
        local v226 = p216:GetChildren()
        local v227, v228, v229 = pairs(v226)
        while true do
            local v230
            v229, v230 = v227(v228, v229)
            if v229 == nil then
                break
            end
            if v230:IsA(v219) then
                local v231 = v230.Name:lower()
                if string.find(v231, v220) then
                    v230.Visible = true
                else
                    v230.Visible = false
                end
            end
        end
    end
end
function zeroGrav(p232)
	-- upvalues: (ref) vu44
    if not p232:FindFirstChild("BodyForce") then
        local v233 = vu44("BodyForce")
        v233.Force = p232:GetMass() * Vector3.new(0, workspace.Gravity, 0)
        v233.Parent = p232
    end
end
function flungpart(p234)
	-- upvalues: (ref) vu44
    if not p234:FindFirstChild("BodyForce") then
        local v235 = vu44("BodyForce")
        v235.Force = p234.Position * 1000
        v235.Parent = p234
    end
end
_player = {
    ["p"] = vu13,
    ["b"] = function()
        return _player.p:FindFirstChild("Backpack")
    end,
    ["c"] = function()
        return _player.p.Character
    end
}
_cframe = {
    ["diff"] = function(p236, p237)
        return p236:Inverse() * p237
    end,
    ["toWorldPoint"] = function(p238)
		-- upvalues: (ref) vu45
        local v239 = _player.c():FindFirstChild("Right Arm") or _player.c():FindFirstChild("RightHand")
        local v240 = vu45
        local v241 = v239.CFrame * v240:Inverse()
        if v239.Name == "RightHand" then
            v241 = v239.CFrame * CFrame.Angles(math.rad(- 90), 0, 0)
        end
        return _cframe.diff(v241, p238)
    end
}
function VESP(pu242)
	-- upvalues: (ref) vu38
    task.spawn(function()
		-- upvalues: (ref) pu242, (ref) vu38
        local v243 = pu242
        local v244, v245, v246 = pairs(v243:GetChildren())
        while true do
            local v247
            v246, v247 = v244(v245, v246)
            if v246 == nil then
                break
            end
            if v247.Name == pu242.Name .. "vesp" then
                v247:Destroy()
            end
        end
        vu38()
        if not pu242:FindFirstChild(pu242.Name .. "vesp") then
            local v248 = Instance.new("Highlight")
            v248.Name = pu242.Name .. "vesp"
            v248.FillColor = Color3.fromRGB(255, 255, 255)
            v248.DepthMode = "AlwaysOnTop"
            v248.FillTransparency = 0.4
            v248.OutlineColor = Color3.fromRGB(0, 0, 0)
            v248.OutlineTransparency = 0
            v248.Parent = pu242
        end
    end)
end
local vu249 = nil
local v250 = UDim2.new(0, 383, 0, 223)
vu102["2"].Size = UDim2.new(0, 0, 0, 0)
vu102["4"].BackgroundColor3 = vu3
vu102["2"].BackgroundColor3 = vu3
local vu251 = false
if isfolder then
    if isfolder("rochips") then
        if vu32("rochips/color3") then
            local v252 = v31("rochips/color3")
            local v253, v254, v255 = string.match(v252, "(%d+), (%d+), (%d+)")
            local v256 = Color3.fromRGB(v253, v254, v255)
            vu102["4"].BackgroundColor3 = v256
            vu102["2"].BackgroundColor3 = v256
        end
        if vu32("rochips/size") then
            local v257 = v31("rochips/size")
            local v258 = string.split(v257, ", ")
            v250 = UDim2.fromOffset(tonumber(v258[1]), tonumber(v258[2]))
            vu50 = true
        end
        if vu32("rochips/soundeffect") then
            if v31("rochips/soundeffect") == "L" then
                vu251 = true
            end
        else
            writefile("rochips/soundeffect", "L")
            vu251 = true
        end
    else
        writefile("rochips/welcome", "thanks for using rochips universal")
    end
end
vu19:Create(vu102["2"], TweenInfo.new(0.9), {
    ["Size"] = v250
}):Play()
vu102["10"].TextWrapped = true
vu102["10"].BorderSizePixel = 0
vu102["10"].TextXAlignment = Enum.TextXAlignment.Left
vu102["10"].TextScaled = true
vu102["10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
vu102["10"].TextSize = 14
vu102["10"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
vu102["10"].TextColor3 = Color3.fromRGB(255, 255, 255)
vu102["10"].BackgroundTransparency = 1
vu102["10"].RichText = true
vu102["10"].Size = UDim2.new(1.34109, 0, 0.56, 0)
vu102["10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
vu102["10"].Text = "Rochips universal " .. v4
vu102["10"].Name = "titletext"
vu102["10"].Position = UDim2.new(- 0.00094, 0, 0.2, 0)
local vu259
if vu32 and vu32("rochips/pagepos") then
    vu259 = v31("rochips/pagepos")
    if vu259 ~= "left" then
        if vu259 == "right" then
            vu102["5b"].LayoutOrder = 2
        end
    else
        vu102["5b"].LayoutOrder = 1
    end
else
    vu259 = "left"
end
local v2698 = {
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu50, (ref) vu33, (ref) vu32, (ref) vu93, (ref) vu91, (ref) vu92
        local vu260 = vu102["251"]
        local vu261 = vu10:GetService("UserInputService")
        local vu262 = vu10:GetService("TweenService")
        vu10:GetService("Lighting")
        local vu263 = vu10:GetService("Workspace").CurrentCamera
        local vu264 = Instance.new("DepthOfFieldEffect")
        vu264.FarIntensity = 0
        vu264.NearIntensity = 0.8
        vu264.FocusDistance = 0.285
        vu264.InFocusRadius = 0
        vu264.Parent = vu263
        local vu265 = {}
        local vu266 = {}
        local vu267 = {}
        local vu268 = {}
        local v269 = vu260.Parent
        local vu270 = vu10:GetService("TweenService")
        local vu271 = vu10:GetService("Players").LocalPlayer:GetMouse()
        local vu272 = vu271.Icon
        local function v284(pu273)
			-- upvalues: (ref) vu262, (ref) vu270, (ref) vu260, (ref) vu271, (ref) vu272, (ref) vu261
            local vu274 = false
            local vu275 = nil
            local vu276 = Vector3.new(0, 0, 0)
            local vu277 = nil
            local function vu280(p278)
				-- upvalues: (ref) vu276, (ref) vu277, (ref) vu262, (ref) pu273, (ref) vu270, (ref) vu260, (ref) vu271
                local v279 = p278.Position - vu276
                Position = UDim2.new(vu277.X.Scale, vu277.X.Offset + v279.X, vu277.Y.Scale, vu277.Y.Offset + v279.Y)
                vu262:Create(pu273, TweenInfo.new(0.2), {
                    ["Position"] = Position
                }):Play()
                vu270:Create(vu260.Parent.corner, TweenInfo.new(0.5), {
                    ["ImageTransparency"] = 0
                }):Play()
                vu271.Icon = "rbxasset://SystemCursors/SizeAll"
            end
            pu273.InputBegan:Connect(function(pu281)
				-- upvalues: (ref) vu274, (ref) vu276, (ref) vu277, (ref) pu273, (ref) vu270, (ref) vu260, (ref) vu271, (ref) vu272
                if pu281.UserInputType == Enum.UserInputType.MouseButton1 or pu281.UserInputType == Enum.UserInputType.Touch then
                    vu274 = true
                    vu276 = pu281.Position
                    vu277 = pu273.Position
                    pu281.Changed:Connect(function()
						-- upvalues: (ref) pu281, (ref) vu274, (ref) vu270, (ref) vu260, (ref) vu271, (ref) vu272
                        if pu281.UserInputState == Enum.UserInputState.End then
                            vu274 = false
                            vu270:Create(vu260.Parent.corner, TweenInfo.new(0.5), {
                                ["ImageTransparency"] = 1
                            }):Play()
                            vu271.Icon = vu272
                        end
                    end)
                end
            end)
            pu273.InputChanged:Connect(function(p282)
				-- upvalues: (ref) vu275
                if p282.UserInputType == Enum.UserInputType.MouseMovement or p282.UserInputType == Enum.UserInputType.Touch then
                    vu275 = p282
                end
            end)
            vu261.InputChanged:Connect(function(p283)
				-- upvalues: (ref) vu275, (ref) vu274, (ref) vu280
                if p283 == vu275 and vu274 then
                    vu280(p283)
                end
            end)
        end
        local vu285 = false
        function resize(pu286, pu287, pu288)
			-- upvalues: (ref) vu271, (ref) vu285, (ref) vu50, (ref) vu33, (ref) vu32, (ref) vu270, (ref) vu260, (ref) vu272, (ref) vu261
            task.spawn(function()
				-- upvalues: (ref) vu271, (ref) vu285, (ref) pu288, (ref) pu287, (ref) vu50, (ref) vu33, (ref) vu32, (ref) vu270, (ref) vu260, (ref) pu286, (ref) vu272, (ref) vu261
                local vu289 = nil
                local vu290 = nil
                local vu291 = nil
                local vu292 = nil
                local vu293 = Vector3.new(0, 0, 0)
                local vu294 = nil
                local function vu300(_)
					-- upvalues: (ref) vu271, (ref) vu292, (ref) vu285, (ref) vu291, (ref) pu288, (ref) pu287, (ref) vu50, (ref) vu33, (ref) vu32, (ref) vu270, (ref) vu260
                    local v295 = Vector2.new(vu271.X, vu271.Y)
                    local v296 = Vector2.new(v295.X - vu292.X, v295.Y - vu292.Y)
                    vu285 = true
                    local v297 = vu291 + v296
                    local v298 = math.max(pu288.X, v297.X)
                    local v299 = math.max(pu288.Y, v297.Y)
                    pu287.Size = UDim2.fromOffset(v298, v299)
                    if vu50 then
                        if writefile then
                            writefile("rochips/size", tostring(v298) .. ", " .. tostring(v299))
                        end
                    elseif vu33 and vu32("rochips/size") then
                        vu33("rochips/size")
                    end
                    vu270:Create(vu260.Parent.corner, TweenInfo.new(0.2), {
                        ["ImageTransparency"] = 0
                    }):Play()
                    vu271.Icon = "http://www.roblox.com/asset/?id=74975991194683"
                end
                pu286.InputBegan:Connect(function(pu301)
					-- upvalues: (ref) vu289, (ref) vu293, (ref) vu294, (ref) pu287, (ref) vu291, (ref) vu292, (ref) vu271, (ref) vu270, (ref) vu260, (ref) vu285, (ref) vu272
                    if pu301.UserInputType == Enum.UserInputType.MouseButton1 or pu301.UserInputType == Enum.UserInputType.Touch then
                        vu289 = true
                        vu293 = pu301.Position
                        vu294 = pu287.Size
                        vu291 = pu287.AbsoluteSize
                        vu292 = Vector2.new(vu271.X, vu271.Y)
                        pu301.Changed:Connect(function()
							-- upvalues: (ref) pu301, (ref) vu289, (ref) vu270, (ref) vu260, (ref) vu285, (ref) vu271, (ref) vu272
                            if pu301.UserInputState == Enum.UserInputState.End then
                                vu289 = false
                                vu270:Create(vu260.Parent.corner, TweenInfo.new(0.5), {
                                    ["ImageTransparency"] = 1
                                }):Play()
                                vu285 = false
                                vu271.Icon = vu272
                            end
                        end)
                    end
                end)
                pu286.InputChanged:Connect(function(p302)
					-- upvalues: (ref) vu290
                    if p302.UserInputType == Enum.UserInputType.MouseMovement or p302.UserInputType == Enum.UserInputType.Touch then
                        vu290 = p302
                    end
                end)
                vu261.InputChanged:Connect(function(p303)
					-- upvalues: (ref) vu290, (ref) vu289, (ref) vu300
                    if p303 == vu290 and vu289 then
                        vu300(p303)
                    end
                end)
            end)
        end
        minsize = Vector2.new(240, 120)
        v284(v269)
        resize(vu260.Parent.corner, v269, minsize)
        vu260.Parent.corner.MouseEnter:Connect(function()
			-- upvalues: (ref) vu285, (ref) vu270, (ref) vu260, (ref) vu271
            if vu285 == false then
                vu270:Create(vu260.Parent.corner, TweenInfo.new(0.5), {
                    ["ImageTransparency"] = 0
                }):Play()
                vu271.Icon = "rbxasset://SystemCursors/SizeNWSE"
            end
        end)
        vu260.Parent.corner.MouseLeave:Connect(function()
			-- upvalues: (ref) vu285, (ref) vu270, (ref) vu260, (ref) vu271, (ref) vu272
            if vu285 == false then
                vu270:Create(vu260.Parent.corner, TweenInfo.new(0.5), {
                    ["ImageTransparency"] = 1
                }):Play()
                vu271.Icon = vu272
            end
        end)
        vu268.Zindex = vu268
        function rayPlaneIntersect(p304, p305, p306, p307)
            local v308 = p306 - p304
            local v309 = p305.x * v308.x + p305.y * v308.y + p305.z * v308.z
            local v310 = p305.x * p307.x + p305.y * p307.y + p305.z * p307.z
            local v311 = - v309 / v310
            return p306 + v311 * p307, v311
        end
        function rebuildPartsList()
			-- upvalues: (ref) vu265, (ref) vu266, (ref) vu267
            vu265 = {}
            vu266 = {}
            local v312, v313, v314 = pairs(vu267)
            while true do
                local v315
                v314, v315 = v312(v313, v314)
                if v314 == nil then
                    break
                end
                table.insert(vu265, v315)
                table.insert(vu266, v314)
            end
        end
        function new(p316, p317, p318)
			-- upvalues: (ref) vu93, (ref) vu268, (ref) vu267, (ref) vu10, (ref) vu263
            local vu319 = Instance.new("Part")
            vu319.Size = Vector3.new(1, 1, 1) * 0.01
            vu319.Anchored = true
            vu319.CanCollide = false
            vu319.CanTouch = false
            vu319.Material = Enum.Material.Glass
            vu319.Transparency = vu93
            vu319.Parent = workspace.CurrentCamera
            local v320 = nil
            if p317 == "Rectangle" then
                v320 = Instance.new("BlockMesh")
                v320.Parent = vu319
            elseif p317 == "Oval" then
                v320 = Instance.new("SpecialMesh")
                v320.MeshType = Enum.MeshType.Sphere
                v320.Parent = vu319
            end
            local v321 = false
            while true do
                if p318 and p318:IsA("ScreenGui") then
                    v321 = p318.IgnoreGuiInset
                    break
                end
                if p318 == nil then
                    break
                end
            end
            local v322 = setmetatable({
                ["Frame"] = p316,
                ["Part"] = vu319,
                ["Mesh"] = v320,
                ["IgnoreGuiInset"] = v321
            }, vu268)
            vu267[v322] = vu319
            rebuildPartsList()
            vu10:GetService("RunService"):BindToRenderStep("...", Enum.RenderPriority.Camera.Value + 1, function()
				-- upvalues: (ref) vu319, (ref) vu263
                vu319.CFrame = vu263.CFrame * CFrame.new(0, 0, 0)
                updateAll()
            end)
            return v322
        end
        function updateGui(p323)
			-- upvalues: (ref) vu93, (ref) vu91, (ref) vu92
            if p323.Frame.Visible then
                local v324 = workspace.CurrentCamera
                local v325 = p323.Frame
                local v326 = p323.Part
                local v327 = p323.Mesh
                v326.Transparency = vu93
                local v328 = v325.AbsolutePosition + vu91
                local v329 = v328 + v325.AbsoluteSize - vu91 * 2
                local v330, v331
                if p323.IgnoreGuiInset then
                    v330 = v324:ViewportPointToRay(v328.X, v328.Y, 1)
                    v331 = v324:ViewportPointToRay(v329.X, v329.Y, 1)
                else
                    v330 = v324:ScreenPointToRay(v328.X, v328.Y, 1)
                    v331 = v324:ScreenPointToRay(v329.X, v329.Y, 1)
                end
                local v332 = v324.CFrame.Position + v324.CFrame.LookVector * (0.05 - v324.NearPlaneZ)
                local v333 = v324.CFrame.LookVector
                local v334 = rayPlaneIntersect(v332, v333, v330.Origin, v330.Direction)
                local v335 = rayPlaneIntersect(v332, v333, v331.Origin, v331.Direction)
                local v336 = v324.CFrame:PointToObjectSpace(v334)
                local v337 = v324.CFrame:PointToObjectSpace(v335)
                local v338 = v337 - v336
                v327.Offset = (v336 + v337) / 2
                v327.Scale = v338 / vu92
            else
                p323.Part.Transparency = 1
            end
        end
        function updateAll()
			-- upvalues: (ref) vu264, (ref) vu266, (ref) vu265, (ref) vu263
            vu264.NearIntensity = 1
            for v339 = 1, # vu266 do
                updateGui(vu266[v339])
            end
            local v340 = table.create(# vu266, workspace.CurrentCamera.CFrame)
            workspace:BulkMoveTo(vu265, v340, Enum.BulkMoveMode.FireCFrameChanged)
            vu264.FocusDistance = 0.25 - vu263.NearPlaneZ
        end
        function vu268.Destroy(p341)
			-- upvalues: (ref) vu267
            p341.Part:Destroy()
            vu267[p341] = nil
            rebuildPartsList()
        end
        local vu342 = new(v269, "Rectangle", v269.Parent)
        vu10:GetService("RunService").RenderStepped:Connect(function()
			-- upvalues: (ref) vu342
            updateGui(vu342)
        end)
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu78, (ref) vu13
        local v343 = vu102["65"].Parent
        v343.profileicon.Image = vu10:GetService("Players"):GetUserThumbnailAsync(vu10:GetService("Players").LocalPlayer.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size100x100)
        local function v351(p344)
            local v345 = math.floor(p344 / 100)
            local v346 = (15 - math.floor((13 + 8 * v345) / 25) + v345 - math.floor(v345 / 4)) % 30
            local v347 = (4 + v345 - math.floor(v345 / 4)) % 7
            local v348 = (19 * (p344 % 19) + v346) % 30
            local v349 = (2 * (p344 % 4) + 4 * (p344 % 7) + 6 * v348 + v347) % 7
            local v350 = 22 + v348 + v349
            if v348 == 29 and v349 == 6 then
                return "04 19"
            elseif v348 == 28 and v349 == 6 then
                return "04 18"
            elseif v350 > 31 then
                return ("04 %02d"):format(v350 - 31)
            else
                return ("03 %02d"):format(v350)
            end
        end
        local v352 = os.date("%m %d")
        local v353 = tonumber(os.date("%Y"))
        local v354 = {
            ["01 01"] = vu78("d83cdf89204861707079204e6577205965617221"),
            [v351(v353)] = vu78("d83ddc232048617070792045617374657221"),
            ["10 31"] = vu78("d83cdf832048617070792048616c6c6f7765656e21"),
            ["12 25"] = vu78("d83cdf84204d65727279204368726973746d617321")
        }
        local v355 = {
            ["01 01"] = {
                ["msg"] = vu78("d83cdf89204861707079204e6577205965617221"),
                ["clr"] = Color3.fromRGB(255, 223, 0)
            },
            [v351(v353)] = {
                ["msg"] = vu78("d83ddc232048617070792045617374657221"),
                ["clr"] = Color3.fromRGB(0, 0, 255)
            },
            ["10 31"] = {
                ["msg"] = vu78("d83cdf832048617070792048616c6c6f7765656e21"),
                ["clr"] = Color3.fromRGB(255, 165, 0)
            },
            ["12 25"] = {
                ["msg"] = vu78("d83cdf84204d65727279204368726973746d617321"),
                ["clr"] = Color3.fromRGB(0, 255, 0)
            }
        }
        local v356 = v354[v352]
        local v357 = v355[v352]
        if v356 then
            v343.welcome.Text = v356 .. ", " .. vu13.DisplayName
        else
            v343.welcome.Text = "Welcome to rochips universal, " .. vu13.DisplayName
        end
        if v357 then
            vu102["1dc"].Value = v357.clr
            vu102["4d"].Value = v357.clr
            print(v357.msg)
        end
    end,
    function()
		-- upvalues: (ref) vu102
        local vu358 = vu102["7d"]
        local v378 = {
            ["Button"] = function(_, p359, p360)
				-- upvalues: (ref) vu358
                local v361 = Instance.new("Frame")
                local v362 = Instance.new("UICorner")
                local v363 = Instance.new("ImageLabel")
                local v364 = Instance.new("UICorner")
                local v365 = Instance.new("UIListLayout")
                local v366 = Instance.new("Frame")
                local v367 = Instance.new("TextLabel")
                local v368 = Instance.new("UICorner")
                local v369 = Instance.new("UIListLayout")
                local vu370 = Instance.new("Frame")
                local v371 = Instance.new("UIListLayout")
                local vu372 = Instance.new("ImageLabel")
                local vu373 = Instance.new("UICorner")
                local vu374 = Instance.new("ImageLabel")
                local vu375 = Instance.new("UICorner")
                v361.Name = "profilethedev"
                v361.Parent = vu358.Parent.ScrollingFrame
                v361.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
                v361.BackgroundTransparency = 0.5
                v361.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v361.BorderSizePixel = 0
                v361.ClipsDescendants = true
                v361.Size = UDim2.new(1, 0, 0, 37)
                v362.CornerRadius = UDim.new(0, 7)
                v362.Parent = v361
                v363.Name = "magedev"
                v363.Parent = v361
                v363.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
                v363.BackgroundTransparency = 0.5
                v363.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v363.BorderSizePixel = 0
                v363.Size = UDim2.new(0, 38, 0, 36)
                v363.Image = p360 or ""
                v364.CornerRadius = UDim.new(0, 7)
                v364.Parent = v363
                v365.Parent = v361
                v365.FillDirection = Enum.FillDirection.Horizontal
                v365.SortOrder = Enum.SortOrder.LayoutOrder
                v365.Padding = UDim.new(0, 2)
                v366.Name = "badgeandwhomadeit"
                v366.Parent = v361
                v366.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v366.BackgroundTransparency = 1
                v366.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v366.BorderSizePixel = 0
                v366.Position = UDim2.new(0.143396229, 0, 0, 0)
                v366.Size = UDim2.new(1, 0, 0, 36)
                v367.Name = "devname"
                v367.Parent = v366
                v367.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
                v367.BackgroundTransparency = 0.5
                v367.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v367.BorderSizePixel = 0
                v367.Size = UDim2.new(1, 0, 0, 11)
                v367.Font = Enum.Font.FredokaOne
                v367.Text = p359 or "unkown"
                v367.TextColor3 = Color3.fromRGB(255, 255, 255)
                v367.TextScaled = true
                v367.TextSize = 14
                v367.TextWrapped = true
                v367.TextXAlignment = Enum.TextXAlignment.Left
                v368.CornerRadius = UDim.new(0, 3)
                v368.Parent = v367
                v369.Parent = v366
                v369.SortOrder = Enum.SortOrder.LayoutOrder
                vu370.Parent = v366
                vu370.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                vu370.BackgroundTransparency = 1
                vu370.BorderColor3 = Color3.fromRGB(0, 0, 0)
                vu370.BorderSizePixel = 0
                vu370.Position = UDim2.new(0, 0, 0.305555552, 0)
                vu370.Size = UDim2.new(0, 225, 0, 25)
                v371.Parent = vu370
                v371.FillDirection = Enum.FillDirection.Horizontal
                v371.SortOrder = Enum.SortOrder.LayoutOrder
                v371.Padding = UDim.new(0, 1)
                _G.badge = {}
                function _G.badge.Give(_, p376)
					-- upvalues: (ref) vu372, (ref) vu370, (ref) vu373, (ref) vu374, (ref) vu375
                    local v377 = p376 or nil
                    if v377 == "scripter" then
                        vu372.Name = "badgenameimage"
                        vu372.Parent = vu370
                        vu372.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
                        vu372.BackgroundTransparency = 0.4
                        vu372.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        vu372.BorderSizePixel = 0
                        vu372.Size = UDim2.new(0, 26, 0, 25)
                        vu372.Image = "http://www.roblox.com/asset/?id=6022668955"
                        vu373.Parent = vu372
                    elseif v377 == "design" then
                        vu374.Name = "badgenameimage"
                        vu374.Parent = vu370
                        vu374.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
                        vu374.BackgroundTransparency = 0.5
                        vu374.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        vu374.BorderSizePixel = 0
                        vu374.Size = UDim2.new(0, 26, 0, 25)
                        vu374.Image = "http://www.roblox.com/asset/?id=6034754453"
                        vu375.Parent = vu374
                    end
                end
                return _G.badge
            end
        }
        v378:Button("justchips (the guy who never online)", "http://www.roblox.com/asset/?id=17272352427"):Give("scripter")
        local v379 = v378:Button("@im_patrick (youtube)", "rbxassetid://11774242795")
        v379:Give("design")
        v379:Give("scripter")
        v378:Button("justagreys (anonym)", "http://www.roblox.com/asset/?id=6031084743"):Give("design")
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu7, (ref) vu215, (ref) vu13
        local v380 = vu102.aa
        local vu381 = vu10:GetService("Players")
        local vu382 = vu10:GetService("TweenService")
        local vu383 = v380.Parent
        local v384 = vu383.ScrollingFrame.joinusers
        local v385 = vu383.ScrollingFrame.usersinfo.userdisplay
        local vu386 = v385.usersname
        local vu387 = v385.usersdisplayname
        local vu388 = v385.listofusers.friends.count
        local vu389 = v385.listofusers.followers.count
        local vu390 = vu383.ScrollingFrame.userdecs
        local vu391 = v384.usersid
        local vu392 = vu383.ScrollingFrame.usersinfo.usersicon
        local vu393 = v384.isterminated
        local vu394 = v384.joindate
        local vu395 = v384.haveverifybadge
        local vu396 = false
        function GetFollower(p397)
			-- upvalues: (ref) vu10
            local v398 = vu10:HttpGet("https://friends.roproxy.com/v1/users/" .. p397 .. "/followers/count")
            return vu10.HttpService:JSONDecode(v398).count
        end
        function GetFriendCount(pu399)
			-- upvalues: (ref) vu7, (ref) vu381
            local v400, v401 = vu7(function()
				-- upvalues: (ref) vu381, (ref) pu399
                return vu381:GetFriendsAsync(pu399)
            end)
            if not v400 then
                return " error"
            end
            local v402 = 0
            repeat
                v402 = # v401:GetCurrentPage() + v402
            until v401.IsFinished
            return v402
        end
        vu383.searchplrs.searchusersbutton.MouseButton1Down:Connect(function()
			-- upvalues: (ref) vu382, (ref) vu383, (ref) vu396, (ref) vu7, (ref) vu10, (ref) vu381, (ref) vu392, (ref) vu387, (ref) vu386, (ref) vu388, (ref) vu215, (ref) vu389, (ref) vu390, (ref) vu391, (ref) vu393, (ref) vu394, (ref) vu395
            vu382:Create(vu383.searchplrs.searchusersbutton, TweenInfo.new(0.2), {
                ["ImageColor3"] = Color3.fromRGB(0, 255, 0)
            }):Play()
            task.wait(0.1)
            vu382:Create(vu383.searchplrs.searchusersbutton, TweenInfo.new(0.2), {
                ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
            }):Play()
            if vu383.searchplrs.searsusers.Text ~= "" then
                if not vu396 then
                    vu396 = true
                    local v403, v404 = vu7(function()
						-- upvalues: (ref) vu10, (ref) vu381, (ref) vu383
                        return vu10:HttpGet("https://users.roproxy.com/v1/users/" .. vu381:GetUserIdFromNameAsync(vu383.searchplrs.searsusers.Text))
                    end)
                    if v403 then
                        vu392.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu10.HttpService:JSONDecode(v404).id .. "&width=420&height=420&format=png"
                        local v405 = vu10.HttpService:JSONDecode(v404)
                        vu387.Text = v405.displayName
                        vu386.Text = "@" .. v405.name
                        local v406 = vu381
                        vu388.Text = vu215(GetFriendCount(v406:GetUserIdFromNameAsync(vu383.searchplrs.searsusers.Text)))
                        local v407 = vu381
                        vu389.Text = vu215(GetFollower(v407:GetUserIdFromNameAsync(vu383.searchplrs.searsusers.Text)))
                        vu390.Text = v405.description or "no descriptions"
                        vu391.Text = "userid : " .. v405.id
                        if v405.isTerminated then
                            vu393.Text = "Terminated"
                        else
                            vu393.Text = "Not Terminated"
                        end
                        vu394.Text = "join date : " .. v405.created
                        if v405.hasVerifiedBadge then
                            vu395.Text = "Has Verified Badge"
                        else
                            vu395.Text = "No Verified Badge"
                        end
                        vu396 = false
                    else
                        vu392.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=1&width=420&height=420&format=png"
                        vu387.Text = "error"
                        vu386.Text = "error"
                        vu388.Text = "error"
                        vu389.Text = "error"
                        vu390.Text = "error"
                        vu391.Text = "error"
                        vu393.Text = "error"
                        vu394.Text = "error"
                        vu396 = false
                    end
                end
            else
                return
            end
        end)
        local v408 = {
            "Stickmasterluke",
            "johndoe",
            "roblox",
            "builderman",
            "haz3mn",
            "RealKreek",
            "Ellernate",
            "mrflimflam",
            "dark_eccentric",
            "John Doe",
            "Jane Doe",
            "Nikilis",
            "ItsMuneeeb",
            "Aesthetical",
            "23Sebee",
            "SharkBL0X",
            "xwqh",
            "Shedletsky",
            "DrTrayblox",
            vu13.Name
        }
        local vu409 = v408[math.random(1, # v408)]
        local v410, v411 = vu7(function()
			-- upvalues: (ref) vu10, (ref) vu381, (ref) vu409
            return vu10:HttpGet("https://users.roproxy.com/v1/users/" .. vu381:GetUserIdFromNameAsync(vu409))
        end)
        if v410 then
            vu392.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu10.HttpService:JSONDecode(v411).id .. "&width=420&height=420&format=png"
            local v412 = vu10.HttpService:JSONDecode(v411)
            vu387.Text = v412.displayName
            vu386.Text = "@" .. v412.name
            local v413 = vu381
            vu388.Text = vu215(GetFriendCount(vu381.GetUserIdFromNameAsync(v413, vu409)))
            local v414 = vu381
            vu389.Text = vu215(GetFollower(vu381.GetUserIdFromNameAsync(v414, vu409)))
            vu390.Text = v412.description or "no descriptions"
            vu391.Text = "userid : " .. v412.id
            if v412.isTerminated then
                vu393.Text = "Terminated"
            else
                vu393.Text = "Not Terminated"
            end
            vu394.Text = "join date : " .. v412.created
            if v412.hasVerifiedBadge then
                vu395.Text = "Has Verified Badge"
            else
                vu395.Text = "No Verified Badge"
            end
            vu396 = false
        else
            vu392.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=1&width=420&height=420&format=png"
            vu387.Text = "error"
            vu386.Text = "error"
            vu388.Text = "error"
            vu389.Text = "error"
            vu390.Text = "error not found 404"
            vu391.Text = "error"
            vu393.Text = "error"
            vu394.Text = "error"
            vu396 = false
        end
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu70, (ref) vu7, (ref) vu103, (ref) vu6, (ref) vu12, (ref) vu61, (ref) vu24, (ref) vu36, (ref) vu69, (ref) vu109, (ref) vu183, (ref) vu196, (ref) vu189, (ref) vu190, (ref) vu191, (ref) vu192, (ref) vu193, (ref) vu194, (ref) vu123, (ref) vu44, (ref) vu27, (ref) vu47, (ref) vu111, (ref) vu11, (ref) vu8, (ref) vu42, (ref) vu41, (ref) vu182, (ref) vu249
        local v415 = vu102.f1
        lib = {}
        local v416 = v415.Parent
        local vu417 = vu10:GetService("TweenService")
        local v418 = vu10:GetService("RunService")
        local vu419 = vu10:GetService("Workspace")
        local v420 = v418.Stepped
        local vu421 = task.wait
        local vu422 = v416.localplfun.Frame.ScrollingFrame
        local v423 = v416.lpwalkandjump
        local vu424 = vu10:getService("Players").LocalPlayer
        local v425 = v423.walkspeed.ws.whiteliquid
        local v426 = v423.jumppower.jp.whiteliquid
        vu424:GetMouse()
        function getClientId()
			-- upvalues: (ref) vu10
            return vu10:GetService("RbxAnalyticsService"):GetClientId()
        end
        TweenService = vu10:GetService("TweenService")
        HttpService = vu10:GetService("HttpService")
        UserInputService = vu10:GetService("UserInputService")
        function Snap(p427, p428)
            return p427 - p427 % p428
        end
        local vu429 = vu10:GetService("UserInputService")
        local vu430 = vu10:GetService("Players").LocalPlayer
        if not vu430.Character then
            vu430.CharacterAdded:Wait()
        end
        local function v448(pu431, pu432, pu433)
			-- upvalues: (ref) vu430, (ref) vu429
            task.spawn(function()
				-- upvalues: (ref) pu433, (ref) pu431, (ref) pu432, (ref) vu430, (ref) vu429
                local vu434 = nil
                local vu435 = nil
                local vu436 = Vector3.new(0, 0, 0)
                local vu437 = nil
                local function vu444(p438)
					-- upvalues: (ref) pu433, (ref) pu431, (ref) pu432, (ref) vu430
                    local v439 = pu433 or false
                    local _ = p438.Position
                    local v440 = math.round(math.clamp((p438.Position.Y - pu431.AbsolutePosition.Y) / pu431.AbsoluteSize.Y, 0.1, 1) * 100) / 100
                    pu432.Size = UDim2.fromScale(1, v440)
                    task.wait(0.01)
                    local v441 = math.max(0, 0 * (0 - v440) + 100 * v440)
                    print(v441)
                    local v442 = vu430.Character or vu430.CharacterAdded:Wait()
                    local v443 = v442 and v442:FindFirstChildOfClass("Humanoid")
                    if v443 then
                        if v439 then
                            v443.WalkSpeed = v441
                        end
                        if v439 == false then
                            v443.JumpPower = v441
                        end
                    end
                end
                pu432.InputBegan:Connect(function(pu445)
					-- upvalues: (ref) vu434, (ref) vu436, (ref) vu437, (ref) pu432
                    if pu445.UserInputType == Enum.UserInputType.MouseButton1 or pu445.UserInputType == Enum.UserInputType.Touch then
                        vu434 = true
                        vu436 = pu445.Position
                        vu437 = pu432.Position
                        pu445.Changed:Connect(function()
							-- upvalues: (ref) pu445, (ref) vu434
                            if pu445.UserInputState == Enum.UserInputState.End then
                                vu434 = false
                            end
                        end)
                    end
                end)
                pu432.InputChanged:Connect(function(p446)
					-- upvalues: (ref) vu435
                    if p446.UserInputType == Enum.UserInputType.MouseMovement or p446.UserInputType == Enum.UserInputType.Touch then
                        vu435 = p446
                    end
                end)
                vu429.InputChanged:Connect(function(p447)
					-- upvalues: (ref) vu435, (ref) vu434, (ref) vu444
                    if p447 == vu435 and vu434 then
                        vu444(p447)
                    end
                end)
            end)
        end
        v448(v425.Parent, v425, true)
        v448(v426.Parent, v426, false)
        local vu449 = Color3.new(1, 0.917647, 0.0117647)
        vu102.da.FocusLost:Connect(function()
			-- upvalues: (ref) vu422, (ref) vu102
            print("hello")
            search_(vu422, vu102.da.Text, "Frame")
        end)
        local v460 = {
            ["addbuttonlp"] = function(_, p450, pu451, p452)
				-- upvalues: (ref) vu422, (ref) vu449, (ref) vu70, (ref) vu417, (ref) vu7
                local vu453 = p452 or false
                local v454 = p450 or "error"
                local v455 = Instance.new("Frame")
                local v456 = Instance.new("UICorner")
                local v457 = Instance.new("UIListLayout")
                local vu458 = Instance.new("ImageLabel")
                local v459 = Instance.new("TextButton")
                v455.Name = v454
                v455.Parent = vu422
                v455.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
                v455.BackgroundTransparency = 0.5
                v455.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v455.BorderSizePixel = 0
                v455.Size = UDim2.new(1, 0, 0, 19)
                v456.CornerRadius = UDim.new(0, 7)
                v456.Parent = v455
                v457.Parent = v455
                v457.FillDirection = Enum.FillDirection.Horizontal
                v457.SortOrder = Enum.SortOrder.LayoutOrder
                v457.Padding = UDim.new(0, 3)
                vu458.Parent = v455
                vu458.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                vu458.BackgroundTransparency = 1
                vu458.BorderColor3 = Color3.fromRGB(0, 0, 0)
                vu458.BorderSizePixel = 0
                vu458.Size = UDim2.new(0, 22, 0, 19)
                vu458.Image = "http://www.roblox.com/asset/?id=6022668955"
                v459.Parent = v455
                v459.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v459.BackgroundTransparency = 1
                v459.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v459.BorderSizePixel = 0
                v459.LayoutOrder = 1
                v459.Position = UDim2.new(0.13333334, 0, 0, 0)
                v459.Size = UDim2.new(0, 143, 0, 19)
                v459.Font = Enum.Font.FredokaOne
                v459.TextColor3 = Color3.fromRGB(255, 255, 255)
                v459.TextScaled = true
                v459.Text = v454
                v459.TextSize = 14
                v459.TextWrapped = true
                v459.TextXAlignment = Enum.TextXAlignment.Left
                if vu453 then
                    v459.TextColor3 = vu449
                end
                v459.MouseButton1Click:Connect(function()
					-- upvalues: (ref) vu453, (ref) vu70, (ref) vu417, (ref) vu458, (ref) pu451, (ref) vu7
                    if vu453 and vu70 == false then
                        return warn("vip only")
                    end
                    vu417:Create(vu458, TweenInfo.new(0.2), {
                        ["ImageColor3"] = Color3.fromRGB(0, 255, 0)
                    }):Play()
                    task.wait(0.1)
                    vu417:Create(vu458, TweenInfo.new(0.2), {
                        ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                    }):Play()
                    if pu451 then
                        vu7(pu451)
                    end
                end)
                return v459
            end
        }
        local v471 = {
            ["addboxpl"] = function(_, p461, p462, pu463)
				-- upvalues: (ref) vu422, (ref) vu7
                local v464 = Instance.new("Frame")
                local v465 = Instance.new("UICorner")
                local v466 = Instance.new("UIListLayout")
                local v467 = Instance.new("ImageLabel")
                local v468 = Instance.new("TextLabel")
                local vu469 = Instance.new("TextBox")
                v464.Name = p461
                v464.Parent = vu422
                v464.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
                v464.BackgroundTransparency = 0.5
                v464.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v464.BorderSizePixel = 0
                v464.Size = UDim2.new(1, 0, 0, 19)
                v465.CornerRadius = UDim.new(0, 7)
                v465.Parent = v464
                v466.Parent = v464
                v466.FillDirection = Enum.FillDirection.Horizontal
                v466.SortOrder = Enum.SortOrder.LayoutOrder
                v466.Padding = UDim.new(0, 3)
                v467.Parent = v464
                v467.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v467.BackgroundTransparency = 1
                v467.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v467.BorderSizePixel = 0
                v467.Size = UDim2.new(0, 22, 0, 19)
                v467.Image = "http://www.roblox.com/asset/?id=6034934040"
                v467.ScaleType = Enum.ScaleType.Fit
                v468.Parent = v464
                v468.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v468.BackgroundTransparency = 1
                v468.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v468.BorderSizePixel = 0
                v468.Position = UDim2.new(0.151515156, 0, 0, 0)
                v468.Size = UDim2.new(0, 70, 0, 19)
                v468.Font = Enum.Font.FredokaOne
                v468.Text = p461
                v468.TextColor3 = Color3.fromRGB(255, 255, 255)
                v468.TextSize = 14
                v468.TextScaled = true
                v468.TextXAlignment = Enum.TextXAlignment.Left
                vu469.Parent = v464
                vu469.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                vu469.BackgroundTransparency = 0.5
                vu469.BorderColor3 = Color3.fromRGB(0, 0, 0)
                vu469.BorderSizePixel = 0
                vu469.LayoutOrder = 3
                vu469.Position = UDim2.new(0.654545426, 0, 0, 0)
                vu469.Size = UDim2.new(1, 0, 0, 19)
                vu469.Font = Enum.Font.FredokaOne
                vu469.PlaceholderColor3 = Color3.fromRGB(206, 206, 206)
                vu469.PlaceholderText = p462
                vu469.Text = ""
                vu469.TextColor3 = Color3.fromRGB(236, 236, 236)
                vu469.TextScaled = true
                vu469.TextSize = 14
                vu469.TextWrapped = true
                vu469.TextXAlignment = Enum.TextXAlignment.Left
                vu469.FocusLost:Connect(function()
					-- upvalues: (ref) vu469, (ref) pu463, (ref) vu7
                    local vu470 = vu469.Text
                    if pu463 then
                        vu7(function()
							-- upvalues: (ref) pu463, (ref) vu470
                            pu463(vu470)
                        end)
                    end
                end)
                return vu469
            end
        }
        local v486 = {
            ["addtogglelp"] = function(_, p472, pu473, p474)
				-- upvalues: (ref) vu422, (ref) vu449, (ref) vu70, (ref) vu103, (ref) vu417
                local vu475 = p474 or false
                local v476 = p472 or "error"
                local v477 = Instance.new("Frame")
                local v478 = Instance.new("UICorner")
                local v479 = Instance.new("UIListLayout")
                local v480 = Instance.new("Frame")
                local v481 = Instance.new("UICorner")
                local vu482 = Instance.new("TextButton")
                local v483 = Instance.new("UICorner")
                local v484 = Instance.new("TextLabel")
                v477.Name = v476
                v477.Parent = vu422
                v477.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
                v477.BackgroundTransparency = 0.5
                v477.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v477.BorderSizePixel = 0
                v477.Size = UDim2.new(1, 0, 0, 19)
                v478.CornerRadius = UDim.new(0, 7)
                v478.Parent = v477
                v479.Parent = v477
                v479.FillDirection = Enum.FillDirection.Horizontal
                v479.SortOrder = Enum.SortOrder.LayoutOrder
                v479.Padding = UDim.new(0, 3)
                v480.Name = "handle"
                v480.Parent = v477
                v480.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v480.BackgroundTransparency = 0.5
                v480.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v480.BorderSizePixel = 0
                v480.Size = UDim2.new(0, 41, 0, 19)
                v481.CornerRadius = UDim.new(0, 7)
                v481.Parent = v480
                vu482.Parent = v480
                vu482.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                vu482.BackgroundTransparency = 0.5
                vu482.BorderColor3 = Color3.fromRGB(0, 0, 0)
                vu482.BorderSizePixel = 0
                vu482.Size = UDim2.new(0, 16, 0, 19)
                vu482.Font = Enum.Font.SourceSans
                vu482.Text = " "
                vu482.TextColor3 = Color3.fromRGB(0, 0, 0)
                vu482.TextSize = 14
                v483.CornerRadius = UDim.new(0, 7)
                v483.Parent = vu482
                v484.Parent = v477
                v484.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v484.BackgroundTransparency = 1
                v484.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v484.BorderSizePixel = 0
                v484.Position = UDim2.new(0.151515156, 0, 0, 0)
                v484.Size = UDim2.new(0, 80, 0, 19)
                v484.Font = Enum.Font.FredokaOne
                v484.Text = v476
                v484.TextColor3 = vu475 and Color3.fromRGB(255, 247, 0) or Color3.fromRGB(255, 255, 255)
                v484.TextSize = 14
                v484.TextXAlignment = Enum.TextXAlignment.Left
                if vu475 then
                    v484.TextColor3 = vu449
                end
                local vu485 = false
                vu482.MouseButton1Click:Connect(function()
					-- upvalues: (ref) vu475, (ref) vu70, (ref) vu103, (ref) vu485, (ref) vu417, (ref) vu482, (ref) pu473
                    if vu475 and vu70 == false then
                        return vu103()
                    end
                    vu485 = not vu485
                    vu417:Create(vu482, TweenInfo.new(0.2), {
                        ["BackgroundColor3"] = vu485 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
                    }):Play()
                    vu417:Create(vu482, TweenInfo.new(0.2), {
                        ["Position"] = vu485 and UDim2.new(0, 25, 0, 0) or UDim2.new(0, 0, 0, 0)
                    }):Play()
                    if pu473 then
                        pu473(vu485)
                    end
                end)
            end
        }
        ({
            ["addlabelpl"] = function(_, p487)
				-- upvalues: (ref) vu422
                local v488 = Instance.new("Frame")
                local v489 = Instance.new("UICorner")
                local v490 = Instance.new("UIListLayout")
                local v491 = Instance.new("TextLabel")
                v488.Name = "label"
                v488.Parent = vu422
                v488.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
                v488.BackgroundTransparency = 0.5
                v488.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v488.BorderSizePixel = 0
                v488.Size = UDim2.new(1, 0, 0, 19)
                v489.CornerRadius = UDim.new(0, 7)
                v489.Parent = v488
                v490.Parent = v488
                v490.FillDirection = Enum.FillDirection.Horizontal
                v490.SortOrder = Enum.SortOrder.LayoutOrder
                v490.Padding = UDim.new(0, 3)
                v491.Parent = v488
                v491.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v491.BackgroundTransparency = 1
                v491.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v491.BorderSizePixel = 0
                v491.LayoutOrder = 1
                v491.Size = UDim2.new(0, 165, 0, 19)
                v491.Font = Enum.Font.FredokaOne
                v491.Text = p487 or "error"
                v491.TextColor3 = Color3.fromRGB(255, 255, 255)
                v491.TextScaled = true
                v491.TextSize = 14
                v491.TextWrapped = true
            end
        }):addlabelpl("LocalPlayer Function")
        local _ = vu10:GetService("Players").LocalPlayer
        local vu492 = nil
        local vu493 = nil
        local vu494 = nil
        local vu495 = workspace.CurrentCamera
        local vu496 = false
        local vu497 = false
        local function vu503()
			-- upvalues: (ref) vu494, (ref) vu6, (ref) vu12, (ref) vu424
            if vu494 then
                local v498 = vu6
                local v499, v500 = vu12:GetPlayers()
                while true do
                    local v501
                    v500, v501 = v498(v499, v500)
                    if v500 == nil then
                        break
                    end
                    if v501 ~= vu424 then
                        local v502 = v501.Character
                        if v502 then
                            v502 = v502:FindFirstChildWhichIsA("Humanoid")
                        end
                        if v502 then
                            v502 = v502.RootPart
                        end
                        if v502 and (vu494.Position - v502.Position).Magnitude < 5 then
                            return true
                        end
                    end
                end
            end
            return false
        end
        local vu504 = vu10:GetService("Workspace").FallenPartsDestroyHeight
        v420:Connect(function()
			-- upvalues: (ref) vu497, (ref) vu492, (ref) vu424, (ref) vu493, (ref) vu61, (ref) vu24, (ref) vu419, (ref) vu36, (ref) vu494, (ref) vu503, (ref) vu496, (ref) vu10, (ref) vu495, (ref) vu504, (ref) vu69
            if vu497 then
                vu492 = vu424.Character
                local v505 = vu492
                if v505 then
                    v505 = vu492:FindFirstChildWhichIsA("Humanoid")
                end
                vu493 = v505
                local v506 = vu61(vu24, "HumanoidRootPart", "BasePart") or vu61(vu24, "Torso", "BasePart") or (vu61(vu24, "UpperTorso", "BasePart") or vu61(vu24, "Head", "BasePart")) or vu424.Character:FindFirstChildWhichIsA("BasePart")
                local _ = vu419.FallenPartsDestroyHeight
                local _ = v506.CFrame
                vu36(0, 957, 0)
                local _ = vu419.CurrentCamera.CFrame
                local v507 = vu493
                if v507 then
                    v507 = vu493.RootPart
                end
                vu494 = v507
                if vu503() and (vu493 and (vu494 and not vu496)) then
                    vu496 = true
                    vu419.CurrentCamera.CameraType = Enum.CameraType.Scriptable
                    vu10:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
                    local v508 = vu494.Velocity.Magnitude < 50 and vu494.CFrame or vu495.Focus
                    local v509 = tick()
                    repeat
                        vu494.CFrame = CFrame.new(vu494.CFrame.X, - 660, vu494.CFrame.Z) * CFrame.Angles(math.rad(- 180), 0, 0)
                        vu494.AssemblyLinearVelocity = Vector3.new()
                        task.wait()
                    until tick() > v509 + 2
                    vu494.AssemblyLinearVelocity = Vector3.new()
                    vu494.CFrame = v508
                    vu493:ChangeState(Enum.HumanoidStateType.GettingUp)
                    vu10:GetService("Workspace").FallenPartsDestroyHeight = vu504
                    vu496 = false
                    vu69()
                end
                task.wait()
            end
        end)
        v460:addbuttonlp("reset", function()
			-- upvalues: (ref) vu424
            vu424.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true)
            vu424.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
            vu424.Character.Humanoid.Health = 0
        end)
        v460:addbuttonlp("reset to current pos", function()
			-- upvalues: (ref) vu424
            local v510 = vu424.Character.HumanoidRootPart.CFrame
            vu424.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true)
            vu424.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
            vu424.Character.Humanoid.Health = 0
            vu424.CharacterAdded:wait()
            repeat
                wait()
            until vu424.Character:FindFirstChild("HumanoidRootPart")
            vu424.Character.HumanoidRootPart.CFrame = v510
        end)
        local vu511 = false
        v486:addtogglelp("teleport to current pos if death", function(p512)
			-- upvalues: (ref) vu511, (ref) vu424, (ref) vu12, (ref) vu421
            vu511 = p512
            if p512 then
                local _ = vu424.Character.HumanoidRootPart.CFrame
                local v513 = vu12.RespawnTime
                vu421(0.2)
                while true do
                    if true then
                        local v514 = vu424.Character.HumanoidRootPart.CFrame
                        vu12.RespawnTime = 0.02
                        if vu424.Character.Humanoid.Health >= 0.1 then
                            local _ = vu424.Character.HumanoidRootPart.CFrame
                        else
                            vu424.CharacterAdded:wait()
                            repeat
                                wait()
                            until vu424.Character and vu424.Character:FindFirstChild("HumanoidRootPart")
                            vu424.Character.HumanoidRootPart.CFrame = v514
                        end
                    end
                    vu421()
                    if vu511 == false then
                        vu12.RespawnTime = v513
						-- goto l3
                    end
                end
            else
				-- ::l3::
                return
            end
        end)
        v460:addbuttonlp("get clientid to clip", function()
			-- upvalues: (ref) vu109
            if setclipboard then
                setclipboard(getClientId())
                vu109(getClientId() .. " was copied into your clipboard!", 2)
            end
        end)
        v460:addbuttonlp("get hwid to clip", function()
			-- upvalues: (ref) vu109
            if gethwid then
                setclipboard(gethwid())
                vu109(gethwid() .. " was copied into your clipboard!", 2)
            end
        end)
        v460:addbuttonlp("identify executor", function()
			-- upvalues: (ref) vu109
            if identifyexecutor then
                vu109(identifyexecutor(), 2)
                identifyexecutor()
            end
        end)
        v486:addtogglelp("noclip", function(p515)
			-- upvalues: (ref) vu183
            vu183 = p515
        end)
        v486:addtogglelp("fullbright", function(p516)
			-- upvalues: (ref) vu196, (ref) vu189, (ref) vu190, (ref) vu191, (ref) vu192, (ref) vu193, (ref) vu194
            vu196 = p516
            if p516 == false then
                vu189.Brightness = vu190
                vu189.ClockTime = vu191
                vu189.FogEnd = vu192
                vu189.GlobalShadows = vu193
                vu189.OutdoorAmbient = vu194
            end
        end)
        v471:addboxpl("walkspeed", "value", function(p517)
			-- upvalues: (ref) vu424
            vu424.Character.Humanoid.WalkSpeed = p517
        end)
        v471:addboxpl("jumppower", "value", function(p518)
			-- upvalues: (ref) vu424
            vu424.Character.Humanoid.JumpPower = p518
        end)
        v471:addboxpl("players chat", "value", function(p519)
			-- upvalues: (ref) vu12
            vu12:Chat(p519)
        end)
        v471:addboxpl("dot chat", "value", function(p520)
			-- upvalues: (ref) vu123
            vu123(p520, ".")
        end)
        v471:addboxpl("adjust animation speed", "value", function(p521)
			-- upvalues: (ref) vu424
            if p521 ~= "" then
                local v522, v523, v524 = pairs(vu424.Character.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local v525
                    v524, v525 = v522(v523, v524)
                    if v524 == nil then
                        break
                    end
                    v525:AdjustSpeed(tonumber(p521))
                end
            end
        end)
        v471:addboxpl("hipheight", "value", function(p526)
			-- upvalues: (ref) vu424
            vu424.Humanoid.HipHeight = p526
        end)
        v471:addboxpl("bodyangularvelocity", "value", function(p527)
			-- upvalues: (ref) vu424, (ref) vu44
            if p527 == "" then
                local v528, v529, v530 = pairs(getRoot(vu424.Character):GetChildren())
                while true do
                    local v531
                    v530, v531 = v528(v529, v530)
                    if v530 == nil then
                        break
                    end
                    if v531.Name == "rochip_angular01" then
                        v531:Destroy()
                    end
                end
            else
                local v532 = tonumber(p527) or 50
                local v533, v534, v535 = pairs(getRoot(vu424.Character):GetChildren())
                while true do
                    local v536
                    v535, v536 = v533(v534, v535)
                    if v535 == nil then
                        break
                    end
                    if v536.Name == "rochip_angular01" then
                        v536:Destroy()
                    end
                end
                local v537 = vu44("BodyAngularVelocity")
                v537.Name = "rochip_angular01"
                v537.Parent = getRoot(vu424.Character)
                v537.MaxTorque = Vector3.new(0, math.huge, 0)
                v537.AngularVelocity = Vector3.new(0, v532, 0)
            end
        end)
        v471:addboxpl("setfpscap", "value", function(p538)
			-- upvalues: (ref) vu109
            if setfpscap then
                setfpscap(tonumber(p538))
            else
                vu109("Executor Doesn\'t Support setfpscap()", 1)
            end
        end)
        v471:addboxpl("CustomPhysicalProperties", "value", function(p539)
			-- upvalues: (ref) vu424
            local v540, v541, v542 = pairs(vu424.Character:GetChildren())
            while true do
                local v543
                v542, v543 = v540(v541, v542)
                if v542 == nil then
                    break
                end
                if v543:IsA("BasePart") then
                    v543.CustomPhysicalProperties = PhysicalProperties.new(tonumber(p539), 0.3, 0.5)
                end
            end
        end)
        v486:addtogglelp("anti sit", function(p544)
			-- upvalues: (ref) vu424
            local v545 = vu424.Character
            if p544 then
                v545:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                v545:FindFirstChildOfClass("Humanoid").Sit = true
            else
                v545:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                v545:FindFirstChildOfClass("Humanoid").Sit = false
            end
        end)
        local vu546 = false
        vu27:Connect(function()
			-- upvalues: (ref) vu546, (ref) vu424, (ref) vu12
            if vu546 then
                local v547 = vu424.Character
                if v547 and v547.Parent then
                    local v548 = vu12.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    local v549, v550, v551 = pairs(vu12.LocalPlayer.Character:GetDescendants())
                    while true do
                        local v552
                        v551, v552 = v549(v550, v551)
                        if v551 == nil then
                            break
                        end
                        if v552 and (v552:IsA("BasePart") and not (v548 and v552:IsDescendantOf(v548))) then
                            v552.CanTouch = false
                        end
                    end
                end
            end
        end)
        v486:addtogglelp("disable cantouch", function(p553)
			-- upvalues: (ref) vu546, (ref) vu424
            vu546 = p553
            if p553 == false then
                local v554 = vu424.Character
                if v554 and v554.Parent then
                    local v555 = v554:FindFirstChildOfClass("Tool")
                    local v556, v557, v558 = pairs(v554:GetDescendants())
                    while true do
                        local v559
                        v558, v559 = v556(v557, v558)
                        if v558 == nil then
                            break
                        end
                        if v559 and (v559:IsA("BasePart") and not (v555 and v559:IsDescendantOf(v555))) then
                            v559.CanTouch = true
                        end
                    end
                end
            end
        end)
        v460:addbuttonlp("drop tools", function()
			-- upvalues: (ref) vu424, (ref) vu419
            local v560, v561, v562 = pairs(vu424.Character:GetChildren())
            while true do
                local v563
                v562, v563 = v560(v561, v562)
                if v562 == nil then
                    break
                end
                if v563:IsA("Tool") and v563.CanBeDropped == true then
                    v563.Parent = vu419
                end
            end
        end)
        v460:addbuttonlp("equip backpack tools", function()
			-- upvalues: (ref) vu424
            local v564, v565, v566 = pairs(vu424.Backpack:GetChildren())
            while true do
                local v567
                v566, v567 = v564(v565, v566)
                if v566 == nil then
                    break
                end
                v567.Parent = vu424.Character
            end
        end)
        v486:addtogglelp("part claim", function(p568)
			-- upvalues: (ref) vu47
            vu47 = p568
        end)
        v486:addtogglelp("part claim 2", function(p569)
			-- upvalues: (ref) vu111
            vu111 = p569
        end)
        v486:addtogglelp("anti client death", function(_)
			-- upvalues: (ref) vu424
            vu424.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true)
        end)
        v486:addtogglelp("anti target", function(p570)
			-- upvalues: (ref) vu497
            vu497 = p570
        end)
        v486:addtogglelp("freeze", function(p571)
			-- upvalues: (ref) vu424
            local v572, v573, v574 = pairs(vu424.Character:GetChildren())
            while true do
                local v575
                v574, v575 = v572(v573, v574)
                if v574 == nil then
                    break
                end
                if v575:IsA("BasePart") then
                    v575.Anchored = p571
                end
            end
        end)
        local vu576 = false
        v420:Connect(function()
			-- upvalues: (ref) vu576, (ref) vu424, (ref) vu421
            if vu576 and vu424.Character.HumanoidRootPart.AssemblyLinearVelocity.Y < - 100 then
                vu421()
                vu424.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 103, 0)
            end
        end)
        v486:addtogglelp("anti free fall", false, function(p577)
			-- upvalues: (ref) vu576
            vu576 = p577
        end)
        local vu578 = false
        vu11:GetService("UserInputService").JumpRequest:Connect(function()
			-- upvalues: (ref) vu578, (ref) vu424
            if vu578 then
                local v579 = vu424.Character
                local v580 = v579 and (v579.Parent and v579:FindFirstChildOfClass("Humanoid"))
                if v580 then
                    v580:ChangeState("Jumping")
                end
            end
        end)
        v486:addtogglelp("infinte jump", function(p581)
			-- upvalues: (ref) vu578
            vu578 = p581
        end)
        v460:addbuttonlp("rejoin", function()
			-- upvalues: (ref) vu11, (ref) vu424
            vu11:GetService("TeleportService"):TeleportToPlaceInstance(vu11.PlaceId, vu11.JobId, vu424)
        end)
        v460:addbuttonlp("server switch", function()
			-- upvalues: (ref) vu7, (ref) vu11, (ref) vu8, (ref) vu109, (ref) vu42, (ref) vu41
            local vu582 = nil
            vu7(function()
				-- upvalues: (ref) vu582, (ref) vu11
                vu582 = vu11:GetService("HttpService"):JSONDecode(vu11:HttpGetAsync("https://games.roblox.com/v1/games/" .. vu11.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data
            end)
            if vu8(vu582) == "table" then
                local v583, v584, v585 = pairs(vu582)
                local v586 = {}
                while true do
                    local v587
                    v585, v587 = v583(v584, v585)
                    if v585 == nil then
                        break
                    end
                    if vu8(v587) == "table" and (v587.maxPlayers > v587.playing and v587.id ~= vu11.JobId) then
                        vu42(v586, v587.id)
                    end
                end
                if # v586 <= 0 then
                    vu109("no server found!", 1)
                else
                    vu11:GetService("TeleportService"):TeleportToPlaceInstance(vu11.PlaceId, v586[vu41(1, # v586)])
                end
            else
                vu109("Api error!", 1)
            end
        end)
        v460:addbuttonlp("get current pos to clip", function()
			-- upvalues: (ref) vu424, (ref) vu109
            local v588 = vu424.Character
            if v588 then
                v588 = vu424.Character.HumanoidRootPart.Position
            end
            pos = v588
            if not pos then
                return vu109("character not found", 2)
            end
            local v589 = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
            if setclipboard then
                setclipboard(v589)
                vu109(v589 .. " Copied To Clipboard!", 2)
            else
                vu109("setclipboard doesnt support on ur executor")
            end
        end)
        v486:addtogglelp("anti fling", function(p590)
			-- upvalues: (ref) vu182
            vu182 = p590
        end)
        v486:addtogglelp("client replication lag", function(p591)
			-- upvalues: (ref) vu10, (ref) vu11
            if p591 then
                settings().Network.IncomingReplicationLag = 50000
                local v592, v593, v594 = pairs(vu10.Players:GetPlayers())
                while true do
                    local v595
                    v594, v595 = v592(v593, v594)
                    if v594 == nil then
                        break
                    end
                    if v595 ~= plr then
                        local v596, v597, v598 = pairs(v595.Character.Humanoid:GetPlayingAnimationTracks())
                        while true do
                            local v599
                            v598, v599 = v596(v597, v598)
                            if v598 == nil then
                                break
                            end
                            v599:AdjustSpeed(0)
                        end
                    end
                end
                local v600 = vu11
                local v601, v602, v603 = pairs(v600:GetDescendants())
                while true do
                    local v604
                    v603, v604 = v601(v602, v603)
                    if v603 == nil then
                        break
                    end
                    if v604:IsA("ParticleEmitter") or v604:IsA("Trail") then
                        v604.TimeScale = 0
                    end
                end
            else
                settings().Network.IncomingReplicationLag = 0
                local v605, v606, v607 = pairs(vu10.Players:GetPlayers())
                while true do
                    local v608
                    v607, v608 = v605(v606, v607)
                    if v607 == nil then
                        break
                    end
                    if v608 ~= plr then
                        local v609, v610, v611 = pairs(v608.Character.Humanoid:GetPlayingAnimationTracks())
                        while true do
                            local v612
                            v611, v612 = v609(v610, v611)
                            if v611 == nil then
                                break
                            end
                            v612:AdjustSpeed(1)
                        end
                    end
                end
                local v613 = vu11
                local v614, v615, v616 = pairs(v613:GetDescendants())
                while true do
                    local v617
                    v616, v617 = v614(v615, v616)
                    if v616 == nil then
                        break
                    end
                    if v617:IsA("ParticleEmitter") or v617:IsA("Trail") then
                        v617.TimeScale = 1
                    end
                end
            end
        end)
        v460:addbuttonlp("ragdoll", function()
			-- upvalues: (ref) vu424, (ref) vu421
            vu424.Character.Humanoid.Jump = true
            vu421(0.5)
            vu424.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Ragdoll)
        end)
        if vu249 ~= nil then
            function Destroy(p618)
				-- upvalues: (ref) vu249
                vu249:FireServer(p618)
            end
            v460:addbuttonlp("btools", function()
				-- upvalues: (ref) vu424, (ref) vu44, (ref) vu10, (ref) vu249
                local vu619 = vu424:GetMouse()
                local vu620 = vu44("SelectionBox", vu10.workspace)
                local vu621 = false
                local v622 = vu44("Tool", vu424:FindFirstChildOfClass("Backpack"))
                v622.RequiresHandle = false
                v622.Name = "btools"
                v622.CanBeDropped = false
                v622.Equipped:connect(function()
					-- upvalues: (ref) vu621, (ref) vu620, (ref) vu619
                    vu621 = true
                    while vu621 do
                        vu620.Adornee = vu619.Target
                        wait()
                    end
                end)
                v622.Unequipped:connect(function()
					-- upvalues: (ref) vu621, (ref) vu620
                    vu621 = false
                    vu620.Adornee = nil
                end)
                v622.Activated:connect(function()
					-- upvalues: (ref) vu619, (ref) vu249
                    if vu619.Target ~= nil then
                        vu249:FireServer(vu619.Target, {
                            ["Value"] = vu619.Target
                        })
                    end
                end)
            end)
        end
        speeds = 2
        local vu623 = vu10:GetService("Players").LocalPlayer
        local v624 = vu424.Character
        if v624 then
            v624:FindFirstChildWhichIsA("Humanoid")
        end
        local vu625 = false
        v486:addtogglelp("fly", function(_)
			-- upvalues: (ref) vu625, (ref) vu623, (ref) vu424, (ref) vu10
            if vu625 then
                vu625 = false
                local v626 = vu623.Character.Humanoid
                local v627 = {
                    Enum.HumanoidStateType.Climbing,
                    Enum.HumanoidStateType.FallingDown,
                    Enum.HumanoidStateType.Freefall,
                    Enum.HumanoidStateType.GettingUp,
                    Enum.HumanoidStateType.Jumping,
                    Enum.HumanoidStateType.Landed,
                    Enum.HumanoidStateType.Physics,
                    Enum.HumanoidStateType.PlatformStanding,
                    Enum.HumanoidStateType.Ragdoll,
                    Enum.HumanoidStateType.Running,
                    Enum.HumanoidStateType.RunningNoPhysics,
                    Enum.HumanoidStateType.Seated,
                    Enum.HumanoidStateType.StrafingNoPhysics
                }
                local v628, v629, v630 = pairs(v627)
                while true do
                    local v631
                    v630, v631 = v628(v629, v630)
                    if v630 == nil then
                        break
                    end
                    v626:SetStateEnabled(v631, true)
                end
                v626:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
                local v632, v633, v634 = pairs(vu424.Character:GetDescendants())
                while true do
                    local v635
                    v634, v635 = v632(v633, v634)
                    if v634 == nil then
                        break
                    end
                    if v635.Name == "Swimming" and v635:IsA("Sound") then
                        v635.Volume = 1.56
                    end
                end
            else
                vu625 = true
                for _ = 1, speeds do
                    spawn(function()
						-- upvalues: (ref) vu10, (ref) vu424
                        local v636 = vu10:GetService("RunService").Heartbeat
                        tpwalking = true
                        local v637 = vu424.Character
                        local v638
                        if v637 then
                            v638 = v637:FindFirstChildWhichIsA("Humanoid")
                        else
                            v638 = v637
                        end
                        while tpwalking and (v636:Wait() and (v637 and (v638 and v638.Parent))) do
                            if v638.MoveDirection.Magnitude > 0 then
                                v637:TranslateBy(v638.MoveDirection)
                            end
                        end
                    end)
                end
                vu424.Character.Animate.Disabled = true
                local v639 = vu424.Character
                local v640 = v639:FindFirstChildOfClass("Humanoid") or v639:FindFirstChildOfClass("AnimationController")
                local v641, v642, v643 = pairs(v640:GetPlayingAnimationTracks())
                while true do
                    local v644
                    v643, v644 = v641(v642, v643)
                    if v643 == nil then
                        break
                    end
                    v644:AdjustSpeed(0)
                end
                local v645 = {
                    Enum.HumanoidStateType.Climbing,
                    Enum.HumanoidStateType.FallingDown,
                    Enum.HumanoidStateType.Freefall,
                    Enum.HumanoidStateType.GettingUp,
                    Enum.HumanoidStateType.Jumping,
                    Enum.HumanoidStateType.Landed,
                    Enum.HumanoidStateType.Physics,
                    Enum.HumanoidStateType.PlatformStanding,
                    Enum.HumanoidStateType.Ragdoll,
                    Enum.HumanoidStateType.Running,
                    Enum.HumanoidStateType.RunningNoPhysics,
                    Enum.HumanoidStateType.StrafingNoPhysics
                }
                local v646, v647, v648 = pairs(v645)
                while true do
                    local v649
                    v648, v649 = v646(v647, v648)
                    if v648 == nil then
                        break
                    end
                    vu623.Character.Humanoid:SetStateEnabled(v649, false)
                end
                vu623.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
                local v650, v651, v652 = pairs(vu424.Character:GetDescendants())
                while true do
                    local v653
                    v652, v653 = v650(v651, v652)
                    if v652 == nil then
                        break
                    end
                    if v653.Name == "Swimming" and v653:IsA("Sound") then
                        v653.Volume = 0
                    end
                end
            end
            local v654 = vu424
            local v655 = vu623.Character:FindFirstChild("Torso") or vu623.Character:FindFirstChild("UpperTorso")
            local v656 = Instance.new("BodyGyro", v655)
            v656.P = 90000
            v656.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
            v656.cframe = v655.CFrame
            local v657 = Instance.new("BodyVelocity", v655)
            v657.velocity = Vector3.new(0, 0.1, 0)
            v657.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            local v658, v659, v660, v661
            if vu625 then
                v654.Character.Humanoid.PlatformStand = true
                v658 = {
                    ["f"] = 0,
                    ["b"] = 0,
                    ["l"] = 0,
                    ["r"] = 0
                }
                v659 = 0
                v660 = 50
                v661 = {
                    ["f"] = 0,
                    ["b"] = 0,
                    ["l"] = 0,
                    ["r"] = 0
                }
            else
                v658 = {
                    ["f"] = 0,
                    ["b"] = 0,
                    ["l"] = 0,
                    ["r"] = 0
                }
                v659 = 0
                v660 = 50
                v661 = {
                    ["f"] = 0,
                    ["b"] = 0,
                    ["l"] = 0,
                    ["r"] = 0
                }
            end
            while vu625 do
                vu10:GetService("RunService").RenderStepped:Wait()
                if v658.l + v658.r ~= 0 or v658.f + v658.b ~= 0 then
                    v659 = v659 + 0.5 + v659 / v660
                    if v660 < v659 then
                        v659 = v660
                    end
                elseif v659 > 0 then
                    local v662 = v659 - 1
                    v659 = v662 < 0 and 0 or v662
                end
                if v658.l + v658.r ~= 0 or v658.f + v658.b ~= 0 then
                    v657.velocity = (vu10.Workspace.CurrentCamera.CFrame.lookVector * (v658.f + v658.b) + (vu10.Workspace.CurrentCamera.CFrame * CFrame.new(v658.l + v658.r, (v658.f + v658.b) * 0.2, 0).p - vu10.Workspace.CurrentCamera.CFrame.p)) * v659
                    v661 = {
                        ["f"] = v658.f,
                        ["b"] = v658.b,
                        ["l"] = v658.l,
                        ["r"] = v658.r
                    }
                elseif v659 > 0 then
                    v657.velocity = (vu10.Workspace.CurrentCamera.CFrame.lookVector * (v661.f + v661.b) + (vu10.Workspace.CurrentCamera.CFrame * CFrame.new(v661.l + v661.r, (v661.f + v661.b) * 0.2, 0).p - vu10.Workspace.CurrentCamera.CFrame.p)) * v659
                else
                    v657.velocity = Vector3.new(0, 0, 0)
                end
                v656.cframe = vu10.Workspace.CurrentCamera.CFrame * CFrame.Angles(- math.rad((v658.f + v658.b) * 50 * v659 / v660), 0, 0)
            end
            v656:Destroy()
            v657:Destroy()
            v654.Character.Humanoid.PlatformStand = false
            vu424.Character.Animate.Disabled = false
            tpwalking = false
        end)
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu70, (ref) vu13, (ref) vu12, (ref) vu123, (ref) vu38, (ref) vu109, (ref) vu18
        local vu663 = vu102["134"].Parent
        local vu664 = vu663.loglist.ScrollingFrame.Folder.playerchatsample
        local vu665 = vu663.loglist.ScrollingFrame.Folder.mesample
        local vu666 = vu10:GetService("TweenService")
        local vu667 = vu663.logfun.chatbox
        local vu668 = vu663.logfun.sendchat
        local vu669 = vu663.logfun.clearchat
        local vu670 = vu663.logfun.loopchat
        function log(p671, p672, p673)
			-- upvalues: (ref) vu664, (ref) vu663, (ref) vu10
            local v674 = vu664:Clone()
            v674.Name = "" .. p671 .. " > " .. p672
            v674.Parent = vu663.loglist.ScrollingFrame
            v674.ImageLabel.Image = vu10:GetService("Players"):GetUserThumbnailAsync(p673, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size100x100)
            v674.TextBox.Text = "{" .. p671 .. "}: " .. p672
            v674.Visible = true
            vu663.loglist.ScrollingFrame.CanvasPosition = Vector2.new(0, 100000 + # vu663.loglist.ScrollingFrame:GetChildren())
            return v674
        end
        function lplog(p675, p676, p677)
			-- upvalues: (ref) vu665, (ref) vu663, (ref) vu10, (ref) vu70
            local v678 = vu665:Clone()
            v678.Name = "" .. p675 .. " > " .. p676
            v678.Parent = vu663.loglist.ScrollingFrame
            v678.ImageLabel.Image = vu10:GetService("Players"):GetUserThumbnailAsync(p677, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size100x100)
            v678.TextBox.Text = "{" .. p675 .. "}: " .. p676
            v678.Visible = true
            vu663.loglist.ScrollingFrame.CanvasPosition = Vector2.new(0, 1000000 + # vu663.loglist.ScrollingFrame:GetChildren())
            if vu70 then
                v678.BackgroundColor3 = Color3.fromRGB(255, 247, 0)
            end
            return v678
        end
        vu13.Chatted:Connect(function(p679)
			-- upvalues: (ref) vu13
            lplog(vu13.DisplayName, p679, vu13.UserId)
        end)
        local v680 = vu12
        local v681, v682, v683 = pairs(v680:GetChildren())
        local vu684 = vu663
        while true do
            local vu685
            v683, vu685 = v681(v682, v683)
            if v683 == nil then
                break
            end
            vu685.Chatted:Connect(function(p686)
				-- upvalues: (ref) vu685, (ref) vu13
                if vu685.Name ~= vu13.Name then
                    log(vu685.DisplayName, p686, vu685.UserId)
                end
            end)
        end
        vu12.ChildAdded:Connect(function(pu687)
			-- upvalues: (ref) vu13
            if pu687:IsA("Player") then
                pu687.Chatted:Connect(function(p688)
					-- upvalues: (ref) pu687, (ref) vu13
                    if pu687.Name ~= vu13.Name then
                        log(pu687.DisplayName, p688, pu687.UserId)
                    end
                end)
            end
        end)
        local vu689 = vu668.BackgroundColor3
        vu668.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu667, (ref) vu123, (ref) vu666, (ref) vu668, (ref) vu38, (ref) vu689
            if vu667.Text == "" then
                vu666:Create(vu668, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.new(1, 0, 0)
                }):Play()
                vu38(0.1)
                local v690 = {
                    ["BackgroundColor3"] = vu689
                }
                vu666:Create(vu668, TweenInfo.new(0.2), v690):Play()
            else
                vu123(vu667.Text)
                vu666:Create(vu668, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.new(0.0156863, 1, 0)
                }):Play()
                vu38(0.1)
                local v691 = {
                    ["BackgroundColor3"] = vu689
                }
                vu666:Create(vu668, TweenInfo.new(0.2), v691):Play()
            end
        end)
        local vu692 = vu669.BackgroundColor3
        vu669.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu666, (ref) vu669, (ref) vu38, (ref) vu692, (ref) vu684, (ref) vu109
            vu666:Create(vu669, TweenInfo.new(0.2), {
                ["BackgroundColor3"] = Color3.new(1, 0, 0)
            }):Play()
            vu38(0.1)
            local v693 = {
                ["BackgroundColor3"] = vu692
            }
            vu666:Create(vu669, TweenInfo.new(0.2), v693):Play()
            local v694, v695, v696 = pairs(vu684.loglist.ScrollingFrame:GetChildren())
            while true do
                local v697
                v696, v697 = v694(v695, v696)
                if v696 == nil then
                    break
                end
                if v697:IsA("Frame") then
                    v697:Destroy()
                end
            end
            vu109("Cleared!", 2)
        end)
        local vu698 = false
        vu18.Stepped:Connect(function()
			-- upvalues: (ref) vu698, (ref) vu123, (ref) vu667, (ref) vu12
            if vu698 then
                vu123(vu667.Text)
                lplog(vu12.LocalPlayer.DisplayName, vu667.Text, vu12.LocalPlayer.UserId)
                wait(2)
            end
        end)
        local vu699 = vu670.BackgroundColor3
        vu670.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu698, (ref) vu666, (ref) vu670, (ref) vu102, (ref) vu699, (ref) vu109
            vu698 = not vu698
            vu666:Create(vu670, TweenInfo.new(0.2), {
                ["BackgroundColor3"] = vu698 and vu102["4d"].Value or vu699
            }):Play()
            vu109("looping set to " .. tostring(vu698), 2)
        end)
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu7
        local vu700 = vu102["1e2"].Parent
        local vu701 = vu10:GetService("TweenService")
        local v702 = vu10:GetService("RunService")
        vu10:GetService("Workspace")
        vu10:GetService("Players")
        local v703 = vu10:GetService("Players")
        local vu704 = vu10:GetService("RunService")
        local v705 = vu10:GetService("ContextActionService")
        local vu706 = vu10:GetService("Workspace")
        local vu707 = v703.LocalPlayer
        local _ = v702.Stepped
        local _ = task.wait
        local v708 = vu700.keyframe
        local vu709 = vu700.keyframe.Value
        local vu710 = vu700.keyfun.shiftlock
        local vu711 = false
        local vu712 = 900000
        local vu713 = CFrame.new(1.7, 0, 0)
        local vu714 = CFrame.new(- 1.7, 0, 0)
        local vu715 = vu710.BackgroundColor3
        local vu716 = vu710.BackgroundTransparency
        local vu717 = vu710.Size
        local function v726(p718, p719)
			-- upvalues: (ref) vu700, (ref) vu715, (ref) vu717, (ref) vu716, (ref) vu10, (ref) vu701, (ref) vu709
            local vu720 = p719 or "1"
            local vu721 = Instance.new("TextButton", vu700.keyfun)
            local v722 = Instance.new("UICorner", vu721)
            vu721.BackgroundColor3 = vu715
            v722.CornerRadius = UDim.new(0, 6)
            vu721.TextScaled = true
            vu721.TextColor3 = Color3.fromRGB(255, 255, 255)
            vu721.Text = p718 or "?"
            vu721.Size = vu717
            vu721.Font = Enum.Font.FredokaOne
            vu721.BackgroundTransparency = vu716
            vu721.InputBegan:Connect(function(p723)
				-- upvalues: (ref) vu10, (ref) vu720, (ref) vu701, (ref) vu721, (ref) vu709
                if p723.UserInputType == Enum.UserInputType.MouseButton1 or p723.UserInputType == Enum.UserInputType.Touch then
                    vu10:GetService("VirtualInputManager"):SendKeyEvent(true, vu720, false, vu10)
                    vu701:Create(vu721, TweenInfo.new(0.2), {
                        ["BackgroundColor3"] = vu709.Value
                    }):Play()
                end
            end)
            vu721.InputEnded:Connect(function(p724)
				-- upvalues: (ref) vu10, (ref) vu720, (ref) vu701, (ref) vu721, (ref) vu715
                if p724.UserInputType == Enum.UserInputType.MouseButton1 or p724.UserInputType == Enum.UserInputType.Touch then
                    vu10:GetService("VirtualInputManager"):SendKeyEvent(false, vu720, false, vu10)
                    local v725 = {
                        ["BackgroundColor3"] = vu715
                    }
                    vu701:Create(vu721, TweenInfo.new(0.2), v725):Play()
                end
            end)
        end
        local v727, v728, v729 = pairs(v708:GetDescendants())
        local vu730 = vu709
        local vu731 = vu701
        while true do
            local vu732
            v729, vu732 = v727(v728, v729)
            if v729 == nil then
                break
            end
            if vu732:IsA("TextButton") then
                vu732.InputBegan:Connect(function(p733)
					-- upvalues: (ref) vu10, (ref) vu732, (ref) vu731, (ref) vu730
                    if p733.UserInputType == Enum.UserInputType.MouseButton1 or p733.UserInputType == Enum.UserInputType.Touch then
                        vu10:GetService("VirtualInputManager"):SendKeyEvent(true, vu732.Name, false, vu10)
                        vu731:Create(vu732, TweenInfo.new(0.2), {
                            ["BackgroundColor3"] = vu730.Value
                        }):Play()
                    end
                end)
                vu732.InputEnded:Connect(function(p734)
					-- upvalues: (ref) vu10, (ref) vu732, (ref) vu731
                    if p734.UserInputType == Enum.UserInputType.MouseButton1 or p734.UserInputType == Enum.UserInputType.Touch then
                        vu10:GetService("VirtualInputManager"):SendKeyEvent(false, vu732.Name, false, vu10)
                        vu731:Create(vu732, TweenInfo.new(0.2), {
                            ["BackgroundColor3"] = Color3.fromRGB(59, 59, 59)
                        }):Play()
                    end
                end)
            end
        end
        local vu735 = vu710.Image
        local vu736 = "http://www.roblox.com/asset/?id=6031082533"
        local function v737()
			-- upvalues: (ref) vu711, (ref) vu704, (ref) vu731, (ref) vu710, (ref) vu736, (ref) vu707, (ref) vu706, (ref) vu712, (ref) vu713, (ref) vu735, (ref) vu714, (ref) vu7
            if vu711 then
                vu707.Character.Humanoid.AutoRotate = true
                vu731:Create(vu710, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(91, 91, 91)
                }):Play()
                vu710.Image = vu735
                vu706.CurrentCamera.CFrame = vu706.CurrentCamera.CFrame * vu714
                vu7(function()
					-- upvalues: (ref) vu711
                    vu711:Disconnect()
                    vu711 = nil
                end)
            else
                vu711 = vu704.RenderStepped:Connect(function()
					-- upvalues: (ref) vu731, (ref) vu710, (ref) vu736, (ref) vu707, (ref) vu706, (ref) vu712, (ref) vu713
                    vu731:Create(vu710, TweenInfo.new(0.2), {
                        ["BackgroundColor3"] = Color3.fromRGB(17, 255, 0)
                    }):Play()
                    vu710.Image = vu736
                    vu707.Character.HumanoidRootPart.CFrame = CFrame.new(vu707.Character.HumanoidRootPart.Position, Vector3.new(vu706.CurrentCamera.CFrame.LookVector.X * vu712, vu707.Character.HumanoidRootPart.Position.Y, vu706.CurrentCamera.CFrame.LookVector.Z * vu712))
                    vu706.CurrentCamera.CFrame = vu706.CurrentCamera.CFrame * vu713
                    vu706.CurrentCamera.Focus = CFrame.fromMatrix(vu706.CurrentCamera.Focus.Position, vu706.CurrentCamera.CFrame.RightVector, vu706.CurrentCamera.CFrame.UpVector) * vu713
                end)
            end
        end
        vu710.MouseButton1Down:Connect(v737)
        v705:BindAction("Shift Lock", v737, false, "On")
        v705:SetPosition("Shift Lock", UDim2.new(0.8, 0, 0.8, 0))
        v726("@", "At")
        v726("?", "Question")
        v726(";", "Semicolon")
        v726("_", "Underscore")
        v726("*", "KeypadMultiply")
        v726("\"", "QuotedDouble")
        v726("~", "Tilde")
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu7, (ref) vu2, (ref) vu13, (ref) vu38, (ref) vu109, (ref) vu70, (ref) vu103
        local vu738 = vu102["114"]
        local vu739 = vu10:GetService("TweenService")
        vu10:GetService("RunService")
        local vu740 = vu738.Parent.animlist.ScrollingFrame
        local v741 = vu738.Parent.animationfun.Frame
        local vu742 = v741.Parent.ImageLabel
        local vu743 = v741.play
        local vu744 = v741.preview
        local vu745 = v741.pick
        local vu746 = v741.backup
        local vu747 = "all"
        idle1anim = nil
        idle2anim = nil
        walkanim = nil
        runanim = nil
        jumpanim = nil
        climbanim = nil
        fallanim = nil
        swimanim = nil
        swimidleanim = nil
        defidle1anim = nil
        defidle2anim = nil
        defwalkanim = nil
        defrunanim = nil
        defjumpanim = nil
        defclimbanim = nil
        deffallanim = nil
        defswimanim = nil
        defswimidleanim = nil
        local vu748 = nil
        local _, _ = vu7(function()
			-- upvalues: (ref) vu748, (ref) vu10
            vu748 = vu10:GetObjects("rbxassetid://104775593284677")[1]
        end)
        vu744.BackgroundColor3 = vu2
        local v749 = vu748
        local vu750 = vu748.Clone(v749)
        vu750.Parent = v741.Parent
        vu750.Size = vu742.Size
        vu750.Position = vu742.Position
        vu750.Visible = false
        vu750.BackgroundTransparency = 1
        vu750.LightColor = Color3.fromRGB(255, 255, 255)
        function search_(p751, p752, p753)
            local v754 = p753 or "Frame"
            local v755 = (p752 or "nil"):lower()
            if v755 == "" then
                local v756 = p751:GetChildren()
                local v757, v758, v759 = pairs(v756)
                while true do
                    local v760
                    v759, v760 = v757(v758, v759)
                    if v759 == nil then
                        break
                    end
                    if v760:IsA(v754) then
                        v760.Visible = true
                    end
                end
            else
                local v761 = p751:GetChildren()
                local v762, v763, v764 = pairs(v761)
                while true do
                    local v765
                    v764, v765 = v762(v763, v764)
                    if v764 == nil then
                        break
                    end
                    if v765:IsA(v754) then
                        local v766 = v765.Name:lower()
                        if string.find(v766, v755) then
                            v765.Visible = true
                        else
                            v765.Visible = false
                        end
                    end
                end
            end
        end
        vu738.Parent.animlist.search.searchbutton.MouseButton1Down:Connect(function()
			-- upvalues: (ref) vu740, (ref) vu738
            search_(vu740, vu738.Parent.animlist.search.searchbox.Text, "Frame")
        end)
        local vu767 = "Animate"
        local v768
        if vu13.Character:FindFirstChild("Animate") then
            v768 = vu13.Character:FindFirstChild("Animate")
            if vu13.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 and vu13.Character:FindFirstChild(vu767):FindFirstChild("idle") then
                defidle1anim = vu13.Character:FindFirstChild(vu767).idle.Animation1.AnimationId
                defidle2anim = vu13.Character:FindFirstChild(vu767).idle.Animation2.AnimationId
                defwalkanim = vu13.Character:FindFirstChild(vu767).walk:FindFirstChildWhichIsA("Animation").AnimationId
                defrunanim = vu13.Character:FindFirstChild(vu767).run:FindFirstChildWhichIsA("Animation").AnimationId
                defjumpanim = vu13.Character:FindFirstChild(vu767).jump:FindFirstChildWhichIsA("Animation").AnimationId
                defclimbanim = vu13.Character:FindFirstChild(vu767).climb:FindFirstChildWhichIsA("Animation").AnimationId
                deffallanim = vu13.Character:FindFirstChild(vu767).fall:FindFirstChildWhichIsA("Animation").AnimationId
                defswimanim = vu13.Character:FindFirstChild(vu767).swim:FindFirstChildWhichIsA("Animation").AnimationId
                defswimidleanim = vu13.Character:FindFirstChild(vu767).swimidle:FindFirstChildWhichIsA("Animation").AnimationId
            end
        else
            v768 = nil
        end
        local vu769 = nil
        local vu770 = nil
        local vu771 = nil
        local vu772 = nil
        local vu773 = nil
        local vu774 = nil
        local vu775 = nil
        local vu776 = nil
        local vu777 = nil
        getanim = false
        local function vu786()
			-- upvalues: (ref) vu13, (ref) vu767, (ref) vu769, (ref) vu770, (ref) vu771, (ref) vu772, (ref) vu773, (ref) vu774, (ref) vu775, (ref) vu776, (ref) vu777, (ref) vu38, (ref) vu786
            if getanim == true then
                if vu13.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
                    return
                end
                if vu13.Character:FindFirstChild(vu767):FindFirstChild("idle") then
                    vu769 = vu13.Character:FindFirstChild(vu767).idle.Animation1.AnimationId or idle1anim
                    vu770 = vu13.Character:FindFirstChild(vu767).idle.Animation2.AnimationId or idle2anim
                    vu771 = vu13.Character:FindFirstChild(vu767).walk:FindFirstChildWhichIsA("Animation").AnimationId or walkanim
                    vu772 = vu13.Character:FindFirstChild(vu767).run:FindFirstChildWhichIsA("Animation").AnimationId or runanim
                    vu773 = vu13.Character:FindFirstChild(vu767).jump:FindFirstChildWhichIsA("Animation").AnimationId or jumpanim
                    vu774 = vu13.Character:FindFirstChild(vu767).climb:FindFirstChildWhichIsA("Animation").AnimationId or climbanim
                    vu775 = vu13.Character:FindFirstChild(vu767).fall:FindFirstChildWhichIsA("Animation").AnimationId or fallanim
                    vu776 = vu13.Character:FindFirstChild(vu767).swim:FindFirstChildWhichIsA("Animation").AnimationId or swimanim
                    vu777 = vu13.Character:FindFirstChild(vu767).swimidle:FindFirstChildWhichIsA("Animation").AnimationId or swimidleanim
                end
                vu13.CharacterAdded:wait()
                repeat
                    vu38()
                    getanim = false
                until vu13.Character:FindFirstChild("Humanoid")
                vu38(0.12)
                local v778, v779, v780 = pairs(vu13.Character.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local v781
                    v780, v781 = v778(v779, v780)
                    if v780 == nil then
                        break
                    end
                    v781:Stop()
                end
                if vu13.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
                    return
                end
                vu13.Character:FindFirstChild(vu767).Disabled = true
                if vu13.Character:FindFirstChild(vu767):FindFirstChild("idle") then
                    vu13.Character:FindFirstChild(vu767).idle.Animation1.AnimationId = vu769
                    vu13.Character:FindFirstChild(vu767).idle.Animation2.AnimationId = vu770
                    vu13.Character:FindFirstChild(vu767).walk:FindFirstChildWhichIsA("Animation").AnimationId = vu771
                    vu13.Character:FindFirstChild(vu767).run:FindFirstChildWhichIsA("Animation").AnimationId = vu772
                    vu13.Character:FindFirstChild(vu767).jump:FindFirstChildWhichIsA("Animation").AnimationId = vu773
                    vu13.Character:FindFirstChild(vu767).climb:FindFirstChildWhichIsA("Animation").AnimationId = vu774
                    vu13.Character:FindFirstChild(vu767).fall:FindFirstChildWhichIsA("Animation").AnimationId = vu775
                    vu13.Character:FindFirstChild(vu767).swim:FindFirstChildWhichIsA("Animation").AnimationId = vu776
                    vu13.Character:FindFirstChild(vu767).swimidle:FindFirstChildWhichIsA("Animation").AnimationId = vu777
                end
                local v782, v783, v784 = pairs(vu13.Character.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local v785
                    v784, v785 = v782(v783, v784)
                    if v784 == nil then
                        break
                    end
                    if v785.Name == "Animation1" then
                        v785:Play()
                    end
                end
                vu13.Character:FindFirstChild(vu767).Disabled = false
                vu13.Character:FindFirstChild("Humanoid").Died:Connect(vu786)
                getanim = true
            end
        end
        vu13.CharacterAdded:Connect(function(p787)
			-- upvalues: (ref) vu38, (ref) vu13, (ref) vu786
            repeat
                vu38()
            until p787 and p787:FindFirstChildOfClass("Humanoid")
            vu13.CharacterAdded:wait()
            wait(0.34)
            task.spawn(function()
				-- upvalues: (ref) vu38, (ref) vu786
                vu38(0.04)
                vu786()
            end)
        end)
        if v768 ~= nil and v768:FindFirstChild("idle") then
            idl = v768.idle
            wlk = v768.walk
        end
        function animframeload(p788, p789, pu790, p791)
			-- upvalues: (ref) vu740, (ref) vu739, (ref) vu102, (ref) vu742, (ref) vu38, (ref) vu750
            local vu792 = Color3.fromRGB(76, 76, 76)
            local vu793 = Instance.new("Frame")
            local v794 = Instance.new("UICorner")
            local vu795 = Instance.new("ImageButton")
            local v796 = Instance.new("TextLabel")
            local v797 = Instance.new("UICorner")
            local v798 = Instance.new("TextLabel")
            vu793.Name = p788
            vu793.Parent = vu740
            vu793.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
            vu793.BackgroundTransparency = 0.5
            vu793.BorderColor3 = Color3.fromRGB(0, 0, 0)
            vu793.BorderSizePixel = 0
            vu793.Size = UDim2.new(0, 100, 0, 100)
            v794.CornerRadius = UDim.new(0, 7)
            v794.Parent = vu793
            vu795.Name = "animimage"
            vu795.Parent = vu793
            vu795.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            vu795.BackgroundTransparency = 1
            vu795.BorderColor3 = Color3.fromRGB(0, 0, 0)
            vu795.BorderSizePixel = 0
            vu795.Size = UDim2.new(1, 0, 1, 0)
            vu795.ScaleType = Enum.ScaleType.Fit
            if (p791 or false) == false then
                vu795.Image = "rbxthumb://type=BundleThumbnail&id=" .. pu790 .. "&w=150&h=150"
            else
                vu795.Image = "rbxthumb://type=Asset&id=" .. pu790 .. "&w=150&h=150"
            end
            v796.Name = "animname"
            v796.Parent = vu793
            v796.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
            v796.BackgroundTransparency = 0.5
            v796.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v796.BorderSizePixel = 0
            v796.Position = UDim2.new(0, 0, 0.748175204, 0)
            v796.Size = UDim2.new(1, 0, 0, 13)
            v796.Font = Enum.Font.FredokaOne
            v796.Text = p788
            v796.TextColor3 = Color3.fromRGB(255, 255, 255)
            v796.TextScaled = true
            v796.TextSize = 14
            v796.TextWrapped = true
            v797.CornerRadius = UDim.new(0, 7)
            v797.Parent = v796
            v798.Name = "animprice"
            v798.Parent = vu793
            v798.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
            v798.BackgroundTransparency = 1
            v798.BorderColor3 = Color3.fromRGB(0, 0, 0)
            v798.BorderSizePixel = 0
            v798.Size = UDim2.new(1, 0, 0, 13)
            v798.Font = Enum.Font.FredokaOne
            v798.Text = p789
            v798.TextColor3 = Color3.fromRGB(255, 255, 255)
            v798.TextScaled = true
            v798.TextSize = 14
            v798.TextWrapped = true
            v798.TextXAlignment = Enum.TextXAlignment.Left
            local vu799 = nil
            vu795.MouseButton1Click:Connect(function()
				-- upvalues: (ref) vu740, (ref) vu792, (ref) vu739, (ref) vu793, (ref) vu102, (ref) vu742, (ref) vu38, (ref) vu795, (ref) pu790, (ref) vu799, (ref) vu750
                local v800 = vu740:GetDescendants()
                local v801, v802, v803 = pairs(v800)
                while true do
                    local v804
                    v803, v804 = v801(v802, v803)
                    if v803 == nil then
                        break
                    end
                    if v804:IsA("Frame") then
                        v804.BackgroundColor3 = vu792
                    end
                end
                vu739:Create(vu793, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = vu102["4d"].Value
                }):Play()
                vu739:Create(vu742, TweenInfo.new(0.2), {
                    ["ImageTransparency"] = 1
                }):Play()
                vu38(0.1)
                vu739:Create(vu742, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(0, 0, 0)
                }):Play()
                vu742.Image = vu795.Image
                vu739:Create(vu742, TweenInfo.new(0.2), {
                    ["ImageTransparency"] = 0
                }):Play()
                vu38(0.1)
                vu739:Create(vu742, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
                if pu790 ~= "none" then
                    if pu790 ~= "43" then
                        if pu790 ~= "667" then
                            if pu790 ~= "32" then
                                if pu790 ~= "83" then
                                    if pu790 ~= "331856" then
                                        if pu790 ~= "82" then
                                            if pu790 ~= "48" then
                                                if pu790 ~= "68" then
                                                    if pu790 ~= "56" then
                                                        if pu790 ~= "39" then
                                                            if pu790 ~= "80" then
                                                                if pu790 ~= "34" then
                                                                    if pu790 ~= "63" then
                                                                        if pu790 ~= "81" then
                                                                            if pu790 ~= "75" then
                                                                                if pu790 ~= "33" then
                                                                                    if pu790 ~= "79" then
                                                                                        if pu790 ~= "55" then
                                                                                            if pu790 ~= "3307605825" then
                                                                                                if pu790 ~= "4418326547" then
                                                                                                    if pu790 ~= "3710007708" then
                                                                                                        if pu790 ~= "17527564863" then
                                                                                                            if pu790 ~= "17532488521" then
                                                                                                                if pu790 ~= "17532496582" then
                                                                                                                    if pu790 ~= "17538325354" then
                                                                                                                        if pu790 ~= "17538328519" then
                                                                                                                            if pu790 ~= "17538318758" then
                                                                                                                                if pu790 ~= "17538312179" then
                                                                                                                                    if pu790 ~= "356" then
                                                                                                                                        if pu790 ~= "11600321661" then
                                                                                                                                            if pu790 ~= "17584882318" then
                                                                                                                                                if pu790 ~= "17596572334" then
                                                                                                                                                    if pu790 ~= "18229458864" then
                                                                                                                                                        if pu790 ~= "427999" then
                                                                                                                                                            if pu790 ~= "18721299989" then
                                                                                                                                                                if pu790 ~= "455003" then
                                                                                                                                                                    if pu790 ~= "932296" then
                                                                                                                                                                        if pu790 ~= "1189398" then
                                                                                                                                                                            if pu790 == "1189398" then
                                                                                                                                                                                idle1anim = "http://www.roblox.com/asset/?id=133806214992291"
                                                                                                                                                                                idle2anim = "http://www.roblox.com/asset/?id=94970088341563"
                                                                                                                                                                                walkanim = "http://www.roblox.com/asset/?id=109168724482748"
                                                                                                                                                                                runanim = "http://www.roblox.com/asset/?id=81024476153754"
                                                                                                                                                                                jumpanim = "http://www.roblox.com/asset/?id=116936326516985"
                                                                                                                                                                                climbanim = "http://www.roblox.com/asset/?id=119377220967554"
                                                                                                                                                                                fallanim = "http://www.roblox.com/asset/?id=92294537340807"
                                                                                                                                                                                swimanim = "http://www.roblox.com/asset/?id=134591743181628"
                                                                                                                                                                                swimidleanim = "http://www.roblox.com/asset/?id=98854111361360"
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            vu799 = pu790
                                                                                                                                                                            idle1anim = "http://www.roblox.com/asset/?id=118832222982049"
                                                                                                                                                                            idle2anim = "http://www.roblox.com/asset/?id=76049494037641"
                                                                                                                                                                            walkanim = "http://www.roblox.com/asset/?id=92072849924640"
                                                                                                                                                                            runanim = "http://www.roblox.com/asset/?id=72301599441680"
                                                                                                                                                                            jumpanim = "http://www.roblox.com/asset/?id=104325245285198"
                                                                                                                                                                            climbanim = "http://www.roblox.com/asset/?id=131326830509784"
                                                                                                                                                                            fallanim = "http://www.roblox.com/asset/?id=121152442762481"
                                                                                                                                                                            swimanim = "http://www.roblox.com/asset/?id=99384245425157"
                                                                                                                                                                            swimidleanim = "http://www.roblox.com/asset/?id=113199415118199"
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        vu799 = pu790
                                                                                                                                                                        idle1anim = "http://www.roblox.com/asset/?id=92080889861410"
                                                                                                                                                                        idle2anim = "http://www.roblox.com/asset/?id=74451233229259"
                                                                                                                                                                        walkanim = "http://www.roblox.com/asset/?id=110358958299415"
                                                                                                                                                                        runanim = "http://www.roblox.com/asset/?id=117333533048078"
                                                                                                                                                                        jumpanim = "http://www.roblox.com/asset/?id=119846112151352"
                                                                                                                                                                        climbanim = "http://www.roblox.com/asset/?id=134630013742019"
                                                                                                                                                                        fallanim = "http://www.roblox.com/asset/?id=129773241321032"
                                                                                                                                                                        swimanim = "http://www.roblox.com/asset/?id=132697394189921"
                                                                                                                                                                        swimidleanim = "http://www.roblox.com/asset/?id=79090109939093"
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    vu799 = pu790
                                                                                                                                                                    idle1anim = "http://www.roblox.com/asset/?id=18747067405"
                                                                                                                                                                    idle2anim = "http://www.roblox.com/asset/?id=18747063918"
                                                                                                                                                                    walkanim = "http://www.roblox.com/asset/?id=18747074203"
                                                                                                                                                                    runanim = "http://www.roblox.com/asset/?id=18747070484"
                                                                                                                                                                    jumpanim = "http://www.roblox.com/asset/?id=18747069148"
                                                                                                                                                                    climbanim = "http://www.roblox.com/asset/?id=18747060903"
                                                                                                                                                                    fallanim = "http://www.roblox.com/asset/?id=18747062535"
                                                                                                                                                                    swimanim = "http://www.roblox.com/asset/?id=18747073181"
                                                                                                                                                                    swimidleanim = "http://www.roblox.com/asset/?id=18747071682"
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                vu799 = pu790
                                                                                                                                                                idle1anim = "http://www.roblox.com/asset/?id=12521158637"
                                                                                                                                                                idle2anim = "http://www.roblox.com/asset/?id=12521162526"
                                                                                                                                                                walkanim = "http://www.roblox.com/asset/?id=12518152696"
                                                                                                                                                                runanim = "http://www.roblox.com/asset/?id=12518152696"
                                                                                                                                                                jumpanim = "http://www.roblox.com/asset/?id=12520880485"
                                                                                                                                                                climbanim = "http://www.roblox.com/asset/?id=11600205519"
                                                                                                                                                                fallanim = "http://www.roblox.com/asset/?id=12520972571"
                                                                                                                                                                swimanim = "http://www.roblox.com/asset/?id=11600206437"
                                                                                                                                                                swimidleanim = "http://www.roblox.com/asset/?id=11600213505"
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            vu799 = pu790
                                                                                                                                                            idle1anim = "http://www.roblox.com/asset/?id=18537376492"
                                                                                                                                                            idle2anim = "http://www.roblox.com/asset/?id=18537371272"
                                                                                                                                                            walkanim = "http://www.roblox.com/asset/?id=18537392113"
                                                                                                                                                            runanim = "http://www.roblox.com/asset/?id=18537384940"
                                                                                                                                                            jumpanim = "http://www.roblox.com/asset/?id=18537380791"
                                                                                                                                                            climbanim = "http://www.roblox.com/asset/?id=18537363391"
                                                                                                                                                            fallanim = "http://www.roblox.com/asset/?id=18537367238"
                                                                                                                                                            swimanim = "http://www.roblox.com/asset/?id=18537389531"
                                                                                                                                                            swimidleanim = "http://www.roblox.com/asset/?id=18537387180"
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        vu799 = pu790
                                                                                                                                                        idle1anim = "http://www.roblox.com/asset/?id=507766951"
                                                                                                                                                        idle2anim = "http://www.roblox.com/asset/?id=507766666"
                                                                                                                                                        walkanim = "http://www.roblox.com/asset/?id=507777826"
                                                                                                                                                        runanim = "http://www.roblox.com/asset/?id=507767714"
                                                                                                                                                        jumpanim = "http://www.roblox.com/asset/?id=507765000"
                                                                                                                                                        climbanim = "http://www.roblox.com/asset/?id=507765644"
                                                                                                                                                        fallanim = "http://www.roblox.com/asset/?id=507767968"
                                                                                                                                                        swimanim = "http://www.roblox.com/asset/?id=913384386"
                                                                                                                                                        swimidleanim = "http://www.roblox.com/asset/?id=913389285"
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    vu799 = pu790
                                                                                                                                                    idle1anim = "http://www.roblox.com/asset/?id=3489171152"
                                                                                                                                                    idle2anim = "http://www.roblox.com/asset/?id=3489171152"
                                                                                                                                                    walkanim = "http://www.roblox.com/asset/?id=3489173414"
                                                                                                                                                    runanim = "http://www.roblox.com/asset/?id=3489173414"
                                                                                                                                                    jumpanim = "http://www.roblox.com/asset/?id=616161997"
                                                                                                                                                    climbanim = "http://www.roblox.com/asset/?id=616156119"
                                                                                                                                                    fallanim = "http://www.roblox.com/asset/?id=616157476"
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                vu799 = pu790
                                                                                                                                                idle1anim = "http://www.roblox.com/asset/?id=4211217646"
                                                                                                                                                idle2anim = "http://www.roblox.com/asset/?id=4211218409"
                                                                                                                                                walkanim = "http://www.roblox.com/asset/?id=4211223236"
                                                                                                                                                runanim = "http://www.roblox.com/asset/?id=4211220381"
                                                                                                                                                jumpanim = "http://www.roblox.com/asset/?id=4211219390"
                                                                                                                                                climbanim = "http://www.roblox.com/asset/?id=4211214992"
                                                                                                                                                fallanim = "http://www.roblox.com/asset/?id=4211216152"
                                                                                                                                                swimanim = "http://www.roblox.com/asset/?id=4211221314"
                                                                                                                                                swimidleanim = "http://www.roblox.com/asset/?id=4374694239"
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            vu799 = pu790
                                                                                                                                            idle1anim = "http://www.roblox.com/asset/?id=17172918855"
                                                                                                                                            idle2anim = "http://www.roblox.com/asset/?id=17173014241"
                                                                                                                                            walkanim = "http://www.roblox.com/asset/?id=11600249883"
                                                                                                                                            runanim = "http://www.roblox.com/asset/?id=11600211410"
                                                                                                                                            jumpanim = "http://www.roblox.com/asset/?id=11600210487"
                                                                                                                                            climbanim = "http://www.roblox.com/asset/?id=11600205519"
                                                                                                                                            fallanim = "http://www.roblox.com/asset/?id=11600206437"
                                                                                                                                            swimanim = "http://www.roblox.com/asset/?id=11600212676"
                                                                                                                                            swimidleanim = "http://www.roblox.com/asset/?id=11600213505"
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        vu799 = pu790
                                                                                                                                        idle1anim = "http://www.roblox.com/asset/?id=10921259953"
                                                                                                                                        idle2anim = "http://www.roblox.com/asset/?id=10921258489"
                                                                                                                                        walkanim = "http://www.roblox.com/asset/?id=10921269718"
                                                                                                                                        runanim = "http://www.roblox.com/asset/?id=10921261968"
                                                                                                                                        jumpanim = "http://www.roblox.com/asset/?id=10921263860"
                                                                                                                                        climbanim = "http://www.roblox.com/asset/?id=10921257536"
                                                                                                                                        fallanim = "http://www.roblox.com/asset/?id=10921262864"
                                                                                                                                        swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                                                                        swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    vu799 = pu790
                                                                                                                                    idle1anim = "http://www.roblox.com/asset/?id=4708191566"
                                                                                                                                    idle2anim = "http://www.roblox.com/asset/?id=4708192150"
                                                                                                                                    walkanim = "http://www.roblox.com/asset/?id=4708193840"
                                                                                                                                    runanim = "http://www.roblox.com/asset/?id=4708192705"
                                                                                                                                    jumpanim = "http://www.roblox.com/asset/?id=4708188025"
                                                                                                                                    climbanim = "http://www.roblox.com/asset/?id=4708184253"
                                                                                                                                    fallanim = "http://www.roblox.com/asset/?id=4708186162"
                                                                                                                                    swimanim = "http://www.roblox.com/asset/?id=4708189360"
                                                                                                                                    swimidleanim = "http://www.roblox.com/asset/?id=4708190607"
                                                                                                                                end
                                                                                                                            else
                                                                                                                                vu799 = pu790
                                                                                                                                idle1anim = "http://www.roblox.com/asset/?id=1014390418"
                                                                                                                                idle2anim = "http://www.roblox.com/asset/?id=1014398616"
                                                                                                                                walkanim = "http://www.roblox.com/asset/?id=1014421541"
                                                                                                                                runanim = "http://www.roblox.com/asset/?id=1014401683"
                                                                                                                                jumpanim = "http://www.roblox.com/asset/?id=1014394726"
                                                                                                                                climbanim = "http://www.roblox.com/asset/?id=1014380606"
                                                                                                                                fallanim = "http://www.roblox.com/asset/?id=1014384571"
                                                                                                                                swimanim = "http://www.roblox.com/asset/?id=1014406523"
                                                                                                                                swimidleanim = "http://www.roblox.com/asset/?id=1014411816"
                                                                                                                            end
                                                                                                                        else
                                                                                                                            vu799 = pu790
                                                                                                                            idle1anim = "http://www.roblox.com/asset/?id=1132473842"
                                                                                                                            idle2anim = "http://www.roblox.com/asset/?id=1132477671"
                                                                                                                            walkanim = "http://www.roblox.com/asset/?id=1132510133"
                                                                                                                            runanim = "http://www.roblox.com/asset/?id=1132494274"
                                                                                                                            jumpanim = "http://www.roblox.com/asset/?id=1132489853"
                                                                                                                            climbanim = "http://www.roblox.com/asset/?id=1132461372"
                                                                                                                            fallanim = "http://www.roblox.com/asset/?id=1132469004"
                                                                                                                            swimanim = "http://www.roblox.com/asset/?id=1132500520"
                                                                                                                            swimidleanim = "http://www.roblox.com/asset/?id=1132506407"
                                                                                                                        end
                                                                                                                    else
                                                                                                                        vu799 = pu790
                                                                                                                        idle1anim = "http://www.roblox.com/asset/?id=1212900985"
                                                                                                                        idle2anim = "http://www.roblox.com/asset/?id=1212954651"
                                                                                                                        walkanim = "http://www.roblox.com/asset/?id=1212980338"
                                                                                                                        runanim = "http://www.roblox.com/asset/?id=1212980348"
                                                                                                                        jumpanim = "http://www.roblox.com/asset/?id=1212954642"
                                                                                                                        climbanim = "http://www.roblox.com/asset/?id=1213044939"
                                                                                                                        fallanim = "http://www.roblox.com/asset/?id=1212900995"
                                                                                                                        swimanim = "http://www.roblox.com/asset/?id=1212852603"
                                                                                                                        swimidleanim = "http://www.roblox.com/asset/?id=1212998578"
                                                                                                                    end
                                                                                                                else
                                                                                                                    vu799 = pu790
                                                                                                                    idle1anim = "http://www.roblox.com/asset/?id=1149612882"
                                                                                                                    idle2anim = "http://www.roblox.com/asset/?id=1150842221"
                                                                                                                    walkanim = "http://www.roblox.com/asset/?id=1151231493"
                                                                                                                    runanim = "http://www.roblox.com/asset/?id=1150967949"
                                                                                                                    jumpanim = "http://www.roblox.com/asset/?id=1150944216"
                                                                                                                    climbanim = "http://www.roblox.com/asset/?id=1148811837"
                                                                                                                    fallanim = "http://www.roblox.com/asset/?id=1148863382"
                                                                                                                    swimanim = "http://www.roblox.com/asset/?id=1151204998"
                                                                                                                    swimidleanim = "http://www.roblox.com/asset/?id=1151221899"
                                                                                                                end
                                                                                                            else
                                                                                                                vu799 = pu790
                                                                                                                idle1anim = "http://www.roblox.com/asset/?id=1069977950"
                                                                                                                idle2anim = "http://www.roblox.com/asset/?id=1069987858"
                                                                                                                walkanim = "http://www.roblox.com/asset/?id=1070017263"
                                                                                                                runanim = "http://www.roblox.com/asset/?id=1070001516"
                                                                                                                jumpanim = "http://www.roblox.com/asset/?id=1069984524"
                                                                                                                climbanim = "http://www.roblox.com/asset/?id=1069946257"
                                                                                                                fallanim = "http://www.roblox.com/asset/?id=1069973677"
                                                                                                                swimanim = "http://www.roblox.com/asset/?id=1070009914"
                                                                                                                swimidleanim = "http://www.roblox.com/asset/?id=1070012133"
                                                                                                            end
                                                                                                        else
                                                                                                            vu799 = pu790
                                                                                                            idle1anim = "http://www.roblox.com/asset/?id=941003647"
                                                                                                            idle2anim = "http://www.roblox.com/asset/?id=941013098"
                                                                                                            walkanim = "http://www.roblox.com/asset/?id=941028902"
                                                                                                            runanim = "http://www.roblox.com/asset/?id=941015281"
                                                                                                            jumpanim = "http://www.roblox.com/asset/?id=941008832"
                                                                                                            climbanim = "http://www.roblox.com/asset/?id=940996062"
                                                                                                            fallanim = "http://www.roblox.com/asset/?id=941000007"
                                                                                                            swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                                            swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                                        end
                                                                                                    else
                                                                                                        vu799 = pu790
                                                                                                        idle1anim = "rbxassetid://3293641938"
                                                                                                        idle2anim = "rbxassetid://3293642554"
                                                                                                        walkanim = "http://www.roblox.com/asset/?id=2510202577"
                                                                                                        runanim = "http://www.roblox.com/asset/?id=3236836670"
                                                                                                        jumpanim = "http://www.roblox.com/asset/?id=10921263860"
                                                                                                        climbanim = "http://www.roblox.com/asset/?id=10921257536"
                                                                                                        fallanim = "http://www.roblox.com/asset/?id=10921262864"
                                                                                                        swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                                        swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                                    end
                                                                                                else
                                                                                                    vu799 = pu790
                                                                                                    idle1anim = "rbxassetid://4417977954"
                                                                                                    idle2anim = "rbxassetid://4417978624"
                                                                                                    walkanim = "http://www.roblox.com/asset/?id=2510202577"
                                                                                                    runanim = "http://www.roblox.com/asset/?id=4417979645"
                                                                                                    jumpanim = "http://www.roblox.com/asset/?id=10921263860"
                                                                                                    climbanim = "http://www.roblox.com/asset/?id=10921257536"
                                                                                                    fallanim = "http://www.roblox.com/asset/?id=10921262864"
                                                                                                    swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                                    swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                                end
                                                                                            else
                                                                                                vu799 = pu790
                                                                                                idle1anim = "rbxassetid://3303162274"
                                                                                                idle2anim = "rbxassetid://3303162549"
                                                                                                walkanim = "http://www.roblox.com/asset/?id=3303162967"
                                                                                                runanim = "http://www.roblox.com/asset/?id=3236836670"
                                                                                                jumpanim = "http://www.roblox.com/asset/?id=10921263860"
                                                                                                climbanim = "http://www.roblox.com/asset/?id=10921257536"
                                                                                                fallanim = "http://www.roblox.com/asset/?id=10921262864"
                                                                                                swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                                swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                            end
                                                                                        else
                                                                                            vu799 = pu790
                                                                                            idle1anim = "http://www.roblox.com/asset/?id=750781874"
                                                                                            idle2anim = "http://www.roblox.com/asset/?id=750782770"
                                                                                            walkanim = "http://www.roblox.com/asset/?id=750785693"
                                                                                            runanim = "http://www.roblox.com/asset/?id=750783738"
                                                                                            jumpanim = "http://www.roblox.com/asset/?id=750782230"
                                                                                            climbanim = "http://www.roblox.com/asset/?id=750779899"
                                                                                            fallanim = "http://www.roblox.com/asset/?id=750780242"
                                                                                            swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                            swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                        end
                                                                                    else
                                                                                        vu799 = pu790
                                                                                        idle1anim = "http://www.roblox.com/asset/?id=616006778"
                                                                                        idle2anim = "http://www.roblox.com/asset/?id=616008087"
                                                                                        walkanim = "http://www.roblox.com/asset/?id=616013216"
                                                                                        runanim = "http://www.roblox.com/asset/?id=616010382"
                                                                                        jumpanim = "http://www.roblox.com/asset/?id=616008936"
                                                                                        climbanim = "http://www.roblox.com/asset/?id=616003713"
                                                                                        fallanim = "http://www.roblox.com/asset/?id=616005863"
                                                                                        swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                        swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                    end
                                                                                else
                                                                                    vu799 = pu790
                                                                                    idle1anim = "http://www.roblox.com/asset/?id=1083445855"
                                                                                    idle2anim = "http://www.roblox.com/asset/?id=1083450166"
                                                                                    walkanim = "http://www.roblox.com/asset/?id=1083473930"
                                                                                    runanim = "http://www.roblox.com/asset/?id=1083462077"
                                                                                    jumpanim = "http://www.roblox.com/asset/?id=1083455352"
                                                                                    climbanim = "http://www.roblox.com/asset/?id=1083439238"
                                                                                    fallanim = "http://www.roblox.com/asset/?id=1083443587"
                                                                                    swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                    swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                                end
                                                                            else
                                                                                vu799 = pu790
                                                                                idle1anim = "http://www.roblox.com/asset/?id=656117400"
                                                                                idle2anim = "http://www.roblox.com/asset/?id=656118341"
                                                                                walkanim = "http://www.roblox.com/asset/?id=656121766"
                                                                                runanim = "http://www.roblox.com/asset/?id=656118852"
                                                                                jumpanim = "http://www.roblox.com/asset/?id=656117878"
                                                                                climbanim = "http://www.roblox.com/asset/?id=656114359"
                                                                                fallanim = "http://www.roblox.com/asset/?id=656115606"
                                                                                swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                                swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                            end
                                                                        else
                                                                            vu799 = pu790
                                                                            idle1anim = "http://www.roblox.com/asset/?id=616111295"
                                                                            idle2anim = "http://www.roblox.com/asset/?id=616113536"
                                                                            walkanim = "http://www.roblox.com/asset/?id=616122287"
                                                                            runanim = "http://www.roblox.com/asset/?id=616117076"
                                                                            jumpanim = "http://www.roblox.com/asset/?id=616115533"
                                                                            climbanim = "http://www.roblox.com/asset/?id=616104706"
                                                                            fallanim = "http://www.roblox.com/asset/?id=616108001"
                                                                            swimanim = "http://www.roblox.com/asset/?id=10921264784"
                                                                            swimidleanim = "http://www.roblox.com/asset/?id=10921265698"
                                                                        end
                                                                    else
                                                                        vu799 = pu790
                                                                        idle1anim = "http://www.roblox.com/asset/?id=707742142"
                                                                        idle2anim = "http://www.roblox.com/asset/?id=707855907"
                                                                        walkanim = "http://www.roblox.com/asset/?id=707897309"
                                                                        runanim = "http://www.roblox.com/asset/?id=707861613"
                                                                        jumpanim = "http://www.roblox.com/asset/?id=707853694"
                                                                        climbanim = "http://www.roblox.com/asset/?id=707826056"
                                                                        fallanim = "http://www.roblox.com/asset/?id=707829716"
                                                                        swimanim = "http://www.roblox.com/asset/?id=707876443"
                                                                        swimidleanim = "http://www.roblox.com/asset/?id=707894699"
                                                                    end
                                                                else
                                                                    vu799 = pu790
                                                                    idle1anim = "http://www.roblox.com/asset/?id=891621366"
                                                                    idle2anim = "http://www.roblox.com/asset/?id=891633237"
                                                                    walkanim = "http://www.roblox.com/asset/?id=891667138"
                                                                    runanim = "http://www.roblox.com/asset/?id=891636393"
                                                                    jumpanim = "http://www.roblox.com/asset/?id=891627522"
                                                                    climbanim = "http://www.roblox.com/asset/?id=891609353"
                                                                    fallanim = "http://www.roblox.com/asset/?id=891617961"
                                                                    swimanim = "http://www.roblox.com/asset/?id=891639666"
                                                                    swimidleanim = "http://www.roblox.com/asset/?id=891663592"
                                                                end
                                                            else
                                                                vu799 = pu790
                                                                idle1anim = "http://www.roblox.com/asset/?id=616158929"
                                                                idle2anim = "http://www.roblox.com/asset/?id=616160636"
                                                                walkanim = "http://www.roblox.com/asset/?id=616168032"
                                                                runanim = "http://www.roblox.com/asset/?id=616163682"
                                                                jumpanim = "http://www.roblox.com/asset/?id=616161997"
                                                                climbanim = "http://www.roblox.com/asset/?id=616156119"
                                                                fallanim = "http://www.roblox.com/asset/?id=616157476"
                                                                swimanim = "http://www.roblox.com/asset/?id=616165109"
                                                                swimidleanim = "http://www.roblox.com/asset/?id=616166655"
                                                            end
                                                        else
                                                            vu799 = pu790
                                                            idle1anim = "http://www.roblox.com/asset/?id=910004836"
                                                            idle2anim = "http://www.roblox.com/asset/?id=910009958"
                                                            walkanim = "http://www.roblox.com/asset/?id=910034870"
                                                            runanim = "http://www.roblox.com/asset/?id=910025107"
                                                            jumpanim = "http://www.roblox.com/asset/?id=910016857"
                                                            fallanim = "http://www.roblox.com/asset/?id=910001910"
                                                            swimanim = "http://www.roblox.com/asset/?id=910030921"
                                                            swimidleanim = "http://www.roblox.com/asset/?id=910028158"
                                                        end
                                                    else
                                                        vu799 = pu790
                                                        idle1anim = "http://www.roblox.com/asset/?id=742637544"
                                                        idle2anim = "http://www.roblox.com/asset/?id=742638445"
                                                        walkanim = "http://www.roblox.com/asset/?id=742640026"
                                                        runanim = "http://www.roblox.com/asset/?id=742638842"
                                                        jumpanim = "http://www.roblox.com/asset/?id=742637942"
                                                        climbanim = "http://www.roblox.com/asset/?id=742636889"
                                                        fallanim = "http://www.roblox.com/asset/?id=742637151"
                                                        swimanim = "http://www.roblox.com/asset/?id=10921079380"
                                                        swimidleanim = "http://www.roblox.com/asset/?id=10921079380"
                                                    end
                                                else
                                                    vu799 = pu790
                                                    idle1anim = "http://www.roblox.com/asset/?id=657595757"
                                                    idle2anim = "http://www.roblox.com/asset/?id=657568135"
                                                    walkanim = "http://www.roblox.com/asset/?id=657552124"
                                                    runanim = "http://www.roblox.com/asset/?id=657564596"
                                                    jumpanim = "http://www.roblox.com/asset/?id=658409194"
                                                    climbanim = "http://www.roblox.com/asset/?id=658360781"
                                                    fallanim = "http://www.roblox.com/asset/?id=657600338"
                                                    swimanim = "http://www.roblox.com/asset/?id=10921125160"
                                                    swimidleanim = "http://www.roblox.com/asset/?id=1092112593"
                                                end
                                            else
                                                vu799 = pu790
                                                idle1anim = "http://www.roblox.com/asset/?id=845397899"
                                                idle2anim = "http://www.roblox.com/asset/?id=845400520"
                                                walkanim = "http://www.roblox.com/asset/?id=845403856"
                                                runanim = "http://www.roblox.com/asset/?id=845386501"
                                                jumpanim = "http://www.roblox.com/asset/?id=845398858"
                                                climbanim = "http://www.roblox.com/asset/?id=845392038"
                                                fallanim = "http://www.roblox.com/asset/?id=845396048"
                                                swimanim = "http://www.roblox.com/asset/?id=10921108971"
                                                swimidleanim = "http://www.roblox.com/asset/?id=10921110146"
                                            end
                                        else
                                            vu799 = pu790
                                            idle1anim = "http://www.roblox.com/asset/?id=616088211"
                                            idle2anim = "http://www.roblox.com/asset/?id=616089559"
                                            walkanim = "http://www.roblox.com/asset/?id=616095330"
                                            runanim = "http://www.roblox.com/asset/?id=616091570"
                                            jumpanim = "http://www.roblox.com/asset/?id=616090535"
                                            climbanim = "http://www.roblox.com/asset/?id=616086039"
                                            fallanim = "http://www.roblox.com/asset/?id=616087089"
                                            swimanim = "http://www.roblox.com/asset/?id=10921253142"
                                            swimidleanim = "http://www.roblox.com/asset/?id=10921253767"
                                        end
                                    else
                                        vu799 = pu790
                                        idle1anim = "http://www.roblox.com/asset/?id=16738333868"
                                        idle2anim = "http://www.roblox.com/asset/?id=16738334710"
                                        walkanim = "http://www.roblox.com/asset/?id=16738340646"
                                        runanim = "http://www.roblox.com/asset/?id=16738337225"
                                        jumpanim = "http://www.roblox.com/asset/?id=16738336650"
                                        climbanim = "http://www.roblox.com/asset/?id=16738332169"
                                        fallanim = "http://www.roblox.com/asset/?id=16738333171"
                                        swimanim = "http://www.roblox.com/asset/?id=16738339158"
                                        swimidleanim = "http://www.roblox.com/asset/?id=16738339817"
                                    end
                                else
                                    vu799 = pu790
                                    idle1anim = "http://www.roblox.com/asset/?id=616136790"
                                    idle2anim = "http://www.roblox.com/asset/?id=616138447"
                                    walkanim = "http://www.roblox.com/asset/?id=616146177"
                                    runanim = "http://www.roblox.com/asset/?id=10921276116"
                                    jumpanim = "http://www.roblox.com/asset/?id=616139451"
                                    climbanim = "http://www.roblox.com/asset/?id=10921271391"
                                    fallanim = "http://www.roblox.com/asset/?id=616134815"
                                    swimanim = "http://www.roblox.com/asset/?id=10921281000"
                                    swimidleanim = "http://www.roblox.com/asset/?id=10921281964"
                                end
                            else
                                vu799 = pu790
                                idle1anim = "http://www.roblox.com/asset/?id=10921330408"
                                idle2anim = "http://www.roblox.com/asset/?id=10921333667"
                                walkanim = "http://www.roblox.com/asset/?id=10921342074"
                                runanim = "http://www.roblox.com/asset/?id=10921336997"
                                jumpanim = "http://www.roblox.com/asset/?id=1083218792"
                                climbanim = "http://www.roblox.com/asset/?id=10921329322"
                                fallanim = "http://www.roblox.com/asset/?id=10921337907"
                                swimanim = "http://www.roblox.com/asset/?id=10921340419"
                                swimidleanim = "http://www.roblox.com/asset/?id=10921341319"
                            end
                        else
                            vu799 = pu790
                            idle1anim = "http://www.roblox.com/asset/?id=10921230744"
                            idle2anim = "http://www.roblox.com/asset/?id=10921232093"
                            walkanim = "http://www.roblox.com/asset/?id=10921244891"
                            runanim = "http://www.roblox.com/asset/?id=10921240218"
                            jumpanim = "http://www.roblox.com/asset/?id=10921242013"
                            climbanim = "http://www.roblox.com/asset/?id=10921229866"
                            fallanim = "http://www.roblox.com/asset/?id=10921241244"
                            swimanim = "http://www.roblox.com/asset/?id=10921243048"
                            swimidleanim = "http://www.roblox.com/asset/?id=10921244018"
                        end
                    else
                        vu799 = pu790
                        idle1anim = "http://www.roblox.com/asset/?id=10921301576"
                        idle2anim = "http://www.roblox.com/asset/?id=10921302207"
                        walkanim = "http://www.roblox.com/asset/?id=10921312010"
                        runanim = "http://www.roblox.com/asset/?id=10921306285"
                        jumpanim = "http://www.roblox.com/asset/?id=10921308158"
                        climbanim = "http://www.roblox.com/asset/?id=10921300839"
                        fallanim = "http://www.roblox.com/asset/?id=10921307241"
                        swimanim = "http://www.roblox.com/asset/?id=10921309319"
                        swimidleanim = "http://www.roblox.com/asset/?id=10921310341"
                    end
                else
                    vu799 = pu790
                    idle1anim = defidle1anim
                    idle2anim = defidle2anim
                    walkanim = defwalkanim
                    runanim = defrunanim
                    jumpanim = defjumpanim
                    climbanim = defclimbanim
                    fallanim = deffallanim
                    swimanim = defswimanim
                    swimidleanim = defswimidleanim
                end
                local v805, v806, v807 = pairs(vu750.WorldModel.Rig.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local v808
                    v807, v808 = v805(v806, v807)
                    if v807 == nil then
                        break
                    end
                    v808:Stop()
                end
                local v809 = Instance.new("Animation")
                v809.AnimationId = runanim
                vu750.WorldModel.Rig.Humanoid:LoadAnimation(v809):Play()
            end)
        end
        vu743.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu13, (ref) vu109, (ref) vu739, (ref) vu743, (ref) vu38, (ref) vu767, (ref) vu747, (ref) vu786
            if vu13.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                if idle1anim == nil then
                    vu739:Create(vu743, TweenInfo.new(0.2), {
                        ["ImageColor3"] = Color3.fromRGB(255, 0, 0)
                    }):Play()
                    vu38(0.1)
                    vu739:Create(vu743, TweenInfo.new(0.2), {
                        ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                    }):Play()
                end
                vu739:Create(vu743, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(0, 0, 0)
                }):Play()
                vu38(0.1)
                vu739:Create(vu743, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
                local v810, v811, v812 = pairs(vu13.Character.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local v813
                    v812, v813 = v810(v811, v812)
                    if v812 == nil then
                        break
                    end
                    v813:Play()
                    vu38()
                    v813:Stop()
                end
                stopanim()
                vu13.Character:FindFirstChild(vu767).Disabled = true
                if vu13.Character:FindFirstChild(vu767):FindFirstChild("idle") then
                    if vu747 ~= "all" then
                        if vu747 ~= "idle" then
                            if vu747 ~= "walk" then
                                if vu747 ~= "run" then
                                    if vu747 ~= "climb" then
                                        if vu747 ~= "fall" then
                                            if vu747 ~= "jump" then
                                                if vu747 == "swim" then
                                                    vu13.Character:FindFirstChild(vu767).swim:FindFirstChildWhichIsA("Animation").AnimationId = swimanim
                                                    vu13.Character:FindFirstChild(vu767).swimidle:FindFirstChildWhichIsA("Animation").AnimationId = swimidleanim
                                                end
                                            else
                                                vu13.Character:FindFirstChild(vu767).jump:FindFirstChildWhichIsA("Animation").AnimationId = jumpanim
                                            end
                                        else
                                            vu13.Character:FindFirstChild(vu767).fall:FindFirstChildWhichIsA("Animation").AnimationId = fallanim
                                        end
                                    else
                                        vu13.Character:FindFirstChild(vu767).climb:FindFirstChildWhichIsA("Animation").AnimationId = climbanim
                                    end
                                else
                                    vu13.Character:FindFirstChild(vu767).run:FindFirstChildWhichIsA("Animation").AnimationId = runanim
                                end
                            else
                                vu13.Character:FindFirstChild(vu767).walk:FindFirstChildWhichIsA("Animation").AnimationId = walkanim
                            end
                        else
                            vu13.Character:FindFirstChild(vu767).idle.Animation1.AnimationId = idle1anim
                            vu13.Character:FindFirstChild(vu767).idle.Animation2.AnimationId = idle2anim
                        end
                    else
                        vu13.Character:FindFirstChild(vu767).idle.Animation1.AnimationId = idle1anim
                        vu13.Character:FindFirstChild(vu767).idle.Animation2.AnimationId = idle2anim
                        vu13.Character:FindFirstChild(vu767).walk:FindFirstChildWhichIsA("Animation").AnimationId = walkanim
                        vu13.Character:FindFirstChild(vu767).run:FindFirstChildWhichIsA("Animation").AnimationId = runanim
                        vu13.Character:FindFirstChild(vu767).jump:FindFirstChildWhichIsA("Animation").AnimationId = jumpanim
                        vu13.Character:FindFirstChild(vu767).climb:FindFirstChildWhichIsA("Animation").AnimationId = climbanim
                        vu13.Character:FindFirstChild(vu767).fall:FindFirstChildWhichIsA("Animation").AnimationId = fallanim
                        vu13.Character:FindFirstChild(vu767).swim:FindFirstChildWhichIsA("Animation").AnimationId = swimanim
                        vu13.Character:FindFirstChild(vu767).swimidle:FindFirstChildWhichIsA("Animation").AnimationId = swimidleanim
                    end
                end
                stopanim()
                local v814, v815, v816 = pairs(vu13.Character.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local v817
                    v816, v817 = v814(v815, v816)
                    if v816 == nil then
                        break
                    end
                    if v817.Name ~= "Animation1" then
                        v817:Stop()
                    else
                        vu38(0.1)
                        v817:Play()
                    end
                end
                vu13.Character:FindFirstChild(vu767).Disabled = false
                getanim = true
                vu13.Character:FindFirstChildOfClass("Humanoid").Died:Connect(vu786)
            else
                vu109("can\'t run because your character is not in r15", 2)
                vu739:Create(vu743, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 0, 0)
                }):Play()
                vu38(0.1)
                vu739:Create(vu743, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
            end
        end)
        function dropan(pu818)
			-- upvalues: (ref) vu745, (ref) vu747, (ref) vu739
            local v819 = vu745.Frame.ScrollingFrame.samplepickall:Clone()
            v819.Parent = vu745.Frame.ScrollingFrame
            v819.Name = pu818
            v819.Text = pu818
            v819.Visible = true
            v819.MouseButton1Click:Connect(function()
				-- upvalues: (ref) vu747, (ref) pu818, (ref) vu745, (ref) vu739
                vu747 = pu818
                vu745.Frame.Visible = not vu745.Frame.Visible
                vu739:Create(vu745.Frame, TweenInfo.new(0.2), {
                    ["Size"] = vu745.Frame.Visible and UDim2.new(2.31, 0, 3.571, 0) or UDim2.new(2.31, 0, 0, 0)
                }):Play()
                vu739:Create(vu745.Frame, TweenInfo.new(0.2), {
                    ["Position"] = vu745.Frame.Visible and UDim2.new(- 0.034, 0, - 3.75, 0) or UDim2.new(- 0.034, 0, 0, 0)
                }):Play()
                vu739:Create(vu745, TweenInfo.new(0.2), {
                    ["ImageColor3"] = vu745.Frame.Visible and Color3.new(0, 1, 1) or Color3.new(255, 255, 255)
                }):Play()
            end)
            return v819
        end
        vu744.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu70, (ref) vu103, (ref) vu750, (ref) vu742, (ref) vu739, (ref) vu744
            if vu70 == false then
                return vu103()
            end
            vu750.Visible = not vu750.Visible
            vu742.Visible = not vu742.Visible
            vu739:Create(vu744, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu750.Visible and Color3.new(0, 0, 0) or Color3.new(255, 255, 255)
            }):Play()
        end)
        vu745.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu745, (ref) vu739
            vu745.Frame.Visible = not vu745.Frame.Visible
            vu739:Create(vu745.Frame, TweenInfo.new(0.2), {
                ["Size"] = vu745.Frame.Visible and UDim2.new(2.31, 0, 3.571, 0) or UDim2.new(2.31, 0, 0, 0)
            }):Play()
            vu739:Create(vu745.Frame, TweenInfo.new(0.2), {
                ["Position"] = vu745.Frame.Visible and UDim2.new(- 0.034, 0, - 3.75, 0) or UDim2.new(- 0.034, 0, 0, 0)
            }):Play()
            vu739:Create(vu745, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu745.Frame.Visible and Color3.new(0, 1, 1) or Color3.new(255, 255, 255)
            }):Play()
        end)
        local vu820 = vu746.BackgroundColor3
        vu746.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu739, (ref) vu746, (ref) vu820, (ref) vu13, (ref) vu38, (ref) vu767, (ref) vu747, (ref) vu786
            vu739:Create(vu746, TweenInfo.new(0.2), {
                ["BackgroundColor3"] = Color3.new(0.25098, 0.988235, 1)
            }):Play()
            task.wait(0.1)
            local v821 = {
                ["BackgroundColor3"] = vu820
            }
            vu739:Create(vu746, TweenInfo.new(0.2), v821):Play()
            idle1anim = defidle1anim
            idle2anim = defidle2anim
            walkanim = defwalkanim
            runanim = defrunanim
            jumpanim = defjumpanim
            climbanim = defclimbanim
            fallanim = deffallanim
            swimanim = defswimanim
            swimidleanim = defswimidleanim
            local v822, v823, v824 = pairs(vu13.Character.Humanoid:GetPlayingAnimationTracks())
            while true do
                local v825
                v824, v825 = v822(v823, v824)
                if v824 == nil then
                    break
                end
                v825:Play()
                vu38()
                v825:Stop()
            end
            stopanim()
            vu13.Character:FindFirstChild(vu767).Disabled = true
            if vu13.Character:FindFirstChild(vu767):FindFirstChild("idle") then
                if vu747 ~= "all" then
                    if vu747 ~= "idle" then
                        if vu747 ~= "walk" then
                            if vu747 ~= "run" then
                                if vu747 ~= "climb" then
                                    if vu747 ~= "fall" then
                                        if vu747 ~= "jump" then
                                            if vu747 == "swim" then
                                                vu13.Character:FindFirstChild(vu767).swim:FindFirstChildWhichIsA("Animation").AnimationId = swimanim
                                                vu13.Character:FindFirstChild(vu767).swimidle:FindFirstChildWhichIsA("Animation").AnimationId = swimidleanim
                                            end
                                        else
                                            vu13.Character:FindFirstChild(vu767).jump:FindFirstChildWhichIsA("Animation").AnimationId = jumpanim
                                        end
                                    else
                                        vu13.Character:FindFirstChild(vu767).fall:FindFirstChildWhichIsA("Animation").AnimationId = fallanim
                                    end
                                else
                                    vu13.Character:FindFirstChild(vu767).climb:FindFirstChildWhichIsA("Animation").AnimationId = climbanim
                                end
                            else
                                vu13.Character:FindFirstChild(vu767).run:FindFirstChildWhichIsA("Animation").AnimationId = runanim
                            end
                        else
                            vu13.Character:FindFirstChild(vu767).walk:FindFirstChildWhichIsA("Animation").AnimationId = walkanim
                        end
                    else
                        vu13.Character:FindFirstChild(vu767).idle.Animation1.AnimationId = idle1anim
                        vu13.Character:FindFirstChild(vu767).idle.Animation2.AnimationId = idle2anim
                    end
                else
                    vu13.Character:FindFirstChild(vu767).idle.Animation1.AnimationId = idle1anim
                    vu13.Character:FindFirstChild(vu767).idle.Animation2.AnimationId = idle2anim
                    vu13.Character:FindFirstChild(vu767).walk:FindFirstChildWhichIsA("Animation").AnimationId = walkanim
                    vu13.Character:FindFirstChild(vu767).run:FindFirstChildWhichIsA("Animation").AnimationId = runanim
                    vu13.Character:FindFirstChild(vu767).jump:FindFirstChildWhichIsA("Animation").AnimationId = jumpanim
                    vu13.Character:FindFirstChild(vu767).climb:FindFirstChildWhichIsA("Animation").AnimationId = climbanim
                    vu13.Character:FindFirstChild(vu767).fall:FindFirstChildWhichIsA("Animation").AnimationId = fallanim
                    vu13.Character:FindFirstChild(vu767).swim:FindFirstChildWhichIsA("Animation").AnimationId = swimanim
                    vu13.Character:FindFirstChild(vu767).swimidle:FindFirstChildWhichIsA("Animation").AnimationId = swimidleanim
                end
            end
            stopanim()
            local v826, v827, v828 = pairs(vu13.Character.Humanoid:GetPlayingAnimationTracks())
            while true do
                local v829
                v828, v829 = v826(v827, v828)
                if v828 == nil then
                    break
                end
                if v829.Name ~= "Animation1" then
                    v829:Stop()
                else
                    vu38(0.1)
                    v829:Play()
                end
            end
            vu13.Character:FindFirstChild(vu767).Disabled = false
            getanim = true
            vu13.Character:FindFirstChildOfClass("Humanoid").Died:Connect(vu786)
        end)
        dropan("all")
        dropan("idle")
        dropan("walk")
        dropan("run")
        dropan("jump")
        dropan("climb")
        dropan("fall")
        dropan("swim")
        vu7(function()
            animframeload("Toy Animation Pack", "250", "43")
            animframeload("Old School Animation Pack", "80", "667")
            animframeload("Werewolf Animation Pack", "500", "32")
            animframeload("Stylish Animation Pack", "80", "83")
            animframeload("Knight Animation Package", "500", "68")
            animframeload("Bold Animation Pack by e.l.f.", "200", "331856")
            animframeload("Elder Animation Package", "250", "48")
            animframeload("Robot Animation Pack", "80", "82")
            animframeload("Cartoony Animation Package", "250", "56")
            animframeload("Bubbly Animation Package", "250", "39")
            animframeload("Zombie Animation Pack", "500", "80")
            animframeload("Astronaut Animation Pack", "500", "34")
            animframeload("Mage Animation Package", "250", "63")
            animframeload("Superhero Animation Pack", "250", "81")
            animframeload("Ninja Animation Package", "750", "75")
            animframeload("Vampire Animation Pack", "500", "33")
            animframeload("Levitation Animation Pack", "1,000", "79")
            animframeload("Pirate Animation Package", "750", "55")
            animframeload("Rthro Animation Package", "Free", "356")
            animframeload("Ud\'zal Animation Package", "not for sale.", "3307605825", true)
            animframeload("Mr. Toilet Animation Package", "not for sale.", "4418326547", true)
            animframeload("Borock\'s Animation Package", "not for sale.", "3710007708", true)
            animframeload("Princess Animation Package", "not for sale.", "17527564863", true)
            animframeload("Confident Animation Pack", "not for sale.", "17532488521", true)
            animframeload("Popstar Animation Pack", "not for sale.", "17538325354", true)
            animframeload("Patrol Animation Pack", "not for sale.", "17532496582", true)
            animframeload("Sneaky Animation Pack", "not for sale.", "17538328519", true)
            animframeload("Cowboy Animation Pack", "not for sale.", "17538318758", true)
            animframeload("Stylized Female Animation Package", "not for sale.", "17538312179", true)
            animframeload("Realistic Animation Pack", "not for sale.", "11600321661", true)
            animframeload("R15 Animation Pack", "not for sale.", "17584882318", true)
            animframeload("zombie Animation Package", "not for sale.", "17596572334", true)
            animframeload("Standard animation pack", "not for sale.", "18229458864", true)
            animframeload("adidas Sports Animation Pack", "250", "427999")
            animframeload("R6 loop animation pack", "not for sale.", "18721299989", true)
            animframeload("No Boundaries Animation Pack by Walmart", "200", "455003")
            animframeload("NFL Animation Pack", "250", "932296")
            animframeload("Wicked Popular Animation Pack", "200", "1189398")
            animframeload("Catwalk Glam Animation Pack by e.l.f.", "250", "1601900")
        end)
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu13, (ref) vu7, (ref) vu109, (ref) vu38
        local vu830 = vu102["1ff"].Parent
        local vu831 = vu10:GetService("TweenService")
        vu10:GetService("RunService")
        vu10:GetService("Workspace")
        vu10:GetService("Players")
        vu10:GetService("Players")
        vu10:GetService("RunService")
        vu10:GetService("ContextActionService")
        local vu832 = vu830.emotelist.listemote.ScrollingFrame
        local v833 = vu830.emotelist.search
        local vu834 = v833.TextBox
        local v835 = v833.ImageButton
        local vu836 = vu830.emotefun.name
        local vu837 = vu830.emotefun.play
        local vu838 = vu830.emotefun.copy
        v835.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu834, (ref) vu832
            local v839 = vu834.Text:lower()
            if v839 == "" then
                local v840 = vu832:GetDescendants()
                local v841, v842, v843 = pairs(v840)
                while true do
                    local v844
                    v843, v844 = v841(v842, v843)
                    if v843 == nil then
                        break
                    end
                    if v844:IsA("Frame") then
                        v844.Visible = true
                    end
                end
            else
                local v845 = vu832:GetDescendants()
                local v846, v847, v848 = pairs(v845)
                while true do
                    local v849
                    v848, v849 = v846(v847, v848)
                    if v848 == nil then
                        break
                    end
                    if v849:IsA("Frame") then
                        local v850 = v849.Name:lower()
                        if string.find(v850, v839) then
                            v849.Visible = true
                        else
                            v849.Visible = false
                        end
                    end
                end
            end
        end)
        local vu851 = vu102["1dc"].Value
        local vu852 = nil
        emotename = nil
        function addemote(p853, p854, p855)
			-- upvalues: (ref) vu830, (ref) vu832, (ref) vu836, (ref) vu852, (ref) vu831, (ref) vu851
            local vu856 = p853 or "error"
            local vu857 = p854 or "error"
            local vu858 = vu830.emotelist.sample:Clone()
            vu858.Name = vu856
            vu858.Parent = vu832
            vu858.ImageButton.Image = "rbxthumb://type=Asset&id=" .. vu857 .. "&w=150&h=150"
            vu858.title.Text = vu856
            vu858.price.Text = p855 or "unk"
            vu858.Visible = true
            vu858.ImageButton.MouseButton1Click:Connect(function()
				-- upvalues: (ref) vu836, (ref) vu856, (ref) vu852, (ref) vu857, (ref) vu832, (ref) vu831, (ref) vu858, (ref) vu851
                vu836.Text = vu856
                vu852 = vu857
                emotename = vu856
                local v859 = vu832:GetChildren()
                local v860, v861, v862 = pairs(v859)
                while true do
                    local v863
                    v862, v863 = v860(v861, v862)
                    if v862 == nil then
                        break
                    end
                    if v863:IsA("Frame") then
                        v863.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
                    end
                end
                local v864 = {
                    ["BackgroundColor3"] = vu851
                }
                vu831:Create(vu858, TweenInfo.new(0.2), v864):Play()
            end)
        end
        function playemote(p865, pu866)
			-- upvalues: (ref) vu13, (ref) vu7, (ref) vu109
            local vu867 = vu13.Character:FindFirstChildOfClass("Humanoid")
            local v868
            if vu867 then
                v868 = vu867:FindFirstChildOfClass("HumanoidDescription")
            else
                v868 = vu867
            end
            if v868 then
                if vu13.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                    vu109("switch ur character to r15 to play this emote", 1)
                else
                    local v869, _ = vu7(function()
						-- upvalues: (ref) vu867, (ref) pu866
                        vu867:PlayEmoteAndGetAnimTrackById(pu866)
                    end)
                    if not v869 then
                        v868:AddEmote(p865, pu866)
                        vu867:PlayEmoteAndGetAnimTrackById(pu866)
                    end
                end
            end
        end
        vu837.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu13, (ref) vu831, (ref) vu837, (ref) vu38, (ref) vu109, (ref) vu852
            if vu13.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
                }):Play()
                vu38(0.1)
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(60, 255, 0)
                }):Play()
                return vu109("change your character to r15 first to run this emote", 1)
            end
            if vu852 == nil then
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
                }):Play()
                vu38(0.1)
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(60, 255, 0)
                }):Play()
            else
                stopanim()
                playemote(emotename, vu852)
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(0, 0, 0)
                }):Play()
                vu38(0.1)
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(60, 255, 0)
                }):Play()
                vu831:Create(vu837, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
            end
        end)
        vu838.MouseButton1Click:Connect(function()
			-- upvalues: (ref) vu831, (ref) vu838, (ref) vu38, (ref) vu852, (ref) vu109
            if setclipboard then
                vu831:Create(vu838, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(0, 255, 42)
                }):Play()
                vu38(0.1)
                vu831:Create(vu838, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
                setclipboard("https://www.roblox.com/catalog/" .. vu852)
                vu109("emote id copied to clipboard", 1)
            else
                vu831:Create(vu838, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 0, 0)
                }):Play()
                vu38(0.1)
                vu831:Create(vu838, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
            end
        end)
        vu7(function()
			-- upvalues: (ref) vu830, (ref) vu10, (ref) vu7, (ref) vu38
			-- ::l0::
            if vu830.LayoutOrder ~= - 1 then
				-- goto l3
            end
            HttpService = vu10:GetService("HttpService")
            local vu870 = ""
			-- goto l13
			-- ::l3::
            vu38()
			-- goto l0
			-- ::l5::
            vu38(0.1003)
            addemote(v872.name, v872.id, v872.price)
			-- ::l4::
            local v871, v872 = v878(v879, v871)
            if v871 ~= nil then
				-- goto l5
            else
				-- goto l7
            end
			-- ::l7::
            if v876.nextPageCursor == nil then
                addemote("Arm Wave", 5915773155)
                addemote("Head Banging", 5915779725)
                addemote("Borock\'s Rage", 10713999630)
                addemote("Ud\'zal\'s Summoning", 10714177846)
				-- goto l3
            end
            vu870 = v876.nextPageCursor
            task.wait()
			-- ::l13::
            function Request()
				-- upvalues: (ref) vu7, (ref) vu10, (ref) vu870
                local v873, v874 = vu7(function()
					-- upvalues: (ref) vu10, (ref) vu870
                    return vu10:HttpGet("https://raw.githubusercontent.com/randomstring0/cemotes/main/" .. vu870 .. ".json")
                end)
                if not v873 then
                    task.wait(0.7)
                    local _ = Request
                end
                return v874
            end
            local v875 = Request()
            local v876 = HttpService:JSONDecode(v875)
            local v877 = v876.data
            local v878, v879
            v878, v879, v871 = pairs(v877)
			-- goto l4
        end)
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu18, (ref) vu10, (ref) vu7, (ref) vu12, (ref) vu19, (ref) vu61, (ref) vu74, (ref) vu69, (ref) vu2, (ref) vu70, (ref) vu109, (ref) vu138, (ref) vu27, (ref) vu124, (ref) vu129, (ref) vu37, (ref) vu183, (ref) vu6, (ref) vu127, (ref) vu28, (ref) vu34, (ref) vu48, (ref) vu197, (ref) vu249, (ref) vu11
        local vu880 = vu102.b9
        local vu881 = vu18.Stepped
        local vu882 = task.wait
        local v883 = vu880.Parent.Parent.Parent.Parent
        local v884 = v883.infoplayerfun
        local vu885 = v884.playerstarget.usertarget.username
        local vu886 = v883.infoplayerfun.playersfeature.Frame.ScrollingFrame
        local vu887 = v884.playerstarget.usertarget.userlogo
        local vu888 = v884.playerstarget.userstatus
        local vu889 = nil
        local v890 = Instance.new
        local vu891 = vu10:getService("Players").LocalPlayer
        local vu892 = {}
        local vu893 = Color3.fromRGB(0, 221, 255)
        vu887.Image = vu10:GetService("Players"):GetUserThumbnailAsync("1", Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size100x100)
        function GetFriendCount(pu894)
			-- upvalues: (ref) vu7, (ref) vu12
            local v895, v896 = vu7(function()
				-- upvalues: (ref) vu12, (ref) pu894
                return vu12:GetFriendsAsync(pu894)
            end)
            if not v895 then
                return " error"
            end
            local v897 = 0
            while true do
                v897 = # v896:GetCurrentPage() + v897
                if v896.IsFinished then
                    break
                end
                v896:AdvanceToNextPageAsync()
            end
            return v897
        end
        function joindate(p898)
            local v899 = os.time() - p898.AccountAge * 86400
            return os.date("!*t", v899)
        end
        function vu892.addplayer(_, p900, p901)
			-- upvalues: (ref) vu880, (ref) vu10, (ref) vu19, (ref) vu885, (ref) vu887, (ref) vu889, (ref) vu893, (ref) vu882
            local vu902 = p900 or "Error"
            local vu903 = Instance.new("Frame")
            local v904 = Instance.new("UICorner")
            local vu905 = Instance.new("ImageLabel")
            local v906 = Instance.new("UICorner")
            local v907 = Instance.new("UIListLayout")
            local vu908 = Instance.new("TextButton")
            vu903.Name = vu902.Name .. " " .. vu902.DisplayName
            vu903.Parent = vu880.Parent
            vu903.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            vu903.BackgroundTransparency = 0.8
            vu903.BorderColor3 = Color3.fromRGB(0, 0, 0)
            vu903.BorderSizePixel = 0
            vu903.ClipsDescendants = true
            vu903.Size = UDim2.new(1, 0, 0, 21)
            v904.CornerRadius = UDim.new(0, 7)
            v904.Parent = vu903
            vu905.Name = "playericon"
            vu905.Parent = vu903
            vu905.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
            vu905.BackgroundTransparency = 0.5
            vu905.BorderColor3 = Color3.fromRGB(0, 0, 0)
            vu905.BorderSizePixel = 0
            vu905.Size = UDim2.new(0, 23, 1, 0)
            vu905.Image = vu10:GetService("Players"):GetUserThumbnailAsync(p901 or "1", Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size100x100)
            v906.Parent = vu905
            v907.Parent = vu903
            v907.FillDirection = Enum.FillDirection.Horizontal
            v907.SortOrder = Enum.SortOrder.LayoutOrder
            v907.Padding = UDim.new(0, 4)
            vu908.Name = "playernamebutton"
            vu908.Parent = vu903
            vu908.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            vu908.BackgroundTransparency = 1
            vu908.BorderColor3 = Color3.fromRGB(0, 0, 0)
            vu908.BorderSizePixel = 0
            vu908.Position = UDim2.new(0.17037037, 0, 0, 0)
            vu908.Size = UDim2.new(0.7, 0, 1, 0)
            vu908.Font = Enum.Font.FredokaOne
            vu908.Text = "player"
            vu908.TextScaled = true
            vu908.TextColor3 = Color3.fromRGB(255, 255, 255)
            vu908.TextSize = 14
            vu908.TextXAlignment = Enum.TextXAlignment.Left
            vu19:Create(vu903, TweenInfo.new(0.2), {
                ["Size"] = UDim2.new(1, 0, 0, 21)
            }):Play()
            task.wait(0.1)
            vu19:Create(vu903, TweenInfo.new(0.2), {
                ["BackgroundTransparency"] = 0.5
            }):Play()
            vu19:Create(vu903, TweenInfo.new(0.2), {
                ["BackgroundColor3"] = Color3.fromRGB(61, 61, 61)
            }):Play()
            if vu902.DisplayName == vu902.Name then
                vu908.Text = vu902.Name
            else
                vu908.Text = vu902.Name .. " (" .. vu902.DisplayName .. ")"
            end
            vu908.MouseButton1Click:Connect(function()
				-- upvalues: (ref) vu885, (ref) vu908, (ref) vu887, (ref) vu905, (ref) vu889, (ref) vu902, (ref) vu19, (ref) vu893, (ref) vu882
                vu885.Text = vu908.Text
                vu887.Image = vu905.Image
                vu889 = vu902
                local v909 = {
                    ["ImageColor3"] = vu893
                }
                vu19:Create(vu905, TweenInfo.new(0.2), v909):Play()
                vu882(0.1)
                vu19:Create(vu905, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
            end)
            vu908.MouseEnter:Connect(function()
				-- upvalues: (ref) vu880, (ref) vu19, (ref) vu903
                local v910, v911, v912 = pairs(vu880.Parent:GetChildren())
                while true do
                    local v913
                    v912, v913 = v910(v911, v912)
                    if v912 == nil then
                        break
                    end
                    if v913:IsA("GuiObject") then
                        vu19:Create(v913, TweenInfo.new(0.5), {
                            ["Size"] = UDim2.new(1, 0, 0, 21)
                        }):Play()
                    end
                end
                vu19:Create(vu903, TweenInfo.new(0.5), {
                    ["Size"] = UDim2.new(1, 0, 0, 31)
                }):Play()
            end)
            vu908.MouseLeave:Connect(function()
				-- upvalues: (ref) vu880, (ref) vu19, (ref) vu903
                local v914, v915, v916 = pairs(vu880.Parent:GetChildren())
                while true do
                    local v917
                    v916, v917 = v914(v915, v916)
                    if v916 == nil then
                        break
                    end
                    if v917:IsA("GuiObject") then
                        vu19:Create(v917, TweenInfo.new(0.5), {
                            ["Size"] = UDim2.new(1, 0, 0, 21)
                        }):Play()
                    end
                end
                vu19:Create(vu903, TweenInfo.new(0.5), {
                    ["Size"] = UDim2.new(1, 0, 0, 21)
                }):Play()
            end)
        end
        vu102.b2.Changed:Connect(function()
			-- upvalues: (ref) vu880, (ref) vu102
            search_(vu880.Parent, vu102.b2.Text, "Frame")
        end)
        vu102.cb.Changed:Connect(function()
			-- upvalues: (ref) vu886, (ref) vu102
            search_(vu886, vu102.cb.Text, "Frame")
        end)
        function deleteEntry(p918)
			-- upvalues: (ref) vu880
            local v919, v920, v921 = pairs(vu880.Parent:GetChildren())
            while true do
                local v922
                v921, v922 = v919(v920, v921)
                if v921 == nil then
                    break
                end
                if v922.Name == p918 then
                    v922:Destroy()
                end
            end
        end
        local v923 = vu892
        vu892.addplayer(v923, vu10.Players.LocalPlayer, vu10.Players.LocalPlayer.UserId)
        vu10.Players.PlayerAdded:connect(function(p924)
			-- upvalues: (ref) vu882, (ref) vu61, (ref) vu880, (ref) vu892
            vu882()
            local v925 = vu61(vu880.Parent, p924.Name .. " " .. p924.DisplayName, "Frame")
            if v925 then
                v925:Destroy()
            end
            vu892:addplayer(p924, p924.UserId)
        end)
        vu10.Players.PlayerRemoving:connect(function(p926)
			-- upvalues: (ref) vu882, (ref) vu61, (ref) vu880, (ref) vu19, (ref) vu889, (ref) vu885, (ref) vu887, (ref) vu10, (ref) vu74, (ref) vu69
            vu882()
            local v927 = vu61(vu880.Parent, p926.Name .. " " .. p926.DisplayName, "Frame")
            if v927 then
                vu19:Create(v927, TweenInfo.new(0.2), {
                    ["BackgroundColor3"] = Color3.fromRGB(255, 0, 0)
                }):Play()
                vu882(0.1)
                vu19:Create(v927, TweenInfo.new(0.2), {
                    ["Size"] = UDim2.new(0, 0, 0, 21)
                }):Play()
                vu19:Create(v927, TweenInfo.new(0.2), {
                    ["BackgroundTransparency"] = 0
                }):Play()
                v927:Destroy()
            end
            if p926 == vu889 then
                vu889 = nil
                vu885.Text = "not found!"
                vu887.Image = vu10:GetService("Players"):GetUserThumbnailAsync("1", Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size100x100)
            end
            if p926 == vu74 then
                vu69()
            end
        end)
        local v928 = vu881
        vu881.Connect(v928, function()
			-- upvalues: (ref) vu889, (ref) vu888
            if vu889 == nil then
                vu888.Text = "not found!.."
            elseif vu889.Character then
                if vu889.Character:FindFirstChild("Humanoid") then
                    if vu889.Character:FindFirstChild("Humanoid").Health <= 0 then
                        vu888.Text = "dealth"
                    else
                        vu888.Text = "alive"
                    end
                else
                    vu888.Text = "humanoid not found!"
                end
            end
        end)
        local v939 = {
            ["Addbuttonfun"] = function(_, p929, pu930, p931)
				-- upvalues: (ref) vu886, (ref) vu2, (ref) vu70, (ref) vu19, (ref) vu7
                local vu932 = p931 or false
                local v933 = p929 or "Error value"
                local v934 = Instance.new("Frame")
                local v935 = Instance.new("UICorner")
                local v936 = Instance.new("UIListLayout")
                local v937 = Instance.new("TextLabel")
                local vu938 = Instance.new("ImageButton")
                v934.Name = v933
                v934.Parent = vu886
                v934.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
                v934.BackgroundTransparency = 0.5
                v934.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v934.BorderSizePixel = 0
                v934.Size = UDim2.new(0.6, 0, 0.95, 0)
                v935.CornerRadius = UDim.new(0, 7)
                v935.Parent = v934
                v936.Parent = v934
                v936.SortOrder = Enum.SortOrder.LayoutOrder
                v936.Padding = UDim.new(0, 2)
                v937.Parent = v934
                v937.Active = true
                v937.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
                v937.BackgroundTransparency = 0.45
                v937.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v937.BorderSizePixel = 0
                v937.Size = UDim2.new(1, 0, 0.3, 0)
                v937.Font = Enum.Font.FredokaOne
                v937.Text = v933
                v937.TextColor3 = vu932 and vu2 or Color3.fromRGB(255, 255, 255)
                v937.TextScaled = true
                v937.TextSize = 14
                v937.TextWrapped = true
                vu938.Parent = v934
                vu938.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                vu938.BackgroundTransparency = 1
                vu938.BorderColor3 = Color3.fromRGB(0, 0, 0)
                vu938.BorderSizePixel = 0
                vu938.Position = UDim2.new(0, 0, 0.344827592, 0)
                vu938.Size = UDim2.new(0.95, 0, 0.57, 0)
                vu938.Image = "http://www.roblox.com/asset/?id=6022668955"
                vu938.ScaleType = Enum.ScaleType.Fit
                vu938.MouseButton1Click:Connect(function()
					-- upvalues: (ref) vu932, (ref) vu70, (ref) vu19, (ref) vu938, (ref) pu930, (ref) vu7
                    if vu932 and vu70 == false then
                        vu19:Create(vu938, TweenInfo.new(0.2), {
                            ["ImageColor3"] = Color3.fromRGB(255, 0, 0)
                        }):Play()
                        task.wait(0.1)
                        vu19:Create(vu938, TweenInfo.new(0.2), {
                            ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                        }):Play()
                        return warn("vip only")
                    end
                    if pu930 then
                        vu19:Create(vu938, TweenInfo.new(0.2), {
                            ["ImageColor3"] = Color3.fromRGB(0, 255, 0)
                        }):Play()
                        task.wait(0.1)
                        vu19:Create(vu938, TweenInfo.new(0.2), {
                            ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                        }):Play()
                        vu7(pu930)
                    end
                end)
                return vu938
            end
        }
        local v954 = {
            ["addtogglefun"] = function(_, p940, pu941, p942)
				-- upvalues: (ref) vu886, (ref) vu2, (ref) vu70, (ref) vu19
                local vu943 = p942 or false
                local v944 = p940 or "error"
                local v945 = Instance.new("Frame")
                local v946 = Instance.new("UICorner")
                local v947 = Instance.new("UIListLayout")
                local v948 = Instance.new("TextLabel")
                local v949 = Instance.new("Frame")
                local vu950 = Instance.new("TextButton")
                local v951 = Instance.new("UICorner")
                local v952 = Instance.new("UICorner")
                v945.Name = v944
                v945.Parent = vu886
                v945.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
                v945.BackgroundTransparency = 0.5
                v945.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v945.BorderSizePixel = 0
                v945.Size = UDim2.new(0.6, 0, 0.95, 0)
                v946.CornerRadius = UDim.new(0, 7)
                v946.Parent = v945
                v947.Parent = v945
                v947.SortOrder = Enum.SortOrder.LayoutOrder
                v947.Padding = UDim.new(0, 2)
                v948.Parent = v945
                v948.Active = true
                v948.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
                v948.BackgroundTransparency = 0.45
                v948.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v948.BorderSizePixel = 0
                v948.Size = UDim2.new(1, 0, 0.31, 0)
                v948.Font = Enum.Font.FredokaOne
                v948.Text = v944
                v948.TextColor3 = vu943 and vu2 or Color3.fromRGB(255, 255, 255)
                v948.TextScaled = true
                v948.TextSize = 14
                v948.TextWrapped = true
                v949.Name = "handleframe"
                v949.Parent = v945
                v949.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
                v949.BackgroundTransparency = 0.5
                v949.BorderColor3 = Color3.fromRGB(0, 0, 0)
                v949.BorderSizePixel = 0
                v949.Position = UDim2.new(0, 0, 0.344827592, 0)
                v949.Size = UDim2.new(1, 0, 0.45, 0)
                vu950.Name = "togglebutton"
                vu950.Parent = v949
                vu950.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                vu950.BorderColor3 = Color3.fromRGB(0, 0, 0)
                vu950.BorderSizePixel = 0
                vu950.Size = UDim2.new(0.34, 0, 1, 0)
                vu950.Font = Enum.Font.SourceSans
                vu950.Text = " "
                vu950.TextColor3 = Color3.fromRGB(0, 0, 0)
                vu950.TextSize = 14
                v951.CornerRadius = UDim.new(0, 7)
                v951.Parent = vu950
                v952.CornerRadius = UDim.new(0, 7)
                v952.Parent = v949
                local vu953 = false
                vu950.MouseButton1Click:Connect(function()
					-- upvalues: (ref) vu943, (ref) vu70, (ref) vu953, (ref) vu19, (ref) vu950, (ref) pu941
                    if vu943 and vu70 == false then
                        return warn("vip only")
                    end
                    vu953 = not vu953
                    vu19:Create(vu950, TweenInfo.new(0.2), {
                        ["BackgroundColor3"] = vu953 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
                    }):Play()
                    vu19:Create(vu950, TweenInfo.new(0.2), {
                        ["Position"] = vu953 and UDim2.new(0.68, 0, 0, 0) or UDim2.new(0, 0, 0, 0)
                    }):Play()
                    if pu941 then
                        pu941(vu953)
                    end
                end)
            end
        }
        v954:addtogglefun("view", function(p955)
			-- upvalues: (ref) vu74, (ref) vu889, (ref) vu69
            if p955 then
                vu74 = vu889
            else
                vu69()
            end
        end)
        v939:Addbuttonfun("teleport", function()
			-- upvalues: (ref) vu889, (ref) vu891
            if vu889 ~= nil then
                local v956 = vu889.Character
                vu891.Character.HumanoidRootPart.CFrame = v956.HumanoidRootPart.CFrame
            end
        end)
        v939:Addbuttonfun("copy name to clipboard", function()
			-- upvalues: (ref) vu889
            if setclipboard then
                setclipboard(vu889.Name)
            end
        end)
        v939:Addbuttonfun("copy displayname to clipboard", function()
			-- upvalues: (ref) vu889
            if setclipboard then
                setclipboard(vu889.DisplayName)
            end
        end)
        v939:Addbuttonfun("copy userid to clipboard", function()
			-- upvalues: (ref) vu889
            if setclipboard then
                setclipboard(tostring(vu889.UserId))
            end
        end)
        v939:Addbuttonfun("get joindate", function()
			-- upvalues: (ref) vu889, (ref) vu109
            local v957 = joindate(vu889)
            vu109(v957.day .. "," .. v957.month .. "," .. v957.year, 2)
        end)
        v939:Addbuttonfun("get account age", function()
			-- upvalues: (ref) vu109, (ref) vu889
            vu109(tostring(vu889.AccountAge) .. " days", 2)
        end)
        v939:Addbuttonfun("check how many friend", function()
			-- upvalues: (ref) vu109, (ref) vu889
            vu109(GetFriendCount(vu889.UserId) .. " Friend", 2)
        end)
        local vu958 = false
        vu10:GetService("Workspace").DescendantAdded:Connect(function(p959)
			-- upvalues: (ref) vu891, (ref) vu958, (ref) vu138
            if p959:IsDescendantOf(vu891.Character) == false and vu958 == true then
                vu138(p959)
            end
        end)
        vu27:Connect(function()
			-- upvalues: (ref) vu889, (ref) vu958, (ref) vu124, (ref) vu129
            if vu889 ~= nil then
                local v960 = vu889.Character
                if vu958 and (v960.Character and v960:FindFirstChild("HumanoidRootPart")) then
                    local v961 = vu889.Character.HumanoidRootPart
                    local v962 = {
                        ["x"] = 0,
                        ["y"] = 0,
                        ["z"] = 0,
                        ["x"] = v961.Position.X,
                        ["y"] = v961.Position.Y,
                        ["z"] = v961.Position.Z
                    }
                    v962.x = v962.x + v961.Velocity.X / 2
                    v962.y = v962.y + v961.Velocity.Y / 2
                    v962.z = v962.z + v961.Velocity.Z / 2
                    local v963 = vu124.FallenPartsDestroyHeight + 5
                    if v962.y < v963 then
                        v962.y = v963
                    end
                    vu129.WorldCFrame = CFrame.new(v962.x, v962.y, v962.z)
                end
            end
        end)
        v954:addtogglefun("head pet", function(p964)
			-- upvalues: (ref) vu10, (ref) vu891, (ref) vu109, (ref) vu37, (ref) vu889, (ref) vu74, (ref) vu124, (ref) vu183, (ref) vu7, (ref) vu881, (ref) vu12, (ref) vu69
            if p964 then
                vu10:GetService("TweenService")
                local vu965 = animid("121572214")
                if not vu891.Character:FindFirstChild("Head") then
                    return vu109("missing head!", 1)
                end
                if vu37 ~= false then
                    vu109("Another script Still Running!", 1)
                    return
                end
                vu37 = true
                if vu889.Name == vu891.Name then
                    return
                end
                if not vu74 then
                    local v966 = vu891.Character
                    vu124.CurrentCamera.CameraType = Enum.CameraType.Custom
                    vu124.CurrentCamera.CameraSubject = v966:FindFirstChild("Head")
                end
                vu183 = true
                local v967, v968, v969 = pairs(vu891.Character.Humanoid:GetPlayingAnimationTracks())
                while true do
                    local v970
                    v969, v970 = v967(v968, v969)
                    if v969 == nil then
                        break
                    end
                    v970:Stop()
                end
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
                local vu971 = Instance.new("BodyGyro", vu891.Character.HumanoidRootPart)
                vu971.Name = "milk"
                vu971.D = 50
                vu971.P = 200
                vu971.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
                local vu972 = Instance.new("BodyPosition", vu891.Character.HumanoidRootPart)
                vu972.Name = "real_milk"
                vu972.D = 50
                vu972.P = 200
                vu972.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                repeat
                    vu7(function()
						-- upvalues: (ref) vu881, (ref) vu965, (ref) vu889, (ref) vu972, (ref) vu971
                        vu881:Wait()
                        vu965:Play()
                        vu965:AdjustSpeed(0.1)
                        vu965.TimePosition = 0.6
                        local v973 = vu889.Character:FindFirstChild("HumanoidRootPart")
                        if v973.Velocity.Y == 0 then
                            vu972.Position = (v973.CFrame * CFrame.new(- 3, - 4.7, 3.5)).Position
                            vu971.CFrame = v973.CFrame
                        end
                    end)
                until vu37 == false or (vu12.LocalPlayer.Character.Humanoid.Health <= 1 or vu889 == nil)
                vu183 = false
                local v974 = vu965
                vu965.Stop(v974)
                vu37 = false
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
                vu891.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
                if not vu74 then
                    vu69()
                end
                if vu891.Character.HumanoidRootPart:FindFirstChild("milk") and vu891.Character.HumanoidRootPart:FindFirstChild("real_milk") then
                    vu891.Character.HumanoidRootPart:FindFirstChild("milk"):Destroy()
                    vu891.Character.HumanoidRootPart:FindFirstChild("real_milk"):Destroy()
                end
            else
                vu37 = false
            end
        end)
        v954:addtogglefun("rush part", function(p975)
			-- upvalues: (ref) vu958, (ref) vu6, (ref) vu124, (ref) vu891, (ref) vu138, (ref) vu10, (ref) vu127
            if p975 then
                vu958 = true
                local v976 = vu6
                local v977, v978 = vu124:GetDescendants()
                while true do
                    local v979
                    v978, v979 = v976(v977, v978)
                    if v978 == nil then
                        break
                    end
                    if v979:IsDescendantOf(vu891.Character) == false and vu958 == true then
                        vu138(v979)
                    end
                end
            else
                vu958 = false
                local v980 = vu6
                local v981, v982 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v983
                    v982, v983 = v980(v981, v982)
                    if v982 == nil then
                        break
                    end
                    if v983:IsDescendantOf(vu891.Character) == false and v983:IsDescendantOf(vu127) == false then
                        if v983:FindFirstChild("Attachment") then
                            v983:FindFirstChild("Attachment"):Destroy()
                        end
                        if v983:FindFirstChild("AlignPosition") then
                            v983:FindFirstChild("AlignPosition"):Destroy()
                        end
                        if v983:FindFirstChild("Torque") then
                            v983:FindFirstChild("Torque"):Destroy()
                        end
                    end
                end
            end
        end, true)
        v939:Addbuttonfun("fling", function()
			-- upvalues: (ref) vu889, (ref) vu12, (ref) vu891, (ref) vu28, (ref) vu124, (ref) vu34, (ref) vu882, (ref) vu109
            local _ = vu889.Character
            local v984 = vu12.LocalPlayer.Character.HumanoidRootPart.Velocity
            local v985 = vu891.Character.HumanoidRootPart.CFrame
            local v986 = vu891.Character
            local v987 = v986.HumanoidRootPart
            local v988 = vu889.Character
            local v989 = v988.HumanoidRootPart
            v987.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0.01, 0.01, 0.01, 0.01)
            local v990 = 0
            while true do
                vu28:Wait()
                local v991 = {
                    ["x"] = 0,
                    ["y"] = 0,
                    ["z"] = 0,
                    ["x"] = v989.Position.X,
                    ["y"] = v989.Position.Y,
                    ["z"] = v989.Position.Z
                }
                v991.x = v991.x + v989.Velocity.X / 2
                v991.y = v991.y + v989.Velocity.Y / 2
                v991.z = v991.z + v989.Velocity.Z / 2
                local v992 = vu124.FallenPartsDestroyHeight + 5
                if v991.y < v992 then
                    v991.y = v992
                end
                v987.CanCollide = false
                v987.CFrame = CFrame.new(v991.x, v991.y, v991.z)
                v987.Velocity = vu34(0, 1000, 0)
                v987.RotVelocity = vu34(10000, 10000, 10000)
                v990 = 1 + v990
                if vu889.Character.HumanoidRootPart.Velocity.Y > 56 or (v988.Humanoid.Health <= 1 or (v986.Humanoid.Health <= 1 or 400 < v990)) then
                    vu882(0.2)
                    local _ = vu891.Character
                    v987.Velocity = v984
                    v987.RotVelocity = v984
                    vu891.Character.HumanoidRootPart.CFrame = v985
                    if v990 > 400 then
                        vu109("Can\'t Fling it because no collision or something", 2)
                    end
                    return
                end
            end
        end)
        local vu993 = v890("Frame")
        vu993.Size = UDim2.new(0, 100, 0.04, 0)
        vu993.AnchorPoint = Vector2.new(0.5, 0.5)
        vu993.BackgroundColor3 = Color3.new(1, 0, 0)
        vu993.BorderSizePixel = 0
        vu993.Parent = vu102["1"]
        vu993.Visible = false
        local function vu1004(p994, _)
			-- upvalues: (ref) vu891, (ref) vu993
            local v995 = p994.Character
            if v995 then
                local v996 = v995:FindFirstChild("HumanoidRootPart")
                local v997 = vu891.Character
                if v997 then
                    v997 = vu891.Character:FindFirstChild("HumanoidRootPart")
                end
                if v996 and v997 then
                    local v998, v999 = worldToViewportPoint(v996.Position)
                    local v1000, v1001 = worldToViewportPoint(v997.Position)
                    if v999 and v1001 then
                        local v1002 = (v998 - v1000).unit
                        local v1003 = (v998 - v1000).magnitude
                        vu993.Position = UDim2.new(0, (v1000.X + v998.X) / 2, 0, (v1000.Y + v998.Y) / 2)
                        vu993.Size = UDim2.new(0, v1003, 0.05, 0)
                        vu993.Rotation = math.deg(math.atan2(v1002.Y, v1002.X))
                        vu993.Visible = true
                    else
                        vu993.Visible = false
                    end
                end
            else
                return
            end
        end
        local v1005 = vu881
        vu881.Connect(v1005, function()
			-- upvalues: (ref) vu48, (ref) vu889, (ref) vu1004, (ref) vu993
            if vu48 then
                if vu889 ~= nil then
                    vu1004(vu48, vu993)
                end
            else
                vu993.Visible = false
            end
        end)
        v954:addtogglefun("tick esp", function(p1006)
			-- upvalues: (ref) vu48, (ref) vu889
            vu48 = p1006 and vu889 or nil
        end)
        v954:addtogglefun("anti collision", function(p1007)
			-- upvalues: (ref) vu197
            vu197 = p1007
        end)
        function r15(p1008)
            if p1008.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
                return true
            end
        end
        local vu1009 = Instance.new("Highlight")
        vu1009.FillColor = Color3.fromRGB(255, 255, 255)
        vu1009.DepthMode = "AlwaysOnTop"
        vu1009.FillTransparency = 1
        vu1009.OutlineColor = Color3.fromRGB(0, 0, 0)
        vu1009.OutlineTransparency = 1
        vu1009.Parent = nil
        local vu1010 = false
        local vu1011 = false
        local vu1012 = false
        local vu1013 = false
        local vu1014 = false
        local vu1015 = false
        vu28:Connect(function()
			-- upvalues: (ref) vu7, (ref) vu1010, (ref) vu889, (ref) vu12, (ref) vu882, (ref) vu1011, (ref) vu891, (ref) vu1012, (ref) vu1013, (ref) vu1009, (ref) vu1014, (ref) vu1015
            vu7(function()
				-- upvalues: (ref) vu1010, (ref) vu889, (ref) vu12, (ref) vu882, (ref) vu1011, (ref) vu891, (ref) vu1012, (ref) vu1013, (ref) vu1009, (ref) vu1014, (ref) vu1015, (ref) vu7
                if vu1010 then
                    local v1016 = getTorso(vu889.Character)
                    if v1016:FindFirstChild("Handle") then
                        if vu889.Character.Humanoid.Health < 0 and vu889.Character:FindFirstChild("MeshPartAccessory") or (vu889.Character:FindFirstChild("DefaultPart") or (vu889.Character:FindFirstChild("Front") or vu889.Character:FindFirstChild("Black"))) then
                            local v1017 = vu889.Character:FindFirstChild("DefaultPart") or (vu889.Character:FindFirstChild("Front") or vu889.Character:FindFirstChild("Black"))
                            vu12.LocalPlayer.Character.HumanoidRootPart.CFrame = v1017.Handle.CFrame * CFrame.new(0, 4, 0)
                        end
                    else
                        vu12.LocalPlayer.Character.HumanoidRootPart.CFrame = v1016.CFrame * CFrame.new(0, 4, 0)
                    end
                    vu882()
                end
                if vu1011 then
                    if vu889.Name == vu891.Name then
                        return
                    end
                    local _ = vu12.LocalPlayer.Character.HumanoidRootPart.Velocity
                    local _ = vu891.Character.HumanoidRootPart.CFrame
                    local _ = vu891.Character.HumanoidRootPart
                    local _ = vu889.Name
                    local v1018 = vu889.Character:FindFirstChild("Left Arm") or vu889.Character:FindFirstChild("LeftLowerArm")
                    vu12.LocalPlayer.Character.HumanoidRootPart.CFrame = v1018.CFrame * CFrame.new(0, - 1.6, 0) * CFrame.Angles(80, 0, 0)
                    vu882()
                end
                if vu1012 and vu889.Character:FindFirstChild("HumanoidRootPart") then
                    local v1019, v1020, v1021 = pairs(vu889.Character:GetDescendants())
                    while true do
                        local v1022, v1023 = v1019(v1020, v1021)
                        if v1022 == nil then
                            break
                        end
                        v1021 = v1022
                        if v1023:IsA("BasePart") then
                            v1023.CanCollide = false
                        end
                    end
                    vu889.Character.HumanoidRootPart.CFrame = vu891.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, - 2)
                end
                if vu1013 then
                    if vu889.Character:FindFirstChild("Humanoid").Health <= 1 then
                        vu1009.Parent = nil
                    else
                        vu1009.FillTransparency = 0.56
                        vu1009.Parent = vu889.Character
                        vu1009.OutlineTransparency = 0
                    end
                else
                    vu1009.Parent = nil
                end
                if vu1014 then
                    if vu891.Character:FindFirstChildOfClass("Humanoid") and vu889.Character:FindFirstChildOfClass("Humanoid").SeatPart then
                        vu891.Character:FindFirstChildOfClass("Humanoid").Sit = false
                        vu882(0.1)
                    end
                    vu891.Character:FindFirstChildOfClass("Humanoid"):MoveTo(getRoot(vu889.Character).Position)
                end
                if vu1015 then
                    vu891.Character:FindFirstChildWhichIsA("Humanoid")
                    local vu1024 = vu889
                    local vu1025 = CFrame.new(0, 0, - 1.1) * CFrame.Angles(0, 80, 3)
                    vu7(function()
						-- upvalues: (ref) vu1024, (ref) vu891, (ref) vu1025, (ref) vu882
                        local v1026 = getTorso(vu1024.Character)
                        getRoot(vu891.Character).CFrame = v1026.CFrame * vu1025
                        vu882(0.1)
                        getRoot(vu891.Character).CFrame = v1026.CFrame * CFrame.new(0, 0, 2.1) * CFrame.Angles(0, 80, 3)
                        vu882(0.1)
                        getRoot(vu891.Character).CFrame = v1026.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 80, 3)
                    end)
                end
            end)
        end)
        v954:addtogglefun("head stand", function(p1027)
			-- upvalues: (ref) vu1010
            vu1010 = p1027
        end)
        v954:addtogglefun("arm hold", function(p1028)
			-- upvalues: (ref) vu1011
            vu1011 = p1028
        end)
        v939:Addbuttonfun("check outfit price", function()
			-- upvalues: (ref) vu109, (ref) vu889
            vu109("This outfit costs " .. GetAvatarWorth(vu889.UserId) .. " robux", 2)
        end)
        v954:addtogglefun("client bring", function(p1029)
			-- upvalues: (ref) vu1012
            vu1012 = p1029
        end)
        v954:addtogglefun("hightlight", function(p1030)
			-- upvalues: (ref) vu1013
            vu1013 = p1030
        end)
        v954:addtogglefun("move to", function(p1031)
			-- upvalues: (ref) vu1014
            vu1014 = p1031
        end)
        v954:addtogglefun("annoy", function(p1032)
			-- upvalues: (ref) vu1015
            vu1015 = p1032
        end)
        if vu249 ~= nil then
            function Destroy(p1033)
				-- upvalues: (ref) vu249
                vu249:FireServer(p1033)
            end
            v939:Addbuttonfun("kick", function()
				-- upvalues: (ref) vu889
                Destroy(vu889)
            end)
            v939:Addbuttonfun("kill", function()
				-- upvalues: (ref) vu889
                Destroy(vu889.Character.Head)
            end)
            v939:Addbuttonfun("humanoidless", function()
				-- upvalues: (ref) vu889
                Destroy(vu889.Character.Humanoid)
            end)
            v939:Addbuttonfun("freeze", function()
				-- upvalues: (ref) vu889
                vu889.Character:FindFirstChild("Head").Anchored = true
                Destroy(vu889.Character:FindFirstChild("HumanoidRootPart"))
            end)
            v939:Addbuttonfun("remove backpack", function()
				-- upvalues: (ref) vu889
                local v1034, v1035, v1036 = pairs(vu889.Backpack:GetChildren())
                while true do
                    local v1037
                    v1036, v1037 = v1034(v1035, v1036)
                    if v1036 == nil then
                        break
                    end
                    Destroy(v1037)
                end
            end)
        end
        if vu10:GetService("ReplicatedStorage"):FindFirstChild("RE") then
            local vu1038 = false
            local vu1039 = vu10:GetService("Players").LocalPlayer.Character.Humanoid:GetAppliedDescription():GetAccessories(true)
            v939:Addbuttonfun("copy ingame avatar", function()
				-- upvalues: (ref) vu1038, (ref) vu889, (ref) vu10, (ref) vu882, (ref) vu1039, (ref) vu109
                if vu1038 == true then
                    vu109("Still Load An Outfit", 2)
                else
                    vu1038 = true
                    local v1040 = vu889.Character.Humanoid:GetAppliedDescription()
                    local v1041 = vu889.Character.Humanoid:GetAppliedDescription():GetAccessories(true)
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack({
                        "OCA"
                    }))
                    vu882(0.6)
                    local v1042, v1043, v1044 = ipairs(vu1039)
                    while true do
                        local v1045
                        v1044, v1045 = v1042(v1043, v1044)
                        if v1044 == nil then
                            break
                        end
                        vu882(0.4)
                        local v1046 = {
                            "wear",
                            v1045.AssetId
                        }
                        vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1046))
                    end
                    vu882(0.2)
                    local v1047, v1048, v1049 = ipairs(v1041)
                    while true do
                        local v1050
                        v1049, v1050 = v1047(v1048, v1049)
                        if v1049 == nil then
                            break
                        end
                        vu882(0.4)
                        local v1051 = {
                            "wear",
                            v1050.AssetId
                        }
                        vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1051))
                    end
                    vu882()
                    local v1052 = {
                        "wear",
                        v1040.Face
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1052))
                    vu882(0.5)
                    local v1053 = {
                        "wear",
                        v1040.Pants
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1053))
                    vu882(0.6)
                    local v1054 = {
                        "wear",
                        v1040.Shirt
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1054))
                    vu882(0.3)
                    local v1055 = {
                        "CharacterChange",
                        {
                            v1040.Torso,
                            v1040.RightArm,
                            v1040.LeftArm,
                            v1040.RightLeg,
                            v1040.LeftLeg,
                            v1040.Head
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v1055))
                    vu882(0.5)
                    local v1056 = {
                        "wearWalkStyle",
                        v1040.WalkAnimation
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1056))
                    vu882(0.3)
                    local v1057 = {
                        "wearWalkStyle",
                        v1040.IdleAnimation
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1057))
                    vu882(0.3)
                    local v1058 = {
                        "wearWalkStyle",
                        v1040.JumpAnimation
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1058))
                    vu882(0.3)
                    local v1059 = {
                        "wearWalkStyle",
                        v1040.FallAnimation
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1059))
                    vu882(0.3)
                    local v1060 = {
                        "wearWalkStyle",
                        v1040.RunAnimation
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1060))
                    vu882(0.3)
                    local v1061 = {
                        "skintone",
                        vu889.Character["Body Colors"].HeadColor.Name
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v1061))
                    vu882()
                    vu1038 = false
                end
            end)
            v939:Addbuttonfun("copy avatar", function()
				-- upvalues: (ref) vu891, (ref) vu10, (ref) vu882, (ref) vu889
                vu891.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(0.1, 0.1, 0.1, 0.1, 0.1)
                vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack({
                    "OCA"
                }))
                vu882(0.2)
                local v1062 = vu10:HttpGet("https://avatar.roproxy.com/v1/users/" .. vu889.UserId .. "/currently-wearing")
                local v1063 = vu10.HttpService:JSONDecode(v1062)
                local v1064, v1065, v1066 = pairs(v1063.assetIds)
                while true do
                    local v1067
                    v1066, v1067 = v1064(v1065, v1066)
                    if v1066 == nil then
                        break
                    end
                    wait(0.5)
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        v1067
                    }))
                end
            end)
            v939:Addbuttonfun("couch void", function()
				-- upvalues: (ref) vu889, (ref) vu109, (ref) vu891, (ref) vu11, (ref) vu882, (ref) vu28, (ref) vu124, (ref) vu12
                if vu889.Character.Humanoid.Sit == true then
                    vu109("target is in sitting position, program cannot be run", 2)
                    return
                end
                local v1068 = vu891.Character:FindFirstChild("HumanoidRootPart").CFrame
                vu11:GetService("ReplicatedStorage").RE["1Too1l"]:InvokeServer("PickingTools", "Couch")
                if vu891.Character.Humanoid.Sit then
                    vu891.Character.Humanoid.Sit = false
                end
                vu882(0.2)
                local v1069, v1070, v1071 = pairs(vu891.Backpack:GetDescendants())
                while true do
                    local v1072
                    v1071, v1072 = v1069(v1070, v1071)
                    if v1071 == nil then
                        break
                    end
                    if v1072:IsA("Tool") then
                        v1072.Parent = vu891.Character
                    end
                end
                vu882(0.4)
                local v1073 = vu891.Character.HumanoidRootPart
                local v1074 = vu889.Character
                local v1075 = v1074.HumanoidRootPart
                while true do
                    if vu889 == nil then
                        vu109("player not found!", 1)
                        break
                    end
                    if v1074:FindFirstChildOfClass("Humanoid").Sit then
                        vu109("target is in sitting position, program will stopped", 1)
                        vu11:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer("PlayerWantsToDeleteTool", "Couch")
                        vu891.Character.HumanoidRootPart.CFrame = v1068
                        break
                    end
                    vu28:Wait()
                    local v1076 = {
                        ["x"] = 0,
                        ["y"] = 0,
                        ["z"] = 0,
                        ["x"] = v1075.Position.X + - 1.6,
                        ["y"] = v1075.Position.Y + - 3.5,
                        ["z"] = v1075.Position.Z + 3
                    }
                    v1076.x = v1076.x + v1075.Velocity.X / 2
                    v1076.y = v1076.y + v1075.Velocity.Y / 2
                    v1076.z = v1076.z + v1075.Velocity.Z / 2
                    local v1077 = vu124.FallenPartsDestroyHeight + 5
                    if v1076.y < v1077 then
                        v1076.y = v1077
                    end
                    v1073.CFrame = CFrame.new(v1076.x, v1076.y, v1076.z)
                    if vu889.Character.Humanoid.Sit == true or vu891.Character.Humanoid.Health <= 1 then
                        break
                    end
                end
                vu882()
                vu891.Character.HumanoidRootPart.CFrame = CFrame.new(0, - 299, 0)
                vu882(0.6)
                local v1078, v1079, v1080 = pairs(vu12.LocalPlayer.Character:GetDescendants())
                while true do
                    local v1081
                    v1080, v1081 = v1078(v1079, v1080)
                    if v1080 == nil then
                        break
                    end
                    if v1081:IsA("Tool") then
                        v1081.Parent = vu891.Backpack
                    end
                end
                vu882(0.3)
                vu891.Character.HumanoidRootPart.CFrame = v1068
                vu11:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer("PlayerWantsToDeleteTool", "Couch")
            end)
            v939:Addbuttonfun("couch bring", function()
				-- upvalues: (ref) vu889, (ref) vu109, (ref) vu891, (ref) vu11, (ref) vu882, (ref) vu28, (ref) vu124, (ref) vu12
                if vu889.Character.Humanoid.Sit then
                    vu109("The target is still sitting, the program cannot be run", 2)
                    return
                end
                local v1082 = vu891.Character.HumanoidRootPart.CFrame
                vu11:GetService("ReplicatedStorage").RE["1Too1l"]:InvokeServer("PickingTools", "Couch")
                vu882(0.1)
                if vu891.Character.Humanoid.Sit then
                    vu891.Character.Humanoid.Sit = false
                end
                vu882(0.4)
                local v1083, v1084, v1085 = pairs(vu891.Backpack:GetDescendants())
                while true do
                    local v1086
                    v1085, v1086 = v1083(v1084, v1085)
                    if v1085 == nil then
                        break
                    end
                    if v1086:IsA("Tool") then
                        v1086.Parent = vu891.Character
                    end
                end
                vu882(0.4)
                local v1087 = vu891.Character.HumanoidRootPart
                local v1088 = vu889.Character
                local v1089 = v1088.HumanoidRootPart
                while true do
                    if vu889 == nil then
                        vu109("player not found!", 1)
                        break
                    end
                    if v1088:FindFirstChildOfClass("Humanoid").Sit then
                        vu109("target is in sitting position, program will stopped", 1)
                        vu11:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer("PlayerWantsToDeleteTool", "Couch")
                        vu891.Character.HumanoidRootPart.CFrame = v1082
                        break
                    end
                    vu28:Wait()
                    local v1090 = {
                        ["x"] = 0,
                        ["y"] = 0,
                        ["z"] = 0,
                        ["x"] = v1089.Position.X + - 1.6,
                        ["y"] = v1089.Position.Y + - 3.5,
                        ["z"] = v1089.Position.Z + 3
                    }
                    v1090.x = v1090.x + v1089.Velocity.X / 2
                    v1090.y = v1090.y + v1089.Velocity.Y / 2
                    v1090.z = v1090.z + v1089.Velocity.Z / 2
                    local v1091 = vu124.FallenPartsDestroyHeight + 5
                    if v1090.y < v1091 then
                        v1090.y = v1091
                    end
                    v1087.CFrame = CFrame.new(v1090.x, v1090.y, v1090.z)
                    if vu889.Character.Humanoid.Sit == true or vu891.Character.Humanoid.Health <= 1 then
                        break
                    end
                end
                vu882()
                vu891.Character.HumanoidRootPart.CFrame = v1082
                vu882(0.6)
                local v1092, v1093, v1094 = pairs(vu12.LocalPlayer.Character:GetDescendants())
                while true do
                    local v1095
                    v1094, v1095 = v1092(v1093, v1094)
                    if v1094 == nil then
                        break
                    end
                    if v1095:IsA("Tool") then
                        v1095.Parent = vu891.Backpack
                    end
                end
                vu882(0.3)
                vu891.Character.HumanoidRootPart.CFrame = v1082
                vu11:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer("PlayerWantsToDeleteTool", "Couch")
            end)
            if vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t") then
                local vu1096 = false
                vu28:Connect(function()
					-- upvalues: (ref) vu1096, (ref) vu889, (ref) vu891, (ref) vu10
                    if vu1096 then
                        if vu889 == nil then
                            vu891.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                            vu1096 = false
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack({
                                "CharacterSizeUp",
                                1
                            }))
                        elseif vu891.Character then
                            getRoot(vu891.Character).CFrame = getRoot(vu889.Character).CFrame * CFrame.new(0, 2.3, 0)
                        end
                    end
                end)
                v954:addtogglefun("fake chat control", function(p1097)
					-- upvalues: (ref) vu1096, (ref) vu891, (ref) vu10
                    vu1096 = p1097
                    vu891.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                    local v1098 = {
                        vu1096 and "CharacterSizeDown" or "CharacterSizeUp",
                        vu1096 and 0.99 or 1
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(v1098))
                end)
                v939:Addbuttonfun("request shoulder", function()
					-- upvalues: (ref) vu891, (ref) vu882, (ref) vu12, (ref) vu889, (ref) vu10
                    local v1099 = vu891.Character.HumanoidRootPart.CFrame
                    vu882(0.1)
                    vu12.LocalPlayer.Character.HumanoidRootPart.CFrame = vu889.Character.HumanoidRootPart.CFrame * CFrame.new(0, - 15, 0)
                    vu882(0.1)
                    local v1100 = {
                        "Client2Client",
                        "Request: Shoulders!",
                        vu889
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServerunpack(v1100)
                    vu882(0.3)
                    vu891.Character.HumanoidRootPart.CFrame = v1099
                end)
            end
        else
            local function vu1106(p1101, p1102, p1103, p1104)
                local v1105 = Instance.new("Weld")
                v1105.Part0 = p1101
                v1105.Part1 = p1102
                v1105.C0 = p1103
                v1105.C1 = p1104
                v1105.Parent = p1101
                return v1105
            end
            local function vu1113(p1107, p1108)
                local v1109, v1110, v1111 = pairs(p1107:GetDescendants())
                while true do
                    local v1112
                    v1111, v1112 = v1109(v1110, v1111)
                    if v1111 == nil then
                        break
                    end
                    if v1112:IsA("Attachment") and v1112.Name == p1108 then
                        return v1112
                    end
                end
            end
            local function vu1123(p1114, p1115)
				-- upvalues: (ref) vu10, (ref) vu891, (ref) vu1113, (ref) vu1106
                local v1116 = vu10:GetObjects("rbxassetid://" .. tostring(p1114))[1]
                local v1117 = vu891.Character
                v1116.Parent = v1117
                local v1118 = v1116:FindFirstChild("Handle")
                if v1118 then
                    local v1119 = v1118:FindFirstChildOfClass("Attachment")
                    if v1119 then
                        local v1120 = vu1113(p1115, v1119.Name)
                        if v1120 then
                            vu1106(p1115, v1118, v1120.CFrame, v1119.CFrame)
                        end
                    else
                        local v1121 = v1117:FindFirstChild(p1115.Name)
                        if v1121 then
                            local v1122 = v1116.AttachmentPoint
                            vu1106(v1121, v1118, CFrame.new(0, 0.5, 0), v1122.CFrame)
                        end
                    end
                end
                v1116.Parent = vu891.Character
            end
            v939:Addbuttonfun("client copy avatar", function()
				-- upvalues: (ref) vu12, (ref) vu882, (ref) vu10, (ref) vu889, (ref) vu891, (ref) vu1123
                local v1124, v1125, v1126 = pairs(vu12.LocalPlayer.Character:GetDescendants())
                while true do
                    local v1127
                    v1126, v1127 = v1124(v1125, v1126)
                    if v1126 == nil then
                        break
                    end
                    if v1127:IsA("Accessory") or (v1127:IsA("Shirt") or v1127:IsA("Pants")) then
                        v1127:Destroy()
                        if v1127:FindFirstChild("Handle") then
                            v1127:Destroy()
                        end
                    end
                end
                vu882(0.5)
                local v1128 = vu10:HttpGet("https://avatar.roproxy.com/v1/users/" .. vu889.UserId .. "/currently-wearing")
                local v1129 = vu10.HttpService:JSONDecode(v1128)
                local v1130, v1131, v1132 = pairs(v1129.assetIds)
                while true do
                    local v1133
                    v1132, v1133 = v1130(v1131, v1132)
                    if v1132 == nil then
                        break
                    end
                    local v1134 = vu10:GetObjects("rbxassetid://" .. tostring(v1133))[1]
                    local _ = vu891.Character
                    if v1134:IsA("Folder") or v1134:IsA("SpecialMesh") then
                        v1134:Destroy()
                    end
                    if v1134:FindFirstChild("Handle") then
                        vu882(0.1)
                        v1134:FindFirstChild("Handle").CanCollide = false
                        v1134.Parent = nil
                        if not vu1123(v1133, vu12.LocalPlayer.Character.Head) then
                            vu1123(v1133, vu12.LocalPlayer.Character:FindFirstChild("UpperTorso") or vu12.LocalPlayer.Character:FindFirstChild("Torso"))
                        end
                        v1134.Handle.CanCollide = false
                        local v1135 = vu889.Character:FindFirstChildOfClass("BodyColors")
                        local v1136 = vu12.LocalPlayer.Character:FindFirstChildOfClass("BodyColors")
                        v1136.HeadColor3 = v1135.HeadColor3
                        v1136.TorsoColor3 = v1135.TorsoColor3
                        v1136.LeftArmColor3 = v1135.LeftArmColor3
                        v1136.RightArmColor3 = v1135.RightArmColor3
                        v1136.LeftLegColor3 = v1135.LeftLegColor3
                        v1136.RightLegColor3 = v1135.RightLegColor3
                    end
                    if v1134:IsA("Shirt") or v1134:IsA("Pants") then
                        v1134.Parent = vu12.LocalPlayer.Character
                    end
                    if v1134:IsA("Decal") or v1134.Name == "face" then
                        v1134.Parent = vu12.LocalPlayer.Character:FindFirstChild("Head")
                        if vu12.LocalPlayer.Character.Head:FindFirstChild("face") then
                            vu12.LocalPlayer.Character.Head.face:Destroy()
                        end
                    end
                end
            end)
        end
        coroutine.wrap(function()
			-- upvalues: (ref) vu12, (ref) vu10, (ref) vu882, (ref) vu892
            local v1137 = vu12
            local v1138, v1139, v1140 = pairs(v1137:GetPlayers())
            while true do
                local v1141
                v1140, v1141 = v1138(v1139, v1140)
                if v1140 == nil then
                    break
                end
                if v1141 ~= vu10.Players.LocalPlayer then
                    vu882(2e-7)
                    vu892:addplayer(v1141, v1141.UserId)
                end
            end
        end)()
    end,
    function()
		-- upvalues: (ref) vu102, (ref) vu10, (ref) vu251, (ref) vu139, (ref) vu43, (ref) vu64, (ref) vu7, (ref) vu70, (ref) vu11, (ref) vu109, (ref) vu103, (ref) vu259, (ref) vu95, (ref) vu96, (ref) vu49, (ref) vu50, (ref) vu33, (ref) vu32, (ref) vu3, (ref) vu16, (ref) vu25, (ref) vu24, (ref) vu14, (ref) vu61, (ref) vu6, (ref) vu138, (ref) vu27, (ref) vu129, (ref) vu44, (ref) vu127, (ref) vu167, (ref) vu123, (ref) vu249, (ref) vu75, (ref) vu23, (ref) vu69, (ref) vu35, (ref) vu183, (ref) vu46, (ref) vu28, (ref) vu39, (ref) vu34, (ref) vu17, (ref) vu20, (ref) vu22
        local v1142 = vu102["24d"]
        local _ = v1142.Parent
        local vu1143 = vu10:GetService("TweenService")
        local vu1144 = vu10:GetService("RunService")
        vu10:GetService("Workspace")
        local vu1145 = vu10:GetService("Players")
        local v1146 = vu10:GetService("Players")
        vu10:GetService("RunService")
        vu10:GetService("ContextActionService")
        local vu1147 = vu10:GetService("Workspace")
        local vu1148 = v1146.LocalPlayer
        local vu1149 = vu1144.Stepped
        local vu1150 = task.wait
        local vu1151 = 0
        local v1152 = v1142.Parent
        local vu1153 = v1152.mainfunctionofpage
        local vu1154 = vu1153.page.page.ScrollingFrame
        local vu1155 = vu1153.pageshow
        local vu1156 = vu1153.page.page.Value
        local vu1157 = v1152.mainbar
        local vu1158 = vu1157.mainbarfunction
        local vu1159 = v1152.Parent.Parent.vip
        local vu1160 = v1152.mainfunctionofpage.setting
        local function vu1163(p1161, p1162)
			-- upvalues: (ref) vu251, (ref) vu139
            if p1162 then
                p1161.MouseButton1Click:Connect(p1162)
                p1161.MouseButton1Click:Connect(function()
					-- upvalues: (ref) vu251, (ref) vu139
                    if vu251 then
                        vu139:Play()
                    end
                end)
            end
        end
        local function vu1174()
			-- upvalues: (ref) vu1155, (ref) vu1154, (ref) vu1143
            local v1164 = vu1155
            local v1165, v1166, v1167 = pairs(v1164:GetChildren())
            while true do
                local v1168
                v1167, v1168 = v1165(v1166, v1167)
                if v1167 == nil then
                    break
                end
                if v1168:IsA("Frame") then
                    v1168.LayoutOrder = 0
                end
            end
            local v1169 = vu1154
            local v1170, v1171, v1172 = pairs(v1169:GetChildren())
            while true do
                local v1173
                v1172, v1173 = v1170(v1171, v1172)
                if v1172 == nil then
                    break
                end
                if v1173:IsA("Frame") then
                    vu1143:Create(v1173.icon, TweenInfo.new(0.2), {
                        ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                    }):Play()
                end
            end
        end
        local vu1175 = nil
        function weldtp(p1176, p1177)
			-- upvalues: (ref) vu1175, (ref) vu1147, (ref) vu43, (ref) vu64, (ref) vu1149, (ref) vu7
            if not p1176 or (not p1176.Parent or (not p1176:IsA("BasePart") or p1176:IsGrounded())) then
                return nil
            end
            if not (vu1175 and vu1175.Parent and (vu1175:IsA("BasePart") and (vu1175:IsGrounded() and vu1175:IsDescendantOf(vu1147)))) then
                local v1178 = vu1147
                local v1179, v1180, v1181 = pairs(v1178:GetDescendants())
                while true do
                    local v1182
                    v1181, v1182 = v1179(v1180, v1181)
                    if v1181 == nil then
                        break
                    end
                    if v1182 and (v1182.Parent and (v1182:IsA("BasePart") and v1182:IsGrounded())) then
                        vu1175 = v1182
                        break
                    end
                end
            end
            if not vu1175 then
                vu1175 = vu43("Part", vu1147)
                vu1175.Anchored = true
                vu1175.Transparency = 1
                vu1175.CanCollide = false
                vu1175.Name = "weldtp part"
            end
            local vu1183 = vu43("Weld")
            vu1183.Name = vu64()
            vu1183.Part0 = p1176
            vu1183.C0 = p1177:Inverse()
            vu1183.Part1 = vu1175
            vu1183.C1 = vu1175.CFrame:Inverse()
            vu1183.Parent = vu1147
            vu1149:Wait()
            vu7(function()
				-- upvalues: (ref) vu1183
                vu1183:Destroy()
            end)
        end
        if vu70 then
            vu1157.mainbartitlemain.vip.Visible = true
        end
        local vu1184 = vu10:GetService("TweenService")
        local vu1185 = nil
        local vu1186 = nil
        local vu1187 = false
        local vu1188 = vu1147.Camera.FieldOfView
        local vu1189 = v1142.Parent.Parent
        local vu1190 = v1142.Parent.Parent.Parent.rochip
        local vu1191 = Instance.new("BlurEffect", vu1147.Camera)
        vu1191.Size = 0
        local vu1192 = UDim2.new(0.07, 0, 0.112, 0)
        function togglegui()
			-- upvalues: (ref) vu1190, (ref) vu1192, (ref) vu1185, (ref) vu1189, (ref) vu1186, (ref) vu102, (ref) vu1184, (ref) vu1187, (ref) vu1147, (ref) vu1188, (ref) vu1191
            if vu1190.Visible ~= false then
                vu1192 = vu1190.Position
                vu1189.Visible = true
                vu1190.Visible = false
                vu102["14"].Visible = true
                task.defer(function()
					-- upvalues: (ref) vu1184, (ref) vu1189, (ref) vu1185, (ref) vu1186, (ref) vu1187, (ref) vu1147, (ref) vu1191
                    local v1193 = {
                        ["Position"] = vu1185
                    }
                    local v1194 = vu1184:Create(vu1189, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), v1193)
                    local v1195 = {
                        ["Size"] = vu1186
                    }
                    local v1196 = vu1184:Create(vu1189, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), v1195)
                    v1194:Play()
                    v1196:Play()
                    v1196.Completed:Wait()
                    if vu1187 then
                        vu1184:Create(vu1147.Camera, TweenInfo.new(0.2), {
                            ["FieldOfView"] = 50
                        }):Play()
                        vu1184:Create(vu1191, TweenInfo.new(0.2), {
                            ["Size"] = 35
                        }):Play()
                    end
                end)
            else
                vu1192 = vu1190.Position
                vu1185 = vu1189.Position
                vu1186 = vu1189.Size
                task.defer(function()
					-- upvalues: (ref) vu102, (ref) vu1184, (ref) vu1189, (ref) vu1192, (ref) vu1190, (ref) vu1187, (ref) vu1147, (ref) vu1188, (ref) vu1191
                    vu102["14"].Visible = false
                    local v1197 = {
                        ["Position"] = vu1192
                    }
                    local v1198 = vu1184:Create(vu1189, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), v1197)
                    local v1199 = vu1184:Create(vu1189, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        ["Size"] = vu1190.Size
                    })
                    v1198:Play()
                    v1199:Play()
                    v1199.Completed:Wait()
                    vu1189.Visible = false
                    vu1190.Visible = true
                    if vu1187 then
                        local v1200 = {
                            ["FieldOfView"] = vu1188
                        }
                        vu1184:Create(vu1147.Camera, TweenInfo.new(0.2), v1200):Play()
                        vu1184:Create(vu1191, TweenInfo.new(0.2), {
                            ["Size"] = 0
                        }):Play()
                    end
                end)
            end
        end
        local vu1201 = vu10:GetService("UserInputService")
        function drag(pu1202, pu1203)
			-- upvalues: (ref) vu102, (ref) vu1143, (ref) vu1201
            task.spawn(function()
				-- upvalues: (ref) vu102, (ref) pu1202, (ref) vu1143, (ref) pu1203, (ref) vu1201
                local vu1204 = nil
                local vu1205 = nil
                local vu1206 = Vector3.new(0, 0, 0)
                local vu1207 = nil
                local function vu1214(p1208)
					-- upvalues: (ref) vu1206, (ref) vu1207, (ref) vu102, (ref) pu1202, (ref) vu1143, (ref) pu1203
                    local v1209 = p1208.Position - vu1206
                    local v1210 = UDim2.new(vu1207.X.Scale, vu1207.X.Offset + v1209.X, vu1207.Y.Scale, vu1207.Y.Offset + v1209.Y)
                    local v1211 = Vector2.new(v1210.X.Offset, v1210.Y.Offset)
                    local v1212 = math.clamp(v1211.X, 0, vu102["1"].AbsoluteSize.X - pu1202.AbsoluteSize.X)
                    local v1213 = math.clamp(v1211.Y, 0, vu102["1"].AbsoluteSize.Y - pu1202.AbsoluteSize.Y)
                    vu1143:Create(pu1203, TweenInfo.new(0.1), {
                        ["Position"] = UDim2.new(0, v1212, 0, v1213)
                    }):Play()
                end
                pu1202.InputBegan:Connect(function(pu1215)
					-- upvalues: (ref) vu1204, (ref) vu1206, (ref) vu1207, (ref) pu1203
                    if pu1215.UserInputType == Enum.UserInputType.MouseButton1 or pu1215.UserInputType == Enum.UserInputType.Touch then
                        vu1204 = true
                        vu1206 = pu1215.Position
                        vu1207 = pu1203.Position
                        pu1215.Changed:Connect(function()
							-- upvalues: (ref) pu1215, (ref) vu1204
                            if pu1215.UserInputState == Enum.UserInputState.End then
                                vu1204 = false
                            end
                        end)
                    end
                end)
                pu1202.InputChanged:Connect(function(p1216)
					-- upvalues: (ref) vu1205
                    if p1216.UserInputType == Enum.UserInputType.MouseMovement or p1216.UserInputType == Enum.UserInputType.Touch then
                        vu1205 = p1216
                    end
                end)
                vu1201.InputChanged:Connect(function(p1217)
					-- upvalues: (ref) vu1205, (ref) vu1204, (ref) vu1214
                    if p1217 == vu1205 and vu1204 then
                        vu1214(p1217)
                    end
                end)
            end)
        end
        drag(vu1190.ImageButton, vu1190)
        vu1190.ImageButton.MouseButton1Click:Connect(function()
            togglegui()
        end)
        vu1163(vu1158.mimimize, function()
            togglegui()
        end)
        local vu1218 = false
        local vu1219 = false
        local vu1220 = vu1160.Parent.market
        vu1163(vu1158.setting, function()
			-- upvalues: (ref) vu1218, (ref) vu1219, (ref) vu1158, (ref) vu1160, (ref) vu1220, (ref) vu1143, (ref) vu1156
            vu1218 = not vu1218
            vu1219 = false
            local v1221 = vu1158
            local v1222, v1223, v1224 = pairs(v1221:GetChildren())
            while true do
                local v1225
                v1224, v1225 = v1222(v1223, v1224)
                if v1224 == nil then
                    break
                end
                if v1225:IsA("ImageButton") then
                    v1225.ImageColor3 = Color3.new(255, 255, 255)
                end
            end
            vu1160.LayoutOrder = vu1218 and - 1 or 5
            vu1220.LayoutOrder = vu1219 and - 1 or 5
            vu1143:Create(vu1158.setting, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1218 and vu1156.Value or Color3.new(255, 255, 255)
            }):Play()
        end)
        vu1163(vu1158.market, function()
			-- upvalues: (ref) vu1218, (ref) vu1219, (ref) vu1158, (ref) vu1160, (ref) vu1220, (ref) vu1143, (ref) vu1156
            vu1218 = false
            vu1219 = not vu1219
            local v1226 = vu1158
            local v1227, v1228, v1229 = pairs(v1226:GetChildren())
            while true do
                local v1230
                v1229, v1230 = v1227(v1228, v1229)
                if v1229 == nil then
                    break
                end
                if v1230:IsA("ImageButton") then
                    v1230.ImageColor3 = Color3.new(255, 255, 255)
                end
            end
            vu1160.LayoutOrder = vu1218 and - 1 or 5
            vu1220.LayoutOrder = vu1219 and - 1 or 5
            vu1143:Create(vu1158.setting, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1218 and vu1156.Value or Color3.new(255, 255, 255)
            }):Play()
            vu1143:Create(vu1158.market, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1219 and vu1156.Value or Color3.new(255, 255, 255)
            }):Play()
        end);
        (function(p1231, p1232, p1233)
			-- upvalues: (ref) vu1220, (ref) vu11, (ref) vu1163, (ref) vu70, (ref) vu1148, (ref) vu109
            local v1234 = p1231 or "nil"
            local v1235 = vu1220.ScrollingFrame.sample:Clone()
            v1235.Name = v1234
            v1235.Visible = true
            v1235.Parent = vu1220.ScrollingFrame
            v1235.title.Text = v1234
            v1235.icon.Image = p1233 or v1235.icon.Image
            v1235.button.Text = p1232 or "uknown"
            local vu1236 = vu11:GetService("TeleportService")
            vu1163(v1235.button, function()
				-- upvalues: (ref) vu70, (ref) vu1220, (ref) vu1163, (ref) vu1236, (ref) vu1148, (ref) vu109
                if not vu70 then
                    vu1220.notif.Visible = true
                    vu1163(vu1220.notif.Frame.buy, function()
						-- upvalues: (ref) vu1220, (ref) vu1236, (ref) vu1148, (ref) vu109
                        vu1220.notif.Frame.buy.Text = "Teleporting..."
                        vu1236:Teleport(92470075523093, vu1148)
                        wait(6)
                        if setclipboard then
                            setclipboard("https://www.roblox.com/games/92470075523093/sreyub-piv-spihcoR")
                            vu109("error!, link to game is copied", 1)
                        end
                    end)
                    vu1163(vu1220.notif.Frame.no, function()
						-- upvalues: (ref) vu1220
                        vu1220.notif.Visible = false
                    end)
                end
            end)
        end)("vip", vu70 and "purchased" or "130 robux")
        local vu1237 = Color3.new(1, 0.917647, 0.0117647)
        local v1238 = {}
        local vu1239 = vu1155.Folder
        function v1238.set(_)
			-- upvalues: (ref) vu1160, (ref) vu1239, (ref) vu1237, (ref) vu1163, (ref) vu70, (ref) vu103, (ref) vu1143, (ref) vu1156, (ref) vu1150, (ref) vu7
            local v1240 = {}
            local vu1241 = vu1160.ScrollingFrame
            vu1241.AutomaticCanvasSize = Enum.AutomaticSize.Y
            function v1240.button(_, p1242, pu1243, p1244)
				-- upvalues: (ref) vu1239, (ref) vu1241, (ref) vu1237, (ref) vu1163, (ref) vu70, (ref) vu103, (ref) vu1143, (ref) vu1156, (ref) vu1150, (ref) vu7
                local vu1245 = p1244 or false
                local vu1246 = vu1239.button:Clone()
                vu1246.Parent = vu1241
                vu1246.Name = p1242
                vu1246.Visible = true
                vu1246.TextButton.Text = p1242
                if vu1245 then
                    vu1246.TextButton.TextColor3 = vu1237
                end
                vu1163(vu1246.TextButton, function()
					-- upvalues: (ref) vu1245, (ref) vu70, (ref) vu103, (ref) vu1143, (ref) vu1246, (ref) vu1156, (ref) vu1150, (ref) pu1243, (ref) vu7
                    if vu1245 and vu70 == false then
                        return vu103()
                    end
                    vu1143:Create(vu1246.ImageLabel, TweenInfo.new(0.2), {
                        ["ImageColor3"] = vu1156.Value
                    }):Play()
                    vu1150(0.1)
                    vu1143:Create(vu1246.ImageLabel, TweenInfo.new(0.2), {
                        ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                    }):Play()
                    if pu1243 then
                        vu7(pu1243)
                    end
                end)
                return vu1246
            end
            local vu1254 = {
                ["box"] = function(_, p1247, p1248, pu1249, p1250)
					-- upvalues: (ref) vu1239, (ref) vu1241, (ref) vu1254, (ref) vu1237, (ref) vu70, (ref) vu103, (ref) vu1143, (ref) vu1156, (ref) vu1150
                    local vu1251 = p1250 or false
                    local vu1252 = vu1239.textbox:Clone()
                    vu1252.Parent = vu1241
                    vu1254.Visible = true
                    vu1252.Name = p1247
                    vu1252.TextBox.PlaceholderText = p1248
                    vu1252.TextLabel.Text = p1247
                    vu1252.Visible = true
                    if vu1251 then
                        vu1252.TextLabel.TextColor3 = vu1237
                    end
                    vu1252.TextBox.FocusLost:Connect(function()
						-- upvalues: (ref) vu1251, (ref) vu70, (ref) vu103, (ref) vu1252, (ref) pu1249, (ref) vu1143, (ref) vu1156, (ref) vu1150
                        if vu1251 and vu70 == false then
                            return vu103()
                        end
                        local v1253 = vu1252.TextBox.Text
                        if pu1249 then
                            pu1249(v1253)
                        end
                        vu1143:Create(vu1252.ImageLabel, TweenInfo.new(0.2), {
                            ["ImageColor3"] = vu1156.Value
                        }):Play()
                        vu1150(0.1)
                        vu1143:Create(vu1252.ImageLabel, TweenInfo.new(0.2), {
                            ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                        }):Play()
                    end)
                    return vu1252
                end
            }
            return {
                ["btn"] = v1240,
                ["bx"] = vu1254,
                ["label"] = {
                    ["label"] = function(_, p1255)
						-- upvalues: (ref) vu1239, (ref) vu1241
                        local v1256 = vu1239.TextLabel:Clone()
                        v1256.Parent = vu1241
                        v1256.Name = p1255
                        v1256.Text = p1255
                        v1256.Visible = true
                        return v1256
                    end
                },
                ["tgg"] = {
                    ["toggle"] = function(_, p1257, p1258, pu1259, p1260)
						-- upvalues: (ref) vu1239, (ref) vu1241, (ref) vu1237, (ref) vu1143, (ref) vu1163, (ref) vu70, (ref) vu103, (ref) vu7, (ref) vu1156, (ref) vu1150
                        local vu1261 = p1260 or false
                        local vu1262 = vu1239.toggle:Clone()
                        vu1262.Parent = vu1241
                        vu1262.Name = p1257
                        vu1262.TextLabel.Text = p1257
                        vu1262.Visible = true
                        local vu1263 = false
                        if vu1261 then
                            vu1262.TextLabel.TextColor3 = vu1237
                        end
                        if p1258 then
                            vu1263 = true
                            vu1143:Create(vu1262.handle.btn, TweenInfo.new(0.2), {
                                ["BackgroundColor3"] = vu1263 and Color3.fromRGB(13, 255, 0) or Color3.fromRGB(255, 0, 4)
                            }):Play()
                            vu1143:Create(vu1262.handle.btn, TweenInfo.new(0.2), {
                                ["Position"] = vu1263 and UDim2.new(0.6, 0, 0, 0) or UDim2.new(0, 0, 0, 0)
                            }):Play()
                        end
                        vu1163(vu1262.handle.btn, function()
							-- upvalues: (ref) vu1261, (ref) vu70, (ref) vu103, (ref) vu1263, (ref) vu1143, (ref) vu1262, (ref) pu1259, (ref) vu7, (ref) vu1156, (ref) vu1150
                            if vu1261 and vu70 == false then
                                return vu103()
                            end
                            vu1263 = not vu1263
                            vu1143:Create(vu1262.handle.btn, TweenInfo.new(0.2), {
                                ["BackgroundColor3"] = vu1263 and Color3.fromRGB(13, 255, 0) or Color3.fromRGB(255, 0, 4)
                            }):Play()
                            vu1143:Create(vu1262.handle.btn, TweenInfo.new(0.2), {
                                ["Position"] = vu1263 and UDim2.new(0.6, 0, 0, 0) or UDim2.new(0, 0, 0, 0)
                            }):Play()
                            if pu1259 then
                                vu7(function()
									-- upvalues: (ref) pu1259, (ref) vu1263
                                    pu1259(vu1263)
                                end)
                            end
                            vu1143:Create(vu1262.ImageLabel, TweenInfo.new(0.2), {
                                ["ImageColor3"] = vu1156.Value
                            }):Play()
                            vu1150(0.1)
                            vu1143:Create(vu1262.ImageLabel, TweenInfo.new(0.2), {
                                ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                            }):Play()
                        end)
                        return vu1262
                    end
                },
                ["drop"] = {
                    ["dropdown"] = function(_, p1264, p1265, p1266, pu1267, p1268)
						-- upvalues: (ref) vu1239, (ref) vu1241, (ref) vu1237, (ref) vu70, (ref) vu103, (ref) vu7, (ref) vu1143, (ref) vu1156, (ref) vu1150, (ref) vu1163
                        local vu1269 = p1268 or false
                        local vu1270 = vu1239.dropdown:Clone()
                        vu1270.Visible = true
                        vu1270.Parent = vu1241
                        local vu1271 = vu1270.drop.dropframe
                        vu1270.TextLabel.Text = p1264
                        vu1270.ZIndex = 70
                        vu1270.drop.Text = p1265 or "error"
                        if vu1269 then
                            vu1270.TextLabel.TextColor3 = vu1237
                        end
                        local v1272, v1273, v1274 = pairs(p1266)
                        local vu1275 = false
                        local vu1276 = nil
                        while true do
                            local vu1277
                            v1274, vu1277 = v1272(v1273, v1274)
                            if v1274 == nil then
                                break
                            end
                            local v1278 = vu1271.samplebtn:Clone()
                            v1278.Parent = vu1271
                            v1278.Text = vu1277
                            v1278.Visible = true
                            v1278.MouseButton1Click:Connect(function()
								-- upvalues: (ref) vu1269, (ref) vu70, (ref) vu103, (ref) vu1276, (ref) vu1277, (ref) vu1270, (ref) vu1275, (ref) vu1271, (ref) pu1267, (ref) vu7, (ref) vu1143, (ref) vu1156, (ref) vu1150
                                if vu1269 and vu70 == false then
                                    return vu103()
                                end
                                vu1276 = vu1277
                                vu1270.drop.Text = vu1277
                                vu1275 = false
                                vu1271.Visible = false
                                if pu1267 then
                                    vu7(function()
										-- upvalues: (ref) pu1267, (ref) vu1276
                                        pu1267(vu1276)
                                    end)
                                end
                                vu1143:Create(vu1270.ImageLabel, TweenInfo.new(0.2), {
                                    ["ImageColor3"] = vu1156.Value
                                }):Play()
                                vu1150(0.1)
                                vu1143:Create(vu1270.ImageLabel, TweenInfo.new(0.2), {
                                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                                }):Play()
                            end)
                        end
                        vu1163(vu1270.drop, function()
							-- upvalues: (ref) vu1275, (ref) vu1271
                            vu1275 = not vu1275
                            vu1271.Visible = not vu1271.Visible
                        end)
                    end
                }
            }
        end
        local v1279 = v1238:set()
        v1279.drop:dropdown("page position", vu259, {
            "right",
            "left"
        }, function(p1280)
			-- upvalues: (ref) vu1153
            if p1280 == "right" then
                vu1153.pageshow.LayoutOrder = 3
                if writefile then
                    writefile("rochips/pagepos", "right")
                end
            else
                vu1153.pageshow.LayoutOrder = 1
                if writefile then
                    writefile("rochips/pagepos", "left")
                end
            end
        end)
        v1279.tgg:toggle("onfocus mode", false, function(p1281)
			-- upvalues: (ref) vu1187, (ref) vu1143, (ref) vu1147, (ref) vu1188, (ref) vu1191
            vu1187 = p1281
            local v1282 = {
                ["FieldOfView"] = p1281 and 50 or vu1188
            }
            vu1143:Create(vu1147.Camera, TweenInfo.new(0.2), v1282):Play()
            vu1143:Create(vu1191, TweenInfo.new(0.2), {
                ["Size"] = p1281 and 35 or 0
            }):Play()
        end)
        local vu1283 = vu70
        v1279.tgg:toggle("vip mode", vu70, function(p1284)
			-- upvalues: (ref) vu1283, (ref) vu103, (ref) vu70, (ref) vu102, (ref) vu1237, (ref) vu1157, (ref) vu109
            if vu1283 == false then
                return vu103()
            end
            vu70 = p1284
            vu102["1dc"].Value = vu70 and vu1237 or Color3.fromRGB(2, 222, 255)
            vu102["4d"].Value = vu70 and vu1237 or Color3.fromRGB(0, 252, 255)
            vu1157.mainbartitlemain.vip.Visible = p1284
            vu109("vip has been set to " .. tostring(vu70), 2, 0.5)
        end)
        v1279.tgg:toggle("3d mode", false, function(p1285)
			-- upvalues: (ref) vu102, (ref) vu95, (ref) vu96, (ref) vu49
            vu102["2"].Parent = p1285 and vu95 or vu102["1"]
            vu102["26b"].Parent = p1285 and vu95 or vu102["1"]
            vu96 = p1285 and CFrame.new(0, 0, - 4.7) or CFrame.new(0, 0, 5)
            vu49 = p1285
        end)
        v1279.tgg:toggle("auto save size", vu50, function(p1286)
			-- upvalues: (ref) vu50, (ref) vu33, (ref) vu32
            vu50 = p1286
            if vu50 == false and (vu33 and vu32("rochips/size")) then
                vu33("rochips/size")
            end
        end)
        v1279.tgg:toggle("rochips sound effect", vu251, function(p1287)
			-- upvalues: (ref) vu251
            vu251 = p1287
            writefile("rochips/soundeffect", p1287 and "L" or "W")
        end)
        v1279.drop:dropdown("theme", "gray", {
            "gray",
            "black",
            "white",
            "red"
        }, function(p1288)
			-- upvalues: (ref) vu102, (ref) vu3
            if p1288 == "gray" then
                vu102["4"].BackgroundColor3 = vu3
                vu102["2"].BackgroundColor3 = vu3
                if writefile then
                    writefile("rochips/color3", "167, 167, 167")
                end
            elseif p1288 == "black" then
                vu102["4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                vu102["2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                if writefile then
                    writefile("rochips/color3", "0, 0, 0")
                end
            elseif p1288 == "white" then
                vu102["4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                vu102["2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                if writefile then
                    writefile("rochips/color3", "255, 255, 255")
                end
            elseif p1288 == "red" then
                vu102["4"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                vu102["2"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                if writefile then
                    writefile("rochips/color3", "255, 0, 0")
                end
            end
        end, true)
        local vu1289, vu1290, vu1291, vu1292, vu1293
        if isfolder("d_android_script_dir") then
            local v1294 = vu16
            local v1295, v1296, v1297 = pairs(v1294:GetDescendants())
            vu1289 = vu1155
            vu1290 = vu1147
            vu1291 = vu1154
            vu1292 = vu1143
            vu1293 = vu1149
            while true do
                local v1298, v1299 = v1295(v1296, v1297)
                if v1298 == nil then
                    break
                end
                v1297 = v1298
                if v1299:FindFirstChild("Executor") and (v1299:FindFirstChild("Sidebar") and (v1299:FindFirstChild("Settings") and v1299:FindFirstChild("DarkOverlay"))) then
                    local v1300 = vu16
                    local v1301, v1302, v1303 = pairs(v1300:GetDescendants())
                    while true do
                        local v1304, vu1305 = v1301(v1302, v1303)
                        if v1304 == nil then
                            break
                        end
                        v1303 = v1304
                        if vu1305.DataCost == 22 and vu1305:FindFirstChild("ImageButton") then
                            v1279.tgg:toggle("show delta", true, function(p1306)
								-- upvalues: (ref) vu1305
                                vu1305.Enabled = p1306
                            end)
                        end
                    end
                end
            end
        else
            vu1293 = vu1149
            vu1289 = vu1155
            vu1290 = vu1147
            vu1291 = vu1154
            vu1292 = vu1143
        end
        v1279.label:label("physics")
        local v1307, v1308, v1309 = ipairs({
            "AllowSleep",
            "AreOwnersShown",
            "AreAnchorsShown",
            "AreNonAnchorsShown",
            "AreAssembliesShown",
            "AreAwakePartsHighlighted",
            "AreBodyTypesShown",
            "AreContactIslandsShown",
            "AreContactPointsShown",
            "AreJointCoordinatesShown",
            "AreRegionsShown"
        })
        while true do
            local vu1310
            v1309, vu1310 = v1307(v1308, v1309)
            if v1309 == nil then
                break
            end
            v1279.tgg:toggle(vu1310, settings().Physics[vu1310], function(p1311)
				-- upvalues: (ref) vu1310
                settings().Physics[vu1310] = p1311
            end)
        end
        vu1163(vu1159.Frame.bar.exit, function()
			-- upvalues: (ref) vu1292, (ref) vu1159
            vu1292:Create(vu1159, TweenInfo.new(0.2), {
                ["Position"] = UDim2.new(0.5, 0, 1.853, 0)
            }):Play()
        end)
        vu1163(vu1159.Frame.bar.discord, function()
			-- upvalues: (ref) vu109
            if setclipboard then
                vu109("discord invite Copied to clipboard!", 2)
            else
                vu109("ur executor doesn\'t support setclipboard!", 1)
            end
        end)
        local v1312, v1313, v1314 = pairs(vu1291:GetChildren())
        while true do
            local v1315, vu1316 = v1312(v1313, v1314)
            if v1315 == nil then
                break
            end
            v1314 = v1315
            if vu1316:IsA("GuiObject") then
                vu1316.MouseEnter:Connect(function()
					-- upvalues: (ref) vu1291, (ref) vu1292, (ref) vu1316
                    local v1317 = vu1291
                    local v1318, v1319, v1320 = pairs(v1317:GetChildren())
                    while true do
                        local v1321
                        v1320, v1321 = v1318(v1319, v1320)
                        if v1320 == nil then
                            break
                        end
                        if v1321:IsA("GuiObject") and v1321.Size == UDim2.new(1, 0, 0, 29) then
                            vu1292:Create(v1321, TweenInfo.new(0.5), {
                                ["Size"] = UDim2.new(1, 0, 0, 19)
                            }):Play()
                        end
                    end
                    vu1292:Create(vu1316, TweenInfo.new(0.5), {
                        ["Size"] = UDim2.new(1, 0, 0, 29)
                    }):Play()
                end)
                vu1316.MouseLeave:Connect(function()
					-- upvalues: (ref) vu1292, (ref) vu1316
                    vu1292:Create(vu1316, TweenInfo.new(0.5), {
                        ["Size"] = UDim2.new(1, 0, 0, 19)
                    }):Play()
                end)
            end
        end
        vu1291.ChildAdded:Connect(function(pu1322)
			-- upvalues: (ref) vu1291, (ref) vu1292
            if pu1322:IsA("GuiObject") then
                pu1322.MouseEnter:Connect(function()
					-- upvalues: (ref) vu1291, (ref) vu1292, (ref) pu1322
                    local v1323 = vu1291
                    local v1324, v1325, v1326 = pairs(v1323:GetChildren())
                    while true do
                        local v1327
                        v1326, v1327 = v1324(v1325, v1326)
                        if v1326 == nil then
                            break
                        end
                        if v1327:IsA("GuiObject") and v1327.Size == UDim2.new(1, 0, 0, 29) then
                            vu1292:Create(v1327, TweenInfo.new(0.5), {
                                ["Size"] = UDim2.new(1, 0, 0, 19)
                            }):Play()
                        end
                    end
                    vu1292:Create(pu1322, TweenInfo.new(0.5), {
                        ["Size"] = UDim2.new(1, 0, 0, 29)
                    }):Play()
                end)
                pu1322.MouseLeave:Connect(function()
					-- upvalues: (ref) vu1292, (ref) pu1322
                    vu1292:Create(pu1322, TweenInfo.new(0.5), {
                        ["Size"] = UDim2.new(1, 0, 0, 19)
                    }):Play()
                end)
            end
        end)
        vu1163(vu1291.homepagebutton.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.home, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.homepagebutton.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.userspagebutton.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.users, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.userspagebutton.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.localplayerspage.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.localplayer, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.localplayerspage.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.keyboard.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.keyboard, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.keyboard.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.keyboard.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.keyboard, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.keyboard.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.playerspagebutton.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.players, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.playerspagebutton.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.animationpage.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.animation, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.animationpage.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.emotepage.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.emote, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.emotepage.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        vu1163(vu1291.chatlogpage.textname, function()
			-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1289, (ref) vu1151, (ref) vu1291, (ref) vu1156
            vu1174()
            vu1292:Create(vu1289.chatlog, TweenInfo.new(vu1151), {
                ["LayoutOrder"] = - 1
            }):Play()
            vu1292:Create(vu1291.chatlogpage.icon, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
        end)
        function search_(p1328, p1329, p1330)
            local v1331 = p1330 or "Frame"
            local v1332 = (p1329 or "nil"):lower()
            if v1332 == "" then
                local v1333 = p1328:GetChildren()
                local v1334, v1335, v1336 = pairs(v1333)
                while true do
                    local v1337
                    v1336, v1337 = v1334(v1335, v1336)
                    if v1336 == nil then
                        break
                    end
                    if v1337:IsA(v1331) then
                        v1337.Visible = true
                    end
                end
            else
                local v1338 = p1328:GetChildren()
                local v1339, v1340, v1341 = pairs(v1338)
                while true do
                    local v1342
                    v1341, v1342 = v1339(v1340, v1341)
                    if v1341 == nil then
                        break
                    end
                    if v1342:IsA(v1331) then
                        local v1343 = v1342.Name:lower()
                        if string.find(v1343, v1332) then
                            v1342.Visible = true
                        else
                            v1342.Visible = false
                        end
                    end
                end
            end
        end
        vu1163(vu102["54"].searchbutton, function()
			-- upvalues: (ref) vu1291, (ref) vu102, (ref) vu1292, (ref) vu1156, (ref) vu1150
            search_(vu1291, vu102["54"].sarchpagebox.Text, "Frame")
            vu1292:Create(vu102["54"].searchbutton, TweenInfo.new(0.2), {
                ["ImageColor3"] = vu1156.Value
            }):Play()
            vu1150(0.1)
            vu1292:Create(vu102["54"].searchbutton, TweenInfo.new(0.2), {
                ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
            }):Play()
        end)
        local vu1344 = Color3.new(1, 0.917647, 0.0117647)
        local v1345 = {}
        local vu1346 = vu1289.Folder
        function v1345.page(_, p1347, p1348)
			-- upvalues: (ref) vu1291, (ref) vu1289, (ref) vu1163, (ref) vu1174, (ref) vu1292, (ref) vu1151, (ref) vu1156, (ref) vu1150, (ref) vu1346, (ref) vu1344, (ref) vu70, (ref) vu103, (ref) vu7
            local v1349 = p1347 or "error"
            local vu1350 = vu1291.Parent.sample:Clone()
            vu1350.Parent = vu1291
            vu1350.Name = v1349
            vu1350.icon.Image = p1348 or vu1350.icon.Image
            vu1350.textname.Text = v1349
            vu1350.Visible = true
            local vu1351 = vu1289.sample:Clone()
            vu1351.Name = v1349
            vu1351.Parent = vu1289
            vu1351.Visible = true
            local vu1352 = vu1351.samplefun.ScrollingFrame
            vu1163(vu1350.textname, function()
				-- upvalues: (ref) vu1174, (ref) vu1292, (ref) vu1351, (ref) vu1151, (ref) vu1350, (ref) vu1156
                vu1174()
                vu1292:Create(vu1351, TweenInfo.new(vu1151), {
                    ["LayoutOrder"] = - 1
                }):Play()
                vu1292:Create(vu1350.icon, TweenInfo.new(0.2), {
                    ["ImageColor3"] = vu1156.Value
                }):Play()
            end)
            vu1163(vu1351.search.ImageButton, function()
				-- upvalues: (ref) vu1352, (ref) vu1351, (ref) vu1292, (ref) vu1156, (ref) vu1150
                search_(vu1352, vu1351.search.TextBox.Text, "Frame")
                vu1292:Create(vu1351.search.ImageButton, TweenInfo.new(0.2), {
                    ["ImageColor3"] = vu1156.Value
                }):Play()
                vu1150(0.1)
                vu1292:Create(vu1351.search.ImageButton, TweenInfo.new(0.2), {
                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                }):Play()
            end)
            local v1358 = {
                ["button"] = function(_, p1353, pu1354, p1355)
					-- upvalues: (ref) vu1346, (ref) vu1352, (ref) vu1344, (ref) vu1163, (ref) vu70, (ref) vu103, (ref) vu1292, (ref) vu1156, (ref) vu1150, (ref) vu7
                    local vu1356 = p1355 or false
                    local vu1357 = vu1346.button:Clone()
                    vu1357.Parent = vu1352
                    vu1357.Name = p1353
                    vu1357.Visible = true
                    vu1357.TextButton.Text = p1353
                    if vu1356 then
                        vu1357.TextButton.TextColor3 = vu1344
                    end
                    vu1163(vu1357.TextButton, function()
						-- upvalues: (ref) vu1356, (ref) vu70, (ref) vu103, (ref) vu1292, (ref) vu1357, (ref) vu1156, (ref) vu1150, (ref) pu1354, (ref) vu7
                        if vu1356 and vu70 == false then
                            return vu103()
                        end
                        vu1292:Create(vu1357.ImageLabel, TweenInfo.new(0.2), {
                            ["ImageColor3"] = vu1156.Value
                        }):Play()
                        vu1150(0.1)
                        vu1292:Create(vu1357.ImageLabel, TweenInfo.new(0.2), {
                            ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                        }):Play()
                        if pu1354 then
                            vu7(pu1354)
                        end
                    end)
                    return vu1357
                end
            }
            local vu1366 = {
                ["box"] = function(_, p1359, p1360, pu1361, p1362)
					-- upvalues: (ref) vu1346, (ref) vu1352, (ref) vu1366, (ref) vu1344, (ref) vu70, (ref) vu103, (ref) vu1292, (ref) vu1156, (ref) vu1150
                    local vu1363 = p1362 or false
                    local vu1364 = vu1346.textbox:Clone()
                    vu1364.Parent = vu1352
                    vu1366.Visible = true
                    vu1364.Name = p1359
                    vu1364.TextBox.PlaceholderText = p1360
                    vu1364.TextLabel.Text = p1359
                    vu1364.Visible = true
                    if vu1363 then
                        vu1364.TextLabel.TextColor3 = vu1344
                    end
                    vu1364.TextBox.FocusLost:Connect(function()
						-- upvalues: (ref) vu1363, (ref) vu70, (ref) vu103, (ref) vu1364, (ref) pu1361, (ref) vu1292, (ref) vu1156, (ref) vu1150
                        if vu1363 and vu70 == false then
                            return vu103()
                        end
                        local v1365 = vu1364.TextBox.Text
                        if pu1361 then
                            pu1361(v1365)
                        end
                        vu1292:Create(vu1364.ImageLabel, TweenInfo.new(0.2), {
                            ["ImageColor3"] = vu1156.Value
                        }):Play()
                        vu1150(0.1)
                        vu1292:Create(vu1364.ImageLabel, TweenInfo.new(0.2), {
                            ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                        }):Play()
                    end)
                    return vu1364
                end
            }
            return {
                ["btn"] = v1358,
                ["bx"] = vu1366,
                ["label"] = {
                    ["label"] = function(_, p1367)
						-- upvalues: (ref) vu1346, (ref) vu1352
                        local v1368 = vu1346.TextLabel:Clone()
                        v1368.Parent = vu1352
                        v1368.Name = p1367
                        v1368.Text = p1367
                        v1368.Visible = true
                        return v1368
                    end
                },
                ["tgg"] = {
                    ["toggle"] = function(_, p1369, pu1370, p1371, p1372)
						-- upvalues: (ref) vu1346, (ref) vu1352, (ref) vu1344, (ref) vu1163, (ref) vu70, (ref) vu103, (ref) vu1292, (ref) vu7, (ref) vu1156, (ref) vu1150
                        local v1373 = p1372 or false
                        local vu1374 = p1371 or false
                        local vu1375 = vu1346.toggle:Clone()
                        vu1375.Parent = vu1352
                        vu1375.Name = p1369
                        vu1375.TextLabel.Text = p1369
                        vu1375.Visible = true
                        local vu1376 = v1373
                        if vu1374 then
                            vu1375.TextLabel.TextColor3 = vu1344
                        end
                        if v1373 then
                            vu1375.handle.btn.BackgroundColor3 = Color3.fromRGB(13, 255, 0)
                            vu1375.handle.btn.Position = UDim2.new(0.6, 0, 0, 0)
                        end
                        vu1163(vu1375.handle.btn, function()
							-- upvalues: (ref) vu1374, (ref) vu70, (ref) vu103, (ref) vu1376, (ref) vu1292, (ref) vu1375, (ref) pu1370, (ref) vu7, (ref) vu1156, (ref) vu1150
                            if vu1374 and vu70 == false then
                                return vu103()
                            end
                            vu1376 = not vu1376
                            vu1292:Create(vu1375.handle.btn, TweenInfo.new(0.2), {
                                ["BackgroundColor3"] = vu1376 and Color3.fromRGB(13, 255, 0) or Color3.fromRGB(255, 0, 4)
                            }):Play()
                            vu1292:Create(vu1375.handle.btn, TweenInfo.new(0.2), {
                                ["Position"] = vu1376 and UDim2.new(0.6, 0, 0, 0) or UDim2.new(0, 0, 0, 0)
                            }):Play()
                            if pu1370 then
                                vu7(function()
									-- upvalues: (ref) pu1370, (ref) vu1376
                                    pu1370(vu1376)
                                end)
                            end
                            vu1292:Create(vu1375.ImageLabel, TweenInfo.new(0.2), {
                                ["ImageColor3"] = vu1156.Value
                            }):Play()
                            vu1150(0.1)
                            vu1292:Create(vu1375.ImageLabel, TweenInfo.new(0.2), {
                                ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                            }):Play()
                        end)
                        return vu1375
                    end
                },
                ["drop"] = {
                    ["dropdown"] = function(_, p1377, p1378, p1379, pu1380, p1381)
						-- upvalues: (ref) vu1346, (ref) vu1352, (ref) vu1344, (ref) vu70, (ref) vu103, (ref) vu7, (ref) vu1292, (ref) vu1156, (ref) vu1150, (ref) vu1163
                        local vu1382 = p1381 or false
                        local vu1383 = vu1346.dropdown:Clone()
                        vu1383.Visible = true
                        vu1383.Parent = vu1352
                        local vu1384 = vu1383.drop.dropframe
                        vu1383.TextLabel.Text = p1377
                        vu1383.ZIndex = 70
                        vu1383.drop.Text = p1378 or "error"
                        if vu1382 then
                            vu1383.TextLabel.TextColor3 = vu1344
                        end
                        local v1385, v1386, v1387 = pairs(p1379)
                        local vu1388 = nil
                        local vu1389 = false
                        while true do
                            local vu1390
                            v1387, vu1390 = v1385(v1386, v1387)
                            if v1387 == nil then
                                break
                            end
                            local v1391 = vu1384.samplebtn:Clone()
                            v1391.Parent = vu1384
                            v1391.Text = vu1390
                            v1391.Visible = true
                            v1391.MouseButton1Click:Connect(function()
								-- upvalues: (ref) vu1382, (ref) vu70, (ref) vu103, (ref) vu1388, (ref) vu1390, (ref) vu1383, (ref) vu1389, (ref) vu1384, (ref) pu1380, (ref) vu7, (ref) vu1292, (ref) vu1156, (ref) vu1150
                                if vu1382 and vu70 == false then
                                    return vu103()
                                end
                                vu1388 = vu1390
                                vu1383.drop.Text = vu1390
                                vu1389 = false
                                vu1384.Visible = false
                                if pu1380 then
                                    vu7(function()
										-- upvalues: (ref) pu1380, (ref) vu1388
                                        pu1380(vu1388)
                                    end)
                                end
                                vu1292:Create(vu1383.ImageLabel, TweenInfo.new(0.2), {
                                    ["ImageColor3"] = vu1156.Value
                                }):Play()
                                vu1150(0.1)
                                vu1292:Create(vu1383.ImageLabel, TweenInfo.new(0.2), {
                                    ["ImageColor3"] = Color3.fromRGB(255, 255, 255)
                                }):Play()
                            end)
                        end
                        vu1163(vu1383.drop, function()
							-- upvalues: (ref) vu1389, (ref) vu1384
                            vu1389 = not vu1389
                            vu1384.Visible = not vu1384.Visible
                        end)
                    end
                }
            }
        end
        local v1392 = v1345:page("StarterGui")
        v1392.label:label("startergui function")
        local vu1393 = {
            ["BackPack"] = Enum.CoreGuiType.Backpack,
            ["PlayerList"] = Enum.CoreGuiType.PlayerList,
            ["EmotesMenu"] = Enum.CoreGuiType.EmotesMenu,
            ["Health"] = Enum.CoreGuiType.Health,
            ["Chat"] = Enum.CoreGuiType.Chat,
            ["All"] = Enum.CoreGuiType.All,
            ["Captures"] = Enum.CoreGuiType.Captures
        }
        local v1394, v1395, v1396 = ipairs(Enum.CoreGuiType:GetEnumItems())
        while true do
            local v1397
            v1396, v1397 = v1394(v1395, v1396)
            if v1396 == nil then
                break
            end
            vu1393[v1397.Name:lower()] = v1397
        end
        local v1398, v1399, v1400 = pairs({
            "BackPack",
            "PlayerList",
            "EmotesMenu",
            "Health",
            "Chat",
            "All",
            "Captures"
        })
        while true do
            local vu1401
            v1400, vu1401 = v1398(v1399, v1400)
            if v1400 == nil then
                break
            end
            v1392.tgg:toggle(vu1401, function(p1402)
				-- upvalues: (ref) vu1393, (ref) vu1401, (ref) vu25
                local v1403 = vu1393[vu1401]
                if v1403 then
                    vu25:SetCoreGuiEnabled(v1403, p1402)
                end
            end, false, true)
        end
        local v1404 = v1345:page("replay", "http://www.roblox.com/asset/?id=9266631404")
        v1404.label:label("beta character replay")
        local vu1405 = vu10:GetService("TextChatService")
        local vu1406 = false
        local vu1407 = false
        local vu1408 = false
        local vu1409 = vu1148.DisplayName
        local vu1410 = {}
        local vu1411 = {}
        local vu1412 = {}
        local vu1413 = {}
        local vu1414 = nil
        local vu1415 = 25
        local function vu1418()
			-- upvalues: (ref) vu1148, (ref) vu1406, (ref) vu1412
            vu1148.Character.ChildAdded:Connect(function(p1416)
				-- upvalues: (ref) vu1406, (ref) vu1412
                if vu1406 and p1416:IsA("Tool") then
                    table.insert(vu1412, {
                        ["time"] = tick(),
                        ["tool"] = p1416.Name,
                        ["action"] = "equip"
                    })
                end
            end)
            vu1148.Character.ChildRemoved:Connect(function(p1417)
				-- upvalues: (ref) vu1406, (ref) vu1412
                if vu1406 and p1417:IsA("Tool") then
                    table.insert(vu1412, {
                        ["time"] = tick(),
                        ["tool"] = p1417.Name,
                        ["action"] = "unequip"
                    })
                end
            end)
        end
        local function vu1420()
			-- upvalues: (ref) vu1405, (ref) vu1406, (ref) vu1148, (ref) vu1413
            function vu1405.OnIncomingMessage(p1419)
				-- upvalues: (ref) vu1406, (ref) vu1148, (ref) vu1413
                if vu1406 and p1419.TextSource.UserId == vu1148.UserId then
                    table.insert(vu1413, {
                        ["time"] = tick(),
                        ["text"] = p1419.Text,
                        ["played"] = false
                    })
                end
            end
        end
        function srt()
			-- upvalues: (ref) vu1406, (ref) vu1410, (ref) vu1411, (ref) vu1412, (ref) vu1413, (ref) vu1148, (ref) vu1418, (ref) vu1420, (ref) vu1415
            vu1406 = true
            vu1410 = {}
            vu1411 = {}
            vu1412 = {}
            vu1413 = {}
            local v1421 = vu1148.Character:WaitForChild("Humanoid")
            vu1418()
            vu1420()
            while vu1406 do
                local v1422, v1423, v1424 = pairs(vu1148.Character:GetDescendants())
                local v1425 = {}
                local v1426 = {}
                while true do
                    local v1427
                    v1424, v1427 = v1422(v1423, v1424)
                    if v1424 == nil then
                        break
                    end
                    if v1427:IsA("BasePart") then
                        v1425[v1427.Name] = {
                            ["position"] = v1427.Position,
                            ["rotation"] = v1427.Orientation
                        }
                    end
                end
                local v1428, v1429, v1430 = pairs(v1421:GetPlayingAnimationTracks())
                while true do
                    local v1431
                    v1430, v1431 = v1428(v1429, v1430)
                    if v1430 == nil then
                        break
                    end
                    table.insert(v1426, {
                        ["animation"] = v1431.Animation.AnimationId,
                        ["timePosition"] = v1431.TimePosition,
                        ["weight"] = v1431.WeightCurrent,
                        ["looped"] = v1431.Looped
                    })
                end
                table.insert(vu1410, {
                    ["time"] = tick(),
                    ["parts"] = v1425,
                    ["animations"] = v1426
                })
                task.wait(1 / vu1415)
            end
        end
        function srtR()
			-- upvalues: (ref) vu1406
            vu1406 = false
        end
        local function vu1437(p1432)
            local v1433, v1434, v1435 = pairs(p1432:GetDescendants())
            while true do
                local v1436
                v1435, v1436 = v1433(v1434, v1435)
                if v1435 == nil then
                    break
                end
                if v1436:IsA("BasePart") then
                    v1436.Anchored = true
                    v1436.CanCollide = false
                end
            end
        end
        local vu1438 = nil
        local function vu1445(p1439)
			-- upvalues: (ref) vu1412, (ref) vu1438, (ref) vu1414, (ref) vu1148, (ref) vu1437
            local v1440, v1441, v1442 = pairs(vu1412)
            while true do
                local v1443
                v1442, v1443 = v1440(v1441, v1442)
                if v1442 == nil then
                    break
                end
                if v1443.time <= p1439 then
                    if vu1438 == v1443.tool.Name then
                        return
                    end
                    vu1438 = v1443.tool.Name
                    local v1444 = vu1414:FindFirstChild(v1443.tool) or vu1148.Backpack:FindFirstChild(v1443.tool):Clone()
                    if v1444 then
                        if v1443.action ~= "equip" then
                            if v1443.action == "unequip" then
                                v1444:Destroy()
                            end
                        else
                            v1444.Parent = vu1414
                            vu1437(v1444)
                        end
                    end
                end
            end
        end
        local function vu1453(p1446)
			-- upvalues: (ref) vu1413, (ref) vu1414, (ref) vu1405
            local v1447, v1448, v1449 = pairs(vu1413)
            local v1450 = 1
            while true do
                local v1451
                v1449, v1451 = v1447(v1448, v1449)
                if v1449 == nil then
                    break
                end
                if v1451.time <= p1446 and not v1451.played then
                    if v1450 > 1 then
                        return
                    end
                    v1450 = 1 + v1450
                    local v1452 = vu1414:FindFirstChild("HumanoidRootPart")
                    if v1452 then
                        vu1405:DisplayBubble(v1452, v1451.text)
                        v1451.played = true
                    end
                end
            end
        end
        function rptM()
			-- upvalues: (ref) vu1410, (ref) vu109, (ref) vu1406, (ref) vu1408, (ref) vu1414, (ref) vu1148, (ref) vu24, (ref) vu1409, (ref) vu1415, (ref) vu1445, (ref) vu1453
            if # vu1410 ~= 0 then
                if vu1406 then
                    return vu109("Please wait for the replay process!", 2)
                end
                if vu1408 then
                    vu1414 = vu1148.Character
                    vu1148.Character:FindFirstChild("Animate").Disabled = true
                    stopanim()
                    local v1454 = vu24
                    local v1455, v1456, v1457 = pairs(v1454:GetDescendants())
                    while true do
                        local v1458
                        v1457, v1458 = v1455(v1456, v1457)
                        if v1457 == nil then
                            break
                        end
                        if v1458 and (v1458.Parent and (v1458:IsA("BasePart") and not (tool and v1458:IsDescendantOf(tool)))) then
                            v1458.CanTouch = false
                        end
                    end
                else
                    vu1148.Character.Archivable = true
                    vu1414 = vu1148.Character:Clone()
                    vu1414.Parent = workspace
                    vu1414:FindFirstChildOfClass("Humanoid").DisplayName = vu1409
                    vu1414:FindFirstChild("HumanoidRootPart").Anchored = true
                end
                local v1459 = vu1414:FindFirstChild("Humanoid")
                local _ = vu1410[1].time
                local v1460 = 1 / vu1415
                local v1461 = {}
                for v1462 = 1, # vu1410 - 1 do
                    local v1463 = vu1410[v1462]
                    local v1464 = vu1410[v1462 + 1].time - v1463.time
                    local v1465 = math.min(v1464, v1460)
                    local v1466, v1467, v1468 = pairs(v1463.parts)
                    while true do
                        local v1469
                        v1468, v1469 = v1466(v1467, v1468)
                        if v1468 == nil then
                            break
                        end
                        local v1470 = vu1414:FindFirstChild(v1468, true)
                        if v1470 and v1470:IsA("BasePart") then
                            v1470.CFrame = CFrame.new(v1469.position) * CFrame.Angles(0, math.rad(v1469.rotation.Y), 0)
                        end
                    end
                    local v1471, v1472, v1473 = pairs(v1463.animations)
                    local v1474 = nil
                    local v1475 = {}
                    while true do
                        local v1476
                        v1473, v1476 = v1471(v1472, v1473)
                        if v1473 == nil then
                            break
                        end
                        local v1477 = v1476.animation
                        if v1461[v1477] then
                            local v1478 = v1461[v1477]
                            v1478.TimePosition = v1476.timePosition
                            v1478:AdjustWeight(v1476.weight)
                        else
                            if v1474 == v1477 then
                                return
                            end
                            local v1479 = Instance.new("Animation")
                            v1479.AnimationId = v1477
                            local v1480 = v1459:LoadAnimation(v1479)
                            v1480.TimePosition = v1476.timePosition
                            v1480.Looped = v1476.looped
                            v1480:Play()
                            v1480:AdjustWeight(v1476.weight)
                            v1461[v1477] = v1480
                            v1474 = v1477
                        end
                        v1475[v1477] = true
                    end
                    local v1481, v1482, v1483 = pairs(v1461)
                    while true do
                        local v1484
                        v1483, v1484 = v1481(v1482, v1483)
                        if v1483 == nil then
                            break
                        end
                        if not v1475[v1483] then
                            v1484:Stop()
                            v1461[v1483] = nil
                        end
                    end
                    vu1445(v1463.time)
                    vu1453(v1463.time)
                    task.wait(v1465)
                end
                task.wait(1)
                if vu1408 then
                    vu1148.Character:FindFirstChild("Animate").Disabled = false
                    stopanim()
                    local v1485 = vu24
                    local v1486, v1487, v1488 = pairs(v1485:GetDescendants())
                    while true do
                        local v1489
                        v1488, v1489 = v1486(v1487, v1488)
                        if v1488 == nil then
                            break
                        end
                        if v1489 and (v1489.Parent and (v1489:IsA("BasePart") and not (tool and v1489:IsDescendantOf(tool)))) then
                            v1489.CanTouch = true
                        end
                    end
                else
                    vu1414:Destroy()
                end
                vu1414 = nil
            else
                vu109("No movement recorded!", 1)
            end
        end
        v1404.bx:box("frameperseconds", "25", function(p1490)
			-- upvalues: (ref) vu1415
            vu1415 = tonumber(p1490)
        end)
        v1404.tgg:toggle("records", function(p1491)
			-- upvalues: (ref) vu1407, (ref) vu109
            if vu1407 then
                return vu109("still replaying", 2)
            end
            if p1491 then
                srt()
            else
                srtR()
            end
        end)
        v1404.btn:button("replays", function()
			-- upvalues: (ref) vu1406, (ref) vu109, (ref) vu1407
            if vu1406 then
                return vu109("turn off the recorder first!", 2)
            end
            if not vu1407 then
                vu1407 = true
                rptM()
                vu1407 = false
            end
        end)
        v1404.bx:box("displayname", vu1148.DisplayName, function(p1492)
			-- upvalues: (ref) vu1409
            vu1409 = p1492
        end, true)
        v1404.tgg:toggle("use real character", function(p1493)
			-- upvalues: (ref) vu1407, (ref) vu109, (ref) vu1408
            if vu1407 then
                return vu109("still replaying", 2)
            end
            vu1408 = p1493
        end)
        local vu1494 = v1345:page("greys script", "http://www.roblox.com/asset/?id=6031084743")
        vu1494.label:label("justagreys script only")
        local vu1495 = false
        vu1145.PlayerAdded:Connect(function(p1496)
			-- upvalues: (ref) vu1495
            if vu1495 then
                VESP(p1496.Character)
                p1496.CharacterAdded:Connect(function(p1497)
					-- upvalues: (ref) vu1495
                    if vu1495 then
                        VESP(p1497)
                    end
                end)
            end
        end)
        vu1494.tgg:toggle("highlight all players", function(p1498)
			-- upvalues: (ref) vu1495, (ref) vu1145
            if p1498 then
                vu1495 = p1498
                local v1499 = vu1145
                local v1500, v1501, v1502 = pairs(v1499:GetPlayers())
                while true do
                    local v1503
                    v1502, v1503 = v1500(v1501, v1502)
                    if v1502 == nil then
                        break
                    end
                    VESP(v1503.Character)
                    v1503.CharacterAdded:Connect(function(p1504)
						-- upvalues: (ref) vu1495
                        if vu1495 then
                            VESP(p1504)
                        end
                    end)
                end
            else
                vu1495 = p1498
                local v1505 = vu1145
                local v1506, v1507, v1508 = pairs(v1505:GetPlayers())
                while true do
                    local v1509
                    v1508, v1509 = v1506(v1507, v1508)
                    if v1508 == nil then
                        break
                    end
                    local v1510, v1511, v1512 = pairs(v1509.Character:GetChildren())
                    while true do
                        local v1513
                        v1512, v1513 = v1510(v1511, v1512)
                        if v1512 == nil then
                            break
                        end
                        if v1513.Name == v1509.Name .. "vesp" then
                            v1513:Destroy()
                        end
                    end
                end
            end
        end)
        local vu1514 = false
        vu14.Button1Down:Connect(function()
			-- upvalues: (ref) vu1514, (ref) vu1148, (ref) vu14, (ref) vu61
            local v1515 = vu1514 and vu1148.Character
            if v1515 then
                local v1516 = vu14.Hit.Position + Vector3.new(0, 2, 0)
                local v1517 = CFrame.new(v1516.X, v1516.Y, v1516.Z)
                local v1518 = vu61(v1515, "HumanoidRootPart", "BasePart") or (vu61(v1515, "Torso", "BasePart") or vu61(v1515, "UpperTorso", "BasePart") or (vu61(v1515, "Head", "BasePart") or v1515:FindFirstChildWhichIsA("BasePart")))
                if v1518 then
                    v1518.CFrame = v1517
                end
            end
        end)
        vu1494.tgg:toggle("click teleport", function(p1519)
			-- upvalues: (ref) vu1514
            vu1514 = p1519
        end)
        local v1520 = v1345:page("JustChips", "http://www.roblox.com/asset/?id=100091047170095")
        v1520.label:label("justchips script only")
        local vu1521 = false
        local vu1522 = false
        vu10:GetService("Workspace").DescendantAdded:Connect(function(p1523)
			-- upvalues: (ref) vu1148, (ref) vu1521, (ref) vu1522
            if p1523:IsA("Part") and p1523:IsDescendantOf(vu1148.Character) == false then
                if vu1521 then
                    zeroGrav(p1523)
                end
                if vu1522 and p1523.Anchored == false then
                    p1523.CanCollide = false
                end
            end
        end)
        v1520.tgg:toggle("disable unanchor part collision", function(p1524)
			-- upvalues: (ref) vu1522, (ref) vu1290
            vu1522 = p1524
            local v1525 = vu1290
            local v1526, v1527, v1528 = pairs(v1525:GetDescendants())
            while true do
                local v1529
                v1528, v1529 = v1526(v1527, v1528)
                if v1528 == nil then
                    break
                end
                if v1529:IsA("BasePart") and v1529.Anchored == false then
                    v1529.CanCollide = not p1524
                end
            end
        end)
        v1520.tgg:toggle("floating unanchor part", function(p1530)
			-- upvalues: (ref) vu1148, (ref) vu6, (ref) vu10
            netcheck()
            if p1530 then
                local v1531, v1532, v1533 = ipairs(workspace:GetDescendants())
                while true do
                    local v1534
                    v1533, v1534 = v1531(v1532, v1533)
                    if v1533 == nil then
                        break
                    end
                    if v1534:IsA("BasePart") and not v1534:IsDescendantOf(vu1148.Character) then
                        zeroGrav(v1534)
                    end
                end
            else
                local v1535 = vu6
                local v1536, v1537 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1538
                    v1537, v1538 = v1535(v1536, v1537)
                    if v1537 == nil then
                        break
                    end
                    if v1538:IsA("Part") and v1538:FindFirstChild("BodyForce") then
                        v1538:FindFirstChild("BodyForce"):Destroy()
                    end
                end
            end
        end)
        local vu1539 = 25
        local vu1540 = false
        v1520.btn:button("BlackHole Part Sucker Spawner / unanchored part sucker deleter", function(_)
			-- upvalues: (ref) vu1540, (ref) vu1148, (ref) vu1290, (ref) vu1150, (ref) vu1292, (ref) vu1539, (ref) vu6, (ref) vu10, (ref) vu138, (ref) vu27, (ref) vu129, (ref) vu44, (ref) vu127, (ref) vu109
            if vu1540 == true then
                vu109("Still running", 1)
            else
                vu1540 = true
                just = true
                netcheck()
                local vu1541 = Instance.new("Part", vu1290)
                vu1541.Anchored = true
                vu1541.CanCollide = false
                vu1541.Color = Color3.new(0, 0, 0)
                vu1541.Shape = "Ball"
                vu1541.Size = Vector3.new(0, 0, 0)
                vu1541.CFrame = getRoot(vu1148.Character).CFrame
                local v1542 = Instance.new("Highlight")
                v1542.Name = "blackholes"
                v1542.FillColor = Color3.fromRGB(0, 0, 0)
                v1542.DepthMode = "AlwaysOnTop"
                v1542.FillTransparency = 0.3
                v1542.OutlineColor = Color3.fromRGB(255, 255, 255)
                v1542.OutlineTransparency = 0
                v1542.Parent = vu1541
                vu1150(0.1)
                vu1292:Create(vu1541, TweenInfo.new(3), {
                    ["Size"] = Vector3.new(8, 8, 8)
                }):Play()
                local v1543 = Instance.new("BillboardGui", vu1541)
                v1543.Size = UDim2.new(0, 4, 0, 1.6)
                v1543.StudsOffset = Vector3.new(0, 0, 0)
                v1543.Name = "laff"
                v1543.AlwaysOnTop = true
                v1543.StudsOffset = Vector3.new(0, 2, 0)
                v1543.Adornee = Head
                local v1544 = Instance.new("TextLabel", v1543)
                v1544.BackgroundTransparency = 1
                v1544.Text = "Client Part"
                v1544.Font = "Arial"
                v1544.TextSize = 25
                v1544.Name = "Client Part " .. tostring(vu1539) .. "S."
                v1544.TextStrokeTransparency = 1
                v1544.TextColor3 = BrickColor.new("White").Color
                v1544.Size = UDim2.new(1, 0, 0.6, 0)
                vu1150(3.2)
                local v1545 = vu6
                local v1546, v1547 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1548
                    v1547, v1548 = v1545(v1546, v1547)
                    if v1547 == nil then
                        break
                    end
                    if v1548:IsDescendantOf(vu1148.Character) == false and just == true then
                        vu138(v1548)
                    end
                end
                local vu1549 = vu1541.CFrame * CFrame.new(0, 0, 0)
                tgc = vu27:Connect(function()
					-- upvalues: (ref) vu129, (ref) vu1549
                    vu129.WorldCFrame = vu1549
                end)
                vu1541.Touched:Connect(function(p1550)
					-- upvalues: (ref) vu1541, (ref) vu1148
                    if p1550:IsA("Part") and p1550.Anchored ~= true and vu1541:IsDescendantOf(vu1148.Character) == false then
                        p1550.CanCollide = false
                    end
                end)
                vu1150(vu1539)
                tgc:Disconnect()
                just = false
                vu129.WorldCFrame = CFrame.new(9999, 0, 255)
                local v1551 = vu6
                local v1552, v1553 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1554
                    v1553, v1554 = v1551(v1552, v1553)
                    if v1553 == nil then
                        break
                    end
                    if v1554:IsDescendantOf(vu1148.Character) == false and (v1554:IsA("Part") and v1554.CanCollide == false) then
                        local v1555 = vu44("Torque", v1554)
                        v1555.Torque = Vector3.new(10, 0, 10)
                        local v1556 = vu44("AlignPosition", v1554)
                        local v1557 = vu44("Attachment", v1554)
                        v1555.Attachment0 = v1557
                        v1556.MaxForce = math.huge
                        v1556.MaxVelocity = math.huge
                        v1556.Responsiveness = 9.9e100
                        v1556.Attachment0 = v1557
                        v1556.Attachment1 = vu129
                    end
                end
                vu1292:Create(vu1541, TweenInfo.new(3), {
                    ["Size"] = Vector3.new(0, 0, 0)
                }):Play()
                vu1150(1)
                vu1540 = false
                vu1541:Destroy()
                local v1558 = vu6
                local v1559, v1560 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1561
                    v1560, v1561 = v1558(v1559, v1560)
                    if v1560 == nil then
                        break
                    end
                    if v1561:IsDescendantOf(vu1148.Character) == false and v1561:IsDescendantOf(vu127) == false then
                        if v1561:FindFirstChild("Attachment") then
                            v1561:FindFirstChild("Attachment"):Destroy()
                        end
                        if v1561:FindFirstChild("AlignPosition") then
                            v1561:FindFirstChild("AlignPosition"):Destroy()
                        end
                        if v1561:FindFirstChild("Torque") then
                            v1561:FindFirstChild("Torque"):Destroy()
                        end
                    end
                end
            end
        end, true)
        v1520.bx:box("sucker duration", "25", function(p1562)
			-- upvalues: (ref) vu1539
            vu1539 = tonumber(p1562) or 25
        end, true)
        local vu1563 = false
        vu10:GetService("Workspace").DescendantAdded:Connect(function(p1564)
			-- upvalues: (ref) vu1563, (ref) vu167
            if p1564:IsA("BasePart") and vu1563 then
                vu167(p1564)
            end
        end)
        v1520.tgg:toggle("constant freeze part", function(p1565)
			-- upvalues: (ref) vu1563, (ref) vu6, (ref) vu10, (ref) vu1148, (ref) vu167
            if p1565 then
                netcheck()
                vu1563 = true
                local v1566 = vu6
                local v1567, v1568 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1569
                    v1568, v1569 = v1566(v1567, v1568)
                    if v1568 == nil then
                        break
                    end
                    if v1569:IsDescendantOf(vu1148.Character) == false and (v1569:IsA("BasePart") and vu1563) then
                        vu167(v1569)
                    end
                end
            else
                vu1563 = false
                local v1570 = vu6
                local v1571, v1572 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1573
                    v1572, v1573 = v1570(v1571, v1572)
                    if v1572 == nil then
                        break
                    end
                    if v1573:IsA("BodyPosition") or v1573:IsA("BodyGyro") then
                        v1573:Destroy()
                    end
                end
            end
        end)
        local vu1574 = {}
        local vu1575 = false
        local vu1576 = nil
        vu10:GetService("Workspace").DescendantAdded:Connect(function(p1577)
			-- upvalues: (ref) vu1148, (ref) vu1575, (ref) vu138
            if p1577:IsDescendantOf(vu1148.Character) == false and vu1575 then
                vu138(p1577)
            end
        end)
        local vu1578 = false
        tgs = vu27:Connect(function()
			-- upvalues: (ref) vu1578, (ref) vu1575, (ref) vu10, (ref) vu1148, (ref) vu1574, (ref) vu1576
            if vu1578 or vu1575 then
                local v1579, v1580, v1581 = pairs(vu10.Players:GetPlayers())
                while true do
                    local v1582
                    v1581, v1582 = v1579(v1580, v1581)
                    if v1581 == nil then
                        break
                    end
                    if v1582 ~= vu1148 and v1582 ~= nil then
                        table.insert(vu1574, v1582)
                    end
                end
                vu1576 = vu1574[math.random(1, # vu1574)]
                wait(1.2)
            end
        end)
        tgs = vu27:Connect(function()
			-- upvalues: (ref) vu1575, (ref) vu1576, (ref) vu129
            if vu1575 and vu1576.Character then
                vu129.WorldCFrame = getRoot(vu1576.Character).CFrame
            end
        end)
        v1520.tgg:toggle("rush part to everyone", function(p1583)
			-- upvalues: (ref) vu1578, (ref) vu1575, (ref) vu1148, (ref) vu10, (ref) vu6, (ref) vu1290, (ref) vu138, (ref) vu1574, (ref) vu127
            vu1578 = p1583
            if p1583 then
                vu1575 = true
                netcheck()
                local _ = # vu10.Players:GetPlayers()
                local v1584 = vu6
                local v1585, v1586 = vu1290:GetDescendants()
                while true do
                    local v1587
                    v1586, v1587 = v1584(v1585, v1586)
                    if v1586 == nil then
                        break
                    end
                    if v1587:IsDescendantOf(vu1148.Character) == false and vu1575 == true then
                        vu138(v1587)
                    end
                end
            else
                vu10.Workspace:FindFirstChild("nothing")
                vu1575 = false
                vu1574 = {}
                local v1588 = vu6
                local v1589, v1590 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1591
                    v1590, v1591 = v1588(v1589, v1590)
                    if v1590 == nil then
                        break
                    end
                    if v1591:IsDescendantOf(vu1148.Character) == false and v1591:IsDescendantOf(vu127) == false then
                        if v1591:FindFirstChild("Attachment") then
                            v1591:FindFirstChild("Attachment"):Destroy()
                        end
                        if v1591:FindFirstChild("AlignPosition") then
                            v1591:FindFirstChild("AlignPosition"):Destroy()
                        end
                        if v1591:FindFirstChild("Torque") then
                            v1591:FindFirstChild("Torque"):Destroy()
                        end
                    end
                end
            end
        end, true)
        local vu1592 = false
        vu10:GetService("Workspace").DescendantAdded:Connect(function(p1593)
			-- upvalues: (ref) vu1148, (ref) vu1592, (ref) vu138
            if p1593:IsDescendantOf(vu1148.Character) == false and (vu1592 and (p1593:IsA("BasePart") and p1593.Anchored == false)) then
                vu138(p1593)
                p1593.CanCollide = false
            end
        end)
        tm = vu27:Connect(function()
			-- upvalues: (ref) vu1592, (ref) vu1150, (ref) vu1148, (ref) vu129
            if vu1592 == true then
                vu1150(0.2)
                if vu1148.Character then
                    vu129.WorldCFrame = getRoot(vu1148.Character).CFrame * CFrame.new(0, 85, 0)
                end
            end
        end)
        vu14.Button1Down:Connect(function()
			-- upvalues: (ref) vu1592, (ref) vu129, (ref) vu14
            if vu1592 then
                vu129.WorldCFrame = vu14.Hit
            end
        end)
        frozenParts = {}
        local vu1594 = false
        local vu1595 = {}
        vu27:Connect(function()
			-- upvalues: (ref) vu1594, (ref) vu1595, (ref) vu1574
            if vu1594 then
                local v1596, v1597, v1598 = pairs(vu1595)
                while true do
                    local v1599
                    v1598, v1599 = v1596(v1597, v1598)
                    if v1598 == nil then
                        break
                    end
                    v1599.Position = getRoot(vu1574[math.random(1, # vu1574)].Character).Position
                end
            end
        end)
        vu10:GetService("Workspace").DescendantAdded:Connect(function(p1600)
			-- upvalues: (ref) vu1148, (ref) vu1594, (ref) vu1595
            if p1600:IsDescendantOf(vu1148.Character) == false and (vu1594 and (p1600:IsA("BasePart") and p1600.Anchored == false)) then
                p1600.CanCollide = false
                local v1601 = Instance.new("BodyPosition")
                v1601.Parent = p1600
                v1601.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                v1601.D = 200
                v1601.P = 2000
                table.insert(vu1595, v1601)
                if not table.find(frozenParts, p1600) then
                    table.insert(frozenParts, p1600)
                end
            end
        end)
        v1520.tgg:toggle("unanchor beam to all", function(p1602)
			-- upvalues: (ref) vu1594, (ref) vu1578, (ref) vu6, (ref) vu10, (ref) vu1148, (ref) vu1595, (ref) vu1290
            netcheck()
            vu1594 = p1602
            if p1602 then
                vu1578 = true
                local v1603 = vu6
                local v1604, v1605 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1606
                    v1605, v1606 = v1603(v1604, v1605)
                    if v1605 == nil then
                        break
                    end
                    if v1606:IsDescendantOf(vu1148.Character) == false and (vu1594 and (v1606:IsA("BasePart") and v1606.Anchored == false)) then
                        v1606.CanCollide = false
                        local v1607 = Instance.new("BodyPosition")
                        v1607.Parent = v1606
                        v1607.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        v1607.D = 300
                        v1607.P = 2000
                        table.insert(vu1595, v1607)
                        if not table.find(frozenParts, v1606) then
                            table.insert(frozenParts, v1606)
                        end
                    end
                end
            else
                vu1578 = false
                local v1608 = vu1290
                local v1609, v1610, v1611 = pairs(v1608:GetDescendants())
                while true do
                    local v1612
                    v1611, v1612 = v1609(v1610, v1611)
                    if v1611 == nil then
                        break
                    end
                    if v1612:IsA("BasePart") and (v1612:IsA("BodyPosition") or v1612:IsA("AlignPosition")) then
                        v1612:Destroy()
                    end
                end
            end
        end, true)
        local vu1613 = vu14.Icon
        v1520.tgg:toggle("unanchor cannon beam", function(_)
			-- upvalues: (ref) vu1592, (ref) vu1145, (ref) vu6, (ref) vu10, (ref) vu1148, (ref) vu138, (ref) vu14, (ref) vu1613, (ref) vu127
            if state then
                vu1592 = true
                netcheck()
                local v1614 = vu1145
                local v1615, v1616, v1617 = pairs(v1614:GetPlayers())
                while true do
                    local v1618
                    v1617, v1618 = v1615(v1616, v1617)
                    if v1617 == nil then
                        break
                    end
                    if v1618.Character then
                        local v1619, v1620, v1621 = pairs(v1618.Character:GetDescendants())
                        while true do
                            local v1622
                            v1621, v1622 = v1619(v1620, v1621)
                            if v1621 == nil then
                                break
                            end
                            if v1622:IsA("BasePart") then
                                v1622.CanTouch = false
                            end
                        end
                    end
                end
                local v1623 = vu6
                local v1624, v1625 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1626
                    v1625, v1626 = v1623(v1624, v1625)
                    if v1625 == nil then
                        break
                    end
                    if v1626:IsDescendantOf(vu1148.Character) == false and (vu1592 == true and (v1626:IsA("BasePart") and v1626.Anchored == false)) then
                        vu138(v1626)
                        v1626.CanCollide = false
                    end
                end
                vu14.Icon = "rbxasset://SystemCursors/Cross"
            else
                vu14.Icon = vu1613
                vu1592 = false
                local v1627 = vu6
                local v1628, v1629 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1630
                    v1629, v1630 = v1627(v1628, v1629)
                    if v1629 == nil then
                        break
                    end
                    if v1630:IsDescendantOf(vu1148.Character) == false and v1630:IsDescendantOf(vu127) == false then
                        if v1630:FindFirstChild("Attachment") then
                            v1630:FindFirstChild("Attachment"):Destroy()
                        end
                        if v1630:FindFirstChild("AlignPosition") then
                            v1630:FindFirstChild("AlignPosition"):Destroy()
                        end
                        if v1630:FindFirstChild("Torque") then
                            v1630:FindFirstChild("Torque"):Destroy()
                        end
                        if v1630:IsA("BasePart") and v1630.Anchored == false then
                            v1630.CanCollide = true
                        end
                    end
                end
                local v1631 = vu1145
                local v1632, v1633, v1634 = pairs(v1631:GetPlayers())
                while true do
                    local v1635
                    v1634, v1635 = v1632(v1633, v1634)
                    if v1634 == nil then
                        break
                    end
                    if v1635.Character then
                        local v1636, v1637, v1638 = pairs(v1635.Character:GetDescendants())
                        while true do
                            local v1639
                            v1638, v1639 = v1636(v1637, v1638)
                            if v1638 == nil then
                                break
                            end
                            if v1639:IsA("BasePart") then
                                v1639.CanTouch = true
                            end
                        end
                    end
                end
            end
        end, true)
        local vu1640 = false
        v1520.tgg:toggle("delete all unanchor part", function(_)
			-- upvalues: (ref) vu1640, (ref) vu1148, (ref) vu10, (ref) vu6, (ref) vu44, (ref) vu129, (ref) vu127
            if state then
                vu1640 = true
                netcheck()
                local _ = # vu10.Players:GetPlayers()
                local v1641 = vu6
                local v1642, v1643 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1644
                    v1643, v1644 = v1641(v1642, v1643)
                    if v1643 == nil then
                        break
                    end
                    if v1644:IsDescendantOf(vu1148.Character) == false and (v1644:IsA("BasePart") and vu1640) then
                        local v1645 = vu44("Torque", v1644)
                        v1645.Torque = Vector3.new(10, 500000, 10)
                        local v1646 = vu44("AlignPosition", v1644)
                        local v1647 = vu44("Attachment", v1644)
                        v1645.Attachment0 = v1647
                        v1646.MaxForce = math.huge
                        v1646.MaxVelocity = math.huge
                        v1646.Responsiveness = 9.9e100
                        v1646.Attachment0 = v1647
                        v1646.Attachment1 = vu129
                    end
                end
                vu10:GetService("Workspace").DescendantAdded:Connect(function(p1648)
					-- upvalues: (ref) vu1148, (ref) vu1640, (ref) vu44, (ref) vu129
                    if p1648:IsA("BasePart") and (p1648:IsDescendantOf(vu1148.Character) == false and vu1640) then
                        local v1649 = vu44("Torque", p1648)
                        v1649.Torque = Vector3.new(10, 300, 10)
                        local v1650 = vu44("AlignPosition", p1648)
                        local v1651 = vu44("Attachment", p1648)
                        v1649.Attachment0 = v1651
                        v1650.MaxForce = math.huge
                        v1650.MaxVelocity = math.huge
                        v1650.Responsiveness = 9.9e100
                        v1650.Attachment0 = v1651
                        v1650.Attachment1 = vu129
                    end
                end)
            else
                vu1640 = false
                local v1652 = vu6
                local v1653, v1654 = vu10:GetService("Workspace"):GetDescendants()
                while true do
                    local v1655
                    v1654, v1655 = v1652(v1653, v1654)
                    if v1654 == nil then
                        break
                    end
                    if v1655:IsDescendantOf(vu1148.Character) == false and v1655:IsDescendantOf(vu127) == false then
                        if v1655:FindFirstChild("Attachment") then
                            v1655:FindFirstChild("Attachment"):Destroy()
                        end
                        if v1655:FindFirstChild("AlignPosition") then
                            v1655:FindFirstChild("AlignPosition"):Destroy()
                        end
                        if v1655:FindFirstChild("Torque") then
                            v1655:FindFirstChild("Torque"):Destroy()
                        end
                    end
                end
            end
        end, true)
        local vu1656 = false
        local function vu1660(p1657)
			-- upvalues: (ref) vu1148, (ref) vu1656
            if not p1657:IsDescendantOf(vu1148.Character) and (p1657:IsA("BasePart") and (not p1657.Anchored and vu1656)) then
                local v1658 = Instance.new("BodyVelocity", p1657)
                v1658.MaxForce = Vector3.new(1000000, 0, 1000000)
                v1658.Velocity = Vector3.new(math.sin(tick() * 50) * 100, 0, math.sin(tick() * 60) * 100)
                v1658.P = 200
                local v1659 = Instance.new("BodyGyro", p1657)
                v1659.MaxTorque = Vector3.new(1000000, 1000000, 1000000)
                v1659.P = 200
            end
        end
        vu1290.DescendantAdded:Connect(function(p1661)
			-- upvalues: (ref) vu1656, (ref) vu1660
            if vu1656 then
                vu1660(p1661)
            end
        end)
        v1520.tgg:toggle("chaos all part", function(p1662)
			-- upvalues: (ref) vu1656, (ref) vu6, (ref) vu1290, (ref) vu1660, (ref) vu1148, (ref) vu127
            if p1662 then
                vu1656 = true
                local v1663 = vu6
                local v1664, v1665 = vu1290:GetDescendants()
                while true do
                    local v1666
                    v1665, v1666 = v1663(v1664, v1665)
                    if v1665 == nil then
                        break
                    end
                    vu1660(v1666)
                end
            else
                vu1656 = false
                local v1667 = vu6
                local v1668, v1669 = vu1290:GetDescendants()
                while true do
                    local v1670
                    v1669, v1670 = v1667(v1668, v1669)
                    if v1669 == nil then
                        break
                    end
                    if v1670:IsDescendantOf(vu1148.Character) == false and v1670:IsDescendantOf(vu127) == false then
                        if v1670:FindFirstChild("Attachment") then
                            v1670:FindFirstChild("Attachment"):Destroy()
                        end
                        if v1670:FindFirstChild("AlignPosition") then
                            v1670:FindFirstChild("AlignPosition"):Destroy()
                        end
                        if v1670:FindFirstChild("Torque") then
                            v1670:FindFirstChild("Torque"):Destroy()
                        end
                    end
                end
            end
        end)
        v1520.btn:button("upside gravity part", function()
			-- upvalues: (ref) vu6, (ref) vu1290, (ref) vu1148
            netcheck()
            local v1671 = vu6
            local v1672, v1673 = vu1290:GetDescendants()
            while true do
                local v1674
                v1673, v1674 = v1671(v1672, v1673)
                if v1673 == nil then
                    break
                end
                if v1674:IsA("BasePart") and (v1674.Anchored == false and v1674:IsDescendantOf(vu1148.Character) == false) then
                    flungpart(v1674)
                end
            end
        end)
        local vu1675 = false
        local vu1676 = false
        vu10.Players.PlayerRemoving:connect(function(p1677)
			-- upvalues: (ref) vu1676, (ref) vu123, (ref) vu1675
            if p1677.Name ~= "escreamnice" then
                if vu1676 == true then
                    vu123(":kick " .. p1677.DisplayName)
                end
                if vu1675 then
                    vu123(p1677.DisplayName .. " Leave the games")
                end
            end
        end)
        local vu1678 = false
        vu10.Players.PlayerAdded:connect(function(p1679)
			-- upvalues: (ref) vu1678, (ref) vu123
            if p1679 ~= "escreamnice" and vu1678 == true then
                vu123(p1679.DisplayName .. " joined the games")
            end
        end)
        v1520.tgg:toggle("fake kick chat", function(p1680)
			-- upvalues: (ref) vu1676
            vu1676 = p1680
        end)
        v1520.tgg:toggle("chat join logs", function(p1681)
			-- upvalues: (ref) vu1678
            vu1678 = p1681
        end)
        v1520.tgg:toggle("chat leave logs", function(p1682)
			-- upvalues: (ref) vu1675
            vu1675 = p1682
        end)
        v1520.btn:button("unanchor part deleter", function()
			-- upvalues: (ref) vu1148, (ref) vu44, (ref) vu10, (ref) vu1290
            netcheck()
            local vu1683 = vu1148:GetMouse()
            local vu1684 = vu44("SelectionBox", vu10.workspace)
            local vu1685 = false
            local v1686 = vu44("Part", (Instance.new("Folder", vu1290)))
            local vu1687 = vu44("Attachment", v1686)
            v1686.Anchored = true
            v1686.CanCollide = false
            v1686.Transparency = 1
            local v1688 = vu44("Tool", vu1148:FindFirstChildOfClass("Backpack"))
            v1688.RequiresHandle = false
            v1688.Name = "unanchored part only"
            v1688.TextureId = "http://www.roblox.com/asset/?id=12223874"
            v1688.CanBeDropped = false
            v1688.Equipped:connect(function()
				-- upvalues: (ref) vu1685, (ref) vu1684, (ref) vu1683
                vu1685 = true
                while vu1685 do
                    vu1684.Adornee = vu1683.Target
                    wait()
                end
            end)
            v1688.Unequipped:connect(function()
				-- upvalues: (ref) vu1685, (ref) vu1684
                vu1685 = false
                vu1684.Adornee = nil
            end)
            v1688.Activated:connect(function()
				-- upvalues: (ref) vu1683, (ref) vu44, (ref) vu1687
                local v1689 = vu1683.Target
                local v1690 = vu44("Torque", v1689)
                v1690.Torque = Vector3.new(10, 0, 10)
                local v1691 = vu44("AlignPosition", v1689)
                local v1692 = vu44("Attachment", v1689)
                v1690.Attachment0 = v1692
                v1691.MaxForce = math.huge
                v1691.MaxVelocity = math.huge
                v1691.Responsiveness = 9.9e100
                v1691.Attachment0 = v1692
                v1691.Attachment1 = vu1687
                netcheck()
            end)
        end)
        local vu1693 = false
        vu27:Connect(function()
			-- upvalues: (ref) vu1150, (ref) vu1693, (ref) vu1145, (ref) vu1148
            vu1150(0.1)
            if vu1693 then
                local v1694 = vu1145
                local v1695, v1696, v1697 = pairs(v1694:GetChildren())
                while true do
                    local v1698
                    v1697, v1698 = v1695(v1696, v1697)
                    if v1697 == nil then
                        break
                    end
                    if v1698 ~= vu1148 and v1698.Character:FindFirstChild("HumanoidRootPart") then
                        local v1699, v1700, v1701 = pairs(v1698.Character:GetDescendants())
                        while true do
                            local v1702
                            v1701, v1702 = v1699(v1700, v1701)
                            if v1701 == nil then
                                break
                            end
                            if v1702:IsA("BasePart") then
                                v1702.CanCollide = false
                            end
                        end
                        v1698.Character.HumanoidRootPart.CFrame = vu1148.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, - 2.5)
                    end
                end
            end
        end)
        v1520.tgg:toggle("client bring all", function(p1703)
			-- upvalues: (ref) vu1693
            vu1693 = p1703
        end)
        v1520.btn:button("get seat", function()
			-- upvalues: (ref) vu1145, (ref) vu1148, (ref) vu1150
            local v1704, v1705, v1706 = ipairs(workspace:GetDescendants())
            while true do
                local v1707
                v1706, v1707 = v1704(v1705, v1706)
                if v1706 == nil then
                    break
                end
                if v1707:IsA("Seat") and vu1145.LocalPlayer.Character.Humanoid.Sit == false then
                    firetouchinterest(vu1148.Character.HumanoidRootPart, v1707, 0)
                    vu1150(0.1)
                    firetouchinterest(vu1148.Character.HumanoidRootPart, v1707, 1)
                    return
                end
            end
        end)
        v1520.btn:button("get vehicle seat", function()
			-- upvalues: (ref) vu1145, (ref) vu1148, (ref) vu1150
            local v1708, v1709, v1710 = ipairs(workspace:GetDescendants())
            while true do
                local v1711
                v1710, v1711 = v1708(v1709, v1710)
                if v1710 == nil then
                    break
                end
                if v1711:IsA("VehicleSeat") and vu1145.LocalPlayer.Character.Humanoid.Sit == false then
                    firetouchinterest(vu1148.Character.HumanoidRootPart, v1711, 0)
                    vu1150(0.1)
                    firetouchinterest(vu1148.Character.HumanoidRootPart, v1711, 1)
                    return
                end
            end
        end)
        v1520.bx:box("anti chat filter", "text", function(p1712)
			-- upvalues: (ref) vu123
            local v1713 = {}
            for v1714 = 1, # p1712 do
                local v1715 = p1712:sub(v1714, v1714)
                local v1716 = string.lower(v1715) == "n" and ">n>" or (string.lower(v1715) == "i" and "<\208\134>" or (string.lower(v1715) == "t" and ">t<" or (string.lower(v1715) == "c" and "<>\209\129>" or (string.lower(v1715) == ".k" and "<k<" or (string.lower(v1715) == "s" and "><<s><" or (string.lower(v1715) == ".o" and "<o>" or (string.lower(v1715) == "p" and "<<\209\128>" or (string.lower(v1715) == ".a" and "<\208\176><<" or (string.lower(v1715) == "x" and "><\209\133>" or (string.lower(v1715) == "g" and "<g>" or (string.lower(v1715) == "m" and ">\208\188>" or (string.lower(v1715) == "l" and ">\206\153<" or (string.lower(v1715) == "u" and "<u>" or (string.lower(v1715) == "b" and "<b>" or (string.lower(v1715) == "f" and "<f." or (string.lower(v1715) == "r" and "<r." or (string.lower(v1715) == "d" and "<<>d>>" or (string.lower(v1715) == "s" and bypass_s and "<>\209\149>" or (string.lower(v1715) == "h" and "<\210\187><" or (string.lower(v1715) == "n" and ">n>" or (string.lower(v1715) == "m" and ">>m<<" or (string.lower(v1715) == "t" and "<>t>>" or (string.lower(v1715) == "l" and "<<l>" or (string.lower(v1715) == "y" and "<y>>" or (string.lower(v1715) == "e" and "<e>" or v1715)))))))))))))))))))))))))
                table.insert(v1713, v1716)
            end
            local v1717, v1718, v1719 = pairs(v1713)
            local v1720 = ""
            while true do
                local v1721
                v1719, v1721 = v1717(v1718, v1719)
                if v1719 == nil then
                    break
                end
                v1720 = v1720 .. v1721
            end
            vu123(v1720)
        end)
        local v1722 = v1345:page("workspace")
        v1722.label:label("workspace")
        v1722.bx:box("gravity", vu1290.Gravity, function(p1723)
			-- upvalues: (ref) vu1290
            vu1290.Gravity = p1723
        end)
        v1722.bx:box("FallenPartsDestroyHeight", vu1290.FallenPartsDestroyHeight, function(p1724)
			-- upvalues: (ref) vu1290
            vu1290.FallenPartsDestroyHeight = tonumber(p1724) or vu1290.FallenPartsDestroyHeight
        end)
        v1722.bx:box("proximity hold duration", "value", function(p1725)
			-- upvalues: (ref) vu1290
            local v1726 = vu1290
            local v1727, v1728, v1729 = ipairs(v1726:GetDescendants())
            while true do
                local v1730
                v1729, v1730 = v1727(v1728, v1729)
                if v1729 == nil then
                    break
                end
                if v1730.ClassName == "ProximityPrompt" then
                    v1730.HoldDuration = p1725
                end
            end
        end)
        v1722.bx:box("max activation click detector", "value", function(p1731)
			-- upvalues: (ref) vu1290
            local v1732 = vu1290
            local v1733, v1734, v1735 = ipairs(v1732:GetDescendants())
            while true do
                local v1736
                v1735, v1736 = v1733(v1734, v1735)
                if v1735 == nil then
                    break
                end
                if v1736.ClassName == "ClickDetector" then
                    v1736.MaxActivationDistance = p1731
                end
            end
        end)
        v1722.btn:button("rejectcharacterdeletions check", function()
			-- upvalues: (ref) vu109, (ref) vu1290
            if gethiddenproperty then
                vu109("RejectCharacterDeletions = " .. tostring(gethiddenproperty(vu1290, "RejectCharacterDeletions")), 2)
            else
                vu109("Executor Doesn\'t support gethiddenproperty", 1)
            end
        end)
        v1722.label:label("camera")
        v1722.bx:box("fieldofview", vu1290.CurrentCamera.FieldOfView, function(p1737)
			-- upvalues: (ref) vu1290
            vu1290.CurrentCamera.FieldOfView = tonumber(p1737)
        end)
        v1722.bx:box("maxzoomdistance", vu1148.CameraMaxZoomDistance, function(p1738)
			-- upvalues: (ref) vu1148
            vu1148.CameraMaxZoomDistance = tonumber(p1738)
        end)
        v1722.drop:dropdown("camera type", "custom", {
            "Fixed",
            "Attach",
            "Watch",
            "Track",
            "Follow",
            "Custom",
            "Scriptable",
            "Orbital"
        }, function(p1739)
			-- upvalues: (ref) vu1290
            vu1290.CurrentCamera.CameraType = p1739
        end)
        local v1740 = v1345:page("game")
        v1740.label:label("game")
        v1740.btn:button("get creator userid", function()
			-- upvalues: (ref) vu109, (ref) vu10
            vu109("Creator UserId = " .. tostring(vu10.CreatorId), 2)
        end)
        v1740.btn:button("get creator username", function()
			-- upvalues: (ref) vu10, (ref) vu109
            local v1741 = vu10.CreatorId
            local v1742 = vu10.Players:GetNameFromUserIdAsync(v1741)
            vu109("Creator Username = " .. tostring(v1742), 2)
        end)
        v1740.btn:button("get gameid", function()
			-- upvalues: (ref) vu109, (ref) vu10
            vu109("Game Id = " .. tostring(vu10.GameId), 2)
        end)
        v1740.btn:button("get placeid", function()
			-- upvalues: (ref) vu109, (ref) vu10
            vu109("Place Id = " .. tostring(vu10.PlaceId), 2)
        end)
        v1740.btn:button("get server jobid", function()
			-- upvalues: (ref) vu109, (ref) vu10
            vu109("Server Job Id = " .. tostring(vu10.JobId), 2)
        end)
        v1740.btn:button("get server ping", function()
			-- upvalues: (ref) vu109, (ref) vu1148
            local v1743 = vu1148
            vu109("Server Ping = " .. tostring(v1743:GetNetworkPing()) .. "ms", 2)
        end)
        v1740.bx:box("join jobid", "jobid", function(p1744)
			-- upvalues: (ref) vu11
            vu11:GetService("TeleportService"):TeleportToPlaceInstance(vu11.PlaceId, p1744)
        end)
        if vu249 ~= nil then
            function Destroy(p1745)
				-- upvalues: (ref) vu249
                vu249:FireServer(p1745)
            end
            v1740.btn:button("shutdown server", function()
				-- upvalues: (ref) vu10
                local v1746, v1747, v1748 = pairs(vu10:GetService("Players"):GetPlayers())
                while true do
                    local v1749
                    v1748, v1749 = v1746(v1747, v1748)
                    if v1748 == nil then
                        break
                    end
                    Destroy(v1749)
                end
            end)
            v1740.btn:button("break game", function()
				-- upvalues: (ref) vu11
                local v1750, v1751, v1752 = pairs(vu11:GetService("ReplicatedStorage"):GetDescendants())
                while true do
                    local v1753
                    v1752, v1753 = v1750(v1751, v1752)
                    if v1752 == nil then
                        break
                    end
                    Destroy(v1753)
                end
            end, true)
            v1740.btn:button("default lighting", function()
				-- upvalues: (ref) vu11
                local v1754, v1755, v1756 = pairs(vu11:GetService("Lighting"):GetDescendants())
                while true do
                    local v1757
                    v1756, v1757 = v1754(v1755, v1756)
                    if v1756 == nil then
                        break
                    end
                    Destroy(v1757)
                end
            end)
        end
        local v1758 = v1345:page("place", "http://www.roblox.com/asset/?id=83425223420532")
        v1758.label:label("some game only")
        if vu249 ~= nil then
            function Destroy(p1759)
				-- upvalues: (ref) vu249
                vu249:FireServer(p1759)
            end
            v1758.btn:button("kill all", function()
				-- upvalues: (ref) vu10
                local v1760, v1761, v1762 = pairs(vu10:GetService("Players"):GetPlayers())
                while true do
                    local v1763
                    v1762, v1763 = v1760(v1761, v1762)
                    if v1762 == nil then
                        break
                    end
                    Destroy(v1763.Character:FindFirstChild("Head"))
                end
            end, true)
            v1758.btn:button("kick everyone", function()
				-- upvalues: (ref) vu10, (ref) vu1148
                local v1764, v1765, v1766 = pairs(vu10:GetService("Players"):GetPlayers())
                while true do
                    local v1767
                    v1766, v1767 = v1764(v1765, v1766)
                    if v1766 == nil then
                        break
                    end
                    if v1767 ~= vu1148 then
                        Destroy(v1767)
                    end
                end
            end, true)
            v1758.btn:button("freeze everyone", function()
				-- upvalues: (ref) vu10, (ref) vu1148
                local v1768, v1769, v1770 = pairs(vu10:GetService("Players"):GetPlayers())
                while true do
                    local v1771
                    v1770, v1771 = v1768(v1769, v1770)
                    if v1770 == nil then
                        break
                    end
                    if v1771 ~= vu1148 then
                        v1771.Character:FindFirstChild("Head").Anchored = true
                        Destroy(v1771.Character:FindFirstChild("HumanoidRootPart"))
                    end
                end
            end, true)
            v1758.btn:button("delete spawnlocation", function()
				-- upvalues: (ref) vu1290
                local v1772 = vu1290
                local v1773, v1774, v1775 = pairs(v1772:GetDescendants())
                while true do
                    local v1776
                    v1775, v1776 = v1773(v1774, v1775)
                    if v1775 == nil then
                        break
                    end
                    if v1776.Name == "SpawnLocation" then
                        Destroy(v1776)
                    end
                end
            end)
        end
        if vu10:GetService("SoundService") and vu10:GetService("SoundService").RespectFilteringEnabled == false then
            local vu1777 = false
            local vu1778 = dalse
            vu1293:Connect(function()
				-- upvalues: (ref) vu1777, (ref) vu1290, (ref) vu1778
                if vu1777 then
                    local v1779 = vu1290
                    local v1780, v1781, v1782 = pairs(v1779:GetDescendants())
                    while true do
                        local v1783
                        v1782, v1783 = v1780(v1781, v1782)
                        if v1782 == nil then
                            break
                        end
                        if v1783:IsA("Sound") then
                            v1783:Play()
                        end
                    end
                    task.wait()
                end
                if vu1778 then
                    local v1784 = vu1290
                    local v1785, v1786, v1787 = pairs(v1784:GetDescendants())
                    while true do
                        local v1788
                        v1787, v1788 = v1785(v1786, v1787)
                        if v1787 == nil then
                            break
                        end
                        if v1788:IsA("Sound") then
                            v1788:Stop()
                        end
                    end
                    task.wait()
                end
            end)
            v1758.tgg:toggle("loop play all sound", function(p1789)
				-- upvalues: (ref) vu1777
                vu1777 = p1789
            end)
            v1758.tgg:toggle("loop stop all sound", function(p1790)
				-- upvalues: (ref) vu1778
                vu1778 = p1790
            end)
            v1758.label:label("non loop")
            v1758.btn:button("play all sound", function(_)
				-- upvalues: (ref) vu1290
                local v1791 = vu1290
                local v1792, v1793, v1794 = pairs(v1791:GetDescendants())
                while true do
                    local v1795
                    v1794, v1795 = v1792(v1793, v1794)
                    if v1794 == nil then
                        break
                    end
                    if v1795:IsA("Sound") then
                        v1795:Play()
                    end
                end
            end)
            v1758.btn:button("stop all sound", function(_)
				-- upvalues: (ref) vu1290
                local v1796 = vu1290
                local v1797, v1798, v1799 = pairs(v1796:GetDescendants())
                while true do
                    local v1800
                    v1799, v1800 = v1797(v1798, v1799)
                    if v1799 == nil then
                        break
                    end
                    if v1800:IsA("Sound") then
                        v1800:Stop()
                    end
                end
            end)
        end
        if vu1290:FindFirstChild("Island") and vu1290:FindFirstChild("Structure") then
            vu1148.PlayerGui:FindFirstChild("UIs")
            local v1801 = Instance.new("BindableEvent", vu1290)
            v1801.Event:Connect(function()
				-- upvalues: (ref) vu1148, (ref) vu1150
                vu1148.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true)
                vu1148.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                vu1150(0.4)
                vu1148.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, false)
            end)
            vu25:SetCore("ResetButtonCallback", v1801)
            local vu1802 = false
            vu1293:connect(function()
				-- upvalues: (ref) vu1802, (ref) vu1148
                if vu1802 ~= false then
                    if vu1148.PlayerGui:FindFirstChild("BlizzardGui") then
                        vu1148.PlayerGui.BlizzardGui:Destroy()
                    end
                    if vu1148.PlayerGui:FindFirstChild("SandStormGui") then
                        vu1148.PlayerGui.SandStormGui:Destroy()
                    end
                end
            end)
            v1758.btn:button("check current disaster", function()
				-- upvalues: (ref) vu1148, (ref) vu109
                if vu1148.Character:FindFirstChild("SurvivalTag") then
                    vu109(vu1148.Character.SurvivalTag.Value, 2)
                else
                    local v1803, v1804, v1805 = ipairs(workspace:GetDescendants())
                    while true do
                        local v1806
                        v1805, v1806 = v1803(v1804, v1805)
                        if v1805 == nil then
                            break
                        end
                        if v1806.Name == "SurvivalTag" then
                            vu109(v1806.Value, 2)
                            return
                        end
                    end
                end
            end)
            v1758.btn:button("Warn the disaster / say current disaster", function()
				-- upvalues: (ref) vu10, (ref) vu1148, (ref) vu123
                if vu10.Workspace[vu1148.Name]:FindFirstChild("SurvivalTag") then
                    local v1807 = {
                        "this might be an " .. vu10.Workspace[vu1148.Name].SurvivalTag.Value,
                        "the disaster might be " .. vu10.Workspace[vu1148.Name].SurvivalTag.Value,
                        vu10.Workspace[vu1148.Name].SurvivalTag.Value,
                        "the current disaster is an " .. vu10.Workspace[vu1148.Name].SurvivalTag.Value,
                        "I predict this disaster will be " .. vu10.Workspace[vu1148.Name].SurvivalTag.Value,
                        "there will be an " .. vu10.Workspace[vu1148.Name].SurvivalTag.Value
                    }
                    vu123(v1807[math.random(1, # v1807)])
                else
                    local v1808, v1809, v1810 = ipairs(workspace:GetDescendants())
                    while true do
                        local v1811
                        v1810, v1811 = v1808(v1809, v1810)
                        if v1810 == nil then
                            break
                        end
                        if v1811.Name == "SurvivalTag" then
                            local v1812 = {
                                "this might be an " .. v1811.Value,
                                "the disaster might be " .. v1811.Value,
                                v1811.Value,
                                "the current disaster is an " .. v1811.Value,
                                "I predict this disaster will be " .. v1811.Value,
                                "there will be an " .. v1811.Value
                            }
                            vu123(v1812[math.random(1, # v1812)])
                            return
                        end
                    end
                end
            end)
            v1758.btn:button("nofalldamage / damage reduce", function()
				-- upvalues: (ref) vu1148, (ref) vu1290, (ref) vu1150
                local v1813 = vu1148.Character.HumanoidRootPart.CFrame
                local v1814 = vu1148.Character.HumanoidRootPart.AssemblyLinearVelocity
                local v1815 = vu1148.Character.Humanoid.HipHeight
                wait(0.2)
                vu1148.Character.HumanoidRootPart.CFrame = vu1148.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2.3e34, 0)
                vu1148.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(1, 1, 1) * 16384
                vu1148.Character.Humanoid.HipHeight = 1000
                vu1148.Character.Parent = nil
                if vu1148.Character:FindFirstChild("FallDamageScript") then
                    vu1148.Character.FallDamageScript:Destroy()
                end
                workspace.FallenPartsDestroyHeight = 0 / 0
                wait(0.5)
                vu1148.Character.Parent = vu1290
                vu1148.Character.HumanoidRootPart.CFrame = v1813
                vu1148.Character.HumanoidRootPart.AssemblyLinearVelocity = v1814
                vu1148.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(0.1, 0.1, 0.1, 0.1, 0.2)
                vu1148.Character.Humanoid.HipHeight = v1815
                wait(0.1)
                if vu1148.Character:FindFirstChild("FallDamageScript") then
                    vu1148.Character.FallDamageScript.Parent = nil
                end
                vu1150(0.1)
                while true do
                    if vu1148.Character.HumanoidRootPart.AssemblyLinearVelocity.Y < - 11 then
                        vu1150(0.2)
                        vu1148.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                    end
                    vu1150()
                    if vu1148.Character.Humanoid.Health < 1 then
                        return
                    end
                end
            end)
            v1758.label:label("maps")
            v1758.btn:button("launch rocket", function()
				-- upvalues: (ref) vu1290, (ref) vu109
                check(fireclickdetector)
                if vu1290.Structure:FindFirstChild("Launch Land") then
                    if vu1290.Structure["Launch Land"]["SPACESHIP!!"].Shuttle.IgnitionButton:FindFirstChild("ClickDetector") then
                        fireclickdetector(vu1290.Structure["Launch Land"]["SPACESHIP!!"].Shuttle.IgnitionButton.ClickDetector)
                    end
                    if vu1290.Structure["Launch Land"].RocketStand.ConsoleLower.ReleaseButtonLower:FindFirstChild("ClickDetector") then
                        fireclickdetector(vu1290.Structure["Launch Land"].RocketStand.ConsoleLower.ReleaseButtonLower.ClickDetector)
                    end
                    if vu1290.Structure["Launch Land"].RocketStand.ConsoleUpper.ReleaseButtonUpper:FindFirstChild("ClickDetector") then
                        fireclickdetector(vu1290.Structure["Launch Land"].RocketStand.ConsoleUpper.ReleaseButtonUpper.ClickDetector)
                    end
                    if vu1290.Structure["Launch Land"].LoadingTower.Console.ReleaseEntryBridge:FindFirstChild("ClickDetector") then
                        fireclickdetector(vu1290.Structure["Launch Land"].LoadingTower.Console.ReleaseEntryBridge.ClickDetector)
                    end
                else
                    vu109("launch land map not found", 1)
                end
            end)
            v1758.btn:button("get prisonner outfit", function()
				-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu1150, (ref) vu109
                if vu1290.Structure:FindFirstChild("Prison Panic") then
                    if vu1290.Structure["Prison Panic"]:FindFirstChild("PrisonerAdmissionPart") then
                        local v1816 = vu1148.Character.HumanoidRootPart.CFrame
                        vu1150()
                        firetouchinterest(vu1148.Character.HumanoidRootPart, Workspace.Structure["Prison Panic"].PrisonerAdmissionPart, 0)
                        vu1150(0.1)
                        firetouchinterest(vu1148.Character.HumanoidRootPart, Workspace.Structure["Prison Panic"].PrisonerAdmissionPart, 1)
                        vu1150(0.3)
                        vu1148.Character.HumanoidRootPart.CFrame = v1816
                    end
                else
                    vu109("Prison Panic map not found", 1)
                end
            end)
            v1758.btn:button("the employee of the years", function()
				-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu1150, (ref) vu109
                if vu1290.Structure:FindFirstChild("Factory Frenzy") then
                    if Workspace.Structure["Factory Frenzy"].Building:FindFirstChild("Picture") then
                        local v1817 = vu1148.Character.HumanoidRootPart.CFrame
                        vu1150()
                        firetouchinterest(vu1148.Character.HumanoidRootPart, Workspace.Structure["Factory Frenzy"].Building.Picture.Part, 0)
                        vu1150(0.1)
                        firetouchinterest(vu1148.Character.HumanoidRootPart, Workspace.Structure["Factory Frenzy"].Building.Picture.Part, 1)
                        vu1150(0.1)
                        vu1148.Character.HumanoidRootPart.CFrame = v1817
                    end
                else
                    vu109("Factory Frenzy map not found", 1)
                end
            end)
            v1758.tgg:toggle("collide island", function(p1818)
				-- upvalues: (ref) vu10
                if p1818 then
                    local v1819, v1820, v1821 = pairs(vu10.workspace:GetDescendants())
                    while true do
                        local v1822
                        v1821, v1822 = v1819(v1820, v1821)
                        if v1821 == nil then
                            break
                        end
                        if v1822.Name == "LowerRocks" then
                            v1822.CanCollide = true
                        end
                    end
                else
                    local v1823, v1824, v1825 = pairs(vu10.workspace:GetDescendants())
                    while true do
                        local v1826
                        v1825, v1826 = v1823(v1824, v1825)
                        if v1825 == nil then
                            break
                        end
                        if v1826.Name == "LowerRocks" then
                            v1826.CanCollide = false
                        end
                    end
                end
            end)
            v1758.tgg:toggle("collide water", function(p1827)
				-- upvalues: (ref) vu10
                local v1828 = vu10.Workspace.WaterLevel
                if p1827 == false then
                    v1828.CanCollide = false
                    v1828.Size = Vector3.new(10, 1, 10)
                else
                    v1828.CanCollide = true
                    v1828.Size = Vector3.new(10000, 1, 10000)
                end
            end)
            local v1829 = v1345:page("client")
            v1829.label:label("client")
            local vu1830 = false
            local vu1831 = false
            vu1293:Connect(function()
				-- upvalues: (ref) vu1150, (ref) vu1830, (ref) vu10, (ref) vu75, (ref) vu1831
                vu1150()
                if vu1830 == true then
                    local v1832, v1833, v1834 = pairs(vu10.workspace.Island:GetDescendants())
                    while true do
                        local v1835
                        v1834, v1835 = v1832(v1833, v1834)
                        if v1834 == nil then
                            break
                        end
                        if v1835:IsA("Part") or v1835:IsA("BasePart") then
                            v1835.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        end
                    end
                    if vu75 ~= false then
                        local v1836, v1837, v1838 = pairs(vu10.workspace.Structure:GetDescendants())
                        while true do
                            local v1839
                            v1838, v1839 = v1836(v1837, v1838)
                            if v1838 == nil then
                                break
                            end
                            if v1839:IsA("Part") or v1839:IsA("BasePart") then
                                v1839.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                            end
                        end
                    end
                end
                if vu1831 == true then
                    local v1840, v1841, v1842 = pairs(vu10.workspace.Structure:GetDescendants())
                    while true do
                        local v1843
                        v1842, v1843 = v1840(v1841, v1842)
                        if v1842 == nil then
                            break
                        end
                        if v1843:IsA("Part") or v1843:IsA("BasePart") then
                            if v1843:FindFirstChild("TouchInterest") then
                                v1843.TouchInterest:Destroy()
                            end
                            if v1843:FindFirstChild("FireTag") then
                                v1843.FindFirstChild("FireTag"):Destroy()
                            end
                        end
                    end
                end
            end)
            v1829.btn:button("vote page", function()
				-- upvalues: (ref) vu1148
                vu1148.PlayerGui.UIs.mapVote.Active = true
                vu1148.PlayerGui.UIs.mapVote.Visible = true
                local v1844, v1845, v1846 = pairs(vu1148.PlayerGui.UIs.mapVote.frameContainer:GetDescendants())
                while true do
                    local v1847
                    v1846, v1847 = v1844(v1845, v1846)
                    if v1846 == nil then
                        break
                    end
                    if v1847:IsA("Frame") or (v1847:IsA("TextLabel") or (v1847:IsA("ImageLabel") or (v1847:IsA("ImageButton") or v1847:IsA("TextButton")))) then
                        v1847.Active = true
                        v1847.Visible = true
                        if v1847:IsA("ImageLabel") or v1847:IsA("ImageButton") then
                            v1847.ImageTransparency = 0
                        end
                    end
                end
            end)
            v1829.tgg:toggle("anti screen effect", function(p1848)
				-- upvalues: (ref) vu1802
                vu1802 = p1848
            end)
            v1829.btn:button("Delete Cloud", function()
				-- upvalues: (ref) vu1290, (ref) vu109
                if vu1290.Structure:FindFirstChild("Cloud") then
                    vu1290.Structure.Cloud:Destroy()
                else
                    vu109("Cloud Not Found!", 1)
                end
            end)
            v1829.label:label("client diaster")
            v1829.btn:button("delete tsunami", function()
				-- upvalues: (ref) vu1290, (ref) vu109
                if vu1290.Structure:FindFirstChild("TsunamiWave") then
                    vu1290.Structure:FindFirstChild("TsunamiWave"):Destroy()
                else
                    vu109("Tsunami not found", 2)
                end
            end)
            v1829.btn:button("delete flood", function()
				-- upvalues: (ref) vu1290, (ref) vu109
                if vu1290.Structure:FindFirstChild("FloodLevel") then
                    vu1290.Structure:FindFirstChild("FloodLevel"):Destroy()
                else
                    vu109("Flood not found", 2)
                end
            end)
            v1829.tgg:toggle("Anti Earthquake", function(p1849)
				-- upvalues: (ref) vu1830
                vu1830 = p1849
            end)
            v1829.btn:button("delete tornado", function()
				-- upvalues: (ref) vu1290, (ref) vu109
                if vu1290.Structure:FindFirstChild("TornadoPart") then
                    vu1290.Structure:FindFirstChild("TornadoPart"):Destroy()
                else
                    vu109("Tornado not found", 2)
                end
            end)
            v1829.btn:button("delete virus", function()
				-- upvalues: (ref) vu1290, (ref) vu109
                if vu1290.Structure:FindFirstChild("Virus") then
                    vu1290.Structure:FindFirstChild("Virus"):Destroy()
                else
                    vu109("Virus not found", 2)
                end
            end)
            v1829.label:label("client tool")
            v1829.btn:button("steal compass", function()
				-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu1145
                local v1850 = vu1290
                local v1851, v1852, v1853 = pairs(v1850:GetDescendants())
                while true do
                    local v1854
                    v1853, v1854 = v1851(v1852, v1853)
                    if v1853 == nil then
                        break
                    end
                    if v1854.Name == "Compass" then
                        local v1855 = v1854:Clone()
                        if not vu1148.Character:FindFirstChild("Compass") then
                            v1855.Parent = vu1148.Character
                            return vu109("Compass Found", 2)
                        end
                    end
                end
                local v1856 = vu1145
                local v1857, v1858, v1859 = pairs(v1856:GetDescendants())
                while true do
                    local v1860
                    v1859, v1860 = v1857(v1858, v1859)
                    if v1859 == nil then
                        break
                    end
                    if v1860.Name == "Compass" then
                        local v1861 = v1860:Clone()
                        if not vu1148.Character:FindFirstChild("Compass") then
                            v1861.Parent = vu1148.Character
                            vu109("Compass Found", 2)
                            return
                        end
                    end
                end
            end)
            v1829.btn:button("steal redapple", function()
				-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu1145
                local v1862 = vu1290
                local v1863, v1864, v1865 = pairs(v1862:GetDescendants())
                while true do
                    local v1866
                    v1865, v1866 = v1863(v1864, v1865)
                    if v1865 == nil then
                        break
                    end
                    if v1866.Name == "RedApple" then
                        local v1867 = v1866:Clone()
                        if not vu1148.Character:FindFirstChild("RedApple") then
                            v1867.Parent = vu1148.Character
                            return vu109("Apple Found", 2)
                        end
                    end
                end
                local v1868 = vu1145
                local v1869, v1870, v1871 = pairs(v1868:GetDescendants())
                while true do
                    local v1872
                    v1871, v1872 = v1869(v1870, v1871)
                    if v1871 == nil then
                        break
                    end
                    if v1872.Name == "RedApple" then
                        local v1873 = v1872:Clone()
                        if not vu1148.Character:FindFirstChild("RedApple") then
                            v1873.Parent = vu1148.Character
                            vu109("Apple Found", 2)
                            return
                        end
                    end
                end
            end)
            v1829.btn:button("steal greenballoon", function()
				-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu1145
                local v1874 = vu1290
                local v1875, v1876, v1877 = pairs(v1874:GetDescendants())
                while true do
                    local v1878
                    v1877, v1878 = v1875(v1876, v1877)
                    if v1877 == nil then
                        break
                    end
                    if v1878.Name == "GreenBalloon" then
                        local v1879 = v1878:Clone()
                        if not vu1148.Character:FindFirstChild("GreenBalloon") then
                            v1879.Parent = vu1148.Character
                            return vu109("ballon Found", 2)
                        end
                    end
                end
                local v1880 = vu1145
                local v1881, v1882, v1883 = pairs(v1880:GetDescendants())
                while true do
                    local v1884
                    v1883, v1884 = v1881(v1882, v1883)
                    if v1883 == nil then
                        break
                    end
                    if v1884.Name == "GreenBalloon" then
                        local v1885 = v1884:Clone()
                        if not vu1148.Character:FindFirstChild("GreenBalloon") then
                            v1885.Parent = vu1148.Character
                            vu109("Ballon Found", 2)
                            return
                        end
                    end
                end
            end)
            local v1886 = v1345:page("teleport")
            v1886.btn:button("teleport to tower lobby", function()
				-- upvalues: (ref) vu70, (ref) vu1148
                if vu70 == false then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 269.621368, 190.999954, 302.266388)
                else
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 243, 180, 332)
                end
            end)
            v1886.btn:button("teleport to island", function()
				-- upvalues: (ref) vu1148
                vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 124.25569915771484, 47.39999008178711, 2.0680651664733887)
            end)
            v1886.label:label("maps")
            v1886.btn:button("teleport to highplace", function()
				-- upvalues: (ref) vu1290, (ref) vu1148
                if vu1290.Structure:FindFirstChild("Party Palace") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(67, 153, 6)
                end
                if vu1290.Structure:FindFirstChild("Surf Central") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(72.4239501953125, 100.39999389648438, - 32.21678924560547)
                end
                if vu1290.Structure:FindFirstChild("Modest Headquarters") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(14.434722900390625, 283.3999938964844, 67.87517547607422)
                end
                if vu1290.Structure:FindFirstChild("Happy Home") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 34.10074996948242, 102.59996795654297, - 4.319141864776611)
                end
                if vu1290.Structure:FindFirstChild("Coastal Quickstop") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(107.8952407836914, 137.37928771972656, 1.418898105621338)
                end
                if vu1290.Structure:FindFirstChild("Heights School") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 49.16118621826172, 113.31828308105469, 3.398894786834717)
                end
                if vu1290.Structure:FindFirstChild("Launch Land") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 18.85447883605957, 144.4034423828125, - 12.991125106811523)
                end
                if vu1290.Structure:FindFirstChild("Lucky Mart") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(92.79798889160156, 89.20000457763672, 40.98291015625)
                end
                if vu1290.Structure:FindFirstChild("Arch Park") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(12.025935173034668, 94.19063568115234, 33.64884948730469)
                end
                if vu1290.Structure:FindFirstChild("Prison Panic") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(74.98745727539062, 118.66841888427734, - 34.641170501708984)
                end
                if vu1290.Structure:FindFirstChild("Factory Frenzy") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(50.993438720703125, 196.7998046875, - 30.814504623413086)
                end
                if vu1290.Structure:FindFirstChild("Sky Tower") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 5.681400299072266, 204.39999389648438, 13.812007904052734)
                end
                if vu1290.Structure:FindFirstChild("Rainbow Ride") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 41.042259216308594, 76.63646697998047, 1.3630688190460205)
                end
                if vu1290.Structure:FindFirstChild("Manic Mansion") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(15.365442276000977, 81.18711853027344, - 65.1589126586914)
                end
                if vu1290.Structure:FindFirstChild("Safety Second") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(53.98949432373047, 114.38255310058594, - 38.371055603027344)
                end
                if vu1290.Structure:FindFirstChild("Trailer Park") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 18.445396423339844, 132.40011596679688, - 37.1988525390625)
                end
                if vu1290.Structure:FindFirstChild("Furious Station") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 12.204794883728027, 171.40048217773438, 90.81671142578125)
                end
                if vu1290.Structure:FindFirstChild("Glass Office") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 9.40787410736084, 146.39999389648438, 29.454124450683594)
                end
                if vu1290.Structure:FindFirstChild("Raving Raceway") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 28.796178817749023, 92.39999389648438, - 8.363834381103516)
                end
                if vu1290.Structure:FindFirstChild("Sunny Ranch") then
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 2.02400541305542, 120.4000015258789, - 48.39736557006836)
                end
            end)
            v1886.label:label("server")
            v1886.btn:button("teleport to chinese version", function()
				-- upvalues: (ref) vu23, (ref) vu1148
                vu23:Teleport(3696971654, vu1148)
            end)
            v1886.btn:button("teleport to public version", function()
				-- upvalues: (ref) vu23, (ref) vu1148
                vu23:Teleport(189707, vu1148)
            end)
            local v1887 = v1345:page("auto")
            local vu1888 = false
            local vu1889 = false
            vu1293:Connect(function()
				-- upvalues: (ref) vu1889, (ref) vu1150, (ref) vu1290, (ref) vu10, (ref) vu1148, (ref) vu1888
                if vu1889 == true then
                    vu1150(0.1)
                    if vu1290.Structure:FindFirstChild("Launch Land") then
                        if vu1290.Structure["Launch Land"]:FindFirstChild("SPACESHIP!!") and vu1290.Structure["Launch Land"]["SPACESHIP!!"].Shuttle.IgnitionButton:FindFirstChild("ClickDetector") then
                            fireclickdetector(vu1290.Structure["Launch Land"]["SPACESHIP!!"].Shuttle.IgnitionButton.ClickDetector)
                        end
                        if vu1290.Structure["Launch Land"].RocketStand.ConsoleLower.ReleaseButtonLower:FindFirstChild("ClickDetector") then
                            fireclickdetector(vu1290.Structure["Launch Land"].RocketStand.ConsoleLower.ReleaseButtonLower.ClickDetector)
                        end
                        if vu1290.Structure["Launch Land"].RocketStand.ConsoleUpper.ReleaseButtonUpper:FindFirstChild("ClickDetector") then
                            fireclickdetector(vu1290.Structure["Launch Land"].RocketStand.ConsoleUpper.ReleaseButtonUpper.ClickDetector)
                        end
                        if vu10:GetService("Workspace").Structure["Launch Land"].LoadingTower.Console.ReleaseEntryBridge:FindFirstChild("ClickDetector") then
                            fireclickdetector(vu1290.Structure["Launch Land"].LoadingTower.Console.ReleaseEntryBridge.ClickDetector)
                        end
                    end
                end
                if agpo == true and (vu1290.Structure:FindFirstChild("Prison Panic") and (vu1290.Structure["Prison Panic"]:FindFirstChild("PrisonerAdmissionPart") and not vu1148.Character:FindFirstChildWhichIsA("Shirt").ShirtTemplate == "rbxassetid://903178177")) then
                    local v1890 = vu1148.Character.HumanoidRootPart.CFrame
                    vu1150()
                    firetouchinterest(vu1148.Character.HumanoidRootPart, Workspace.Structure["Prison Panic"].PrisonerAdmissionPart, 0)
                    vu1150(0.1)
                    firetouchinterest(vu1148.Character.HumanoidRootPart, Workspace.Structure["Prison Panic"].PrisonerAdmissionPart, 1)
                    vu1150(0.3)
                    vu1148.Character.HumanoidRootPart.CFrame = v1890
                end
                if vu1888 and not vu1290.Structure:FindFirstChildOfClass("Model") then
                    if dieing ~= false then
                        dieing = false
                    else
                        dieing = true
                        vu1148.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true)
                        vu1148.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                        vu1148.Character.Humanoid.Health = 0
                        vu1150(0.4)
                        vu1148.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, false)
                    end
                end
            end)
            local vu1891 = false
            local vu1892 = false
            vu1148.CharacterAdded:Connect(function(p1893)
				-- upvalues: (ref) vu1891, (ref) vu1892, (ref) vu109, (ref) vu123
                p1893.ChildAdded:Connect(function(p1894)
					-- upvalues: (ref) vu1891, (ref) vu1892, (ref) vu109, (ref) vu123
                    if (vu1891 or vu1892) == true and p1894.Name == "SurvivalTag" then
                        vu109(p1894.Value, 2)
                        if vu1892 then
                            local v1895 = {
                                "this might be an " .. p1894.Value,
                                "the disaster might be " .. p1894.Value,
                                "the current disaster is an " .. p1894.Value,
                                "I predict this disaster will be " .. p1894.Value,
                                "there will be an " .. p1894.Value
                            }
                            vu123(v1895[math.random(1, # v1895)])
                        end
                    end
                end)
            end)
            vu1148.Character.ChildAdded:Connect(function(p1896)
				-- upvalues: (ref) vu1891, (ref) vu109
                if vu1891 == true and p1896.Name == "SurvivalTag" then
                    vu109(p1896.Value, 2)
                end
            end)
            v1887.tgg:toggle("auto lunch rocket", function(p1897)
				-- upvalues: (ref) vu1889, (ref) vu109
                vu1889 = p1897
                if not fireclickdetector then
                    vu109("fireclickdetector doesn\'t support on you executor", 1)
                end
            end, true)
            v1887.tgg:toggle("auto get prisonner outfit", function(p1898)
                agpo = p1898
            end, true)
            v1887.tgg:toggle("auto get current disaster", function(p1899)
				-- upvalues: (ref) vu1891
                vu1891 = p1899
            end, true)
            v1887.tgg:toggle("auto type current disaster", function(p1900)
				-- upvalues: (ref) vu1892
                vu1892 = p1900
            end, true)
            local vu1901 = false
            vu1293:Connect(function()
				-- upvalues: (ref) vu1901, (ref) vu1148, (ref) vu1150
                if vu1901 then
                    local v1902 = vu1148.Character
                    if v1902 and v1902.Parent then
                        vu1150()
                        vu1148.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(- 227, 179, 348)
                    end
                end
            end)
            v1887.tgg:toggle("Auto Afk Farm (lobby position loop)", function(p1903)
				-- upvalues: (ref) vu1901
                vu1901 = p1903
            end)
            v1887.tgg:toggle("auto reset when map changed", function(p1904)
				-- upvalues: (ref) vu1888
                vu1888 = p1904
            end)
        end
        if vu10:GetService("ReplicatedStorage"):FindFirstChild("RE") then
            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer()
            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer()
            local vu1905 = vu11:GetService("ReplicatedStorage").RE["1Too1l"]
            function _cleartool()
				-- upvalues: (ref) vu10
                vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer(unpack({
                    "ClearAllTools"
                }))
            end
            local v1906 = v1345:page("client")
            v1906.label:label("vehicles")
            local vu1907 = false
            vu1290:FindFirstChild("Vehicles").ChildAdded:Connect(function(p1908)
				-- upvalues: (ref) vu1907
                if vu1907 then
                    VESP(p1908)
                end
            end)
            v1906.tgg:toggle("vehicle highlight", function(p1909)
				-- upvalues: (ref) vu1907, (ref) vu1290
                if p1909 then
                    vu1907 = p1909
                    local v1910, v1911, v1912 = pairs(vu1290:FindFirstChild("Vehicles"):GetChildren())
                    while true do
                        local v1913
                        v1912, v1913 = v1910(v1911, v1912)
                        if v1912 == nil then
                            break
                        end
                        VESP(v1913)
                    end
                else
                    vu1907 = p1909
                    local v1914, v1915, v1916 = pairs(vu1290:FindFirstChild("Vehicles"):GetChildren())
                    while true do
                        local v1917
                        v1916, v1917 = v1914(v1915, v1916)
                        if v1916 == nil then
                            break
                        end
                        local v1918, v1919, v1920 = pairs(v1917:GetChildren())
                        while true do
                            local v1921
                            v1920, v1921 = v1918(v1919, v1920)
                            if v1920 == nil then
                                break
                            end
                            if v1921.Name == v1917.Name .. "vesp" then
                                v1921:Destroy()
                            end
                        end
                    end
                end
            end)
            v1906.label:label("gamepass")
            local v1922, v1923, v1924 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
            local v1925 = false
            local v1926 = false
            local v1927 = false
            local v1928 = false
            local v1929 = false
            local v1930 = false
            local v1931 = false
            local v1932 = false
            local v1933 = false
            local v1934 = false
            local v1935 = false
            local v1936 = false
            local v1937 = false
            local v1938 = false
            while true do
                local v1939, v1940 = v1922(v1923, v1924)
                if v1939 == nil then
                    break
                end
                v1924 = v1939
                if v1940.Name == "SilverPass" then
                    v1927 = v1940.Value
                end
                if v1940.Name == "FirePass" then
                    v1929 = v1940.Value
                end
                if v1940.Name == "FacePass" then
                    v1936 = v1940.Value
                end
                if v1940.Name == "HorsePass" then
                    v1937 = v1940.Value
                end
                if v1940.Name == "SpeedPass200" then
                    v1925 = v1940.Value
                end
                if v1940.Name == "ThemePass" then
                    v1926 = v1940.Value
                end
                if v1940.Name == "MusicPass" then
                    v1932 = v1940.Value
                end
                if v1940.Name == "PenthousePass" then
                    v1933 = v1940.Value
                end
                if v1940.Name == "DisasterPass" then
                    v1934 = v1940.Value
                end
                if v1940.Name == "BoatPass" then
                    v1938 = v1940.Value
                end
                if v1940.Name == "PropertyPass" then
                    v1930 = v1940.Value
                end
                if v1940.Name == "MansionPass" then
                    v1928 = v1940.Value
                end
                if v1940.Name == "VIP" then
                    v1935 = v1940.Value
                end
                if v1940.Name == "VehiclePackPass" then
                    v1931 = v1940.Value
                end
            end
            v1906.tgg:toggle("unlock premium", function(p1941)
				-- upvalues: (ref) vu1148
                local v1942, v1943, v1944 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1945
                    v1944, v1945 = v1942(v1943, v1944)
                    if v1944 == nil then
                        break
                    end
                    if v1945.Name == "SilverPass" then
                        v1945.Value = p1941
                    end
                end
            end, false, v1927)
            v1906.tgg:toggle("unlock VIP", function(p1946)
				-- upvalues: (ref) vu1148
                local v1947, v1948, v1949 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1950
                    v1949, v1950 = v1947(v1948, v1949)
                    if v1949 == nil then
                        break
                    end
                    if v1950.Name == "VIP" then
                        v1950.Value = p1946
                    end
                end
            end, false, v1935)
            v1906.tgg:toggle("unlock Mansion Pass", function(p1951)
				-- upvalues: (ref) vu1148
                local v1952, v1953, v1954 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1955
                    v1954, v1955 = v1952(v1953, v1954)
                    if v1954 == nil then
                        break
                    end
                    if v1955.Name == "MansionPass" then
                        v1955.Value = p1951
                    end
                end
            end, false, v1928)
            v1906.tgg:toggle("Unlock Demand Fire pass", function(p1956)
				-- upvalues: (ref) vu1148
                local v1957, v1958, v1959 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1960
                    v1959, v1960 = v1957(v1958, v1959)
                    if v1959 == nil then
                        break
                    end
                    if v1960.Name == "FirePass" then
                        v1960.Value = p1956
                    end
                end
            end, false, v1929)
            v1906.tgg:toggle("Unlock Faces pass", function(p1961)
				-- upvalues: (ref) vu1148
                local v1962, v1963, v1964 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1965
                    v1964, v1965 = v1962(v1963, v1964)
                    if v1964 == nil then
                        break
                    end
                    if v1965.Name == "FacePass" then
                        v1965.Value = p1961
                    end
                end
            end, false, v1936)
            v1906.tgg:toggle("Unlock Horse pass", function(p1966)
				-- upvalues: (ref) vu1148
                local v1967, v1968, v1969 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1970
                    v1969, v1970 = v1967(v1968, v1969)
                    if v1969 == nil then
                        break
                    end
                    if v1970.Name == "HorsePass" then
                        v1970.Value = p1966
                    end
                end
            end, false, v1937)
            v1906.tgg:toggle("Unlock Vehicle Pack Pass", function(p1971)
				-- upvalues: (ref) vu1148
                local v1972, v1973, v1974 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1975
                    v1974, v1975 = v1972(v1973, v1974)
                    if v1974 == nil then
                        break
                    end
                    if v1975.Name == "VehiclePackPass" then
                        v1975.Value = p1971
                    end
                end
            end, false, v1931)
            v1906.tgg:toggle("Unlock Vehicle speed pass", function(p1976)
				-- upvalues: (ref) vu1148
                local v1977, v1978, v1979 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1980
                    v1979, v1980 = v1977(v1978, v1979)
                    if v1979 == nil then
                        break
                    end
                    if v1980.Name == "SpeedPass200" then
                        v1980.Value = p1976
                    end
                end
            end, false, v1925)
            v1906.tgg:toggle("Unlock Theme Pass", function(p1981)
				-- upvalues: (ref) vu1148
                local v1982, v1983, v1984 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1985
                    v1984, v1985 = v1982(v1983, v1984)
                    if v1984 == nil then
                        break
                    end
                    if v1985.Name == "ThemePass" then
                        v1985.Value = p1981
                    end
                end
            end, false, v1926)
            v1906.tgg:toggle("Unlock MusicPass", function(p1986)
				-- upvalues: (ref) vu1148
                local v1987, v1988, v1989 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1990
                    v1989, v1990 = v1987(v1988, v1989)
                    if v1989 == nil then
                        break
                    end
                    if v1990.Name == "MusicPass" then
                        v1990.Value = p1986
                    end
                end
            end, false, v1932)
            v1906.tgg:toggle("Unlock Penthouse Pass", function(p1991)
				-- upvalues: (ref) vu1148
                local v1992, v1993, v1994 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v1995
                    v1994, v1995 = v1992(v1993, v1994)
                    if v1994 == nil then
                        break
                    end
                    if v1995.Name == "PenthousePass" then
                        v1995.Value = p1991
                    end
                end
            end, false, v1933)
            v1906.tgg:toggle("Unlock Disaster Pass", function(p1996)
				-- upvalues: (ref) vu1148
                local v1997, v1998, v1999 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v2000
                    v1999, v2000 = v1997(v1998, v1999)
                    if v1999 == nil then
                        break
                    end
                    if v2000.Name == "Disaster Pass" then
                        v2000.Value = p1996
                    end
                end
            end, false, v1934)
            v1906.tgg:toggle("Unlock Boat Pass", function(p2001)
				-- upvalues: (ref) vu1148
                local v2002, v2003, v2004 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v2005
                    v2004, v2005 = v2002(v2003, v2004)
                    if v2004 == nil then
                        break
                    end
                    if v2005.Name == "BoatPass" then
                        v2005.Value = p2001
                    end
                end
            end, false, v1938)
            v1906.tgg:toggle("Unlock Property Pass", function(p2006)
				-- upvalues: (ref) vu1148
                local v2007, v2008, v2009 = pairs(vu1148:FindFirstChild("PlayersBag"):GetDescendants())
                while true do
                    local v2010
                    v2009, v2010 = v2007(v2008, v2009)
                    if v2009 == nil then
                        break
                    end
                    if v2010.Name == "PropertyPass" then
                        v2010.Value = p2006
                    end
                end
            end, false, v1930)
            local v2011 = v1345:page("Fun")
            local vu2012 = vu10:GetService("ReplicatedStorage")
            local function vu2014(p2013)
				-- upvalues: (ref) vu2012
                return vu2012.RE:FindFirstChild("1RPNam1eTex1t"):FireServer("RolePlayName", p2013 or "")
            end
            local function vu2016(p2015)
				-- upvalues: (ref) vu2012
                return vu2012.RE:FindFirstChild("1RPNam1eTex1t"):FireServer("RolePlayBio", p2015 or "")
            end
            local function vu2018(p2017)
				-- upvalues: (ref) vu2012
                return vu2012.RE["1RPNam1eColo1r"]:FireServer("PickingRPNameColor", p2017)
            end
            local function vu2020(p2019)
				-- upvalues: (ref) vu2012
                return vu2012.RE["1RPNam1eColo1r"]:FireServer("PickingRPBioColor", p2019)
            end
            if vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t") then
                local vu2021 = false
                v2011.tgg:toggle("random rp name", function(p2022)
					-- upvalues: (ref) vu2021, (ref) vu2014
                    vu2021 = p2022
                    if p2022 == false then
                        wait(0.5)
                        vu2014()
                    end
                end)
                local vu2023 = false
                v2011.tgg:toggle("random rp bio", function(p2024)
					-- upvalues: (ref) vu2023, (ref) vu2016
                    vu2023 = p2024
                    if p2024 == false then
                        wait(0.5)
                        vu2016()
                    end
                end)
                vu1293:Connect(function()
					-- upvalues: (ref) vu2021, (ref) vu2014, (ref) vu64, (ref) vu2023, (ref) vu2016
                    if vu2021 then
                        vu2014(vu64())
                        wait(0.4234)
                    end
                    if vu2023 then
                        vu2016(vu64())
                        wait(0.4234)
                    end
                end)
                v2011.label:label("rp color changer")
                local vu2025 = false
                local vu2026 = false
                v2011.tgg:toggle("rgb color name", function(p2027)
					-- upvalues: (ref) vu2025, (ref) vu2018
                    vu2025 = p2027
                    if vu2025 then
                        repeat
                            local v2028 = 5
                            local v2029 = tick() % v2028 / v2028
                            vu2018(Color3.fromHSV(v2029, 1, 1))
                            wait(0.3)
                        until not vu2025
                    end
                end)
                v2011.tgg:toggle("rgb color bio", function(p2030)
					-- upvalues: (ref) vu2026, (ref) vu2020
                    vu2026 = p2030
                    if vu2026 then
                        repeat
                            local v2031 = 5
                            local v2032 = tick() % v2031 / v2031
                            vu2020(Color3.fromHSV(v2032, 1, 1))
                            wait(0.3)
                        until not vu2026
                    end
                end)
                v2011.label:label("fire function")
                v2011.btn:button("hand on fire", function()
					-- upvalues: (ref) vu1148, (ref) vu61, (ref) vu1290, (ref) vu1150, (ref) vu109
                    local v2033 = vu1148.Character
                    if v2033 then
                        local v2034 = vu61(v2033, "HumanoidRootPart", "BasePart")
                        if v2033 and v2034 then
                            local v2035 = vu1290.WorkspaceCom:FindFirstChild("001_Hospital").PoolClick.ClickDetector.MaxActivationDistance
                            local v2036 = v2034.CFrame
                            wait(0.2)
                            vu1290.WorkspaceCom:FindFirstChild("001_Hospital").PoolClick.ClickDetector.MaxActivationDistance = 5000
                            v2034.CFrame = vu1290.WorkspaceCom:FindFirstChild("001_Hospital").PoolClick.CFrame * CFrame.new(0, - 15, 0)
                            wait(0.3)
                            fireclickdetector(vu1290.WorkspaceCom:FindFirstChild("001_Hospital").PoolClick.ClickDetector)
                            vu1150(0.7)
                            vu1290.WorkspaceCom:FindFirstChild("001_Hospital").PoolClick.ClickDetector.MaxActivationDistance = v2035
                            v2034.CFrame = v2036
                        else
                            vu109("error humanoidrootpart or character not found!", 1)
                        end
                    end
                end)
                v2011.label:label("bio")
                v2011.drop:dropdown("bio text", "", {
                    "",
                    "\226\143\163 \239\188\161\239\189\132\239\189\141\239\189\137\239\189\142",
                    "H\204\181\205\145\204\145\205\135\204\169\205\153a\204\183\205\151\204\174\204\167c\204\184\204\189\204\134\204\142\205\130\204\130\204\136\204\129\204\157\204\166\205\147\205\156\204\164\204\170k\204\182\205\138\205\144\205\139\204\178\204\151\204\167\204\161\205\147\204\164\204\172e\204\181\205\145\205\151\204\143\205\144\204\161\205\147\205\154\204\159\204\167\205\150\204\179\204\161r\204\182\204\154\204\134\204\155\204\165\204\171\204\176\204\175\204\171\204\159\204\168\205\136\t"
                }, function(p2037)
					-- upvalues: (ref) vu2016
                    vu2016(p2037)
                end)
                v2011.label:label("billboard")
                v2011.bx:box("billboard 1", "string", function(p2038)
					-- upvalues: (ref) vu1145, (ref) vu1150, (ref) vu10
                    local v2039 = vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame
                    vu1150(0.1)
                    vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(439, 63, 519)
                    vu1150(0.2)
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Cemeter1y"):FireServer(unpack({
                        [1] = "ReturningCommercialWords",
                        [2] = 1,
                        [4] = p2038
                    }))
                    vu1150(0.2)
                    vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = v2039
                end)
                v2011.bx:box("billboard 2", "string", function(p2040)
					-- upvalues: (ref) vu1145, (ref) vu1150, (ref) vu10
                    local v2041 = vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame
                    vu1150(0.1)
                    vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 634, 25, 363)
                    vu1150(0.2)
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Cemeter1y"):FireServer(unpack({
                        [1] = "ReturningCommercialWords",
                        [2] = 2,
                        [4] = p2040
                    }))
                    vu1150(0.2)
                    vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = v2041
                end)
                v2011.bx:box("billboard 3", "string", function(p2042)
					-- upvalues: (ref) vu1145, (ref) vu1150, (ref) vu10
                    local v2043 = vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame
                    vu1150(0.1)
                    vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 242, 89, - 549)
                    vu1150(0.2)
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Cemeter1y"):FireServer(unpack({
                        [1] = "ReturningCommercialWords",
                        [2] = 3,
                        [4] = p2042
                    }))
                    vu1150(0.2)
                    vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = v2043
                end)
                v1758.label:label("place")
                v1758.btn:button("burn brookhaven BurgerBarn", function()
					-- upvalues: (ref) vu1148, (ref) vu1290, (ref) vu109
                    local v2044 = vu1148.Character.HumanoidRootPart.CFrame
                    if firetouchinterest and fireclickdetector then
                        for _ = 1, 13 do
                            vu1148.Character.HumanoidRootPart.CFrame = vu1290.WorkspaceCom["001_BurgerBarn"].Higher.CFrame
                            wait(0.2)
                            fireclickdetector(vu1290.WorkspaceCom["001_BurgerBarn"].Higher.ClickDetector)
                        end
                        wait(0.5)
                        vu1148.Character.HumanoidRootPart.CFrame = v2044
                    end
                end)
                v1758.btn:button("burn happy burger store", function()
					-- upvalues: (ref) vu1145, (ref) vu1150, (ref) vu1290
                    local v2045 = vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame
                    vu1150(0.1)
                    if not vu1290.WorkspaceCom["001_CommercialStores"].CommercialStorage4.Store:FindFirstChild("001_HappyBurger") then
                        vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = vu1290.WorkspaceCom["001_CommercialStores"].CommercialPlot4Buttons.Commercial4Store3.CFrame
                        vu1150(0.2)
                        fireclickdetector(vu1290.WorkspaceCom["001_CommercialStores"].CommercialPlot4Buttons.Commercial4Store3.ClickDetector)
                    end
                    repeat
                        vu1150()
                    until vu1290.WorkspaceCom["001_CommercialStores"].CommercialStorage4.Store:FindFirstChild("001_HappyBurger")
                    for _ = 1, 13 do
                        vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = vu1290.WorkspaceCom["001_CommercialStores"].CommercialStorage4.Store["001_HappyBurger"].Higher.CFrame
                        vu1150(0.2)
                        fireclickdetector(vu1290.WorkspaceCom["001_CommercialStores"].CommercialStorage4.Store["001_HappyBurger"].Higher.ClickDetector)
                    end
                    vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = v2045
                end)
                v1758.btn:button("airport gun detect", function()
					-- upvalues: (ref) vu1148, (ref) vu10, (ref) vu1150
                    local v2046 = vu1148.Character.HumanoidRootPart.CFrame
                    if not vu1148.Backpack:FindFirstChild("Assault") then
                        vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack({
                            "PickingTools",
                            "Assault"
                        }))
                    end
                    vu1150(0.1)
                    vu1148.Backpack:FindFirstChild("Assault").Parent = vu1148.Character
                    vu1150(0.2)
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(315, 4, 43)
                    vu1150(0.2)
                    vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(316, 4, 45)
                    vu1148.Character.Humanoid.Jump = true
                    vu1150(0.7)
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer(unpack({
                        "PlayerWantsToDeleteTool",
                        "Assault"
                    }))
                    vu1148.Character.HumanoidRootPart.CFrame = v2046
                end)
                local vu2047 = false
                vu1293:Connect(function()
					-- upvalues: (ref) vu2047, (ref) vu10, (ref) vu1150
                    if vu2047 then
                        vu10:GetService("ReplicatedStorage").RE["1Hors1eRemot1e"]:FireServer(unpack({
                            "HorseName",
                            "\212\140e\207\132 r\208\190\209\129\208\189\209\150\207\129\209\149 \213\189n\209\150ver\209\149\208\176\211\128 n\208\190\212\157\n"
                        }))
                        vu1150()
                    end
                end)
                local v2048 = nil
                if vu1290:FindFirstChild("EasterSign001!") then
                    local v2049, v2050, v2051 = pairs(vu1290:FindFirstChild("EasterSign001!"):GetChildren())
                    local v2052 = 0
                    while true do
                        local v2053
                        v2051, v2053 = v2049(v2050, v2051)
                        if v2051 == nil then
                            break
                        end
                        v2052 = v2052 + 1
                    end
                    if v2052 > 1 then
                        v2048 = true
                    end
                end
                if v2048 then
                    v1758.label:label("event")
                    v1758.btn:button("collect the event", function()
						-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu61, (ref) vu1150, (ref) vu109, (ref) vu69
                        local v2054 = 0
                        vu1290.CurrentCamera.CameraType = Enum.CameraType.Scriptable
                        local v2055 = vu1148.Character:FindFirstChildOfClass("Humanoid")
                        local v2056 = vu1148.Character:FindFirstChild("HumanoidRootPart")
                        local v2057 = v2056.CFrame
                        if v2055.Sit then
                            v2055.Sit = false
                        end
                        local v2058, v2059, v2060 = pairs(vu1290:FindFirstChild("Easter001!"):GetDescendants())
                        while true do
                            local v2061
                            v2060, v2061 = v2058(v2059, v2060)
                            if v2060 == nil then
                                break
                            end
                            if v2061:IsA("BasePart") then
                                local v2062 = vu1148.Character
                                if v2062 then
                                    local v2063 = vu61(v2062, "HumanoidRootPart", "BasePart")
                                    if not (v2062 and v2063) then
                                        return vu109("character nil!", 1)
                                    end
                                    v2054 = v2054 + 1
                                    if v2055.Sit then
                                        v2055.Sit = false
                                    end
                                    v2063.CFrame = v2061.CFrame * CFrame.new(0, 10, 0)
                                    v2061.CFrame = v2063.CFrame
                                    vu1150(0.1)
                                end
                            end
                        end
                        v2056.CFrame = v2057
                        vu69()
                        if v2054 < 1 then
                            vu109("Not found?!..", 1)
                        end
                    end)
                end
                v1758.label:label("trolling")
                v1758.btn:button("touch for free admin", function()
					-- upvalues: (ref) vu183, (ref) vu1145, (ref) vu1148, (ref) vu10, (ref) vu1150, (ref) vu6
                    vu183 = true
                    local v2064 = vu1145.LocalPlayer.Character.Animate
                    stopanim()
                    vu1148.Character.Animate.Disabled = true
                    local v2065 = vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
                    local v2066 = vu1145.LocalPlayer.Character.HumanoidRootPart.Position.Y
                    if not vu1145.LocalPlayer.Character:FindFirstChild("DefaultPart") then
                        vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                            "wear",
                            12623361503
                        }))
                    end
                    vu1150(0.3)
                    v2064.Parent = nil
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack({
                        "RolePlayBio",
                        "\225\180\155\225\180\143\225\180\156\225\180\132\202\156 F\225\180\143\202\128 F\202\128\225\180\135\225\180\135 \225\180\128\225\180\133\225\180\141\201\170\201\180!"
                    }))
                    vu1150(0.1)
                    repeat
                        vu1145.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vu1145.LocalPlayer.Character.HumanoidRootPart.Position.X, v2066 + - 5, vu1145.LocalPlayer.Character.HumanoidRootPart.Position.Z)
                        vu1150()
                    until vu1145.LocalPlayer.Character.Humanoid.Jump == true or vu1145.LocalPlayer.Character.Humanoid.Health <= 1
                    vu1148.Character:FindFirstChild("HumanoidRootPart").CFrame = v2065 * CFrame.new(0, - 10, 0)
                    v2064.Parent = vu1145.LocalPlayer.Character
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        12623361503
                    }))
                    vu1150()
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack({
                        "RolePlayBio",
                        ""
                    }))
                    vu1150()
                    local v2067 = vu6
                    local v2068, v2069 = vu1145.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
                    while true do
                        local v2070
                        v2069, v2070 = v2067(v2068, v2069)
                        if v2069 == nil then
                            break
                        end
                        v2070:Stop()
                    end
                    vu183 = false
                    vu1148.Character.Animate.Disabled = false
                end)
            end
            if vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r") then
                local vu2071 = false
                local v2072 = v1345:page("Avatar")
                v2072.label:label("Avatar")
                v2072.drop:dropdown("Girl Avatar", "Girl Avatar", {
                    "Girl Avatar",
                    "Girl Avatar1",
                    "Girl Avatar2"
                }, function(p2073)
					-- upvalues: (ref) vu2071, (ref) vu46, (ref) vu10
                    if not vu2071 then
                        if p2073 == "Girl Avatar" then
                            vu2071 = true
                            vu46(vu10:HttpGet("https://gist.githubusercontent.com/sometestg/4dbf5cefcbb3e4e4d4dc8b58dafa5be2/raw/5264953b0182bf1795a19bd53b3b5168a96afebc/gistfile1.txt"))()
                            wait(1.2)
                            vu2071 = false
                        elseif p2073 == "Girl Avatar1" then
                            vu2071 = true
                            vu46(vu10:HttpGet("https://gist.githubusercontent.com/sometestg/4ff91e3690cc7608a448cfd82d8728a0/raw/6a36f599b552e281d7533de672829f66e1552801/gistfile1.txt"))()
                            wait(1.2)
                            vu2071 = false
                        elseif p2073 == "Girl Avatar2" then
                            vu2071 = true
                            vu46(vu10:HttpGet("https://gist.githubusercontent.com/sometestg/a6861fb0d03550e43dccac37da4f8de5/raw/033143cf40362bc4736cd811acc6c1a3ba2e90c3/gistfile1.txt"))()
                            wait(1.2)
                            vu2071 = false
                        elseif p2073 == "Girl Avatar3" then
                            vu2071 = true
                            vu46(vu10:HttpGet("https://gist.githubusercontent.com/sometestg/90c3a502ecbf6d0ed4cbdd35d562983c/raw/daa6f3e48c33c516a08b34ae8483920e399b739c/gistfile1.txt"))()
                            wait(1.2)
                            vu2071 = false
                        end
                    end
                end)
                v2072.drop:dropdown("Boy Avatar", "Boy Avatar", {
                    "Boy Avatar"
                }, function(_)
					-- upvalues: (ref) vu2071, (ref) vu46, (ref) vu10
                    if not vu2071 then
                        vu2071 = true
                        vu46(vu10:HttpGet("https://gist.githubusercontent.com/sometestg/2c172fe607c05f97d0cc1ed74934ec22/raw/1e3f1a06d524eb4b670170d70417cf5e7203cf7e/gistfile1.txt"))()
                        wait(0.3)
                        vu2071 = false
                    end
                end)
                v2072.btn:button("Default Avatar", function()
					-- upvalues: (ref) vu2071, (ref) vu10
                    if not vu2071 then
                        vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack({
                            "OCA"
                        }))
                    end
                end)
                v2072.label:label("loop function")
                local function vu2076(p2074)
					-- upvalues: (ref) vu10
                    local v2075 = {
                        "GiveJobUIMenu",
                        tostring(p2074),
                        tostring(p2074),
                        true
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Jo1b"):FireServer(unpack(v2075))
                end
                local function vu2078(p2077)
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer(unpack({
                        "RequestingEmmitersName",
                        p2077
                    }))
                end
                local function vu2080(p2079)
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack({
                        "CharacterFollowSpawnPlayer",
                        p2079
                    }))
                end
                local vu2081 = false
                local vu2082 = false
                local vu2083 = false
                vu27:Connect(function()
					-- upvalues: (ref) vu2081, (ref) vu2076, (ref) vu2083, (ref) vu2078
                    if vu2081 then
                        local v2084, v2085, v2086 = ipairs({
                            5288270536,
                            5288269991,
                            5288269506,
                            5288268854,
                            5221907149,
                            9893355840,
                            5183366461,
                            5220912396,
                            5220911689,
                            5220911388,
                            5220911077,
                            5220910709,
                            5214218197,
                            5183368649,
                            5183367956,
                            5183367647,
                            5183367388,
                            5183367120,
                            9893743955,
                            5183368377,
                            5650351691
                        })
                        while true do
                            local v2087
                            v2086, v2087 = v2084(v2085, v2086)
                            if v2086 == nil then
                                break
                            end
                            vu2076(v2087)
                            wait(0.3)
                        end
                    end
                    if vu2083 then
                        local v2088, v2089, v2090 = ipairs({
                            "0002FreeWhite",
                            "0003FreeYellow",
                            "0004FreeOrange",
                            "0005FreeGreen",
                            "0006FreeBlue",
                            "0007FreePurple",
                            "0008FreePink",
                            "0009FreeRed"
                        })
                        while true do
                            local v2091
                            v2090, v2091 = v2088(v2089, v2090)
                            if v2090 == nil then
                                break
                            end
                            vu2078(v2091)
                            wait(0.4)
                        end
                    end
                end)
                local vu2092 = {
                    "White",
                    "Grey",
                    "Light yellow",
                    "Brick yellow",
                    "Bright red",
                    "Bright blue",
                    "Black",
                    "Bright yellow",
                    "Bright green",
                    "Dark green"
                }
                local vu2093 = false
                v2072.tgg:toggle("loop Random skintone color", function(p2094)
					-- upvalues: (ref) vu2093, (ref) vu2092, (ref) vu10
                    vu2093 = p2094
                    if vu2093 then
                        repeat
                            local v2095 = {
                                "skintone",
                                vu2092[math.random(1, # vu2092)]
                            }
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(v2095))
                            wait(1.57)
                        until vu2093 == false
                    end
                end)
                v2072.tgg:toggle("loop Random job", function(p2096)
					-- upvalues: (ref) vu2081, (ref) vu10
                    vu2081 = p2096
                    if not p2096 then
                        wait(0.5)
                        vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Jo1b"):FireServer(unpack({
                            "QuitJob"
                        }))
                    end
                end)
                v2072.tgg:toggle("loop Random baby", function(p2097)
					-- upvalues: (ref) vu2082, (ref) vu2080
                    vu2082 = p2097
                    if vu2082 then
                        repeat
                            vu2080("BabyBoy")
                            wait(0.3)
                            vu2080("BabyGirl")
                            wait(0.3)
                            vu2080("BabyGirl1")
                            wait(0.3)
                            vu2080("BabyBoy1")
                            wait(0.3)
                            vu2080("BabyGirl2")
                            wait(0.3)
                            vu2080("BabyBoy2")
                            wait(0.3)
                        until not vu2082
                    end
                end)
                v2072.tgg:toggle("loop Random effect emitter", function(p2098)
					-- upvalues: (ref) vu2083
                    vu2083 = p2098
                end)
                v2072.label:label("dominus Accessories")
                v2072.btn:button("Dominus Infernus", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        31101391
                    }))
                end)
                v2072.btn:button("Dominus Frigidus", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        48545806
                    }))
                end)
                v2072.btn:button("Dominus Astra", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        162067148
                    }))
                end)
                v2072.btn:button("Dominus Empyreus", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        21070012
                    }))
                end)
                v2072.label:label("noise hats")
                v2072.btn:button("witch Laugh", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        305888394
                    }))
                end)
                v2072.btn:button("Bloxy Cola", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        24114402
                    }))
                end)
                v2072.btn:button("harmonica", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        33070696
                    }))
                end)
                v2072.btn:button("Chicken", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack({
                        "wear",
                        24112667
                    }))
                end)
                v2072.label:label("bundle")
                v2072.btn:button("Ud\'zal", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack({
                        "CharacterChange",
                        {
                            3333104378,
                            3333102326,
                            3333096407,
                            3333103459,
                            3333101194,
                            15366383339
                        },
                        "By_Rochips"
                    }))
                end)
                v2072.btn:button("Korblox Deathspeaker", function()
					-- upvalues: (ref) vu10
                    local v2099 = {
                        "CharacterChange",
                        {
                            139607770,
                            139607625,
                            139607570,
                            139607718,
                            139607673,
                            139610147
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2099))
                end)
                v2072.btn:button("Headless Horseman", function()
					-- upvalues: (ref) vu10
                    local v2100 = {
                        "CharacterChange",
                        {
                            134082557,
                            134082473,
                            134082453,
                            134082533,
                            134082507,
                            134082579
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2100))
                end)
                v2072.btn:button("Biggest Bundle 2D CLOTHING", function()
					-- upvalues: (ref) vu10
                    local v2101 = {
                        "CharacterChange",
                        {
                            17713016036,
                            17713016151,
                            17713015861,
                            17713021340,
                            17713016191,
                            17713016199
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2101))
                end)
                v2072.btn:button("Doors Seek", function()
					-- upvalues: (ref) vu10
                    local v2102 = {
                        "CharacterChange",
                        {
                            121934456878760,
                            70903762344682,
                            138330366413386,
                            104854092487421,
                            74200978064138,
                            125675626307200
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2102))
                end)
                v2072.btn:button("Ultra Tall", function()
					-- upvalues: (ref) vu10
                    local v2103 = {
                        "CharacterChange",
                        {
                            94995961629302,
                            100558822187663,
                            110711743190640,
                            91059998815242,
                            132096480597445,
                            78696391276641
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2103))
                end)
                v2072.label:label("often used")
                v2072.btn:button("Korblox Deathspeaker Right Leg", function()
					-- upvalues: (ref) vu1148, (ref) vu10
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    local v2104 = {
                        "CharacterChange",
                        {
                            1,
                            1,
                            1,
                            139607718,
                            1,
                            1
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2104))
                end)
                v2072.btn:button("Headless Head", function()
					-- upvalues: (ref) vu1148, (ref) vu10
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    local v2105 = {
                        "CharacterChange",
                        {
                            1,
                            1,
                            1,
                            1,
                            1,
                            134082579
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2105))
                end)
                v2072.label:label("character size")
                v2072.btn:button("Normal Size", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack({
                        "CharacterSizeUp",
                        1
                    }))
                end)
                v2072.btn:button("Smallest Size", function()
					-- upvalues: (ref) vu10
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack({
                        "CharacterSizeDown",
                        0.99
                    }))
                end)
                v2072.label:label("custom bundle")
                local vu2106 = nil
                local vu2107 = nil
                local vu2108 = nil
                local vu2109 = nil
                local vu2110 = nil
                local vu2111 = nil
                v2072.bx:box("head", "bundle id", function(p2112)
					-- upvalues: (ref) vu1148, (ref) vu2106
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    vu2106 = p2112 or 1
                end)
                v2072.bx:box("torso", "bundle id", function(p2113)
					-- upvalues: (ref) vu1148, (ref) vu2107
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    vu2107 = p2113 or 1
                end)
                v2072.bx:box("left arm", "bundle id", function(p2114)
					-- upvalues: (ref) vu1148, (ref) vu2108
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    vu2108 = p2114 or 1
                end)
                v2072.bx:box("right arm", "bundle id", function(p2115)
					-- upvalues: (ref) vu1148, (ref) vu2109
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    vu2109 = p2115 or 1
                end)
                v2072.bx:box("left leg", "bundle id", function(p2116)
					-- upvalues: (ref) vu1148, (ref) vu2110
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    vu2110 = p2116 or 1
                end)
                v2072.bx:box("right leg", "bundle id", function(p2117)
					-- upvalues: (ref) vu1148, (ref) vu2111
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    vu2111 = p2117 or 1
                end)
                v2072.btn:button("generate", function()
					-- upvalues: (ref) vu1148, (ref) vu2107, (ref) vu2109, (ref) vu2108, (ref) vu2111, (ref) vu2110, (ref) vu2106, (ref) vu10
                    vu1148.Character.Humanoid:GetAppliedDescription()
                    local v2118 = {
                        "CharacterChange",
                        {
                            vu2107 or 1,
                            vu2109 or 1,
                            vu2108 or 1,
                            vu2111 or 1,
                            vu2110 or 1,
                            vu2106 or 1
                        },
                        "By_Rochips"
                    }
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(unpack(v2118))
                end)
                local v2119 = v1345:page("House", "http://www.roblox.com/asset/?id=89087763000940")
                v2119.label:label("my house")
                v2119.bx:box("house text", "string", function(p2120)
					-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu10
                    if not vu1290["001_Lots"]:FindFirstChild(vu1148.Name .. "House") then
                        return vu109("get a house first!", 1)
                    end
                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1RPHous1eEven1t"):FireServer(unpack({
                        "BusinessName",
                        p2120
                    }))
                end)
                local vu2121 = false
                v2119.tgg:toggle("random text house", function(p2122)
					-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu2121, (ref) vu64, (ref) vu10
                    if not vu1290["001_Lots"]:FindFirstChild(vu1148.Name .. "House") then
                        return vu109("get a house first!", 1)
                    end
                    vu2121 = p2122
                    if vu2121 then
                        repeat
                            local v2123 = {
                                "BusinessName",
                                vu64()
                            }
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1RPHous1eEven1t"):FireServer(unpack(v2123))
                            wait(0.3345)
                        until vu2121 == false
                    end
                end)
                local vu2124 = false
                v2119.tgg:toggle("rainbow text house", function(p2125)
					-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu2124, (ref) vu10
                    if not vu1290["001_Lots"]:FindFirstChild(vu1148.Name .. "House") then
                        return vu109("get a house first!", 1)
                    end
                    vu2124 = p2125
                    if vu2124 then
                        repeat
                            local v2126 = 5
                            local v2127 = tick() % v2126 / v2126
                            local v2128 = {
                                "PickingBusinessNameColor",
                                Color3.fromHSV(v2127, 1, 1)
                            }
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1RPHous1eEven1tColo1r"):FireServer(unpack(v2128))
                            wait(0.45)
                        until vu2124 == false
                    end
                end)
                local vu2129 = false
                v2119.tgg:toggle("rainbow house", function(p2130)
					-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu2129, (ref) vu10
                    if not vu1290["001_Lots"]:FindFirstChild(vu1148.Name .. "House") then
                        return vu109("get a house first!", 1)
                    end
                    vu2129 = p2130
                    if vu2129 then
                        repeat
                            local v2131 = 5
                            local v2132 = tick() % v2131 / v2131
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sHous1e"):FireServer("ColorPickHouse", Color3.fromHSV(v2132, 1, 1))
                            wait(1.35)
                        until vu2129 == false
                    end
                end)
                local vu2133 = false
                v2119.tgg:toggle("loop spawn baby stuff", function(p2134)
					-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu2133, (ref) vu10
                    if not vu1290["001_Lots"]:FindFirstChild(vu1148.Name .. "House") then
                        return vu109("get a house first!", 1)
                    end
                    vu2133 = p2134
                    if vu2133 then
                        repeat
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sHous1e"):FireServer(unpack({
                                "BabyOptionYes"
                            }))
                            wait(0.3)
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sHous1e"):FireServer(unpack({
                                "BabyOptionNo"
                            }))
                            wait(0.35)
                        until vu2133 == false
                    end
                end)
                local vu2135 = false
                v2119.tgg:toggle("loop curtains", function(p2136)
					-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu2135, (ref) vu10
                    if not vu1290["001_Lots"]:FindFirstChild(vu1148.Name .. "House") then
                        return vu109("get a house first!", 1)
                    end
                    vu2135 = p2136
                    if vu2135 then
                        repeat
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sHous1e"):FireServer(unpack({
                                "Curtains"
                            }))
                            wait(0.35)
                        until vu2135 == false
                    end
                end)
                v2119.btn:button("give roomates to everyone", function()
					-- upvalues: (ref) vu1290, (ref) vu1148, (ref) vu109, (ref) vu1145, (ref) vu10
                    local v2137 = 0
                    if not vu1290["001_Lots"]:FindFirstChild(vu1148.Name .. "House") then
                        return vu109("get a house first!", 1)
                    end
                    local v2138, v2139, v2140 = pairs(vu1290["001_Lots"][vu1148.Name .. "House"]:GetDescendants())
                    while true do
                        local v2141
                        v2140, v2141 = v2138(v2139, v2140)
                        if v2140 == nil then
                            break
                        end
                        if v2141.Name == "Number" then
                            v2137 = v2141.Value
                        end
                    end
                    local v2142 = vu1145
                    local v2143, v2144, v2145 = pairs(v2142:GetPlayers())
                    while true do
                        local v2146
                        v2145, v2146 = v2143(v2144, v2145)
                        if v2145 == nil then
                            break
                        end
                        if v2146.Name ~= vu1148.Name then
                            local v2147 = {
                                "GivePermissionLoopToServer",
                                v2146.Name,
                                v2137
                            }
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v2147))
                        end
                    end
                end)
                local vu2148 = false
                v2119.tgg:toggle("auto ban everyone from house", function(p2149)
					-- upvalues: (ref) vu2148, (ref) vu1145, (ref) vu1148, (ref) vu10
                    vu2148 = p2149
                    if vu2148 then
                        while true do
                            local v2150 = vu1145
                            local v2151, v2152, v2153 = pairs(v2150:GetPlayers())
                            while true do
                                local v2154
                                v2153, v2154 = v2151(v2152, v2153)
                                if v2153 == nil then
                                    break
                                end
                                if v2154.Name ~= vu1148.Name then
                                    local v2155 = {
                                        "BanPlayerFromHouse",
                                        v2154,
                                        v2154.Character
                                    }
                                    vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v2155))
                                    wait(1.5)
                                end
                            end
                            if vu2148 == false then
								-- goto l3
                            end
                        end
                    else
						-- ::l3::
                        return
                    end
                end)
                v2119.btn:button("unban everyone from house", function()
					-- upvalues: (ref) vu1145, (ref) vu1148, (ref) vu10
                    local v2156 = vu1145
                    local v2157, v2158, v2159 = pairs(v2156:GetPlayers())
                    while true do
                        local v2160
                        v2159, v2160 = v2157(v2158, v2159)
                        if v2159 == nil then
                            break
                        end
                        if v2160.Name ~= vu1148.Name then
                            local v2161 = {
                                "UnBanPlayerFromHouse",
                                v2160,
                                v2160.Character
                            }
                            vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(v2161))
                        end
                    end
                end)
                v2119.label:label("localplayer")
                function roomate(p2162, p2163)
					-- upvalues: (ref) vu1148, (ref) vu10
                    local v2164 = {
                        "GivePermissionLoopToServer",
                        p2163 or vu1148,
                        tonumber(p2162)
                    }
                    vu10:GetService("ReplicatedStorage").RE["1Playe1rTrigge1rEven1t"]:FireServer(unpack(v2164))
                end
                v2119.bx:box("Roomate To House", "house Number Pos", function(p2165)
                    roomate(p2165)
                end)
                v2119.bx:box("Delete Banbox House", "house Number Pos", function(p2166)
					-- upvalues: (ref) vu6, (ref) vu1290, (ref) vu1148
                    local v2167 = "BannedBlock" .. p2166
                    local v2168 = vu6
                    local v2169, v2170 = vu1290:GetDescendants()
                    while true do
                        local v2171
                        v2170, v2171 = v2168(v2169, v2170)
                        if v2170 == nil then
                            break
                        end
                        if v2171:IsDescendantOf(vu1148.Character) == false and v2171.Name == v2167 then
                            v2171:Destroy()
                        end
                    end
                end)
                v2119.bx:box("switch house light", "house Number Pos", function(p2172)
					-- upvalues: (ref) vu1148, (ref) vu1290, (ref) vu109
                    local v2173 = getRoot(vu1148.Character).CFrame
                    roomate(p2172)
                    local v2174, v2175, v2176 = pairs(vu1290["001_Lots"]:GetDescendants())
                    while true do
                        local v2177
                        v2176, v2177 = v2174(v2175, v2176)
                        if v2176 == nil then
                            break
                        end
                        if v2177:IsA("NumberValue") and (v2177.Name == "Number" and v2177.Value == tonumber(p2172)) then
                            local v2178, v2179, v2180 = pairs(v2177.Parent.Parent:GetDescendants())
                            while true do
                                local v2181
                                v2180, v2181 = v2178(v2179, v2180)
                                if v2180 == nil then
                                    break
                                end
                                if v2181.Name == "001_HouseLights" then
                                    local v2182, v2183, v2184 = pairs(v2181:GetDescendants())
                                    while true do
                                        local v2185
                                        v2184, v2185 = v2182(v2183, v2184)
                                        if v2184 == nil then
                                            break
                                        end
                                        if v2185:IsA("ClickDetector") then
                                            wait(0.7)
                                            v2185.MaxActivationDistance = math.huge
                                            getRoot(vu1148.Character).CFrame = v2185.Parent.CFrame
                                            fireclickdetector(v2185)
                                            vu109("switch light " .. tostring(v2185:GetFullName()), 2, 0.4)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    getRoot(vu1148.Character).CFrame = v2173
                end)
                v2119.bx:box("BBQ burn house", "house Number Pos", function(p2186)
					-- upvalues: (ref) vu1148, (ref) vu1290, (ref) vu109
                    local v2187 = getRoot(vu1148.Character).CFrame
                    roomate(p2186)
                    local v2188, v2189, v2190 = pairs(vu1290["001_Lots"]:GetDescendants())
                    while true do
                        local v2191
                        v2190, v2191 = v2188(v2189, v2190)
                        if v2190 == nil then
                            break
                        end
                        if v2191:IsA("NumberValue") and (v2191.Name == "Number" and v2191.Value == tonumber(p2186)) then
                            local v2192, v2193, v2194 = pairs(v2191.Parent.Parent:GetDescendants())
                            while true do
                                local v2195
                                v2194, v2195 = v2192(v2193, v2194)
                                if v2194 == nil then
                                    break
                                end
                                if v2195.Name == "001_BBQ" then
                                    local v2196, v2197, v2198 = pairs(v2195:GetChildren())
                                    while true do
                                        local v2199
                                        v2198, v2199 = v2196(v2197, v2198)
                                        if v2198 == nil then
                                            break
                                        end
                                        if v2199.Name == "TempUp" then
                                            wait(0.4)
                                            getRoot(vu1148.Character).CFrame = v2199.CFrame
                                            for _ = 1, 14 do
                                                wait(0.1)
                                                fireclickdetector(v2199.ClickDetector)
                                                vu109("increase temperature " .. tostring(v2199:GetFullName()), 2, 0.4)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    getRoot(vu1148.Character).CFrame = v2187
                end)
                v2119.label:label("all house function")
                local vu2200 = false
                v2119.btn:button("roomate to all house", function()
					-- upvalues: (ref) vu2200, (ref) vu109
                    if vu2200 ~= true then
                        vu2200 = true
                        for v2201 = 2, 37 do
                            vu109("giving permission process #" .. v2201, 2, 0.2)
                            roomate(v2201)
                            wait(0.68)
                        end
                        wait(0.1)
                        vu2200 = false
                    end
                end)
                local vu2202 = false
                v2119.btn:button("light switch all house (roomate needed)", function()
					-- upvalues: (ref) vu2202, (ref) vu2200, (ref) vu109, (ref) vu11, (ref) vu1148, (ref) vu1290, (ref) vu1150
                    if not vu2202 then
                        if vu2200 then
                            return vu109("Wait Until giving permission done", 2)
                        end
                        if hookmetamethod then
                            local vu2203 = nil
                            vu2203 = hookmetamethod(vu11, "__namecall", function(p2204, ...)
								-- upvalues: (ref) vu1148, (ref) vu11, (ref) vu2203
                                if p2204 == vu1148 and getnamecallmethod():lower() == "kick" then
                                    vu11:GetService("TeleportService"):TeleportToPlaceInstance(vu11.PlaceId, vu11.JobId, vu1148)
                                end
                                return vu2203(p2204, ...)
                            end)
                        end
                        vu2202 = true
                        vu109("Switching light being processed", 2)
                        local v2205, v2206, v2207 = pairs(vu1290["001_Lots"]:GetChildren())
                        while true do
                            local v2208
                            v2207, v2208 = v2205(v2206, v2207)
                            if v2207 == nil then
                                break
                            end
                            if v2208.Name ~= "For Sale" then
                                local v2209, v2210, v2211 = pairs(v2208:GetDescendants())
                                while true do
                                    local v2212
                                    v2211, v2212 = v2209(v2210, v2211)
                                    if v2211 == nil then
                                        break
                                    end
                                    if v2212.Name == "001_HouseLights" then
                                        local v2213, v2214, v2215 = pairs(v2212:GetDescendants())
                                        while true do
                                            local v2216
                                            v2215, v2216 = v2213(v2214, v2215)
                                            if v2215 == nil then
                                                break
                                            end
                                            vu1150(0.5)
                                            if v2216:IsA("ClickDetector") then
                                                v2216.MaxActivationDistance = 9949
                                                wait(0.2)
                                                fireclickdetector(v2216)
                                                vu109("switch light " .. tostring(v2216:GetFullName()), 2, 0.1)
                                            end
                                        end
                                    end
                                end
                                wait(0.4)
                            end
                        end
                        wait(0.1)
                        vu2202 = false
                    end
                end)
                local v2217 = v1345:page("Tools")
                v2217.label:label("tools function")
                v2217.btn:button("clear tools", function()
                    Game:GetService("ReplicatedStorage").RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
                end)
                v2217.btn:button("Equip all tools", function()
					-- upvalues: (ref) vu1148
                    local v2218, v2219, v2220 = pairs(vu1148.Backpack:GetDescendants())
                    while true do
                        local v2221
                        v2220, v2221 = v2218(v2219, v2220)
                        if v2220 == nil then
                            break
                        end
                        if v2221:IsA("Tool") then
                            v2221.Parent = vu1148.Character
                        end
                    end
                end)
                local function vu2229(p2222, p2223)
					-- upvalues: (ref) vu109, (ref) vu1148, (ref) vu1150, (ref) vu10, (ref) vu1905, (ref) vu28
                    _cleartool()
                    vu109("Wait until the duplicating " .. p2223 .. " tools process is complete", 2)
                    if not vu1148.Character then
                        return vu109("error character not found!", 1)
                    end
                    local v2224 = vu1148.Character
                    local v2225 = vu1148.Character:WaitForChild("HumanoidRootPart").CFrame
                    toolthatiwanttodupe = p2222
                    tools = p2222
                    if v2224.Humanoid.Sit then
                        vu1150()
                        v2224.Humanoid.Sit = false
                    end
                    wait(0.1)
                    _cleartool()
                    for _ = 1, 2 do
                        if not (v2224 and v2224.Parent) then
                            return vu109("failed! character not found.", 1)
                        end
                        task.wait()
                        vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, - 493.27, 999999999.414, 0.9743550406, - 0.175734088, 0.14049761, - 0.133441404, 0.0514023069, 0.989722729, - 0.181150302, - 0.983094692, 0.0266370922) * CFrame.Angles(math.rad(- 180), 0, 0)
                    end
                    vu1150(0.2)
                    vu1148.Character.HumanoidRootPart.Anchored = true
                    vu1150(0.3)
                    duping = true
                    for v2226 = 1, p2223 do
                        local vu2227 = v2226
                        if not (v2224 and v2224.Parent) then
                            return vu109("error character not found!", 1)
                        end
                        if duping == false then
                            vu10.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            return
                        end
                        local v2228 = {
                            "PickingTools",
                            toolthatiwanttodupe
                        }
                        vu1905:InvokeServer(unpack(v2228))
                        vu10:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolthatiwanttodupe).Parent = vu10.Players.LocalPlayer.Character
                        if duping == false then
                            vu10.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            return
                        end
                        vu1148.Character[toolthatiwanttodupe]:FindFirstChild("Handle").Name = "H?a?n?d?l?e"
                        vu1148.Character:FindFirstChild(toolthatiwanttodupe).Parent = vu10.Players.LocalPlayer.Backpack
                        vu1148.Backpack:FindFirstChild(toolthatiwanttodupe).Parent = vu10.Players.LocalPlayer.Character
                        repeat
                            vu1150()
                        until vu1148.Character:FindFirstChild(toolthatiwanttodupe) == nil
                        coroutine.wrap(function()
							-- upvalues: (ref) vu109, (ref) vu2227
                            vu109("got " .. vu2227 .. " tools!", 2, 0.02)
                        end)()
                    end
                    vu1148.Character.HumanoidRootPart.Anchored = false
                    vu1148.Character:FindFirstChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Dead, true)
                    vu1148.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                    repeat
                        vu28:Wait()
                    until vu10.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil
                    repeat
                        vu28:Wait()
                    until vu10.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    toolgrip = true
                    duping = false
                    vu1150()
                    vu1148.Character:FindFirstChild("HumanoidRootPart").CFrame = v2225
                    wait(0.4)
                end
                v2217.label:label("Pick Tools")
                local vu2230 = "Basketball"
                v2217.drop:dropdown("Tool", "Basketball", {
                    "Basketball",
                    "PaperbagFire",
                    "Couch",
                    "DuffleBagDiamonds",
                    "Crystal",
                    "FireX",
                    "Money",
                    "Paperbag",
                    "Box",
                    "Umbrella",
                    "FlashLight",
                    "Iphone",
                    "GlockBrown",
                    "LabGreen"
                }, function(p2231)
					-- upvalues: (ref) vu2230
                    vu2230 = p2231
                end)
                v2217.label:label("duplicate tools")
                local vu2232 = 3
                v2217.bx:box("tools amount", "value", function(p2233)
					-- upvalues: (ref) vu2232
                    vu2232 = tonumber(p2233) or 3
                end)
                v2217.btn:button("start duplicate", function()
					-- upvalues: (ref) vu2229, (ref) vu2230, (ref) vu2232
                    vu2229(vu2230, vu2232)
                end)
                v2217.btn:button("cancel duplicating", function()
					-- upvalues: (ref) vu1148
                    vu1148.Character:FindFirstChild("HumanoidRootPart").Anchored = false
                end)
                v2217.label:label("Tools build")
                local function vu2239()
					-- upvalues: (ref) vu1148
                    local v2234, v2235, v2236 = pairs(vu1148.Backpack:GetChildren())
                    local v2237 = 0
                    while true do
                        local v2238
                        v2236, v2238 = v2234(v2235, v2236)
                        if v2236 == nil then
                            break
                        end
                        if v2238:IsA("Tool") then
                            v2237 = 1 + v2237
                        end
                    end
                    return v2237
                end
                local function vu2245()
					-- upvalues: (ref) vu1148
                    local v2240 = vu1148.Character
                    local v2241, v2242, v2243 = pairs(v2240:GetChildren())
                    while true do
                        local v2244
                        v2243, v2244 = v2241(v2242, v2243)
                        if v2243 == nil then
                            break
                        end
                        if v2244:IsA("Tool") then
                            v2244.Parent = vu1148.Backpack
                        end
                    end
                end
                v2217.btn:button("long tools (minimum 40 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 40 then
                        return vu109("you need more than 40 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    local v2246, v2247, v2248 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2249
                        v2248, v2249 = v2246(v2247, v2248)
                        if v2248 == nil then
                            break
                        end
                        v2249.Grip = CFrame.new(0, 0, 1.5 + v2248)
                        vu1150(0.1)
                        v2249.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("sphere tools (minimum 40 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 40 then
                        return vu109("you need more than 40 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    local v2250 = math.pi * (3 - math.sqrt(5))
                    local v2251, v2252, v2253 = pairs(vu1148.Backpack:GetChildren())
                    local v2254 = 10
                    while true do
                        local v2255
                        v2253, v2255 = v2251(v2252, v2253)
                        if v2253 == nil then
                            break
                        end
                        local v2256 = 1 - (v2253 - 0.5) / # vu1148.Backpack:GetChildren() * 2
                        local v2257 = math.sqrt(1 - v2256 * v2256)
                        local v2258 = v2250 * v2253
                        local v2259 = math.cos(v2258) * v2257
                        local v2260 = math.sin(v2258) * v2257
                        v2255.Grip = CFrame.new(v2259 * v2254, v2256 * v2254, v2260 * v2254)
                        vu1150(0.1)
                        v2255.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("Circle tools (minimum 40 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 40 then
                        return vu109("you need more than 40 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    local v2261, v2262, v2263 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2264
                        v2263, v2264 = v2261(v2262, v2263)
                        if v2263 == nil then
                            break
                        end
                        v2264.Grip = CFrame.new(0, 0, 1.5 + v2263) * CFrame.Angles(1.4 + v2263, 0, 0)
                        vu1150(0.1)
                        v2264.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("mist tools (minimum 30 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148, (ref) vu28
                    vu2245()
                    vu1150()
                    if vu2239() < 30 then
                        return vu109("you need more than 30 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    local v2265 = vu1148.Backpack
                    local v2266 = vu1148.Character
                    local v2267, v2268, v2269 = ipairs(v2265:GetChildren())
                    local v2270 = {}
                    local v2271 = 3
                    local v2272 = 5
                    while true do
                        local v2273
                        v2269, v2273 = v2267(v2268, v2269)
                        if v2269 == nil then
                            break
                        end
                        if v2273:IsA("Tool") then
                            table.insert(v2270, v2273)
                        end
                    end
                    local v2274 = v2272 + # v2270 * v2271
                    local _ = v2266:FindFirstChild("HumanoidRootPart").Position
                    local v2275, v2276, v2277 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2278
                        v2277, v2278 = v2275(v2276, v2277)
                        if v2277 == nil then
                            break
                        end
                        local v2279 = math.random() * 2 * math.pi
                        local v2280 = math.random() * v2274
                        local v2281 = math.cos(v2279) * v2280
                        local v2282 = math.sin(v2279) * v2280
                        local v2283 = math.random(- v2274 / 2, v2274 / 2)
                        v2278.Grip = CFrame.new(v2281, v2283, v2282)
                        vu28:Wait()
                        v2278.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("massive mist tools (minimum 80 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148, (ref) vu28
                    vu2245()
                    vu1150()
                    if vu2239() < 80 then
                        return vu109("you need more than 80 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    local v2284 = vu1148.Backpack
                    local v2285 = vu1148.Character
                    local v2286, v2287, v2288 = ipairs(v2284:GetChildren())
                    local v2289 = {}
                    local v2290 = 2
                    local v2291 = 5
                    while true do
                        local v2292
                        v2288, v2292 = v2286(v2287, v2288)
                        if v2288 == nil then
                            break
                        end
                        if v2292:IsA("Tool") then
                            table.insert(v2289, v2292)
                        end
                    end
                    local v2293 = v2291 + # v2289 * v2290
                    local _ = v2285:FindFirstChild("HumanoidRootPart").Position
                    local v2294, v2295, v2296 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2297
                        v2296, v2297 = v2294(v2295, v2296)
                        if v2296 == nil then
                            break
                        end
                        local v2298 = math.random() * 2 * math.pi
                        local v2299 = math.random() * v2293
                        local v2300 = math.cos(v2298) * v2299
                        local v2301 = math.sin(v2298) * v2299
                        local v2302 = math.random(- v2293 / 2, v2293 / 2)
                        v2297.Grip = CFrame.new(v2300, v2302, v2301)
                        vu28:Wait()
                        v2297.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("spare tools (minimum 10 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 10 then
                        return vu109("you need more than 10 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    local v2303, v2304, v2305 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2306
                        v2305, v2306 = v2303(v2304, v2305)
                        if v2305 == nil then
                            break
                        end
                        v2306.Grip = CFrame.new(0, 0, 1.5 + v2305) * CFrame.Angles(1.4 + v2305, 1 + v2305, 0)
                        vu1150(0.1)
                        v2306.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("giant circle tools (minimum 100 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 100 then
                        return vu109("you need more than 100 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    local v2307, v2308, v2309 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2310
                        v2309, v2310 = v2307(v2308, v2309)
                        if v2309 == nil then
                            break
                        end
                        v2310.Grip = CFrame.new(0, 0, 1.5 + v2309) * CFrame.Angles(1.4 + v2309, 0, 0)
                        vu1150(0.1)
                        v2310.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("ball tools (minimum 20 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 20 then
                        return vu109("you need more than 20 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    vu2245()
                    vu1150()
                    local v2311, v2312, v2313 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2314
                        v2313, v2314 = v2311(v2312, v2313)
                        if v2313 == nil then
                            break
                        end
                        local v2315 = math.acos(1 - 2 * (v2313 / # vu1148.Backpack:GetChildren()))
                        local v2316 = math.pi * (1 + math.sqrt(5)) * v2313
                        v2314.Grip = CFrame.new(math.cos(v2316) * math.sin(v2315), math.sin(v2316) * math.sin(v2315), math.cos(v2315)) * CFrame.Angles(0, 0, 0)
                        vu1150(0.1)
                        v2314.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("cube tools (minimum 100 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 100 then
                        return vu109("you need more than 20 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    vu2245()
                    vu1150()
                    local v2317 = math.ceil((# vu1148.Backpack:GetChildren()) ^ 0.3333333333333333)
                    local v2318, v2319, v2320 = pairs(vu1148.Backpack:GetChildren())
                    local v2321 = 6
                    while true do
                        local v2322
                        v2320, v2322 = v2318(v2319, v2320)
                        if v2320 == nil then
                            break
                        end
                        local v2323 = (v2320 - 1) % v2317 * v2321
                        local v2324 = math.floor((v2320 - 1) / v2317) % v2317 * v2321
                        local v2325 = math.floor((v2320 - 1) / (v2317 * v2317)) * v2321
                        v2322.Grip = CFrame.new(v2323, v2324, v2325) * CFrame.Angles(0, 0, 0)
                        vu1150(0.1)
                        v2322.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("wall tools (minimum 20 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 20 then
                        return vu109("you need more than 20 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    vu2245()
                    vu1150()
                    local v2326 = vu1148.Backpack:GetChildren()
                    local v2327 = math.ceil(math.sqrt(# v2326))
                    local v2328 = 1.5
                    local v2329 = - (v2327 / 2) * v2328
                    local v2330 = - (v2327 / 2) * v2328
                    local v2331, v2332, v2333 = pairs(v2326)
                    local v2334 = 5.2
                    while true do
                        local v2335
                        v2333, v2335 = v2331(v2332, v2333)
                        if v2333 == nil then
                            break
                        end
                        local v2336 = (v2333 - 1) % v2327
                        local v2337 = math.floor((v2333 - 1) / v2327)
                        v2335.Grip = CFrame.new(v2329 + v2336 * v2328, v2334, v2330 + v2337 * v2328)
                        vu1150(0.1)
                        v2335.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("giants wall tools (minimum 90 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 90 then
                        return vu109("you need more than 90 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    vu2245()
                    local v2338 = vu1148.Backpack:GetChildren()
                    local v2339 = math.ceil(math.sqrt(# v2338))
                    local v2340 = 1.6
                    local v2341 = - (v2339 / 2) * v2340
                    local v2342 = - (v2339 / 2) * v2340
                    local v2343, v2344, v2345 = pairs(v2338)
                    local v2346 = 5.5
                    while true do
                        local v2347
                        v2345, v2347 = v2343(v2344, v2345)
                        if v2345 == nil then
                            break
                        end
                        local v2348 = (v2345 - 1) % v2339
                        local v2349 = math.floor((v2345 - 1) / v2339)
                        v2347.Grip = CFrame.new(v2341 + v2348 * v2340, v2346, v2342 + v2349 * v2340)
                        vu1150(0.1)
                        v2347.Parent = vu1148.Character
                    end
                end)
                v2217.btn:button("N4Z1 logo tools (mininum 29 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 29 then
                        return vu109("you need more than 29 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    vu2245()
                    vu1150()
                    local v2350 = {
                        CFrame.new(0, 0, 0),
                        CFrame.new(- 1.8, 0, 0),
                        CFrame.new(- 2.9, 0, 0),
                        CFrame.new(- 3.9, 0, 0),
                        CFrame.new(- 4.9, 0, 0),
                        CFrame.new(- 4.9, - 1.5, 0),
                        CFrame.new(- 4.9, - 2.2, 0),
                        CFrame.new(0, 0, 0),
                        CFrame.new(1.8, 0, 0),
                        CFrame.new(2.9, 0, 0),
                        CFrame.new(3.9, 0, 0),
                        CFrame.new(4.9, 0, 0),
                        CFrame.new(4.9, 1.5, 0),
                        CFrame.new(4.9, 2.2, 0),
                        CFrame.new(0, 0, 0),
                        CFrame.new(0, - 1.8, 0),
                        CFrame.new(0, - 2.9, 0),
                        CFrame.new(0, - 3.9, 0),
                        CFrame.new(0, - 4.9, 0),
                        CFrame.new(1.5, - 4.9, 0),
                        CFrame.new(2.2, - 4.9, 0),
                        CFrame.new(0, 0, 0),
                        CFrame.new(0, 1.8, 0),
                        CFrame.new(0, 2.9, 0),
                        CFrame.new(0, 3.9, 0),
                        CFrame.new(0, 4.9, 0),
                        CFrame.new(- 1.5, 4.9, 0),
                        CFrame.new(- 2.2, 4.9, 0)
                    }
                    local v2351, v2352, v2353 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2354
                        v2353, v2354 = v2351(v2352, v2353)
                        if v2353 == nil then
                            break
                        end
                        if v2353 <= # v2350 + 1 and 2 <= v2353 then
                            v2354.Grip = v2350[v2353 - 1]
                            v2354.Parent = vu1148.Character
                        end
                    end
                    wait(0.3)
                    local v2355, v2356, v2357 = pairs(vu1148.Backpack:GetDescendants())
                    while true do
                        local v2358
                        v2357, v2358 = v2355(v2356, v2357)
                        if v2357 == nil then
                            break
                        end
                        if v2358:IsA("Tool") then
                            v2358.Parent = vu1148.Character
                        end
                    end
                    wait(1)
                end)
                v2217.btn:button("tools hammer (minimum 17 tools)", function()
					-- upvalues: (ref) vu2245, (ref) vu1150, (ref) vu2239, (ref) vu109, (ref) vu1145, (ref) vu1148
                    vu2245()
                    vu1150()
                    if vu2239() < 17 then
                        return vu109("you need more than 17 tools to build this, make sure you have duplicated your tool", 1)
                    end
                    vu2245()
                    local v2359 = {
                        CFrame.new(0, 0, 0),
                        CFrame.new(0, - 1.5, 0),
                        CFrame.new(0, - 2.5, 0),
                        CFrame.new(0, - 3.5, 0),
                        CFrame.new(0, - 4.5, 0),
                        CFrame.new(0, - 5.5, 0),
                        CFrame.new(0, - 6.5, 0),
                        CFrame.new(0, - 6.5, - 1),
                        CFrame.new(0, - 6.5, - 1.5),
                        CFrame.new(0, - 6.5, 1.5),
                        CFrame.new(0, - 6.5, - 2.5),
                        CFrame.new(0, - 6.5, 2.5),
                        CFrame.new(0, - 6.5, - 3.5),
                        CFrame.new(0, - 6.5, - 3.5),
                        CFrame.new(1.5, - 6.5, - 1.5),
                        CFrame.new(- 1.5, - 6.5, - 1.5),
                        CFrame.new(1.5, - 6.5, 0)
                    }
                    local v2360, v2361, v2362 = pairs(vu1145.LocalPlayer.Character:GetDescendants())
                    while true do
                        local v2363
                        v2362, v2363 = v2360(v2361, v2362)
                        if v2362 == nil then
                            break
                        end
                        if v2363:IsA("Tool") then
                            v2363.Parent = vu1148.Backpack
                        end
                    end
                    wait(0.2)
                    local v2364, v2365, v2366 = pairs(vu1148.Backpack:GetChildren())
                    while true do
                        local v2367
                        v2366, v2367 = v2364(v2365, v2366)
                        if v2366 == nil then
                            break
                        end
                        if v2366 <= # v2359 + 1 and 2 <= v2366 then
                            v2367.Grip = v2359[v2366 - 1]
                            v2367.Parent = vu1148.Character
                        end
                    end
                    wait(0.3)
                    local v2368, v2369, v2370 = pairs(vu1148.Backpack:GetDescendants())
                    while true do
                        local v2371
                        v2370, v2371 = v2368(v2369, v2370)
                        if v2370 == nil then
                            break
                        end
                        if v2371:IsA("Tool") then
                            v2371.Parent = vu1148.Character
                        end
                    end
                    wait(1)
                end)
                v2217.label:label("tools abuse test")
                local vu2372 = false
                vu1293:Connect(function()
					-- upvalues: (ref) vu2372, (ref) vu1148, (ref) vu1150
                    if vu2372 == true then
                        local v2373, v2374, v2375 = pairs(vu1148.Character:GetDescendants())
                        while true do
                            local v2376
                            v2375, v2376 = v2373(v2374, v2375)
                            if v2375 == nil then
                                break
                            end
                            if v2376.Name == "ClickEvent" then
                                local v2377 = {
                                    vu1148.Character.HumanoidRootPart.Position * vu1148.Character.HumanoidRootPart.CFrame.LookVector * 15
                                }
                                v2376:FireServer(unpack(v2377))
                                vu1150(0.1)
                            end
                        end
                    end
                end)
                v2217.tgg:toggle("Loop Basketball Throw", function(p2378)
					-- upvalues: (ref) vu2372
                    vu2372 = p2378
                end)
                v2217.label:label("gun sections")
            end
            local v2379 = v1345:page("Vehicle")
            v2379.label:label("Vehicle Setting")
            local vu2380 = vu10:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sCa1r")
            local vu2381 = "ScooterVehicle"
            v2379.label:label("vehicle target")
            v2379.drop:dropdown("Vehicle", "ScooterVehicle", {
                "ScooterVehicle",
                "NPHarleyDavison",
                "GolfCart",
                "GolfCartElectric2",
                "SmartCar",
                "VWBus",
                "Cadillac",
                "CopChallenger",
                "Lambo",
                "MiniCooper"
            }, function(p2382)
				-- upvalues: (ref) vu2381
                vu2381 = p2382
            end)
            v2379.btn:button("spawn vehicle", function()
				-- upvalues: (ref) vu2381, (ref) vu11
                local v2383 = {
                    "PickingCar",
                    vu2381
                }
                vu11:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(v2383))
            end)
            v2379.label:label("Vehicle Adjustment")
            v2379.bx:box("Vehicle Speed (test stage)", "Numbers", function(p2384)
				-- upvalues: (ref) vu1148
                workspace.Vehicles:FindFirstChild(vu1148.Name .. "Car"):FindFirstChild("Body").VehicleSeat.Turbo.Value = p2384
            end)
            local vu2385 = false
            v2379.tgg:toggle("spam light", function(p2386)
				-- upvalues: (ref) vu2385, (ref) vu2380
                vu2385 = p2386
                if vu2385 then
                    repeat
                        vu2380:FireServer("Lights")
                        wait(1.1344)
                    until vu2385 == false
                end
            end)
            local vu2387 = false
            v2379.tgg:toggle("spam hazard", function(p2388)
				-- upvalues: (ref) vu2387, (ref) vu2380
                vu2387 = p2388
                if vu2387 then
                    repeat
                        vu2380:FireServer("Hazards")
                        wait(1.1344)
                    until vu2387 == false
                end
            end)
            v2379.label:label("car Adjustment (premium only)")
            v2379.btn:button("burn", function()
				-- upvalues: (ref) vu2380
                vu2380:FireServer("Fire")
            end)
            v2379.drop:dropdown("exploding wheel", "FrontLeft", {
                "FrontLeft",
                "FrontRight",
                "RearLeft",
                "RearRight"
            }, function(p2389)
				-- upvalues: (ref) vu2380
                vu2380:FireServer("Blow" .. p2389)
            end)
            local vu2390 = false
            local vu2391 = false
            v2379.tgg:toggle("spam duke", function(p2392)
				-- upvalues: (ref) vu2390, (ref) vu2380
                vu2390 = p2392
                if vu2390 then
                    repeat
                        vu2380:FireServer("Duke")
                        wait(1.342)
                    until vu2390 == false
                end
            end)
            v2379.tgg:toggle("spam duke2", function(p2393)
				-- upvalues: (ref) vu2391, (ref) vu2380
                vu2391 = p2393
                if vu2391 then
                    repeat
                        vu2380:FireServer("Duke1")
                        wait(1.253)
                    until vu2391 == false
                end
            end)
            local vu2394 = false
            v2379.tgg:toggle("rainbow car color", function(p2395)
				-- upvalues: (ref) vu2394, (ref) vu2380
                vu2394 = p2395
                if vu2394 then
                    repeat
                        local v2396 = 5
                        local v2397 = tick() % v2396 / v2396
                        local v2398 = {
                            "PickingCarColor",
                            Color3.fromHSV(v2397, 1, 1)
                        }
                        vu2380:FireServer(unpack(v2398))
                        wait(1.34)
                    until vu2394 == false
                end
            end)
            local v2399 = v1345:page("teleport")
            v2399.label:label("teleport to place")
            local vu2400 = CFrame.new
            v2399.btn:button("teleport to lobby", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 26, 3, - 6)
            end)
            v2399.btn:button("teleport to grocery", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 5, 3, - 133)
            end)
            v2399.btn:button("teleport to hair & nails", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 80, 3, - 129)
            end)
            v2399.btn:button("teleport to police officer", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 121, 3, 20)
            end)
            v2399.btn:button("teleport to icecream", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 128, 3, - 130)
            end)
            v2399.btn:button("teleport to arcade", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 171, 3, - 126)
            end)
            v2399.btn:button("teleport to hospital", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 304, 3, 28)
            end)
            v2399.btn:button("teleport to town hall", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 354, 7, - 116)
            end)
            v2399.btn:button("teleport to brooks diner", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(163, 7, 54)
            end)
            v2399.btn:button("teleport to bank", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(0, 3, 257)
            end)
            v2399.btn:button("teleport to brookhaven school", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(- 318, 4, 211)
            end)
            v2399.btn:button("teleport to brookhaven airport", function()
				-- upvalues: (ref) vu1148, (ref) vu2400
                getRoot(vu1148.Character).CFrame = vu2400(317, 4, 62)
            end)
        end
        local vu2401 = false
        if vu10:GetService("ReplicatedStorage"):FindFirstChild("PostRating") then
            v1758.btn:button("Give 1 star to everyone", function()
				-- upvalues: (ref) vu10, (ref) vu1148
                local v2402, v2403, v2404 = pairs(vu10.Players:GetChildren())
                while true do
                    local v2405
                    v2404, v2405 = v2402(v2403, v2404)
                    if v2404 == nil then
                        break
                    end
                    if v2405.Name ~= vu1148.Name then
                        vu10:GetService("ReplicatedStorage").PostRating:FireServer(unpack({
                            v2405,
                            1
                        }))
                    end
                end
            end)
            v1758.tgg:toggle("Random Booth Text", function(p2406)
				-- upvalues: (ref) vu2401
                vu2401 = p2406
            end)
            vu1293:Connect(function()
				-- upvalues: (ref) vu2401, (ref) vu64, (ref) vu10
                if vu2401 == true then
                    local v2407 = {
                        "Update",
                        {
                            ["DescriptionText"] = vu64(),
                            ["ImageId"] = 0
                        }
                    }
                    vu10:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(v2407))
                end
            end)
        end
        if vu10.PlaceId == 12109643 then
            local vu2408 = false
            vu10:GetService("RunService").Stepped:connect(function()
				-- upvalues: (ref) vu2408, (ref) vu1148
                if vu2408 then
                    local v2409, v2410, v2411 = pairs(vu1148.Character:GetChildren())
                    while true do
                        local v2412
                        v2411, v2412 = v2409(v2410, v2411)
                        if v2411 == nil then
                            break
                        end
                        if v2412.Name == "Spray" then
                            local _ = v2412.Handle.Mesh
                            v2412.Parent = workspace
                        end
                    end
                end
            end)
            function paint()
				-- upvalues: (ref) vu10, (ref) vu1148
                local v2413, v2414, v2415 = pairs(vu10.Workspace:GetChildren())
                while true do
                    local v2416
                    v2415, v2416 = v2413(v2414, v2415)
                    if v2415 == nil then
                        break
                    end
                    if v2416.Name == "Handle" then
                        v2416.CFrame = vu1148.Character.HumanoidRootPart.CFrame
                        v2416.Transparency = 1
                        v2416.CanCollide = false
                        task.wait()
                        v2416.CFrame = vu1148.Character["Left Leg"].CFrame
                    end
                end
            end
            function equip()
				-- upvalues: (ref) vu1148
                local v2417, v2418, v2419 = pairs(vu1148.Backpack:GetChildren())
                while true do
                    local v2420
                    v2419, v2420 = v2417(v2418, v2419)
                    if v2419 == nil then
                        break
                    end
                    if v2420.Name == "Spray" then
                        vu1148.Character.Humanoid:EquipTool(v2420)
                    end
                end
            end
            vu1293:connect(function()
				-- upvalues: (ref) vu2408
                if vu2408 then
                    paint()
                    equip()
                end
            end)
            local vu2421 = false
            vu1293:connect(function()
				-- upvalues: (ref) vu2421, (ref) vu1145, (ref) vu1290, (ref) vu1150
                if vu2421 then
                    firetouchinterest(vu1145.LocalPlayer.Character.HumanoidRootPart, vu1290.Button, 0)
                    firetouchinterest(vu1145.LocalPlayer.Character.HumanoidRootPart, vu1290.Button, 1)
                    vu1150()
                end
            end)
            local vu2422 = false
            vu1293:connect(function()
				-- upvalues: (ref) vu2422, (ref) vu1148
                if vu2422 == true and vu1148.PlayerGui:FindFirstChild("SprayGui") then
                    vu1148.PlayerGui.SprayGui:Destroy()
                end
            end)
            v1758.tgg:toggle("give spray", function(p2423)
				-- upvalues: (ref) vu2408
                vu2408 = p2423
            end)
            v1758.tgg:toggle("Remove SprayGui", function(p2424)
				-- upvalues: (ref) vu2422
                vu2422 = p2424
            end)
            v1758.tgg:toggle("god", function(p2425)
				-- upvalues: (ref) vu2421
                vu2421 = p2425
            end)
        end
        if vu10.ReplicatedStorage:FindFirstChild("ShootEvent") then
            local _ = vu1148.Character.HumanoidRootPart
            local vu2426 = vu1148.Name
            local vu2427 = vu10.ReplicatedStorage.meleeEvent
            local vu2428 = false
            vu1293:connect(function()
				-- upvalues: (ref) vu2428, (ref) vu10, (ref) vu2426, (ref) vu2427
                if vu2428 == true then
                    local v2429, v2430, v2431 = ipairs(vu10.Players:GetChildren())
                    while true do
                        local v2432
                        v2431, v2432 = v2429(v2430, v2431)
                        if v2431 == nil then
                            break
                        end
                        local v2433 = v2432.Character
                        if v2433 then
                            local _ = v2432.Name
                            local v2434 = v2433:WaitForChild("HumanoidRootPart")
                            local v2435 = v2434.Position
                            local v2436 = v2434.Position
                            if math.abs((v2435 - v2436).magnitude) < 10 and v2432.Name ~= vu2426 then
                                vu2427:FireServer(v2432)
                            end
                        end
                    end
                end
            end)
            v1758.tgg:toggle("Kill Aura", function(p2437)
				-- upvalues: (ref) vu2428
                vu2428 = p2437
            end)
        end
        if vu11.PlaceId == 5985232436 then
            local vu2438 = false
            local vu2439 = false
            local vu2440 = false
            local vu2441 = false
            local vu2442 = false
            local vu2443 = false
            vu1293:Connect(function()
				-- upvalues: (ref) vu1290, (ref) vu2438, (ref) vu1148, (ref) vu2439, (ref) vu2440, (ref) vu2441, (ref) vu25, (ref) vu2442, (ref) vu2443, (ref) vu10, (ref) vu1150
                if vu1290.Map:FindFirstChild("AntiHack") then
                    vu1290.Map.AntiHack:Destroy()
                end
                if vu2438 and vu1148.Character:FindFirstChild("Ragdoll") then
                    vu1148.Character.Ragdoll.LocalRagdollScript.Enabled = false
                    vu1148.Character.Ragdoll.Enabled = false
                end
                if vu2439 then
                    local v2444 = vu1290
                    local v2445, v2446, v2447 = pairs(v2444:GetDescendants())
                    while true do
                        local v2448
                        v2447, v2448 = v2445(v2446, v2447)
                        if v2447 == nil then
                            break
                        end
                        if string.find(v2448.Name, "Infector") then
                            v2448.CanTouch = false
                        end
                    end
                end
                if vu2440 then
                    local v2449 = vu1290
                    local v2450, v2451, v2452 = pairs(v2449:GetDescendants())
                    while true do
                        local v2453
                        v2452, v2453 = v2450(v2451, v2452)
                        if v2452 == nil then
                            break
                        end
                        if string.find(v2453.Name, "AntiSmiler") then
                            v2453.CanTouch = false
                        end
                    end
                end
                if vu2441 then
                    vu25:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
                end
                if vu2442 and firetouchinterest then
                    local v2454, v2455, v2456 = pairs(workspace.Map:GetDescendants())
                    while true do
                        local v2457
                        v2456, v2457 = v2454(v2455, v2456)
                        if v2456 == nil then
                            break
                        end
                        if v2457.Name == "SmileCoin" and v2457:FindFirstChild("TouchInterest") then
                            firetouchinterest(vu1148.Character.HumanoidRootPart, v2457, 0)
                            wait(0.1)
                        end
                    end
                    local v2458, v2459, v2460 = pairs(workspace.Particles:GetChildren())
                    while true do
                        local v2461
                        v2460, v2461 = v2458(v2459, v2460)
                        if v2460 == nil then
                            break
                        end
                        if v2461.Name == "SmileCoin" and v2461:FindFirstChild("TouchInterest") then
                            firetouchinterest(vu1148.Character.HumanoidRootPart, v2461, 0)
                            wait(0.1)
                        end
                    end
                end
                if vu2443 and vu1148.Character and vu1148.Character:FindFirstChild("Infected") then
                    local v2462, v2463, v2464 = ipairs(vu10.Players:GetChildren())
                    while true do
                        local v2465
                        v2464, v2465 = v2462(v2463, v2464)
                        if v2464 == nil then
                            break
                        end
                        local v2466 = v2465.Character
                        if v2466 then
                            local _ = v2465.Name
                            local v2467 = v2466:WaitForChild("HumanoidRootPart")
                            local v2468 = v2467.Position
                            local v2469 = v2467.Position
                            if math.abs((v2468 - v2469).magnitude) < 5 and v2465.Name ~= vu1148.Name then
                                vu1148.Character.HumanoidRootPart.CFrame = v2468.CFrame * vu1290.CurrentCamera.CFrame.LookVector
                                vu1148.Character.Infected.InfectEvent:FireServer()
                            end
                        end
                    end
                end
                vu1150()
            end)
            v1758.btn:button("get tools", function()
				-- upvalues: (ref) vu1148, (ref) vu1150
                vu1148.Character:GetPivot()
                local v2470, v2471, v2472 = pairs(workspace.Map:GetDescendants())
                while true do
                    local vu2473
                    v2472, vu2473 = v2470(v2471, v2472)
                    if v2472 == nil then
                        break
                    end
                    if string.find(vu2473.Name:lower(), "collection") then
                        vu2473:FindFirstChild("HitBox")
                        vu2473:FindFirstChild("Handle")
                        local v2474, v2475, v2476 = pairs(vu2473:GetDescendants())
                        local vu2477 = {}
                        while true do
                            local v2478
                            v2476, v2478 = v2474(v2475, v2476)
                            if v2476 == nil then
                                break
                            end
                            if v2478:IsA("BasePart") and v2478.CanCollide == true then
                                v2478.CanCollide = false
                                table.insert(vu2477, v2478)
                            end
                        end
                        vu2473:GetPivot()
                        task.spawn(function()
							-- upvalues: (ref) vu2473, (ref) vu1148, (ref) vu1150, (ref) vu2477
                            wait(0.05)
                            if vu2473:IsA("BasePart") and firetouchinterest then
                                firetouchinterest(vu1148.Character.HumanoidRootPart, vu2473, 0)
                                vu1150(0.1)
                                firetouchinterest(vu1148.Character.HumanoidRootPart, vu2473, 1)
                            end
                            local v2479, v2480, v2481 = pairs(vu2477)
                            while true do
                                local v2482
                                v2481, v2482 = v2479(v2480, v2481)
                                if v2481 == nil then
                                    break
                                end
                                v2482.CanCollide = true
                            end
                        end)
                    end
                end
            end)
            v1758.btn:button("get keys", function()
				-- upvalues: (ref) vu1148, (ref) vu1150
                local v2483, v2484, v2485 = pairs(workspace:GetDescendants())
                while true do
                    local v2486
                    v2485, v2486 = v2483(v2484, v2485)
                    if v2485 == nil then
                        break
                    end
                    if not v2486:IsA("Tool") and (v2486.Name == "Key" or (v2486.Name == "Red Key" or v2486.Name == "Green Key")) and v2486.Parent.Name ~= "KeySystem" then
                        v2486.CanCollide = false
                        v2486.CFrame = vu1148.Character:GetPivot()
                        vu1150(0.1)
                    end
                end
            end)
            v1758.btn:button("get coins", function()
				-- upvalues: (ref) vu1148
                if firetouchinterest then
                    local v2487, v2488, v2489 = pairs(workspace.Map:GetDescendants())
                    while true do
                        local v2490
                        v2489, v2490 = v2487(v2488, v2489)
                        if v2489 == nil then
                            break
                        end
                        if v2490.Name == "SmileCoin" and v2490:FindFirstChild("TouchInterest") then
                            firetouchinterest(vu1148.Character.HumanoidRootPart, v2490, 0)
                            wait(0.1)
                        end
                    end
                    local v2491, v2492, v2493 = pairs(workspace.Particles:GetChildren())
                    while true do
                        local v2494
                        v2493, v2494 = v2491(v2492, v2493)
                        if v2493 == nil then
                            break
                        end
                        if v2494.Name == "SmileCoin" and v2494:FindFirstChild("TouchInterest") then
                            firetouchinterest(vu1148.Character.HumanoidRootPart, v2494, 0)
                            wait(0.1)
                        end
                    end
                end
            end)
            v1758.tgg:toggle("anti backpack disabled", function(p2495)
				-- upvalues: (ref) vu2441
                vu2441 = p2495
            end)
            v1758.tgg:toggle("auto collect coins", function(p2496)
				-- upvalues: (ref) vu2442
                vu2442 = p2496
            end, true)
            v1758.label:label("human")
            v1758.btn:button("get weapon", function()
				-- upvalues: (ref) vu10, (ref) vu1148, (ref) vu1150
                local v2497 = vu10.Players.LocalPlayer.Character:GetPivot()
                vu1148.Character.HumanoidRootPart.CFrame = CFrame.new(- 16, - 15, - 14)
                local v2498, v2499, v2500 = pairs(workspace.Map:GetDescendants())
                while true do
                    local vu2501
                    v2500, vu2501 = v2498(v2499, v2500)
                    if v2500 == nil then
                        break
                    end
                    if string.find(vu2501.Name:lower(), "collection") then
                        vu2501:FindFirstChild("HitBox")
                        vu2501:FindFirstChild("Handle")
                        local v2502, v2503, v2504 = pairs(vu2501:GetDescendants())
                        local vu2505 = {}
                        while true do
                            local v2506
                            v2504, v2506 = v2502(v2503, v2504)
                            if v2504 == nil then
                                break
                            end
                            if v2506:IsA("BasePart") and v2506.CanCollide == true then
                                v2506.CanCollide = false
                                table.insert(vu2505, v2506)
                            end
                        end
                        local vu2507 = vu2501:GetPivot()
                        vu2501:PivotTo(v2497)
                        task.spawn(function()
							-- upvalues: (ref) vu1150, (ref) vu2501, (ref) vu2507, (ref) vu2505
                            vu1150(0.05)
                            vu2501:PivotTo(vu2507)
                            local v2508, v2509, v2510 = pairs(vu2505)
                            while true do
                                local v2511
                                v2510, v2511 = v2508(v2509, v2510)
                                if v2510 == nil then
                                    break
                                end
                                v2511.CanCollide = true
                            end
                        end)
                    end
                end
                vu1148.Character:PivotTo(v2497)
            end)
            v1758.tgg:toggle("disable smilers infectors", function(p2512)
				-- upvalues: (ref) vu2439, (ref) vu1290
                vu2439 = p2512
                if not p2512 then
                    local v2513 = vu1290
                    local v2514, v2515, v2516 = pairs(v2513:GetDescendants())
                    while true do
                        local v2517
                        v2516, v2517 = v2514(v2515, v2516)
                        if v2516 == nil then
                            break
                        end
                        if string.find(v2517.Name, "Infector") then
                            v2517.CanTouch = false
                        end
                    end
                end
            end)
            v1758.btn:button("infect self", function()
				-- upvalues: (ref) vu1148, (ref) vu1290, (ref) vu1150
                if firetouchinterest then
                    firetouchinterest(vu1148.Character.HumanoidRootPart, vu1290.Map.Infectors.Infector.Part, 0)
                    vu1150(0.1)
                    firetouchinterest(vu1148.Character.HumanoidRootPart, vu1290.Map.Infectors.Infector.Part, 1)
                end
            end)
            v1758.label:label("smilers")
            v1758.tgg:toggle("disable human kill bricks", function(p2518)
				-- upvalues: (ref) vu2440, (ref) vu1290
                vu2440 = p2518
                if not p2518 then
                    local v2519 = vu1290
                    local v2520, v2521, v2522 = pairs(v2519:GetDescendants())
                    while true do
                        local v2523
                        v2522, v2523 = v2520(v2521, v2522)
                        if v2522 == nil then
                            break
                        end
                        if string.find(v2523.Name, "AntiSmiler") then
                            v2523.CanTouch = false
                        end
                    end
                end
            end)
            v1758.tgg:toggle("infect aura (beta)", function(p2524)
				-- upvalues: (ref) vu2443
                vu2443 = p2524
            end)
        end
        local v2525 = v1345:page("Im_Patrick", "http://www.roblox.com/asset/?id=96581271712752")
        v2525.label:label("@Im_Patrick Youtube Script")
        if Drawing then
            vu10:GetService("UserInputService")
            local v2526 = workspace.CurrentCamera
            local vu2527 = vu10:GetService("GuiService")
            local vu2528 = vu10:GetService("VirtualInputManager")
            local v2529 = vu1148:GetMouse()
            local v2530 = v2526.ViewportSize / 2
            local vu2531 = v2530.X
            local vu2532 = v2530.Y
            local vu2533 = Drawing.new("Line")
            local vu2534 = Drawing.new("Line")
            local vu2535 = {
                ["Visible"] = false,
                ["Size"] = 15,
                ["Thickness"] = 0.5,
                ["Color"] = Color3.new(1, 1, 1),
                ["Transparency"] = 0.85,
                ["ToMouse"] = false
            }
            local v2536 = vu2535.Size / 2
            vu2533.Color = vu2535.Color
            vu2533.Thickness = vu2535.Thickness
            vu2533.Visible = vu2535.Visible
            vu2533.Transparency = vu2535.Transparency
            vu2534.Color = vu2535.Color
            vu2534.Thickness = vu2535.Thickness
            vu2534.Visible = vu2535.Visible
            vu2534.Transparency = vu2535.Transparency
            vu2533.From = Vector2.new(vu2531 - v2536, vu2532)
            vu2533.To = Vector2.new(vu2531 + v2536, vu2532)
            vu2534.From = Vector2.new(vu2531, vu2532 - v2536)
            vu2534.To = Vector2.new(vu2531, vu2532 + v2536)
            v2529.Button1Down:Connect(function()
				-- upvalues: (ref) vu2535, (ref) vu2527, (ref) vu2531, (ref) vu2532, (ref) vu2528, (ref) vu10
                if vu2535.Visible then
                    local v2537 = workspace.CurrentCamera
                    local v2538 = vu2527:GetGuiInset().Y
                    local v2539 = Vector2.new(vu2531, vu2532)
                    v2537:ScreenPointToRay(v2539.X, v2539.Y + v2538)
                    vu2528:SendMouseButtonEvent(v2539.X, v2539.Y, 0, true, vu10, 1)
                    vu2528:SendMouseButtonEvent(v2539.X, v2539.Y, 0, false, vu10, 1)
                end
            end)
            v2525.tgg:toggle("crosshair", function(p2540)
				-- upvalues: (ref) vu2535, (ref) vu2534, (ref) vu2533, (ref) vu109
                if Drawing then
                    vu2535.Visible = p2540
                    vu2534.Visible = p2540
                    vu2533.Visible = p2540
                end
            end)
        end
        local vu2541 = false
        v2525.btn:button("Psycho G", function()
			-- upvalues: (ref) vu2541, (ref) vu109, (ref) vu1148, (ref) vu10, (ref) vu39, (ref) vu28, (ref) vu61, (ref) vu34, (ref) vu27, (ref) vu1293, (ref) vu1150, (ref) vu25, (ref) vu183, (ref) vu1290
            if vu2541 == false then
                if vu1148.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
                    vu2541 = true
                    vu109("Psycho G Running! , key : F, Z", 2)
                    hillmusic = Instance.new("Sound", workspace)
                    hillmusic.Parent = vu10.Chat
                    hillmusic.Volume = 0.5
                    hillmusic.SoundId = "rbxassetid://1839456185"
                    hillmusic.Looped = true
                    hillmusic:Play()
                    local vu2542 = vu1148.Character
                    local vu2543 = true
                    local vu2544 = false
                    local _ = workspace.CurrentCamera
                    local vu2545 = true
                    local v2546 = vu10:GetService("RunService")
                    local v2547 = vu10:GetService("Players").LocalPlayer.Character
                    v2547:WaitForChild("Humanoid")
                    local vu2548 = v2547.HumanoidRootPart
                    local vu2549 = 2
                    local vu2550 = 3
                    local vu2551 = nil
                    local vu2552 = nil
                    local vu2553 = 0
                    local vu2554 = 0
                    local vu2555 = v2546.RenderStepped:Connect(function()
						-- upvalues: (ref) vu2545, (ref) vu2551, (ref) vu2548, (ref) vu2552, (ref) vu2553, (ref) vu2554, (ref) vu2550, (ref) vu2549
                        if vu2545 == true then
                            vu2551 = vu2548.Velocity * Vector3.new(1, 0, 1)
                            if vu2551.Magnitude <= 0.001 then
                                vu2553 = 0
                                vu2554 = 0
                            else
                                vu2552 = vu2551.Unit
                                vu2553 = vu2548.CFrame.RightVector:Dot(vu2552)
                                vu2554 = vu2548.CFrame.LookVector:Dot(vu2552)
                            end
                            vu2548.CFrame = vu2548.CFrame * CFrame.Angles(math.rad(- vu2554 * vu2550), 0, math.rad(- vu2553 * vu2549))
                        end
                    end)
                    local v2556 = vu1148.Character.Humanoid
                    local vu2557 = true
                    vu39(function()
						-- upvalues: (ref) vu28, (ref) vu2557, (ref) vu1148, (ref) vu61, (ref) vu34, (ref) vu27, (ref) vu1293
						-- block 58
                        local v2558 = nil
                        local v2559 = nil
                        local v2560 = 0.1
						-- ::l3::
                        repeat
                            vu28:Wait()
                        until vu2557
                        while vu2557 and not (v2558 and (v2558.Parent and (v2559 and v2559.Parent))) do
                            vu28:Wait()
                            v2558 = vu1148.Character
                            v2559 = vu61(v2558, "HumanoidRootPart", "BasePart") or (vu61(v2558, "Torso", "BasePart") or vu61(v2558, "UpperTorso", "BasePart")) or (vu61(v2558, "LowerTorso", "BasePart") or vu61(v2558, "Right Arm", "BasePart") or (vu61(v2558, "RightUpperArm", "BasePart") or vu61(v2558, "RightLowerArm", "BasePart")))
                        end
						-- ::l6::
                        if vu2557 then
                            local v2561 = v2559.Velocity
                            v2559.Velocity = v2561 * 100 + vu34(0, 100, 0)
                            vu27:Wait()
                            if v2558 and (v2558.Parent and (v2559 and v2559.Parent)) then
                                v2559.Velocity = v2561
                            end
                            vu1293:Wait()
                            if v2558 and (v2558.Parent and (v2559 and v2559.Parent)) then
                                v2559.Velocity = v2561 + vu34(0, v2560, 0)
                                v2560 = v2560 * - 1
                            end
                            local v2562, v2563, v2564 = pairs(v2558:GetDescendants())
                            while true do
                                local v2565
                                v2564, v2565 = v2562(v2563, v2564)
                                if v2564 == nil then
                                    break
                                end
                                if v2565:IsA("BasePart") and v2565.Name ~= floatName then
                                    v2565.CanCollide = false
                                end
                            end
                        end
						-- goto l3
                    end)
                    coroutine.wrap(function()
						-- upvalues: (ref) vu2542
                        local v2566 = vu2542
                        local v2567, v2568, v2569 = pairs(v2566:GetChildren())
                        while true do
                            local v2570
                            v2569, v2570 = v2567(v2568, v2569)
                            if v2569 == nil then
                                break
                            end
                            if v2570.Name == "Animate" then
                                v2570:Remove()
                            end
                        end
                    end)()
                    local vu2571 = vu1148.Character
                    local v2572 = vu2571 and vu2571.Parent and vu2571:FindFirstChildOfClass("Humanoid")
                    if v2572 then
                        v2572:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                        v2572.Sit = true
                    end
                    local vu2573 = {
                        "49901608",
                        "87986341",
                        "125749145",
                        "122342062",
                        "66703957",
                        "97170520",
                        "86313418",
                        "169638954",
                        "282574440",
                        "90872539",
                        "63234156"
                    }
                    local vu2574 = animid(vu2573[1])
                    local vu2575 = animid(vu2573[2])
                    local vu2576 = animid(vu2573[3])
                    local vu2577 = animid(vu2573[4])
                    local vu2578 = animid(vu2573[5])
                    animid(vu2573[6])
                    animid(vu2573[7])
                    local vu2579 = animid(vu2573[8])
                    local vu2580 = animid(vu2573[9])
                    local vu2581 = animid(vu2573[10])
                    local vu2582 = animid(vu2573[11])
                    speeded = true
                    local vu2583 = false
                    local vu2584 = false
                    walk = true
                    local vu2585 = v2556.HipHeight
                    local function vu2589()
						-- upvalues: (ref) vu10, (ref) vu1148, (ref) vu2583, (ref) vu2574, (ref) vu2575, (ref) vu2576, (ref) vu2577, (ref) vu2578, (ref) vu2581, (ref) vu2585, (ref) vu2584, (ref) vu2579, (ref) vu2580, (ref) vu1150
                        if speeded == false then
                            vu10:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 45
                        else
                            vu10:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 7
                        end
                        local v2586 = vu10.Players.LocalPlayer.Character.Humanoid
                        local v2587 = v2586.MoveDirection
                        local v2588 = vu1148.Character.HumanoidRootPart
                        if v2587.Magnitude ~= 0 then
                            if v2587.Magnitude > 0 and walk == true then
                                walk = true
                                vu2584 = false
                                if vu2583 ~= false then
                                    vu2574:Stop()
                                    vu2575:Stop()
                                    vu2576:Play()
                                    vu2578:Play()
                                    vu2578:AdjustSpeed(0)
                                    vu2578.TimePosition = 1.7
                                    vu2581:Stop()
                                    vu2577:Play()
                                    vu2577:AdjustSpeed(0)
                                    vu2577.TimePosition = 0.5
                                    v2586.HipHeight = 2.4
                                    vu1150(1)
                                    walk = true
                                else
                                    vu2574:Stop()
                                    vu2575:Stop()
                                    if vu2576.IsPlaying == false then
                                        vu2576:Play(0.1, 1, 1)
                                    end
                                    vu2578:Stop()
                                    vu2578:AdjustSpeed(0)
                                    vu2578.TimePosition = 1.7
                                    vu2581:Stop()
                                    vu2575:Stop()
                                    vu2577:Play()
                                    vu2577:AdjustSpeed(0)
                                    vu2577.TimePosition = 0.5
                                    v2586.HipHeight = vu2585
                                    vu2579:Stop()
                                    vu2580:Stop()
                                end
                            end
                        else
                            walk = true
                            if vu2583 ~= false then
                                vu2574:Play()
                                vu2574:AdjustSpeed(0)
                                vu2574.TimePosition = 0.6
                                vu2575:Play()
                                vu2575:AdjustSpeed(0)
                                vu2575.TimePosition = 0.8
                                vu2576:Stop()
                                vu2577:Stop()
                                vu2578:Play()
                                vu2578:AdjustSpeed(0)
                                vu2578.TimePosition = 1.9
                                vu2581:Stop()
                                v2586.HipHeight = 2.5
                            else
                                vu2574:Play()
                                vu2574:AdjustSpeed(0)
                                vu2574.TimePosition = 0.6
                                vu2575:Play()
                                vu2575:AdjustSpeed(0)
                                vu2575.TimePosition = 0.8
                                vu2576:Stop()
                                vu2577:Stop()
                                vu2578:Play()
                                vu2578:AdjustSpeed(0)
                                vu2578.TimePosition = 1.7
                                vu2581:Stop()
                                v2586.HipHeight = vu2585
                            end
                        end
                        if v2588.Velocity.Y >= - 0.5 then
                            if v2588.Velocity.Y > 0.5 then
                                vu2581:Play()
                                vu2578:Stop()
                                vu2574:Stop()
                                vu2575:Stop()
                                vu2576:Stop()
                                vu2577:Stop()
                            end
                        else
                            vu2581:Play()
                            vu2578:Stop()
                            vu2574:Stop()
                            vu2575:Play()
                            vu2576:Stop()
                            vu2577:Stop()
                            vu2581:Stop()
                            walk = true
                        end
                    end
                    vu10:GetService("UserInputService").InputBegan:Connect(function(p2590, p2591)
						-- upvalues: (ref) vu2543, (ref) vu2583, (ref) vu2582
                        if not p2591 then
                            if vu2543 == true then
                                if p2590.KeyCode == Enum.KeyCode.F then
                                    vu2583 = not vu2583
                                    speeded = not speeded
                                end
                                if p2590.KeyCode == Enum.KeyCode.Z and vu2583 ~= true then
                                    vu2582:Play()
                                    vu2582:AdjustSpeed(1.5)
                                    vu2582.TimePosition = 0.2
                                end
                            end
                        end
                    end)
                    omgHuman = vu10.Players.LocalPlayer.Character.HumanoidRootPart
                    UselessPartLmao = Instance.new("Part", omgHuman)
                    UselessPartLmao.CanCollide = false
                    UselessPartLmao.Transparency = 0.7
                    UselessPartLmao.Size = Vector3.new(1, 2, 2)
                    local v2592 = Instance.new("SelectionBox", vu2571)
                    v2592.Adornee = UselessPartLmao
                    v2592.LineThickness = 0.02
                    v2592.Color3 = Color3.fromRGB(255, 0, 0)
                    local function v2595(pu2593, pu2594)
						-- upvalues: (ref) vu2571
                        spawn(function()
							-- upvalues: (ref) pu2593, (ref) vu2571, (ref) pu2594
                            while pu2593:Wait() and (vu2571 and UselessPartLmao) do
                                UselessPartLmao.Position = omgHuman.Position
                                UselessPartLmao.RotVelocity = pu2594
                            end
                        end)
                    end
                    if vu10.PlaceId ~= 7290932898 then
                        v2595(vu1293, vu34(100, 100, 100))
                        v2595(vu27, vu34(1000, 1000, - 1000))
                        v2595(vu28, vu34(- 2000000000000, 200000000000, 20000000000))
                    else
                        v2595(vu1293, vu34(0, 0, 0))
                        v2595(vu27, vu34(0, 0, 0))
                        v2595(vu28, vu34(0, 0, 0))
                    end
                    local vu2596 = false
                    function whendeath()
						-- upvalues: (ref) vu25, (ref) vu2545, (ref) vu183, (ref) vu2557, (ref) vu2543, (ref) vu2544, (ref) vu2596, (ref) vu2555, (ref) vu1148
                        vu25:SetCore("ResetButtonCallback", true)
                        key = false
                        vu2545 = false
                        Fling = false
                        vu183 = false
                        vu2557 = false
                        vu2543 = false
                        vu2544 = true
                        vu2596 = true
                        vu2545 = false
                        vu2555:Disconnect()
                        hillmusic:Stop()
                        vu1148.Character.Humanoid.Health = 0
                    end
                    local vu2597 = vu10.Players.LocalPlayer
                    local vu2614 = vu1293:connect(function()
						-- upvalues: (ref) vu2543, (ref) vu2589, (ref) vu2571, (ref) vu1290, (ref) vu10, (ref) vu2573, (ref) vu2596, (ref) vu2597, (ref) vu2541
                        if vu2543 == true then
                            vu2589()
                            local v2598 = vu2571
                            local v2599, v2600, v2601 = pairs(v2598:GetChildren())
                            while true do
                                local v2602
                                v2601, v2602 = v2599(v2600, v2601)
                                if v2601 == nil then
                                    break
                                end
                                if v2602:IsA("Tool") then
                                    v2602.Handle:BreakJoints()
                                    v2602.Parent = vu1290
                                end
                            end
                            local v2603, v2604, v2605 = pairs(vu10.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks())
                            while true do
                                local v2606
                                v2605, v2606 = v2603(v2604, v2605)
                                if v2605 == nil then
                                    break
                                end
                                if v2606.Animation.AnimationId ~= vu2573[1] and (v2606.Animation.AnimationId ~= vu2573[2] and (v2606.Animation.AnimationId ~= vu2573[3] and (v2606.Animation.AnimationId ~= vu2573[4] and (v2606.Animation.AnimationId ~= vu2573[5] and (v2606.Animation.AnimationId ~= vu2573[6] and v2606.Animation.AnimationId ~= vu2573[7]))))) then
                                    local _ = v2606.Animation.AnimationId == vu2573[8]
                                end
                            end
                            if vu2571 and vu2571.Parent then
                                local v2607 = vu2571:FindFirstChildOfClass("Tool")
                                local v2608 = vu2571
                                local v2609, v2610, v2611 = pairs(v2608:GetDescendants())
                                while true do
                                    local v2612
                                    v2611, v2612 = v2609(v2610, v2611)
                                    if v2611 == nil then
                                        break
                                    end
                                    if v2612 and (v2612.Parent and (v2612:IsA("BasePart") and not (v2607 and v2612:IsDescendantOf(v2607)))) then
                                        v2612.CanTouch = false
                                    end
                                end
                            end
                            if vu2596 == false then
                                vu2597.Character.Humanoid.Died:Connect(function()
									-- upvalues: (ref) vu2597, (ref) vu2596, (ref) vu2571, (ref) vu2541
                                    local v2613 = vu2597.Character.HumanoidRootPart.CFrame
                                    vu2597.CharacterAdded:wait()
                                    repeat
                                        wait()
                                    until vu2597.Character:FindFirstChild("HumanoidRootPart")
                                    vu2597.Character.HumanoidRootPart.CFrame = v2613
                                    if vu2596 == false then
                                        whendeath()
                                        vu2571.HumanoidRootPart.CFrame = v2613
                                        vu2596 = true
                                        cool:Disconnect()
                                        vu2541 = false
                                        wait(0.3)
                                    end
                                end)
                            end
                        end
                        if vu10.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                            vu2541 = false
                            if vu2596 == false then
                                whendeath()
                                vu2596 = true
                            end
                        end
                    end)
                    local vu2615 = Instance.new("BindableEvent", vu2571)
                    vu2615.Event:Connect(function()
						-- upvalues: (ref) vu2615, (ref) vu2614, (ref) vu10, (ref) vu2541
                        vu2615:Destroy()
                        whendeath()
                        vu2614:Disconnect()
                        vu10.Players.LocalPlayer.Character.Humanoid.Health = 0
                        vu2541 = false
                    end)
                    vu25:SetCore("ResetButtonCallback", vu2615)
                else
                    vu109("i can\'t run it when ur character not r6!, try switching character to r6 or changing games", 2)
                end
            else
                vu109("Another script Still Running!", 1)
                return
            end
        end)
        v2525.btn:button("Patrick Shaders Reborn", function()
			-- upvalues: (ref) vu46, (ref) vu10
            vu46(vu10:HttpGet("https://pastefy.app/xXkUxA0P/raw", true))()
        end)
        v2525.btn:button("Ball Head", function()
			-- upvalues: (ref) vu2541, (ref) vu109, (ref) vu1148, (ref) vu10, (ref) vu44, (ref) vu1290
            if vu2541 == false then
                if vu1148.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                    vu109("Head Ball R15 Version Running!", 2)
                end
                vu2541 = true
                headball = true
                vu109("Head Ball Running! WASD For moving", 2)
                local vu2616 = vu10:GetService("UserInputService")
                local v2617 = vu10:GetService("RunService")
                local vu2618 = workspace.CurrentCamera
                local vu2619 = vu1148.Character
                local vu2620 = 28
                local vu2621 = 0.3
                local vu2622 = nil
                local vu2623
                if vu1148.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
                    vu2623 = nil
                else
                    vu2623 = animid("121572214")
                end
                local vu2629 = v2617.RenderStepped:Connect(function()
					-- upvalues: (ref) vu2619, (ref) vu2622
                    local v2624 = vu2619
                    local v2625, v2626, v2627 = ipairs(v2624:GetChildren())
                    while true do
                        local v2628
                        v2627, v2628 = v2625(v2626, v2627)
                        if v2627 == nil then
                            break
                        end
                        if v2628:IsA("BasePart") then
                            if v2628:FindFirstChild("FaceCenterAttachment") then
                                vu2622 = v2628
                            else
                                v2628.CanCollide = false
                                v2628.Transparency = 0.7
                            end
                        end
                    end
                end)
                local vu2630 = vu2622 or vu1148.Character:FindFirstChild("Head")
                local vu2631 = vu44("Part")
                vu2631.Size = Vector3.new(1.5, 2, 1.5)
                vu2631.Transparency = 1
                vu2631.Parent = vu1290
                vu2631.Shape = Enum.PartType.Ball
                vu2631.Name = "rochips_head"
                local vu2632 = vu2619:WaitForChild("Humanoid")
                local vu2633 = RaycastParams.new()
                vu2633.FilterType = Enum.RaycastFilterType.Blacklist
                vu2633.FilterDescendantsInstances = {
                    vu2619
                }
                local vu2634 = 50
                local vu2635 = 50
                local vu2636 = Vector3.new(0, 0, 0)
                local vu2637 = Instance.new("VectorForce")
                vu2637.Force = Vector3.new(0, - 50, 0)
                vu2637.Parent = vu2630
                vu2630.CustomPhysicalProperties = PhysicalProperties.new(1, 0, 0.5)
                vu2630.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                vu2630.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                local v2638 = Instance.new("Weld", vu1148.Character)
                v2638.Part1 = vu2631
                v2638.Part0 = vu2630
                v2638.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                local vu2643 = v2617.RenderStepped:Connect(function(_)
					-- upvalues: (ref) vu1148, (ref) vu2623, (ref) vu2630, (ref) vu2631, (ref) vu2632, (ref) vu2618, (ref) vu2616, (ref) vu2634, (ref) vu2636, (ref) vu2635, (ref) vu2637
                    if vu1148.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                        vu2623:Play()
                        vu2623:AdjustSpeed(0.1)
                        vu2623.TimePosition = 0.6
                    end
                    vu2630.CanCollide = false
                    vu2630.CanTouch = true
                    vu2631.CanCollide = true
                    vu2632.PlatformStand = true
                    local v2639 = Vector3.new(vu2618.CFrame.LookVector.X, 0, vu2618.CFrame.LookVector.Z).Unit
                    local v2640 = Vector3.new(vu2618.CFrame.RightVector.X, 0, vu2618.CFrame.RightVector.Z).Unit
                    local v2641 = Vector3.new(0, 0, 0)
                    if vu2616:IsKeyDown(Enum.KeyCode.W) then
                        v2641 = v2641 + v2639
                    end
                    if vu2616:IsKeyDown(Enum.KeyCode.A) then
                        v2641 = v2641 - v2640
                    end
                    if vu2616:IsKeyDown(Enum.KeyCode.S) then
                        v2641 = v2641 - v2639
                    end
                    if vu2616:IsKeyDown(Enum.KeyCode.D) then
                        v2641 = v2641 + v2640
                    end
                    if v2641.Magnitude > 0 then
                        v2641 = v2641.Unit
                    end
                    vu2636 = vu2636:Lerp(v2641 * vu2634, 0.1)
                    if vu2635 < vu2636.Magnitude then
                        vu2636 = vu2636.Unit * vu2635
                    end
                    vu2630.AssemblyLinearVelocity = Vector3.new(vu2636.X, vu2630.AssemblyLinearVelocity.Y, vu2636.Z)
                    local v2642 = vu2630
                    vu2637.Force = Vector3.new(0, - 50 * v2642:GetMass(), 0)
                end)
                vu2616.JumpRequest:Connect(function()
					-- upvalues: (ref) vu2630, (ref) vu2621, (ref) vu2633, (ref) vu2620
                    if workspace:Raycast(vu2630.Position, Vector3.new(0, - (vu2630.Size.Y / 2 + vu2621), 0), vu2633) then
                        vu2630.Velocity = vu2630.Velocity + Vector3.new(0, vu2620, 0)
                    end
                end)
                vu2618.CameraSubject = vu2630
                vu2632.Died:Connect(function()
					-- upvalues: (ref) vu2643, (ref) vu2629, (ref) vu2541, (ref) vu2631
                    vu2643:Disconnect()
                    vu2629:Disconnect()
                    vu2541 = false
                    headball = false
                    vu2631:Destroy()
                end)
            else
                vu109("Another script Still Running!", 1)
            end
        end)
        v2525.btn:button("Fling Command", function()
			-- upvalues: (ref) vu2541, (ref) vu109, (ref) vu10, (ref) vu1144, (ref) vu183, (ref) vu1148, (ref) vu1150, (ref) vu27, (ref) vu1293, (ref) vu24, (ref) vu1290
            if vu2541 == false then
                vu2541 = true
                function getPlayer(p2644)
					-- upvalues: (ref) vu10
                    local v2645, v2646, v2647 = pairs(vu10:GetService("Players"):GetPlayers())
                    while true do
                        local v2648
                        v2647, v2648 = v2645(v2646, v2647)
                        if v2647 == nil then
                            break
                        end
                        if v2648.DisplayName:lower():sub(1, # p2644) == p2644:lower() or v2648.Name:lower():sub(1, # p2644) == p2644:lower() then
                            return v2648
                        end
                    end
                end
                local vu2649 = vu1144.Heartbeat
                getfenv()
                local vu2650 = Vector3.new
                local vu2651 = true
                local vu2652 = true
                vu183 = true
                getRoot(vu1148.Character).Velocity = Vector3.new(0, 25, 0)
                local v2653, v2654, v2655 = pairs(vu1148.Character:GetChildren())
                while true do
                    local vu2656
                    v2655, vu2656 = v2653(v2654, v2655)
                    if v2655 == nil then
                        break
                    end
                    if vu2656:IsA("BasePart") and vu2656.Name ~= "Head" then
                        vu2656.LocalTransparencyModifier = vu2656.Transparency
                        vu2656:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
							-- upvalues: (ref) vu2652, (ref) vu2656, (ref) vu1150
                            if vu2652 then
                                vu2656.LocalTransparencyModifier = vu2656.Transparency
                                vu1150()
                            end
                        end)
                    end
                end
                if vu1148.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                    stopanim()
                    if vu1148.Character:FindFirstChild(animate):FindFirstChild("idle") then
                        vu1148.Character:FindFirstChild(animate).idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=12521158637"
                        vu1148.Character:FindFirstChild(animate).idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=12521162526"
                        vu1148.Character:FindFirstChild(animate).walk:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=12518152696"
                        vu1148.Character:FindFirstChild(animate).run:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=12518152696"
                        vu1148.Character:FindFirstChild(animate).jump:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=12520880485"
                        vu1148.Character:FindFirstChild(animate).climb:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
                        vu1148.Character:FindFirstChild(animate).fall:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=12520972571"
                        vu1148.Character:FindFirstChild(animate).swim:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
                        vu1148.Character:FindFirstChild(animate).swimidle:FindFirstChildWhichIsA("Animation").AnimationId = "http://www.roblox.com/asset/?id=0"
                    end
                end
                task.spawn(function()
					-- upvalues: (ref) vu1150, (ref) vu2652, (ref) vu2649, (ref) vu2651, (ref) vu1148, (ref) vu2650, (ref) vu27, (ref) vu1293
					-- block 53
                    local v2657 = nil
                    local v2658 = nil
                    local v2659 = 0.1
					-- ::l3::
                    repeat
                        repeat
                            vu1150()
                        until vu2652
                        vu2649:Wait()
                    until vu2651
					-- goto l5
					-- ::l8::
                    if vu2651 then
                        local v2660 = v2658.Velocity
                        v2658.Velocity = v2660 * 100 + vu2650(0, 100, 0)
                        vu27:Wait()
                        if v2657 and (v2657.Parent and (v2658 and v2658.Parent)) then
                            v2658.Velocity = v2660
                        end
                        vu1293:Wait()
                        if not (v2657 and (v2657.Parent and (v2658 and v2658.Parent))) then
                            return
                        end
                        v2658.Velocity = v2660 + vu2650(0, v2659, 0)
                        v2659 = v2659 * - 1
                    end
					-- goto l3
					-- ::l11::
                    vu2649:Wait()
                    v2657 = vu1148.Character
                    v2658 = v2657:FindFirstChild("HumanoidRootPart") or (v2657:FindFirstChild("Torso") or v2657:FindFirstChild("UpperTorso")) or (v2657:FindFirstChild("LowerTorso") or v2657:FindFirstChild("Right Arm") or (v2657:FindFirstChild("RightUpperArm") or v2657:FindFirstChild("RightLowerArm")))
					-- ::l5::
                    if vu2651 and not (v2657 and (v2657.Parent and (v2658 and v2658.Parent))) then
						-- goto l11
                    else
						-- goto l8
                    end
                end)
                local vu2661 = Instance.new("Part", getRoot(vu1148.Character))
                vu2661.Name = "HumanoidHiddenPart"
                vu2661.CanCollide = false
                vu2661.Transparency = 0.7
                vu2661.Size = Vector3.new(1, 2, 2)
                local v2662 = Instance.new("SelectionBox", getRoot(vu1148.Character))
                v2662.Adornee = vu2661
                v2662.LineThickness = 0.1
                v2662.Color3 = Color3.fromRGB(255, 255, 255)
                local function v2665(pu2663, pu2664)
					-- upvalues: (ref) vu2652, (ref) vu24, (ref) vu2661, (ref) vu1148, (ref) vu1150
                    spawn(function()
						-- upvalues: (ref) vu2652, (ref) pu2663, (ref) vu24, (ref) vu2661, (ref) vu1148, (ref) pu2664, (ref) vu1150
                        if vu2652 then
                            while pu2663:Wait() and (vu24 and vu2661) do
                                vu2661.Position = getRoot(vu1148.Character).Position
                                vu2661.RotVelocity = pu2664
                                vu1150(0.1)
                            end
                        end
                    end)
                end
                v2665(vu1293, vu2650(100, 100, 100))
                v2665(vu27, vu2650(100, 100, - 100))
                v2665(vu2649, vu2650(- 2000000000000, 200000000000, 20000000000))
                vu1148.Chatted:Connect(function(p2666)
					-- upvalues: (ref) vu2652, (ref) vu183, (ref) vu1148, (ref) vu2649, (ref) vu1290, (ref) vu1150, (ref) vu2650, (ref) vu109
                    if vu2652 then
                        local v2667 = p2666:lower()
                        if string.sub(v2667, 1, 3) == "/e " then
                            v2667 = string.sub(v2667, 4)
                        end
                        if string.sub(v2667, 1, 1) ~= "/" then
							-- goto l3
                        end
                        local v2668 = string.find(v2667, " ")
                        local v2669
                        if v2668 then
                            v2669 = string.sub(v2667, 2, v2668 - 1)
                        else
                            v2669 = string.sub(v2667, 2)
                        end
                        if v2669 ~= "fling" then
							-- goto l3
                        end
                        vu183 = false
                        local v2670 = getPlayer(string.sub(v2667, v2668 + 1))
                        local v2671 = vu1148.Character.HumanoidRootPart.Velocity
                        local v2672 = vu1148.Character.HumanoidRootPart.CFrame
                        local v2673 = vu1148.Character
                        local v2674 = v2673.HumanoidRootPart
                        local v2675 = v2670.Character
                        local v2676 = v2675.HumanoidRootPart
                        v2674.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0.01, 0.01, 0.01, 0.01)
                        local v2677 = 0
                        while true do
                            vu2649:Wait()
                            local v2678 = {
                                ["x"] = 0,
                                ["y"] = 0,
                                ["z"] = 0,
                                ["x"] = v2676.Position.X,
                                ["y"] = v2676.Position.Y,
                                ["z"] = v2676.Position.Z
                            }
                            v2678.x = v2678.x + v2676.Velocity.X / 2
                            v2678.y = v2678.y + v2676.Velocity.Y / 2
                            v2678.z = v2678.z + v2676.Velocity.Z / 2
                            local v2679 = vu1290.FallenPartsDestroyHeight + 5
                            if v2678.y < v2679 then
                                v2678.y = v2679
                            end
                            v2674.CanCollide = false
                            v2674.CFrame = CFrame.new(v2678.x, v2678.y, v2678.z)
                            v2677 = 1 + v2677
                            vu1150()
                            v2674.Velocity = vu2650(0, 1000, 0)
                            v2674.RotVelocity = vu2650(10000, 10000, 10000)
                            if v2670.Character.HumanoidRootPart.Velocity.Y > 56 or (v2675.Humanoid.Health <= 1 or (v2673.Humanoid.Health <= 1 or (v2670 == nil or 300 < v2677))) then
                                vu1150(0.2)
                                local _ = vu1148.Character
                                v2674.Velocity = v2671
                                v2674.RotVelocity = v2671
                                v2674.Anchored = true
                                vu1148.Character.HumanoidRootPart.CFrame = v2672
                                if v2677 > 300 then
                                    vu109("Can\'t Fling it because no collision or something", 2)
                                end
                                vu1150(0.5)
                                v2674.Anchored = false
                                v2674.Velocity = Vector3.new(0, 20, 0)
                                v2674.RotVelocity = Vector3.new(0, 15, 0)
                                vu183 = false
                                wait(2)
								-- goto l3
                            end
                        end
                    else
						-- ::l3::
                        return
                    end
                end)
                vu1148.Character.Humanoid.Died:Connect(function()
					-- upvalues: (ref) vu2541, (ref) vu2651, (ref) vu2652, (ref) vu183
                    vu2541 = false
                    vu2651 = false
                    vu2652 = false
                    vu183 = false
                end)
                vu109("Loaded! type /fling <display name> to flinging players", 2)
            else
                vu109("Another script Still Running!", 1)
            end
        end)
        if vu10:GetService("ReplicatedStorage"):FindFirstChild("01_server") then
            v1758.bx:box("get hats", "hats id", function(p2680)
				-- upvalues: (ref) vu10
                vu10:GetService("ReplicatedStorage").gh:FireServer(unpack({
                    p2680
                }))
            end)
            v1758.drop:dropdown("switch rig", "r15", {
                "r15",
                "r6"
            }, function(p2681)
				-- upvalues: (ref) vu10
                if p2681 == "r15" then
                    vu10:GetService("ReplicatedStorage")["01_server"]:FireServer(p2681 and "r15" or "r6")
                end
            end)
            v1758.bx:box("buy hats", "hats id", function(p2682)
				-- upvalues: (ref) vu10
                vu10:GetService("ReplicatedStorage").by:FireServer(unpack({
                    p2682
                }))
            end)
        end
        if vu11.PlaceId == 16732694052 then
            local _ = {
                ["Bait_Crate"] = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
                ["Carbon_Rod"] = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, - 0.170404434, 1.41561031e-7, 1.41561031e-7, 1.7285347e-6, 1, - 0.170404434, - 0.985374212, 1.7285347e-6),
                ["Crab_Cage"] = CFrame.new(474.803589, 149.664566, 229.49469, - 0.721874595, 0, 0.692023814, 0, 1, 0, - 0.692023814, 0, - 0.721874595),
                ["Fast_Rod"] = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 0.0000126492232, 0.193478703, - 0.0522461236, 0.962867677, 0.264870107, - 0.186291039, - 0.269973755, 0.944674432),
                ["Flimsy_Rod"] = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, - 0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, - 0.13314943, 0.831042409),
                ["GPS"] = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-6, - 0.719539165, - 0.694451928, - 1, - 7.39097595e-6, - 3.01003456e-6, - 3.01003456e-6, 0.694451928, - 0.719539165),
                ["Long_Rod"] = CFrame.new(485.695038, 171.656326, 145.746109, - 0.630167365, - 0.776459217, - 5.33461571e-6, 5.33461571e-6, - 0.0000112056732, 1, - 0.776459217, 0.630167365, 0.0000112056732),
                ["Lucky_Rod"] = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, - 0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, - 0.107199371, - 0.371867687, 0.922075212),
                ["Plastic_Rod"] = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, - 0.298537821, - 3.42726707e-7, 0.972884834, 0.231290117, 0.306858391, - 0.220131472, 0.925948203),
                ["Training_Rod"] = CFrame.new(457.693848, 148.357529, 230.414307, 1, 0, 0, 0, 0.975410998, 0.220393807, 0, - 0.220393807, 0.975410998)
            }
            local vu2683 = false
            local vu2684 = false
            local vu2685 = false
            vu17.ChildAdded:Connect(function(pu2686)
				-- upvalues: (ref) vu1150, (ref) vu1144, (ref) vu27, (ref) vu7, (ref) vu1494, (ref) vu20, (ref) vu11, (ref) vu2684, (ref) vu22
                if pu2686:IsA("ScreenGui") and (pu2686.Name == "shakeui" and pu2686:FindFirstChild("safezone") ~= nil) then
                    pu2686.safezone.ChildAdded:Connect(function(pu2687)
						-- upvalues: (ref) vu1150, (ref) vu1144, (ref) vu27, (ref) pu2686, (ref) vu7, (ref) vu1494, (ref) vu20, (ref) vu11
                        if pu2687:IsA("ImageButton") and (pu2687.Name == "button" and autoShake) then
                            vu1150(0.1)
                            if pu2687.Visible then
                                while vu1144:Wait(vu27) do
                                    if not autoShake or pu2686.safezone:FindFirstChild(pu2687.Name) == nil then
                                        vu1494.SelectedObject = nil
                                        break
                                    end
                                    vu1150()
                                    vu7(function()
										-- upvalues: (ref) vu1494, (ref) pu2687, (ref) vu20, (ref) vu11
                                        vu1494.SelectedObject = pu2687
                                        if vu1494.SelectedObject == pu2687 then
                                            vu20:SendKeyEvent(true, Enum.KeyCode.Return, false, vu11)
                                            vu20:SendKeyEvent(false, Enum.KeyCode.Return, false, vu11)
                                        end
                                    end)
                                end
                            end
                        end
                    end)
                end
                if pu2686:IsA("ScreenGui") and (pu2686.Name == "reel" and vu2684) and vu22:WaitForChild("events"):WaitForChild("reelfinished") ~= nil then
                    repeat
                        vu1150(1.5)
                        vu22.events.reelfinished:FireServer(100, false)
                    until pu2686 == nil
                end
            end)
            vu17.ChildRemoved:Connect(function(p2688)
				-- upvalues: (ref) vu1148, (ref) vu2685, (ref) vu1150, (ref) vu20, (ref) vu61
                local v2689 = vu1148.Character:FindFirstChildOfClass("Tool")
                if p2688.Name == "reel" and (vu2685 and v2689 ~= nil) and v2689:FindFirstChild("events"):WaitForChild("cast") ~= nil then
                    vu1150(1.523)
                    vu20:SendMouseButtonEvent(0, 0, 0, true, vu1148, 0)
                    local vu2690 = vu61(vu1148.Character, "HumanoidRootPart", "BasePart")
                    vu2690.ChildAdded:Connect(function()
						-- upvalues: (ref) vu2690, (ref) vu20, (ref) vu1148
                        if vu2690:FindFirstChild("power") ~= nil and vu2690.power.powerbar.bar ~= nil then
                            vu2690.powerbar.bar.Changed:Connect(function(p2691)
								-- upvalues: (ref) vu20, (ref) vu1148
                                if p2691 == "Size" and hep.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                    vu20:SendMouseButtonEvent(0, 0, 0, false, vu1148, 0)
                                end
                            end)
                        end
                    end)
                end
            end)
            v1758.tgg:toggle("auto shake", function(p2692)
				-- upvalues: (ref) vu2683
                vu2683 = p2692
            end)
            v1758.tgg:toggle("auto reel", function(p2693)
				-- upvalues: (ref) vu2684
                vu2684 = p2693
            end)
            v1758.tgg:toggle("auto cash", function(p2694)
				-- upvalues: (ref) vu2685
                vu2685 = p2694
            end)
            v1758.label:label("world")
            v1758.btn:button("Sell all fish", function()
				-- upvalues: (ref) vu1290
                vu1290:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
            end)
            v1758.btn:button("sell holding fish", function()
				-- upvalues: (ref) vu1290
                vu1290:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sell"):InvokeServer()
            end)
            local v2695 = v1345:page("client")
            local vu2696 = false
            v2695.tgg:toggle("water breathing", function(p2697)
				-- upvalues: (ref) vu2696, (ref) vu1148
                vu2696 = p2697
                if vu1148.Character ~= nil and vu1148.Character:FindFirstChild("client"):WaitForChild("oxygen") ~= nil then
                    vu1148.Character.client.oxygen.Enabled = true
                end
                vu1148.CharacterAdded:Connect(function()
					-- upvalues: (ref) vu1148, (ref) vu2696
                    if vu1148.Character ~= nil and vu1148.Character:FindFirstChild("client"):WaitForChild("oxygen") ~= nil then
                        LocalCharacter.client.oxygen.Enabled = true
                    end
                end)
            end)
        end
    end
}
local v2699, v2700, vu2701 = ipairs(v2698)
while true do
    local vu2702
    vu2701, vu2702 = v2699(v2700, vu2701)
    if vu2701 == nil then
        break
    end
    coroutine.wrap(function()
		-- upvalues: (ref) vu2702, (ref) vu2701
        task.defer(vu2702, vu2701)
    end)()
end
return vu102["1"], require