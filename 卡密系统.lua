local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local KEY_FILE_NAME = "MOE_CHAIN_SavedKey.txt"
local failedAttempts = 0
local MAX_ATTEMPTS = 3

local function loadMainScript()
    pcall(function()
        print("=== MOE_CHAIN Authentication ===")
        print("✅ Verified Successfully")
        print("Premium Status:", ADitto_Premium)
        print("Key Type:", ADitto_KeyType)
        print("User Group:", table.concat(ADitto_UserGroup or {}, ", "))
        
        if ADitto_KeyType == "time_based" then
            print("Expires:", os.date("%Y-%m-%d %H:%M:%S", ADitto_Expire))
        else
            print("Uses Remaining:", ADitto_Count)
        end
        print("================================")
        
        wait(0.5) 
        
        local success, err = pcall(function()
            ---↓↓↓↓↓↓↓放置脚本（保持原样）



loadstring(game:HttpGet("https://raw.githubusercontent.com/DevSloPo/Main/refs/heads/main/Game/MOE%203.0.Lua"))()

            
            ---↑↑↑↑↑↑放置脚本
        end)
        
        if success then
            print("✅ MOE_CHAIN Hub loaded successfully!")
        else
            warn("❌ Failed to load main script:", err)
            game.StarterGui:SetCore("SendNotification", {
                Title = "MOE_CHAIN Hub Error",
                Text = "Failed to load script!",
                Duration = 5
            })
        end
    end)
end

local function saveKey(key)
    pcall(function()
        writefile(KEY_FILE_NAME, key)
    end)
end

local function loadKey()
    local success, key = pcall(function()
        return readfile(KEY_FILE_NAME)
    end)
    if success and key and #key > 1 then
        return key
    end
    return nil
end

local function deleteKey()
    pcall(function()
        delfile(KEY_FILE_NAME)
    end)
end


local KeySystem = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Header = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Subtitle = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local SubmitBtn = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local SupportText = Instance.new("TextLabel")
local DiscordLink = Instance.new("TextButton")
local ButtonsFrame = Instance.new("Frame")
local LinkvertiseBtn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local WorkinkBtn = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local UIStroke = Instance.new("UIStroke")
local MainGradient = Instance.new("UIGradient")
local SubmitGradient = Instance.new("UIGradient")
local LinkGradient = Instance.new("UIGradient")
local GlowFrame = Instance.new("Frame")
local GlowGradient = Instance.new("UIGradient")
local UICorner_Glow = Instance.new("UICorner")
local StatusLabel = Instance.new("TextLabel")

KeySystem.Name = "KeySystem"
KeySystem.Parent = CoreGui
KeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = KeySystem
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 380, 0, 285)
Main.BackgroundTransparency = 0.1
Main.ImageTransparency = 1

GlowFrame.Name = "GlowFrame"
GlowFrame.Parent = Main
GlowFrame.AnchorPoint = Vector2.new(0.5, 0.5)
GlowFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
GlowFrame.Size = UDim2.new(1, 4, 1, 4)
GlowFrame.BackgroundColor3 = Color3.fromRGB(140, 80, 200)
GlowFrame.BackgroundTransparency = 0.7
GlowFrame.ZIndex = 0

UICorner_Glow.CornerRadius = UDim.new(0, 14)
UICorner_Glow.Parent = GlowFrame

GlowGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 60, 180)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 100, 255))
}
GlowGradient.Rotation = 0
GlowGradient.Parent = GlowFrame

MainGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 20, 40)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(15, 15, 25)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 25, 45))
}
MainGradient.Rotation = 45
MainGradient.Parent = Main

ImageLabel_2.Parent = Main
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.05, 0, 0.0717872535, 0)
ImageLabel_2.Size = UDim2.new(0, 30, 0, 29)
ImageLabel_2.Image = "rbxassetid://138929814993200"
ImageLabel_2.ImageColor3 = Color3.fromRGB(160, 100, 255)

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Main

Header.Name = "Header"
Header.Parent = Main
Header.BackgroundTransparency = 1
Header.Size = UDim2.new(1, 0, 0, 100)

Title.Name = "Title"
Title.Parent = Header
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 30, 0, 20)
Title.Size = UDim2.new(1, -60, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "    Welcome,"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextTransparency = 1

Subtitle.Name = "Subtitle"
Subtitle.Parent = Header
Subtitle.BackgroundTransparency = 1
Subtitle.Position = UDim2.new(0, 30, 0, 50)
Subtitle.Size = UDim2.new(1, -60, 0, 30)
Subtitle.Font = Enum.Font.GothamBold
Subtitle.Text = "MOE_CHAIN"
Subtitle.TextColor3 = Color3.fromRGB(160, 100, 255)
Subtitle.TextSize = 22
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.TextTransparency = 1

StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = Main
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 30, 0, 75)
StatusLabel.Size = UDim2.new(1, -60, 0, 20)
StatusLabel.Font = Enum.Font.GothamMedium
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(160, 140, 200)
StatusLabel.TextSize = 12
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.TextTransparency = 1
StatusLabel.Visible = false

KeyInput.Name = "KeyInput"
KeyInput.Parent = Main
KeyInput.BackgroundColor3 = Color3.fromRGB(20, 18, 30)
KeyInput.BorderSizePixel = 0
KeyInput.Position = UDim2.new(0, 30, 0, 100)
KeyInput.Size = UDim2.new(1, -60, 0, 45)
KeyInput.Font = Enum.Font.Gotham
KeyInput.PlaceholderColor3 = Color3.fromRGB(120, 100, 150)
KeyInput.PlaceholderText = "Enter Key"
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 14
KeyInput.TextTruncate = Enum.TextTruncate.AtEnd
KeyInput.TextWrapped = true
KeyInput.ClearTextOnFocus = false
KeyInput.BackgroundTransparency = 1

UIStroke.Name = "UIStroke"
UIStroke.Parent = KeyInput
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(100, 70, 150)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 2
UIStroke.Transparency = 0.3

UICorner_2.CornerRadius = UDim.new(0, 8)
UICorner_2.Parent = KeyInput

SubmitBtn.Name = "SubmitBtn"
SubmitBtn.Parent = Main
SubmitBtn.BackgroundColor3 = Color3.fromRGB(140, 80, 200)
SubmitBtn.BorderSizePixel = 0
SubmitBtn.Position = UDim2.new(0, 30, 0, 155)
SubmitBtn.Size = UDim2.new(1, -60, 0, 45)
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.Text = "Verify Key"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 16
SubmitBtn.BackgroundTransparency = 1

SubmitGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 70, 200)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 100, 255))
}
SubmitGradient.Rotation = 90
SubmitGradient.Parent = SubmitBtn

UICorner_3.CornerRadius = UDim.new(0, 8)
UICorner_3.Parent = SubmitBtn

SupportText.Name = "SupportText"
SupportText.Parent = Main
SupportText.BackgroundTransparency = 1
SupportText.Position = UDim2.new(0, 95, 0, 255)
SupportText.Size = UDim2.new(1, -60, 0, 20)
SupportText.Font = Enum.Font.Gotham
SupportText.Text = "Need help?"
SupportText.TextColor3 = Color3.fromRGB(150, 130, 180)
SupportText.TextSize = 13
SupportText.TextXAlignment = Enum.TextXAlignment.Left
SupportText.TextTransparency = 1

DiscordLink.Name = "DiscordLink"
DiscordLink.Parent = SupportText
DiscordLink.BackgroundTransparency = 1
DiscordLink.Position = UDim2.new(0, 92, 0, 0)
DiscordLink.Size = UDim2.new(0, 150, 0, 20)
DiscordLink.Font = Enum.Font.GothamBold
DiscordLink.Text = "Join DC Channel"
DiscordLink.TextColor3 = Color3.fromRGB(160, 100, 255)
DiscordLink.TextSize = 13
DiscordLink.TextXAlignment = Enum.TextXAlignment.Left
DiscordLink.TextTransparency = 1

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = Main
ButtonsFrame.BackgroundTransparency = 1
ButtonsFrame.Position = UDim2.new(0, 30, 0, 280)
ButtonsFrame.Size = UDim2.new(1, -60, 0, 35)

LinkvertiseBtn.Name = "LinkvertiseBtn"
LinkvertiseBtn.Parent = ButtonsFrame
LinkvertiseBtn.BackgroundColor3 = Color3.fromRGB(140, 80, 200)
LinkvertiseBtn.BorderSizePixel = 0
LinkvertiseBtn.Position = UDim2.new(0, 0, 0, -70)
LinkvertiseBtn.Size = UDim2.new(0.6, -5, 1, 0)
LinkvertiseBtn.Font = Enum.Font.GothamBold
LinkvertiseBtn.Text = "Get Key"
LinkvertiseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LinkvertiseBtn.TextSize = 13
LinkvertiseBtn.BackgroundTransparency = 1

LinkGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 90, 220)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 60, 180))
}
LinkGradient.Rotation = 45
LinkGradient.Parent = LinkvertiseBtn

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = LinkvertiseBtn

WorkinkBtn.Name = "WorkinkBtn"
WorkinkBtn.Parent = ButtonsFrame
WorkinkBtn.BackgroundColor3 = Color3.fromRGB(30, 25, 45)
WorkinkBtn.BorderSizePixel = 0
WorkinkBtn.Position = UDim2.new(0.6, 0, 0, -70)
WorkinkBtn.Size = UDim2.new(0.4, 0, 1, 0)
WorkinkBtn.Font = Enum.Font.Gotham
WorkinkBtn.Text = "How to Get & Use"
WorkinkBtn.TextColor3 = Color3.fromRGB(200, 180, 230)
WorkinkBtn.TextSize = 13

UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = WorkinkBtn

local function playEntryAnimation()
    Main.Position = UDim2.new(0.5, 0, -0.5, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)
    Main.Rotation = -10
    
    local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    
    TweenService:Create(Main, tweenInfo, {
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(0, 380, 0, 285),
        Rotation = 0
    }):Play()
    
    wait(0.3)
    
    local fadeInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService:Create(Title, fadeInfo, {TextTransparency = 0}):Play()
    wait(0.1)
    TweenService:Create(Subtitle, fadeInfo, {TextTransparency = 0}):Play()
    wait(0.1)
    TweenService:Create(KeyInput, fadeInfo, {BackgroundTransparency = 0}):Play()
    wait(0.1)
    TweenService:Create(SubmitBtn, fadeInfo, {BackgroundTransparency = 0}):Play()
    wait(0.1)
    TweenService:Create(LinkvertiseBtn, fadeInfo, {BackgroundTransparency = 0}):Play()
    wait(0.1)
    TweenService:Create(SupportText, fadeInfo, {TextTransparency = 0}):Play()
    TweenService:Create(DiscordLink, fadeInfo, {TextTransparency = 0}):Play()
end

local function playExitAnimation()
    local tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.In)
    
    TweenService:Create(Title, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
    TweenService:Create(Subtitle, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
    TweenService:Create(KeyInput, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
    TweenService:Create(SubmitBtn, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
    TweenService:Create(LinkvertiseBtn, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
    TweenService:Create(SupportText, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
    TweenService:Create(DiscordLink, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
    TweenService:Create(StatusLabel, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
    
    wait(0.2)
    
    TweenService:Create(Main, tweenInfo, {
        Position = UDim2.new(0.5, 0, 1.5, 0),
        Size = UDim2.new(0, 0, 0, 0),
        Rotation = 10
    }):Play()
    
    wait(0.7)
    KeySystem:Destroy()
end

local function startIdleAnimations()
    spawn(function()
        while Main.Parent do
            TweenService:Create(GlowGradient, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Rotation = 360
            }):Play()
            wait(3)
            GlowGradient.Rotation = 0
        end
    end)
    
    spawn(function()
        while Main.Parent do
            TweenService:Create(GlowFrame, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                BackgroundTransparency = 0.5
            }):Play()
            wait(2)
            TweenService:Create(GlowFrame, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                BackgroundTransparency = 0.8
            }):Play()
            wait(2)
        end
    end)
    
    spawn(function()
        while Main.Parent do
            TweenService:Create(ImageLabel_2, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Rotation = 15
            }):Play()
            wait(1.5)
            TweenService:Create(ImageLabel_2, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Rotation = -15
            }):Play()
            wait(1.5)
        end
    end)
end

playEntryAnimation()
startIdleAnimations()

SubmitBtn.MouseEnter:Connect(function()
    TweenService:Create(SubmitBtn, TweenInfo.new(0.3), {Size = UDim2.new(1, -55, 0, 45)}):Play()
    TweenService:Create(SubmitGradient, TweenInfo.new(0.3), {Rotation = 45}):Play()
end)

SubmitBtn.MouseLeave:Connect(function()
    TweenService:Create(SubmitBtn, TweenInfo.new(0.3), {Size = UDim2.new(1, -60, 0, 45)}):Play()
    TweenService:Create(SubmitGradient, TweenInfo.new(0.3), {Rotation = 90}):Play()
end)

LinkvertiseBtn.MouseEnter:Connect(function()
    TweenService:Create(LinkvertiseBtn, TweenInfo.new(0.2), {Size = UDim2.new(0.6, 0, 1, 0)}):Play()
    TweenService:Create(LinkGradient, TweenInfo.new(0.5), {Rotation = 90}):Play()
end)

LinkvertiseBtn.MouseLeave:Connect(function()
    TweenService:Create(LinkvertiseBtn, TweenInfo.new(0.2), {Size = UDim2.new(0.6, -5, 1, 0)}):Play()
    TweenService:Create(LinkGradient, TweenInfo.new(0.5), {Rotation = 45}):Play()
end)

WorkinkBtn.MouseEnter:Connect(function()
    TweenService:Create(WorkinkBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(45, 35, 65)}):Play()
end)

WorkinkBtn.MouseLeave:Connect(function()
    TweenService:Create(WorkinkBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(30, 25, 45)}):Play()
end)

DiscordLink.MouseEnter:Connect(function()
    TweenService:Create(DiscordLink, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(200, 150, 255)}):Play()
end)

DiscordLink.MouseLeave:Connect(function()
    TweenService:Create(DiscordLink, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(160, 100, 255)}):Play()
end)

KeyInput.Focused:Connect(function()
    TweenService:Create(UIStroke, TweenInfo.new(0.3), {
        Color = Color3.fromRGB(160, 100, 255),
        Thickness = 2,
        Transparency = 0
    }):Play()
end)

KeyInput.FocusLost:Connect(function()
    TweenService:Create(UIStroke, TweenInfo.new(0.3), {
        Color = Color3.fromRGB(100, 70, 150),
        Thickness = 2,
        Transparency = 0.3
    }):Play()
end)

LinkvertiseBtn.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/moechainfake123")
    local originalText = LinkvertiseBtn.Text
    LinkvertiseBtn.Text = "Copied!"
    wait(1.5)
    LinkvertiseBtn.Text = originalText
end)

WorkinkBtn.MouseButton1Click:Connect(function()
    setclipboard("Get key from DC channel")
    local originalText = WorkinkBtn.Text
    WorkinkBtn.Text = "Copied!"
    wait(1.5)
    WorkinkBtn.Text = originalText
end)

DiscordLink.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/moechainfake123")
    local originalText = DiscordLink.Text
    DiscordLink.Text = "Link Copied!"
    wait(1.5)
    DiscordLink.Text = originalText
end)

local function verifyKey(keyToVerify, isAutoLogin)
    getfenv().ADittoKey = keyToVerify
    
    local function kickPlayerFunction(errorMessage)
        if isAutoLogin then
            deleteKey()
            StatusLabel.Visible = false
            KeyInput.PlaceholderText = "Auto-login failed - Enter key"
            return false
        end
        
        failedAttempts = failedAttempts + 1
        
        if failedAttempts >= MAX_ATTEMPTS then
            SubmitBtn.Text = "Too Many Attempts!"
            TweenService:Create(SubmitGradient, TweenInfo.new(0.3), {
                Rotation = 90
            }):Play()
            SubmitGradient.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 50, 50)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 30, 30))
            }
            wait(1)
            Players.LocalPlayer:Kick("❌ Too many failed attempts. Please rejoin.")
            return false
        end
        
        SubmitBtn.Text = "Failed! (" .. failedAttempts .. "/" .. MAX_ATTEMPTS .. ")"
        TweenService:Create(SubmitGradient, TweenInfo.new(0.3), {
            Rotation = 90
        }):Play()
        SubmitGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 100)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 50, 80))
        }
        KeyInput.PlaceholderText = "Invalid Key"
        KeyInput.Text = ""
        TweenService:Create(Main, TweenInfo.new(0.1), {Rotation = 3}):Play()
        wait(0.05)
        TweenService:Create(Main, TweenInfo.new(0.1), {Rotation = -3}):Play()
        wait(0.05)
        TweenService:Create(Main, TweenInfo.new(0.1), {Rotation = 0}):Play()
        wait(2)
        SubmitBtn.Text = "Verify Key"
        SubmitGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 70, 200)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 100, 255))
        }
        return false
    end
    
    local status, result = xpcall(
        function()
            local startTime = tick()
            print(
                [==[    
MOE_CHAIN Auth SDK                                                    
__     __      ____  
\ \   / /      |___ \ 
 \ \ / /         __) |
  \ V /         / __/ 
   \_/         |_____|
   
 _____    _                    _     
|  ___|  | |    __ _    ___   | |__  
| |_     | |   / _` |  / __|  | '_ \ 
|  _|    | |  | (_| |  \__ \  | | | |
|_|      |_|   \__,_|  |___/  |_| |_|                                    
By continuing you agree to the
User Agreement: https://moe-chain.xyz/user-agreement
Privacy Policy: https://moe-chain.xyz/privacy-policy
Learn more at https://moe-chain.xyz/]==]
            )
            local kickPlayer = function(kickMessage)
                error(kickMessage)
            end
            
            if not getfenv().ADittoKey or #getfenv().ADittoKey <= 1 then
                return kickPlayer("Enter A Valid Key")
            end
            
            if getfenv().ADittoKey ~= "time_based" then
                return kickPlayer("Invalid Key")
            end
            
            ADitto_UserGroup = {"Default"}
            ADitto_Premium = true
            ADitto_KeyType = "time_based"
            ADitto_Expire = os.time() + 31536000
            
            if not isAutoLogin then
                saveKey(keyToVerify)
            end
            
            return true
        end,
        function(err)
            if type(err) == "string" then
                return kickPlayerFunction(err)
            else
                return kickPlayerFunction("Invalid Key")
            end
        end
    )
    
    return status and result  
end

local savedKey = loadKey()

if savedKey then
    StatusLabel.Text = "🔄 Auto logging in..."
    StatusLabel.Visible = true
    TweenService:Create(StatusLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
    
    wait(0.5)
    
    local success = verifyKey(savedKey, true)
    
    if success then
    StatusLabel.Text = "✅ Auto login successful!"
    TweenService:Create(StatusLabel, TweenInfo.new(0.3), {
        TextColor3 = Color3.fromRGB(100, 255, 150)
    }):Play()
    wait(1)
    playExitAnimation()
    loadMainScript() 

    else
        StatusLabel.Visible = false
    end
end

SubmitBtn.MouseButton1Click:Connect(function()
    local enteredKey = KeyInput.Text
    
    if #enteredKey <= 1 then
        SubmitBtn.Text = "Enter valid key!"
        TweenService:Create(SubmitGradient, TweenInfo.new(0.3), {
            Rotation = 90
        }):Play()
        SubmitGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 150, 100)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 100, 80))
        }
        TweenService:Create(Main, TweenInfo.new(0.1), {Rotation = 3}):Play()
        wait(0.05)
        TweenService:Create(Main, TweenInfo.new(0.1), {Rotation = -3}):Play()
        wait(0.05)
        TweenService:Create(Main, TweenInfo.new(0.1), {Rotation = 0}):Play()
        wait(1.5)
        SubmitBtn.Text = "Verify Key"
        SubmitGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 70, 200)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 100, 255))
        }
        return
    end
    
    SubmitBtn.Text = "Verifying..."
    TweenService:Create(SubmitGradient, TweenInfo.new(0.5), {
        Rotation = 45
    }):Play()
    SubmitGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 200, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 150, 220))
    }
    
    local success = verifyKey(enteredKey, false)
    
    if success then
    SubmitBtn.Text = "Success! ✓"
    TweenService:Create(SubmitGradient, TweenInfo.new(0.3), {
        Rotation = 90
    }):Play()
    SubmitGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 255, 150)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 200, 120))
    }
    wait(1)
    playExitAnimation()
    loadMainScript() 

    else
        SubmitBtn.Text = "Verify Key"
        SubmitGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 100, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 70, 200)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 100, 255))
        }
    end
end)

KeyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        SubmitBtn.MouseButton1Click:Fire()
    end
end)

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Main.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Main.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
