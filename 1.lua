local _0x1=(function(...)return ... end)
local _0x2=game
local _0x3=_0x2[string.char(71,101,116,83,101,114,118,105,99,101)]
local _0x4=_0x3(_0x2,"Players")
local _0x5=_0x4.LocalPlayer
getgenv()[string.char(69,110,97,98,108,101,100)]=false

local function _0x6()
    return _0x5.Character or _0x5.CharacterAdded:Wait()
end

local function _0x7()
    return _0x6():WaitForChild("HumanoidRootPart")
end

local function _0x8()
    local _= _0x5.Backpack:FindFirstChild(string.char(80,97,99,107,97,103,101))
    if _ then _0x6():WaitForChild("Humanoid"):EquipTool(_) end
end

local function _0x9(cf)
    _0x7().CFrame=cf
end

local function _0xA(r)
    local h=_0x7()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Enabled then
            local p=v.Parent
            if p and p:IsA("BasePart") then
                if (p.Position-h.Position).Magnitude<=r then
                    fireproximityprompt(v)
                end
            end
        end
    end
end

local _0xB=CFrame.new(469.410675,58.019268,-609.184082,0.987572193,0,0.157166004,0,1,0,-0.157166004,0,0.987572193)
local _0xC=CFrame.new(-954.907043,170.289749,410.659851,-0.702682197,0,0.711503863,0,1,0,-0.711503863,0,-0.702682197)
local _0xD=CFrame.new(-2178.33032,90.5596771,2143.26904,-0.960169315,0,0.279418916,0,1,0,-0.279418916,0,-0.960169315)
local _0xE=CFrame.new(-705.523071,68.509079,1762.98755,-0.315902829,0,0.948791564,0,1,0,-0.948791564,0,-0.315902829)

task.spawn(function()
    while true do
        if getgenv().Enabled then
            _0x8() task.wait(.2)
            _0x9(_0xB) task.wait(.2)

            local m=workspace.MAP["STARTER ISLAND [ Lv 1+ ]"].PackageGiver:FindFirstChildOfClass("ProximityPrompt")
            if m then fireproximityprompt(m) end

            _0x8() task.wait(.2)
            _0x9(_0xC) task.wait(.2)
            _0xA(20)

            _0x8() task.wait(.2)
            _0x9(_0xD) task.wait(.2)
            _0xA(20)

            _0x8() task.wait(.2)
            _0x9(_0xE) task.wait(.2)
            _0xA(20)
        end
        task.wait(.1)
    end
end)

local g=Instance.new("ScreenGui",game.CoreGui)
local b=Instance.new("TextButton",g)
b.Size=UDim2.new(0,120,0,40)
b.Position=UDim2.new(0,20,0,200)
b.Text="OFF"
b.BackgroundColor3=Color3.fromRGB(30,30,30)
b.TextColor3=Color3.new(1,1,1)
b.TextScaled=true
b.Active=true
b.Draggable=true

b.MouseButton1Click:Connect(function()
    getgenv().Enabled=not getgenv().Enabled
    b.Text=getgenv().Enabled and "ON" or "OFF"
end)
