local Candle = game:GetObjects("rbxassetid://6715358554")[1]
		Candle.Parent = game.Players.LocalPlayer.Backpack
		Candle.Light.Light.Color = Color3.fromRGB(235, 167, 98);
		Candle.Light.Shadow.Color = Color3.fromRGB(235, 167, 98);
		Candle.Light.Light.Brightness = 1
		Candle.Light.Shadow.Brightness = 1.1
		local plr = game.Players.LocalPlayer.Character.Humanoid
local on = false  Candle.Activated:Connect(function() 	if on == false then 		on = true 		Candle.Light.Shadow.Enabled = true 		Candle.Light.Light.Enabled = true 		Candle.Light.Sound:Play() 		Candle.Front.SurfaceLight.Enabled = true 	elseif on == true then 		on = false 		Candle.Light.Shadow.Enabled = false 		Candle.Light.Light.Enabled = false 		Candle.Light.Sound2:Play() 		Candle.Front.SurfaceLight.Enabled = false 	end end)
		local AnimIdle = Instance.new("Animation")
		AnimIdle.AnimationId = "rbxassetid://507768375"
		AnimIdle.Name = "holyf"
		AnimIdle.Parent = Candle
		local track = plr.Animator:LoadAnimation(AnimIdle)
		track.Looped = true
Candle.Equipped:Connect(function()
	track:Play()
end)
Candle.Unequipped:Connect(function()
	track:Stop()
end)
local Camera = game.Workspace.CurrentCamera
local RS = game:GetService("RunService")
RS.RenderStepped:Connect(function(step)
    Candle.Light.CFrame = Candle.Light.CFrame:lerp(Camera.CFrame, .25)
end)
