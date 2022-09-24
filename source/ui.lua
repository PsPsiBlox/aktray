-- ICETRAY V3
-- UI.LUA
-- created by ? modified by alex9#0001 for JAILBREAK ICE TRAY script

local global = {}
local env = getrenv()
env.workspace = game:GetService("Workspace")
env.repl = game:GetService("ReplicatedStorage")
env.players = game:GetService("Players")
env.httpservice = game:GetService("HttpService")
env.runservice = game:GetService("RunService")
env.uis = game:GetService("UserInputService")
env.teleportservice = game:GetService("TeleportService")
env.tweenservice = game:GetService("TweenService")
env.teams = game:GetService("Teams")
env.global = global

local icetray = {}

function icetray.CreateWindow(libName, logoId)
    local t = game:GetService("CoreGui")
    local a = t:FindFirstChild(libName)
    if a then
        a:Destroy()
    end
    
    local IceTrayLib = Instance.new("ScreenGui")
    local shadow = Instance.new("ImageLabel")
    local MainFrame = Instance.new("Frame")
    local sideHeading = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    local sideCover = Instance.new("Frame")
    local underCover = Instance.new("Frame")
    local hubLogo = Instance.new("ImageLabel")
    local MainCorner_2 = Instance.new("UICorner")

    local hubName = Instance.new("TextLabel")
    local hubUIGradient = Instance.new("UIGradient")

    local tabFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    
    local usename = Instance.new("TextLabel")
    local usenameUIGradient = Instance.new("UIGradient")

    local MainCorner_3 = Instance.new("UICorner")
    local wave = Instance.new("ImageLabel")
    local MainCorner_4 = Instance.new("UICorner")
    local framesAll = Instance.new("Frame")
    local pageFolder = Instance.new("Folder")

    uis.InputBegan:connect(function(current, ok) 
        if current.KeyCode == Enum.KeyCode.RightShift then 
            IceTrayLib.Enabled = not IceTrayLib.Enabled
        end
    end)

    local TopBar = sideHeading
    local player = players.LocalPlayer

    local M = player:GetMouse()
    local Cam = workspace.CurrentCamera

    pageFolder.Name = "pageFolder"
    pageFolder.Parent = framesAll

    --
    libName = libName
    logoId = logoId
    --

    IceTrayLib.Name = libName
    IceTrayLib.Parent = game:GetService("CoreGui")
    IceTrayLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = shadow
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.Position = UDim2.new(0.0480000004, 0, 0.075000003, 0)
    MainFrame.Size = UDim2.new(0, 553, 0, 452)

    sideHeading.Name = "sideHeading"
    sideHeading.Parent = MainFrame
    sideHeading.BackgroundColor3 = Color3.fromRGB(23,23,23)
    sideHeading.Size = UDim2.new(0, 137, 0, 452)
    sideHeading.ZIndex = 2

    MainCorner.CornerRadius = UDim.new(0, 5)
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = sideHeading

    sideCover.Name = "sideCover"
    sideCover.Parent = sideHeading
    sideCover.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    sideCover.BorderSizePixel = 0
    sideCover.Position = UDim2.new(0.982330978, 0, 0, 0)
    sideCover.Size = UDim2.new(0, 3, 0, 452)

    underCover.Name = "underCover"
    underCover.Parent = sideHeading
    underCover.BackgroundColor3 = Color3.fromRGB(21,21,21)
    underCover.BorderSizePixel = 0
    underCover.Position = UDim2.new(0, 0, 0.878318608, 0)
    underCover.Size = UDim2.new(0, 137, 0, 3)

    hubLogo.Name = "hubLogo"
    hubLogo.Parent = sideHeading
    hubLogo.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    hubLogo.Position = UDim2.new(0.0445985347, 0, 0.908849478, 0)
    hubLogo.Size = UDim2.new(0, 30, 0, 30)
    hubLogo.ZIndex = 2
    hubLogo.Image = logoId

    MainCorner_2.CornerRadius = UDim.new(0, 999)
    MainCorner_2.Name = "MainCorner"
    MainCorner_2.Parent = hubLogo

    hubName.Name = "hubName"
    hubName.Parent = sideHeading
    hubName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hubName.BackgroundTransparency = 1.000
    hubName.Position = UDim2.new(0.0936204493, 0, 0.0360176563, 0)
    hubName.Size = UDim2.new(0, 110, 0, 16)
    hubName.ZIndex = 2
    hubName.Font = Enum.Font.GothamSemibold
    hubName.Text = libName
    hubName.TextColor3 = Color3.fromRGB(255, 255, 255)
    hubName.TextSize = 18.000
    hubName.TextWrapped = true

    hubUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(166, 186, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(166, 186, 255))}
    hubUIGradient.Parent = hubName

    tabFrame.Name = "tabFrame"
    tabFrame.Parent = sideHeading
    tabFrame.Active = true
    tabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabFrame.BackgroundTransparency = 1.000
    tabFrame.BorderSizePixel = 0
    tabFrame.Position = UDim2.new(0.0445984341, 0, 0.10426189, 0)
    tabFrame.Size = UDim2.new(0, 128, 0, 353)
    tabFrame.ZIndex = 2
    tabFrame.ScrollBarThickness = 0

    UIListLayout.Parent = tabFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)

    usename.Name = "usename"
    usename.Parent = sideHeading
    usename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    usename.BackgroundTransparency = 1.000
    usename.Position = UDim2.new(0.327197105, 0, 0.925575197, 0)
    usename.Size = UDim2.new(0, 110, 0, 16)
    usename.ZIndex = 2
    usename.Font = Enum.Font.GothamSemibold
    usename.Text = player.Name
    usename.TextColor3 = Color3.fromRGB(255, 255, 255)
    usename.TextSize = 12.000
    usename.TextWrapped = true
    usename.TextXAlignment = Enum.TextXAlignment.Left

    if #usename.Text > 14 then
        usename.TextSize = 11.00
    end

    usenameUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(166, 186, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(166, 186, 255))}
    usenameUIGradient.Parent = usename

    MainCorner_3.CornerRadius = UDim.new(0, 5)
    MainCorner_3.Name = "MainCorner"
    MainCorner_3.Parent = MainFrame

    MainCorner_4.CornerRadius = UDim.new(0, 3)
    MainCorner_4.Name = "MainCorner"
    MainCorner_4.Parent = wave

    framesAll.Name = "framesAll"
    framesAll.Parent = MainFrame
    framesAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    framesAll.BackgroundTransparency = 1.000
    framesAll.BorderSizePixel = 0
    framesAll.Position = UDim2.new(0.296564192, 0, 0.0242873337, 0)
    framesAll.Size = UDim2.new(0, 381, 0, 431)
    framesAll.ZIndex = 2

    shadow.Name = "shadow"
    shadow.Parent = IceTrayLib
    shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    shadow.BackgroundTransparency = 1.000
    shadow.Position = UDim2.new(0.319562584, 0, 0.168689325, 0) --or UDim2.new(0.319562584, 0, 0.168689325, 0)
    shadow.Size = UDim2.new(0, 609, 0, 530)
    shadow.ZIndex = 0
    shadow.Image = "http://www.roblox.com/asset/?id=6105530152"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = 0.200

    do
        local dragger = {}
        local mouse = player:GetMouse();
        local camera = workspace.CurrentCamera
        local heartbeat = runservice.Heartbeat;


        function dragger.new(frame, bar)
            bar.Active = true;
            bar.MouseLeave:connect(function()
                IsInFrame = false;
            end)
            bar.MouseEnter:connect(function()
                IsInFrame = true;
            end)
            local input = TopBar.InputBegan:connect(function(key)
                if key.UserInputType == Enum.UserInputType.MouseButton1 and IsInFrame then
                    local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
                    while heartbeat:wait() and uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        pcall(function()
                            local c = UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y))
                            frame:TweenPosition(c, 'Out', 'Linear', 0.01, true);
                        end)
                    end
                end
            end)
        end
        dragger.new(shadow, MainFrame)
    end

    local TabHandling = {}

    function TabHandling:Tab(tabText, tabId)
        local tabBtnFrame = Instance.new("Frame")
        local tabBtn = Instance.new("TextButton")
        --local tabLogo = Instance.new("ImageLabel")

        --
        tabText = tabText or "Tab"
        tabId = tabId or ""

        tabBtnFrame.Name = "tabBtnFrame"
        tabBtnFrame.Parent = tabFrame
        tabBtnFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabBtnFrame.BackgroundTransparency = 1.000
        tabBtnFrame.Size = UDim2.new(0, 135, 0, 30)
        tabBtnFrame.ZIndex = 2

        tabBtn.Name = "tabBtn"
        tabBtn.Parent = tabBtnFrame
        tabBtn.BackgroundColor3 = Color3.fromRGB(166, 248, 255)
        tabBtn.BackgroundTransparency = 1.000
        tabBtn.Position = UDim2.new(0.19, 0.03, 0.03, 0) -- 0.245534033, 0, 0, 0
        tabBtn.Size = UDim2.new(0, 101, 0, 30)
        tabBtn.ZIndex = 2
        tabBtn.Font = Enum.Font.GothamSemibold
        tabBtn.Text = tabText
        tabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        tabBtn.TextSize = 14.000
        tabBtn.TextXAlignment = Enum.TextXAlignment.Left

        --[[
        tabLogo.Name = "tabLogo"
        tabLogo.Position = UDim2.new(-0.007, 0,0.067, 0)
        tabLogo.Parent = tabBtnFrame
        tabLogo.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
        tabLogo.BackgroundTransparency = 1.000
        tabLogo.BorderSizePixel = 0
        tabLogo.Size = UDim2.new(0, 25, 0, 25)
        tabLogo.ZIndex = 2
        tabLogo.Image = "rbxassetid://"..tabId
        tabLogo.ImageColor3 = Color3.fromRGB(255, 255, 255)
        --]]
        

        local newPage = Instance.new("ScrollingFrame")
        local sectionList = Instance.new("UIListLayout")

        newPage.Name = "newPage"..tabText
        newPage.Parent = pageFolder
        newPage.Active = true
        newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        newPage.BackgroundTransparency = 1.000
        newPage.BorderSizePixel = 0
        newPage.Size = UDim2.new(1, 0, 1, 0)
        newPage.ZIndex = 2
        newPage.ScrollBarThickness = 0
        newPage.Visible = false

        sectionList.Name = "sectionList"
        sectionList.Parent = newPage
        sectionList.SortOrder = Enum.SortOrder.LayoutOrder
        sectionList.Padding = UDim.new(0, 3)

        
        local function UpdateSize()
            local cS = sectionList.AbsoluteContentSize

            tweenservice:Create(newPage, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
            }):Play()
        end
        UpdateSize()
        newPage.ChildAdded:Connect(UpdateSize)
        newPage.ChildRemoved:Connect(UpdateSize)

        tabBtn.MouseButton1Click:Connect(function()
            UpdateSize()
            for i,v in next, pageFolder:GetChildren() do
                UpdateSize()
                v.Visible = false
            end
            newPage.Visible = true
            for i,v in next, tabFrame:GetChildren() do
                if v:IsA("Frame") then
                    for i,v in next, v:GetChildren() do
                        if v:IsA("TextButton") then
                            tweenservice:Create(v, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                                TextColor3 = Color3.fromRGB(120,120,120)
                            }):Play()
                        end
                        if v:IsA("ImageLabel") then
                            tweenservice:Create(v, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                                ImageColor3 = Color3.fromRGB(120,120,120)
                            }):Play()
                        end
                    end
                end
            end
            tweenservice:Create(tabLogo, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                ImageColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
            tweenservice:Create(tabBtn, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
        end)

        local sectionHandling = {}

        function sectionHandling:Section(sectionText)
            local sectionFrame = Instance.new("Frame")
            local MainCorner = Instance.new("UICorner")
            local mainSectionHead = Instance.new("Frame")
            local sectionName = Instance.new("TextLabel")
            local sectionExpannd = Instance.new("ImageButton")

            local sectionInnerList = Instance.new("UIListLayout")

            sectionInnerList.Name = "sectionInnerList"
            sectionInnerList.Parent = sectionFrame
            sectionInnerList.HorizontalAlignment = Enum.HorizontalAlignment.Center
            sectionInnerList.SortOrder = Enum.SortOrder.LayoutOrder
            sectionInnerList.Padding = UDim.new(0, 3)
            --
            sectionText = sectionText
            local isDropped = true
            --

            sectionFrame.Name = "sectionFrame"
            sectionFrame.Parent = newPage
            sectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
            sectionFrame.Position = UDim2.new(0, 0, 7.08064434e-08, 0)
            sectionFrame.Size = UDim2.new(1, 0,0, 36)
            sectionFrame.ZIndex = 2
            sectionFrame.ClipsDescendants = true

            MainCorner.CornerRadius = UDim.new(0, 5)
            MainCorner.Name = "MainCorner"
            MainCorner.Parent = sectionFrame

            mainSectionHead.Name = "mainSectionHead"
            mainSectionHead.Parent = sectionFrame
            mainSectionHead.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            mainSectionHead.BackgroundTransparency = 1.000
            mainSectionHead.BorderSizePixel = 0
            mainSectionHead.Size = UDim2.new(0, 381, 0, 36)

            sectionName.Name = "sectionName"
            sectionName.Parent = mainSectionHead
            sectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sectionName.BackgroundTransparency = 1.000
            sectionName.Position = UDim2.new(0.0236220472, 0, 0, 0)
            sectionName.Size = UDim2.new(0, 302, 0, 36)
            sectionName.Font = Enum.Font.GothamSemibold
            sectionName.Text = sectionText
            sectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
            sectionName.TextSize = 14.000
            sectionName.TextXAlignment = Enum.TextXAlignment.Left

            sectionExpannd.Name = "sectionExpannd"
            sectionExpannd.Parent = mainSectionHead
            sectionExpannd.BackgroundTransparency = 1.000
            sectionExpannd.Position = UDim2.new(0.91863519, 0, 0.138888896, 0)
            sectionExpannd.Size = UDim2.new(0, 25, 0, 25)
            sectionExpannd.ZIndex = 2
            sectionExpannd.Image = "rbxassetid://3926305904"
            sectionExpannd.ImageColor3 = Color3.fromRGB(255, 255, 255)
            sectionExpannd.ImageRectOffset = Vector2.new(564, 284)
            sectionExpannd.ImageRectSize = Vector2.new(36, 36)
            sectionExpannd.MouseButton1Click:Connect(function()
                if not isDropped then
                    isDropped = true
                    sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                    tweenservice:Create(sectionExpannd, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                        Rotation = 180
                    }):Play()
                    wait(0.10)
                    UpdateSize()
                    return isDropped
                end
                isDropped = false
                sectionFrame:TweenSize(UDim2.new(1, 0,0, 36), "In", "Quint", 0.10)
                tweenservice:Create(sectionExpannd, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                    Rotation = 0
                }):Play()
                wait(0.10)
                UpdateSize()
                return isDropped
            end)
            tweenservice:Create(sectionExpannd, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                Rotation = 180
            }):Play()
            spawn(function()
                local a = 0 -- automatic break
                while true do
                    task.wait()
                    if a > 5 then
                        break
                    end
                    a = a + 1
                    sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                    UpdateSize()
                end
            end)

            local ItemHandling = {}

            function ItemHandling:Button(btnText, callback)
                local ButtonFrame = Instance.new("Frame")
                local TextButton = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local UIListLayout = Instance.new("UIListLayout")

                --
                btnText = btnText or "TextButton"
                callback = callback or function() end
                --

                ButtonFrame.Name = "ButtonFrame"
                ButtonFrame.Parent = sectionFrame
                ButtonFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                ButtonFrame.BackgroundTransparency = 1.000
                ButtonFrame.Size = UDim2.new(0, 365, 0, 36)

                TextButton.Parent = ButtonFrame
                TextButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                TextButton.Size = UDim2.new(0, 365, 0, 36)
                TextButton.ZIndex = 2
                TextButton.AutoButtonColor = false
                TextButton.Text = btnText
                TextButton.Font = Enum.Font.GothamSemibold
                TextButton.TextColor3 = Color3.fromRGB(180, 180, 180)
                TextButton.TextSize = 14.000

                local debounce = false
                local debounce1 = false
                TextButton.MouseButton1Click:Connect(function()
                    if not debounce then
                        debounce = true
                        callback()
                        wait(1)
                        debounce = false
                    end
                end)

                UICorner.CornerRadius = UDim.new(0, 3)
                UICorner.Parent = TextButton

                UIListLayout.Parent = ButtonFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                TextButton.MouseButton1Up:Connect(function()
                    TextButton:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    tweenservice:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(18,18,18),
                        TextColor3 = Color3.fromRGB(120, 120, 120)
                    }):Play()
                end)
                
                TextButton.MouseButton1Down:Connect(function()
                    if not debounce1 then
                        debounce1 = true
                        TextButton:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                        tweenservice:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                            BackgroundColor3 = Color3.fromRGB(50, 50, 50),
                            TextColor3 = Color3.fromRGB(120, 120, 120)
                        }):Play()
                        wait(1)
                        debounce1 = false
                    end
                end)
                
                TextButton.MouseEnter:Connect(function()
                    tweenservice:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                        TextColor3 = Color3.fromRGB(120, 120, 120) -- 250 250 250
                    }):Play()
                end)
                
                TextButton.MouseLeave:Connect(function()
                    tweenservice:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(18,18,18),
                        TextColor3 = Color3.fromRGB(120, 120, 120) -- 180 180 180
                    }):Play()
                end)
            end

                function ItemHandling:Toggle(toggInfo, callback)
                    local ToggleFrame = Instance.new("Frame")
                    local toggleFrame = Instance.new("Frame")
                    local UICorner = Instance.new("UICorner")
                    local checkBtn = Instance.new("ImageButton")
                    local toggleInfo = Instance.new("TextLabel")
                    local togInList = Instance.new("UIListLayout")
                    local toginPad = Instance.new("UIPadding")
                    local UIListLayout = Instance.new("UIListLayout")
                    --
                    toggInfo = toggInfo or "Toggle"
                    callback = callback or function() end

                    ToggleFrame.Name = "ToggleFrame"
                    ToggleFrame.Parent = sectionFrame
                    ToggleFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                    ToggleFrame.BackgroundTransparency = 1.000
                    ToggleFrame.Size = UDim2.new(0, 365, 0, 36)

                    toggleFrame.Name = "toggleFrame"
                    toggleFrame.Parent = ToggleFrame
                    toggleFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                    toggleFrame.Size = UDim2.new(0, 365, 0, 36)
                    toggleFrame.ZIndex = 2

                    UICorner.CornerRadius = UDim.new(0, 3)
                    UICorner.Parent = toggleFrame

                    checkBtn.Name = "checkBtn"
                    checkBtn.Parent = toggleFrame
                    checkBtn.BackgroundTransparency = 1.000
                    checkBtn.Position = UDim2.new(0.0191780813, 0, 0.138888896, 0)
                    checkBtn.Size = UDim2.new(0, 25, 0, 25)
                    checkBtn.ZIndex = 2
                    checkBtn.Image = "rbxassetid://3926311105"
                    checkBtn.ImageColor3 = Color3.fromRGB(97, 97, 97)
                    checkBtn.ImageRectOffset = Vector2.new(940, 784)
                    checkBtn.ImageRectSize = Vector2.new(48, 48)

                    toggleInfo.Name = "toggleInfo"
                    toggleInfo.Parent = toggleFrame
                    toggleInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    toggleInfo.BackgroundTransparency = 1.000
                    toggleInfo.Position = UDim2.new(0.104109593, 0, 0, 0)
                    toggleInfo.Size = UDim2.new(0.254794508, 162, 1, 0)
                    toggleInfo.ZIndex = 2
                    toggleInfo.Font = Enum.Font.GothamSemibold
                    toggleInfo.Text = toggInfo
                    toggleInfo.TextColor3 = Color3.fromRGB(97, 97, 97)
                    toggleInfo.TextSize = 14.000
                    toggleInfo.TextXAlignment = Enum.TextXAlignment.Left

                    togInList.Name = "togInList"
                    togInList.Parent = toggleFrame
                    togInList.FillDirection = Enum.FillDirection.Horizontal
                    togInList.SortOrder = Enum.SortOrder.LayoutOrder
                    togInList.VerticalAlignment = Enum.VerticalAlignment.Center
                    togInList.Padding = UDim.new(0, 5)

                    toginPad.Name = "toginPad"
                    toginPad.Parent = toggleFrame
                    toginPad.PaddingLeft = UDim.new(0, 7)

                    UIListLayout.Parent = ToggleFrame
                    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                    local on = false
                    local togDe = false
                    checkBtn.MouseButton1Click:Connect(function()
                        if not togDe then
                                togDe = true
                                on = not on
                                 callback(on) 
                                if on then
                                    checkBtn.Parent.toggleInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    checkBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
                                    checkBtn.ImageRectOffset = Vector2.new(4, 836)
                                    checkBtn.ImageRectSize = Vector2.new(48,48)
                                else
                                    checkBtn.Parent.toggleInfo.TextColor3 = Color3.fromRGB(97, 97, 97)
                                    checkBtn.ImageColor3 = Color3.fromRGB(97, 97, 97)
                                    checkBtn.ImageRectOffset = Vector2.new(940, 784)
                                    checkBtn.ImageRectSize = Vector2.new(48,48)
                                end
                                wait(1)
                                togDe = false
                            end
                    end)

                    checkBtn.MouseButton1Up:Connect(function()
                        checkBtn.Parent:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    end)

                    checkBtn.MouseButton1Down:Connect(function()
                        checkBtn.Parent:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                    end)
                end

                    function ItemHandling:KeyBind(keyInfo, first, callback)
                        --
                        keyInfo = keyInfo or "KeyBind"
                        local oldKey = first.Name
                        callback = callback or function() end

                        local KeyBindFrame = Instance.new("Frame")
                        local keybindFrame = Instance.new("Frame")
                        local UICorner = Instance.new("UICorner")
                        local key = Instance.new("TextButton")
                        local UICorner_2 = Instance.new("UICorner")
                        local keybindInfo = Instance.new("TextLabel")
                        local toginPad = Instance.new("UIPadding")
                        local togInList = Instance.new("UIListLayout")
                        local UIListLayout = Instance.new("UIListLayout")

                        KeyBindFrame.Name = "KeyBindFrame"
                        KeyBindFrame.Parent = sectionFrame
                        KeyBindFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                        KeyBindFrame.BackgroundTransparency = 1.000
                        KeyBindFrame.Size = UDim2.new(0, 365, 0, 36)

                        keybindFrame.Name = "keybindFrame"
                        keybindFrame.Parent = KeyBindFrame
                        keybindFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                        keybindFrame.Size = UDim2.new(0, 365, 0, 36)
                        keybindFrame.ZIndex = 2

                        UICorner.CornerRadius = UDim.new(0, 3)
                        UICorner.Parent = keybindFrame

                        key.Name = "key"
                        key.Parent = keybindFrame
                        key.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                        key.Position = UDim2.new(0.0250000004, 0, 0.194111288, 0)
                        key.Size = UDim2.new(0, 100, 0, 22)
                        key.ZIndex = 2
                        key.Font = Enum.Font.GothamSemibold
                        key.Text = oldKey
                        key.TextColor3 = Color3.fromRGB(255, 255, 255)
                        key.TextSize = 14.000

                        UICorner_2.CornerRadius = UDim.new(0, 5)
                        UICorner_2.Parent = key

                        keybindInfo.Name = "keybindInfo"
                        keybindInfo.Parent = keybindFrame
                        keybindInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        keybindInfo.BackgroundTransparency = 1.000
                        keybindInfo.Position = UDim2.new(0.320547938, 0, 0.166666672, 0)
                        keybindInfo.Size = UDim2.new(0, 239, 0, 22)
                        keybindInfo.ZIndex = 2
                        keybindInfo.Font = Enum.Font.GothamSemibold
                        keybindInfo.Text = keyInfo
                        keybindInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                        keybindInfo.TextSize = 13.000
                        keybindInfo.TextXAlignment = Enum.TextXAlignment.Left

                        toginPad.Name = "toginPad"
                        toginPad.Parent = keybindFrame
                        toginPad.PaddingLeft = UDim.new(0, 7)

                        togInList.Name = "togInList"
                        togInList.Parent = keybindFrame
                        togInList.FillDirection = Enum.FillDirection.Horizontal
                        togInList.SortOrder = Enum.SortOrder.LayoutOrder
                        togInList.VerticalAlignment = Enum.VerticalAlignment.Center
                        togInList.Padding = UDim.new(0, 8)

                        UIListLayout.Parent = KeyBindFrame
                        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                        key.MouseButton1Click:connect(function(e) 
                            keybindFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                            key.Text = ". . ."
                            local a, b = uis.InputBegan:wait();
                            if a.KeyCode.Name ~= "Unknown" then
                                keybindFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                key.Text = a.KeyCode.Name
                                oldKey = a.KeyCode.Name;
                            end
                        end)
                        local keyDebounce = false
                        uis.InputBegan:connect(function(current, ok) 
                            if not ok then 
                                if current.KeyCode.Name == oldKey then 
                                    if not keyDebounce then
                                        keyDebounce = true
                                        callback()
                                        keybindFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                        wait(0.18)
                                        keybindFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                        wait(0.5)
                                        keyDebounce = false
                                    end
                                end
                            end
                        end)
                    end

                        function ItemHandling:TextBox(infbix, textPlace, callback)
                            --
                            infbix = infbix or "TextBox"
                            textPlace = textPlace or "PlaceHolder"
                            callback = callback or function() end
                            --
                            local a
                            local TextBoxFrame = Instance.new("Frame")
                            local textboxFrame = Instance.new("Frame")
                            local UICorner = Instance.new("UICorner")
                            local textboxInfo = Instance.new("TextLabel")
                            local TextBox = Instance.new("TextBox")
                            local UICorner_2 = Instance.new("UICorner")
                            local textboxinlist = Instance.new("UIListLayout")
                            local txtboxpa = Instance.new("UIPadding")
                            local UIListLayout = Instance.new("UIListLayout")

                            TextBoxFrame.Name = "TextBoxFrame"
                            TextBoxFrame.Parent = sectionFrame
                            TextBoxFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                            TextBoxFrame.BackgroundTransparency = 1.000
                            TextBoxFrame.Size = UDim2.new(0, 365, 0, 36)

                            textboxFrame.Name = "textboxFrame"
                            textboxFrame.Parent = TextBoxFrame
                            textboxFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                            textboxFrame.Size = UDim2.new(0, 365, 0, 36)
                            textboxFrame.ZIndex = 2

                            UICorner.CornerRadius = UDim.new(0, 3)
                            UICorner.Parent = textboxFrame

                            textboxInfo.Name = "textboxInfo"
                            textboxInfo.Parent = textboxFrame
                            textboxInfo.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                            textboxInfo.BackgroundTransparency = 1.000
                            textboxInfo.Position = UDim2.new(0.320547938, 0, 0.166666672, 0)
                            textboxInfo.Size = UDim2.new(0, 239, 0, 22)
                            textboxInfo.ZIndex = 2
                            textboxInfo.Font = Enum.Font.GothamSemibold
                            textboxInfo.Text = infbix
                            textboxInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textboxInfo.TextSize = 13.000
                            textboxInfo.TextXAlignment = Enum.TextXAlignment.Left

                            TextBox.Parent = textboxFrame
                            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextBox.ClipsDescendants = true
                            TextBox.Position = UDim2.new(0.0250000004, 0, 0.194000006, 0)
                            TextBox.Size = UDim2.new(0, 100, 0, 22)
                            TextBox.ZIndex = 2
                            TextBox.ClearTextOnFocus = false
                            TextBox.Font = Enum.Font.GothamSemibold
                            TextBox.PlaceholderColor3 = Color3.fromRGB(202, 202, 202)
                            TextBox.Text = ""
                            TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
                            TextBox.TextSize = 13.000
                            TextBox.PlaceholderText = textPlace

                            UICorner_2.CornerRadius = UDim.new(0, 5)
                            UICorner_2.Parent = TextBox

                            textboxinlist.Name = "textboxinlist"
                            textboxinlist.Parent = textboxFrame
                            textboxinlist.FillDirection = Enum.FillDirection.Horizontal
                            textboxinlist.VerticalAlignment = Enum.VerticalAlignment.Center
                            textboxinlist.Padding = UDim.new(0, 8)

                            txtboxpa.Name = "txtboxpa"
                            txtboxpa.Parent = textboxFrame
                            txtboxpa.PaddingLeft = UDim.new(0, 7)

                            UIListLayout.Parent = TextBoxFrame
                            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                            function anim(property)
                                if property == "Text" then
                                    textboxFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                    wait(0.18)
                                    textboxFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                end
                            end
                            TextBox.Changed:Connect(anim)

                            TextBox.FocusLost:Connect(function(EnterPressed)
                                if not EnterPressed then return end
                                callback(TextBox.Text)
                                textboxFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                wait(0.18)
                                textboxFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                TextBox.Text = ""  
                            end)
                        end

                            function ItemHandling:Slider(slidInfo, minvalue, maxvalue, callback)
                                local SliderFrame = Instance.new("Frame")
                                local sliderFrame = Instance.new("Frame")
                                local UICorner = Instance.new("UICorner")
                                local sliderbtn = Instance.new("TextButton")
                                local UICorner_2 = Instance.new("UICorner")
                                local dragSlider = Instance.new("Frame")
                                local dragSliderUIGradient = Instance.new("UIGradient")
                                local UICorner_3 = Instance.new("UICorner")
                                local dragPrecent = Instance.new("TextLabel")
                                local UICorner_4 = Instance.new("UICorner")
                                local triangle = Instance.new("ImageLabel")
                                local precentlist = Instance.new("UIListLayout")
                                local precentPad = Instance.new("UIPadding")
                                local dragList = Instance.new("UIListLayout")
                                local dragPad = Instance.new("UIPadding")
                                local sliderlist_2 = Instance.new("UIListLayout")
                                local sliderlist = Instance.new("UIListLayout")
                                local UIListLayout = Instance.new("UIListLayout")
                                local sliderInfo = Instance.new("TextLabel")
                                --
                                slidInfo = slidInfo
                                minvalue = minvalue
                                maxvalue = maxvalue
                                ---

                                SliderFrame.Name = "SliderFrame"
                                SliderFrame.Parent = sectionFrame
                                SliderFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                SliderFrame.BackgroundTransparency = 1.000
                                SliderFrame.Size = UDim2.new(0, 365, 0, 36)

                                sliderFrame.Name = "sliderFrame"
                                sliderFrame.Parent = SliderFrame
                                sliderFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                sliderFrame.Size = UDim2.new(0, 365, 0, 36)
                                sliderFrame.ZIndex = 2

                                UICorner.CornerRadius = UDim.new(0, 3)
                                UICorner.Parent = sliderFrame

                                sliderbtn.Name = "sliderbtn"
                                sliderbtn.Parent = sliderFrame
                                sliderbtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                                sliderbtn.Position = UDim2.new(0.0167808235, 0, 0.416333348, 0)
                                sliderbtn.Size = UDim2.new(0, 150, 0, 6)
                                sliderbtn.ZIndex = 2
                                sliderbtn.AutoButtonColor = false
                                sliderbtn.Font = Enum.Font.SourceSans
                                sliderbtn.Text = ""
                                sliderbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                                sliderbtn.TextSize = 14.000

                                UICorner_2.CornerRadius = UDim.new(0, 5)
                                UICorner_2.Parent = sliderbtn

                                dragSlider.Name = "dragSlider"
                                dragSlider.Parent = sliderbtn
                                dragSlider.BackgroundColor3 = Color3.fromRGB(166, 186, 255)
                                dragSlider.Size = UDim2.new(0, 0, 0, 6)
                                dragSlider.ZIndex = 2

                                dragSliderUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(166, 186, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(166, 186, 255))}
                                dragSliderUIGradient.Parent = hubName

                                UICorner_3.CornerRadius = UDim.new(0, 5)
                                UICorner_3.Parent = dragSlider

                                dragPrecent.Name = "dragPrecent"
                                dragPrecent.Parent = dragSlider
                                dragPrecent.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                                dragPrecent.BorderSizePixel = 0
                                dragPrecent.Position = UDim2.new(0.727272749, 0, -2, 0)
                                dragPrecent.Size = UDim2.new(0, 44, 0, 15)
                                dragPrecent.ZIndex = 2
                                dragPrecent.Font = Enum.Font.GothamSemibold
                                dragPrecent.Text = "0%"
                                dragPrecent.TextColor3 = Color3.fromRGB(255, 255, 255)
                                dragPrecent.TextSize = 12.000
                                dragPrecent.BackgroundTransparency = 1
                                dragPrecent.TextTransparency = 1

                                UICorner_4.CornerRadius = UDim.new(0, 3)
                                UICorner_4.Parent = dragPrecent

                                triangle.Name = "triangle"
                                triangle.Parent = dragPrecent
                                triangle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                                triangle.BackgroundTransparency = 1.000
                                triangle.Size = UDim2.new(0, 44, 0, 39)
                                triangle.ZIndex = 2
                                triangle.Image = "rbxassetid://3926307971"
                                triangle.ImageColor3 = Color3.fromRGB(31, 31, 31)
                                triangle.ImageRectOffset = Vector2.new(324, 524)
                                triangle.ImageRectSize = Vector2.new(36, 36)
                                triangle.ImageTransparency = 1

                                precentlist.Name = "precentlist"
                                precentlist.Parent = dragPrecent
                                precentlist.HorizontalAlignment = Enum.HorizontalAlignment.Right
                                precentlist.SortOrder = Enum.SortOrder.LayoutOrder

                                precentPad.Name = "precentPad"
                                precentPad.Parent = dragPrecent

                                dragList.Name = "dragList"
                                dragList.Parent = dragSlider
                                dragList.HorizontalAlignment = Enum.HorizontalAlignment.Right
                                dragList.SortOrder = Enum.SortOrder.LayoutOrder

                                dragPad.Name = "dragPad"
                                dragPad.Parent = dragSlider
                                dragPad.PaddingLeft = UDim.new(0, -15)
                                dragPad.PaddingRight = UDim.new(0, -20)
                                dragPad.PaddingTop = UDim.new(0, -18)

                                sliderlist.Name = "sliderlist"
                                sliderlist.Parent = sliderbtn
                                sliderlist.SortOrder = Enum.SortOrder.LayoutOrder
                                sliderlist.VerticalAlignment = Enum.VerticalAlignment.Center

                                sliderlist_2.Name = "sliderlist"
                                sliderlist_2.Parent = sliderFrame
                                sliderlist_2.FillDirection = Enum.FillDirection.Horizontal
                                sliderlist_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                sliderlist_2.SortOrder = Enum.SortOrder.LayoutOrder
                                sliderlist_2.VerticalAlignment = Enum.VerticalAlignment.Center
                                sliderlist_2.Padding = UDim.new(0, 8)

                                UIListLayout.Parent = SliderFrame
                                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                                sliderInfo.Name = "sliderInfo"
                                sliderInfo.Parent = sliderFrame
                                sliderInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                sliderInfo.BackgroundTransparency = 1.000
                                sliderInfo.Position = UDim2.new(0.466095895, 0, 0, 0)
                                sliderInfo.Size = UDim2.new(0, 193, 0, 36)
                                sliderInfo.ZIndex = 2
                                sliderInfo.Font = Enum.Font.GothamSemibold
                                sliderInfo.Text = slidInfo
                                sliderInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                                sliderInfo.TextSize = 14.000
                                sliderInfo.TextXAlignment = Enum.TextXAlignment.Left

                                local mouse = function()
                                    return Vector2.new(uis:GetMouseLocation().X + 1, uis:GetMouseLocation().Y - 35)
                                end
                                local getMouse = player:GetMouse()
                                local Value;

                                pcall(function() -- 0 fix?
                                    Value = minvalue
                                    callback(Value)
                                end)
        
                                sliderbtn.MouseButton1Down:Connect(function()
                                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue))
                                    pcall(function()
                                        callback(Value)
                                    end)
                                    dragSlider.Size = UDim2.new(0, math.clamp(mouse().X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                                    moveconnection = getMouse.Move:Connect(function()
                                        local Percentage = Value --(Value/ maxvalue) * 100
                                        dragPrecent.Text = math.floor(Percentage)
                                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue))
                                        pcall(function()
                                            callback(Value)
                                        end)
                                        dragSlider.Size = UDim2.new(0, math.clamp(mouse().X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                                    end)
                                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue))
                                            pcall(function()
                                                callback(Value)
                                            end)
                                            Percentage = Value --(Value/ maxvalue) * 100
                                            dragPrecent.Text = math.floor(Percentage)
                                            dragSlider.Size = UDim2.new(0, math.clamp(mouse().X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end)
                                end)

                                function anim(property)
                                    if property == "Size" then
                                        sliderFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                        wait(0.18)
                                        sliderFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                    end
                                end
                                dragSlider.Changed:Connect(anim)

                                sliderbtn.MouseButton1Up:Connect(function()
                                    tweenservice:Create(dragPrecent, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        BackgroundTransparency = 1,
                                        TextTransparency = 1
                                    }):Play()
                                    tweenservice:Create(triangle, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        ImageTransparency = 1
                                    }):Play()
                                end)
                                
                                sliderbtn.MouseButton1Down:Connect(function()
                                    tweenservice:Create(dragPrecent, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        BackgroundTransparency = 0,
                                        TextTransparency = 0
                                    }):Play()
                                    tweenservice:Create(triangle, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        ImageTransparency = 0
                                    }):Play()
                                end)
                            end

                            function ItemHandling:Label(labelInfo)
                                local TextLabelFrame = Instance.new("Frame")
                                local UIListLayout = Instance.new("UIListLayout")
                                local TextLabel = Instance.new("TextLabel")
                                local UICorner = Instance.new("UICorner")
                                labelInfo = labelInfo or "Text Label"

                                TextLabelFrame.Name = "TextLabelFrame"
                                TextLabelFrame.Parent = sectionFrame
                                TextLabelFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabelFrame.BackgroundTransparency = 1.000
                                TextLabelFrame.Size = UDim2.new(0, 365, 0, 36)

                                UIListLayout.Parent = TextLabelFrame
                                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                                TextLabel.Parent = TextLabelFrame
                                TextLabel.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabel.Size = UDim2.new(0, 365, 0, 36)
                                TextLabel.ZIndex = 2
                                TextLabel.Font = Enum.Font.GothamSemibold
                                TextLabel.Text = labelInfo
                                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.TextSize = 14.000

                                UICorner.CornerRadius = UDim.new(0, 5)
                                UICorner.Parent = TextLabel
                            end

                            function ItemHandling:Credit(creditWho)
                                local TextLabelFrame = Instance.new("Frame")
                                local UIListLayout = Instance.new("UIListLayout")
                                local TextLabel = Instance.new("TextLabel")
                                local UICorner = Instance.new("UICorner")
                                creditWho = creditWho or "Text Label"

                                TextLabelFrame.Name = "TextLabelFrame"
                                TextLabelFrame.Parent = sectionFrame
                                TextLabelFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabelFrame.BackgroundTransparency = 1.000
                                TextLabelFrame.Size = UDim2.new(0, 365, 0, 36)

                                UIListLayout.Parent = TextLabelFrame
                                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                                TextLabel.Parent = TextLabelFrame
                                TextLabel.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabel.Size = UDim2.new(0, 365, 0, 36)
                                TextLabel.ZIndex = 2
                                TextLabel.Font = Enum.Font.Gotham
                                TextLabel.Text = "  "..creditWho
                                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.TextSize = 14.000
                                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                                UICorner.CornerRadius = UDim.new(0, 5)
                                UICorner.Parent = TextLabel
                            end

                                function ItemHandling:DropDown(dropInfo, list, callback)
                                    callback = callback or function() end
                                    list = list or {}
                                    dropInfo = dropInfo or ""
        
                                    local isDropped1 = false
                                    local DropDownFrame = Instance.new("Frame")
                                    local dropdownFrame = Instance.new("Frame")
                                    local UICorner = Instance.new("UICorner")
                                    local dropdownFrameMain = Instance.new("Frame")
                                    local UICorner_2 = Instance.new("UICorner")
                                    local expand_more = Instance.new("ImageButton")
                                    local dropdownItem1 = Instance.new("TextLabel")
                                    local UIListLayout = Instance.new("UIListLayout")
                                    local UIListLayout_2 = Instance.new("UIListLayout")
                                    local UIListLayout_3 = Instance.new("UIListLayout")

                                    local DropYSize = 36

                                    DropDownFrame.Name = "DropDownFrame"
                                    DropDownFrame.Parent = sectionFrame
                                    DropDownFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                    DropDownFrame.BackgroundTransparency = 1.000
                                    DropDownFrame.Position = UDim2.new(0.0209973752, 0, 0.439849585, 0)
                                    DropDownFrame.Size = UDim2.new(0, 365, 0, 36)
                                    DropDownFrame.ClipsDescendants = true

                                    dropdownFrame.Name = "dropdownFrame"
                                    dropdownFrame.Parent = DropDownFrame
                                    dropdownFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                    dropdownFrame.Size = UDim2.new(1, 0, 1, 0)
                                    dropdownFrame.ZIndex = 2

                                    UICorner.CornerRadius = UDim.new(0, 3)
                                    UICorner.Parent = dropdownFrame

                                    dropdownFrameMain.Name = "dropdownFrameMain"
                                    dropdownFrameMain.Parent = dropdownFrame
                                    dropdownFrameMain.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                    dropdownFrameMain.Size = UDim2.new(0, 365, 0, 36)
                                    dropdownFrameMain.ZIndex = 2

                                    UICorner_2.CornerRadius = UDim.new(0, 3)
                                    UICorner_2.Parent = dropdownFrameMain

                                    expand_more.Name = "expand_more"
                                    expand_more.Parent = dropdownFrameMain
                                    expand_more.BackgroundTransparency = 1.000
                                    expand_more.Position = UDim2.new(0.91900003, 0, 0.138999999, 0)
                                    expand_more.Size = UDim2.new(0, 25, 0, 25)
                                    expand_more.ZIndex = 2
                                    expand_more.Image = "rbxassetid://3926305904"
                                    expand_more.ImageColor3 = Color3.fromRGB(255, 255, 255)
                                    expand_more.ImageRectOffset = Vector2.new(564, 284)
                                    expand_more.ImageRectSize = Vector2.new(36, 36)
                                    expand_more.MouseButton1Click:Connect(function()
                                        if isDropped1 then
                                            isDropped1 = false
                                            DropDownFrame:TweenSize(UDim2.new(0, 365, 0, 36), "In", "Quint", 0.10)
                                            tweenservice:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                                Rotation = 0
                                            }):Play()
                                            wait(0.10)
                                            sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                                            wait(0.10)
                                            UpdateSize()
                                        else
                                            isDropped1 = true
                                            DropDownFrame:TweenSize(UDim2.new(0, 365, 0, DropYSize), "In", "Quint", 0.10)
                                            tweenservice:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                                Rotation = 180
                                            }):Play()
                                            wait(0.10)
                                            sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                                            wait(0.10)
                                            UpdateSize()
                                        end
                                    end)

                                    dropdownItem1.Name = "dropdownItem1"
                                    dropdownItem1.Parent = dropdownFrameMain
                                    dropdownItem1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    dropdownItem1.BackgroundTransparency = 1.000
                                    dropdownItem1.Position = UDim2.new(0.0250000004, 0, 0.0833333358, 0)
                                    dropdownItem1.Size = UDim2.new(0, 293, 0, 30)
                                    dropdownItem1.ZIndex = 2
                                    dropdownItem1.Font = Enum.Font.GothamSemibold
                                    dropdownItem1.Text = dropInfo
                                    dropdownItem1.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    dropdownItem1.TextSize = 14.000
                                    dropdownItem1.TextXAlignment = Enum.TextXAlignment.Left

                                    UIListLayout.Parent = dropdownFrame
                                    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                    UIListLayout.Padding = UDim.new(0, 3)

                                    UIListLayout_2.Parent = optionBtnFrame
                                    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                                    UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

                                    UIListLayout_3.Parent = DropDownFrame
                                    UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
                                    UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                                    UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

                                    for i,v in next, list do
                                        local optionBtnFrame = Instance.new("Frame")
                                        local optionBtn1 = Instance.new("TextButton")
                                        local UICorner_3 = Instance.new("UICorner")

                                        optionBtnFrame.Name = "optionBtnFrame"
                                        optionBtnFrame.Parent = dropdownFrame
                                        optionBtnFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                        optionBtnFrame.BackgroundTransparency = 1.000
                                        optionBtnFrame.BorderSizePixel = 0
                                        optionBtnFrame.Size = UDim2.new(0, 339, 0, 34)
    
                                        optionBtn1.Name = "optionBtn1"
                                        optionBtn1.Parent = optionBtnFrame
                                        optionBtn1.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
                                        optionBtn1.Size = UDim2.new(0, 339, 0, 34)
                                        optionBtn1.ZIndex = 2
                                        optionBtn1.AutoButtonColor = false
                                        optionBtn1.Font = Enum.Font.GothamSemibold
                                        optionBtn1.Text = "  "..v
                                        optionBtn1.TextColor3 = Color3.fromRGB(120, 200, 187)
                                        optionBtn1.TextSize = 14.000
                                        optionBtn1.TextXAlignment = Enum.TextXAlignment.Left
    
                                        UICorner_3.CornerRadius = UDim.new(0, 3)
                                        UICorner_3.Parent = optionBtn1

                                        DropYSize = DropYSize + 40
                                        optionBtn1.MouseButton1Click:Connect(function()
                                            callback(v)
                                            dropdownItem1.Text = v
                                            DropDownFrame:TweenSize(UDim2.new(0, 365, 0, 36), "In", "Quint", 0.10)
                                            wait()
                                            isDropped = false
                                            wait(0.10)
                                            sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                                            wait(0.10)
                                            UpdateSize()
                                            tweenservice:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                                Rotation = 0
                                            }):Play()
                                        end)
                                        optionBtn1.MouseButton1Down:Connect(function()
                                            optionBtn1:TweenSize(UDim2.new(0, 335,0, 30), "InOut", "Quint", 0.12, true)
                                            tweenservice:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(21,21,21),
                                                TextColor3 = Color3.fromRGB(180, 180, 180)
                                            }):Play()
                                        end)
                                        
                                        optionBtn1.MouseButton1Up:Connect(function()
                                            optionBtn1:TweenSize(UDim2.new(0, 339,0, 34), "InOut", "Quint", 0.12, true)
                                            tweenservice:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(101, 168, 157),
                                                TextColor3 = Color3.fromRGB(0,0,0)
                                            }):Play()
                                        end)
                                        
                                        optionBtn1.MouseEnter:Connect(function()
                                            tweenservice:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(15, 15, 15),
                                                TextColor3 = Color3.fromRGB(250,250,250)
                                            }):Play()
                                        end)
                                        
                                        optionBtn1.MouseLeave:Connect(function()
                                            tweenservice:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(21, 21, 21),
                                                TextColor3 = Color3.fromRGB(120, 200, 187)
                                            }):Play()
                                        end)
                                end
                            end
            return ItemHandling
        end
        return sectionHandling
    end
    return TabHandling
end

while true do
    if game:IsLoaded() then
        break
    end
    task.wait()
end

local player = players.LocalPlayer
local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
local window = icetray.CreateWindow("ice tray v3", content)
local plr = window:Tab("Player")
local vehicle = window:Tab("Vehicle")
local misc = window:Tab("Misc")
local combat = window:Tab("Combat")
local visuals = window:Tab("Visuals")
local info = window:Tab("Info")
global.ui = {}
global.ui.window = {}
global.ui.player = {}
global.ui.vehicle = {}
global.ui.misc = {}
global.ui.combat = {}
global.ui.visuals = {}
global.ui.info = {}
global.ui.window.tab = window
global.ui.player.tab = plr
global.ui.visuals.tab = visuals
global.ui.misc.tab = misc
global.ui.vehicle.tab = vehicle
global.ui.combat.tab = combat
global.ui.info.tab = info

return icetray
