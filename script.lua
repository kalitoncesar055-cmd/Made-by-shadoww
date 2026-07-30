-- Made by Shadow
local lib = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))();
local win = lib:NewWindow("MODDED - by Shadow");
local section = win:NewSection("Stat Related");
local re = game:GetService("ReplicatedStorage");
local remote = re.Events.Remotes;
local func = re.Events.Functions;

section:CreateButton("Give Stats", function()
	func['Use_Code']:InvokeServer("MODDED");
	firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.Debug_Buttons.Remove_Codes,0)
	firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.Debug_Buttons.Remove_Codes,1)
end);

section:CreateButton("Pets OP", function()
	func['Use_Code']:InvokeServer("Pets");
	firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.Debug_Buttons.Remove_Codes,0)
	firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.Debug_Buttons.Remove_Codes,1)
end);

local auto3k = false
section:CreateToggle("Auto 3k Rebirths", function(ligar)
	auto3k = ligar
	while auto3k do
		task.wait(0.01)
		pcall(function()
			func['Use_Code']:InvokeServer("Ultimates");
			firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.Debug_Buttons.Remove_Codes,0)
			firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.Debug_Buttons.Remove_Codes,1)
		end)
	end
end);

section:CreateButton("Give Speed", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 500;
end);

section:CreateButton("Dead Lift", function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		for i = 1,25 do
			game.ReplicatedStorage.Events.Remotes.Machine:FireServer("Rep",workspace.Machines.Deadlifts["Muscle King Gym"]["5.1"])
		end
	end
end)

section:CreateButton("Squat", function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		for i = 1,15 do
			game.ReplicatedStorage.Events.Remotes.Machine:FireServer("Rep",workspace.Machines.Squats["Muscle King Gym"]["6.1"])
		end
	end
end)

local section = win:NewSection("Toggle");
local t1,t2,t3=false,false,false

section:CreateToggle("Auto Use Item", function(k)
	t1=k while t1 do task.wait() pcall(function() game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate() end) if not t1 then break end end
end);

section:CreateToggle("Rebirth", function(ll)
	t2=ll while t2 do task.wait() remote["Rebirth"]:FireServer() if not t2 then break end end
end)

section:CreateToggle("Hide All Pets", function(diddy)
	t3=diddy while t3 do task.wait() for _,f in ipairs(workspace.Pets:GetChildren())do if f.Name~=game.Players.LocalPlayer.Name then f:Destroy()else for _,d in ipairs(f:GetChildren())do if d then d:Destroy()end end end end if not t3 then break end end
end)
