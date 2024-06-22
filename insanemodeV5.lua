-- G95
coroutine.wrap(function()
    while true do
        wait(math.random(150,250))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/InsanemodeV5/main/G95.lua"))()
    end
end)()

-- Manci Rush
coroutine.wrap(function()
    while true do
        wait(math.random(250,460))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/Mayhem-mode-enity/main/Manic%20Rush.lua"))()
    end
end)()

-- Threat
coroutine.wrap(function()
    while true do
        wait(math.random(350,450))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoangnguyen72628/MayhemMode/main/ObfuscatedEntities/Threat-obfuscated.lua"))()
    end
end)()

-- Set initial properties for MainColorCorrection to make the scene darker
game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(128, 128, 128) -- Darker tint
game.Lighting.MainColorCorrection.Contrast = 0.5
game.Lighting.MainColorCorrection.Saturation = -0.35

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Insane mode Initiated",true)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Created by figure",true)
wait(3)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Fix by Darkness",true)
wait(3)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("For the sake of the game experience, please do not use destructive scripts",true)
wait(3)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Start playing. Good luck!",true)
