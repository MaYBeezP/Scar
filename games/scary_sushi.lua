local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local PLR = game:GetService("Players").LocalPlayer

local Window = Rayfield:CreateWindow({
	Name = "🍣 | Scary Sushi ",
	LoadingTitle = "Loading..",
	LoadingSubtitle = "Brought to you by Scar",
	ConfigurationSaving = {
	   Enabled = true,
	   FolderName = nil, -- Create a custom folder for your hub/game
	   FileName = "Big Hub"
	},
	Discord = {
	   Enabled = false,
	   Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
	   RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
	   Title = "Untitled",
	   Subtitle = "Key System",
	   Note = "No method of obtaining the key is provided",
	   FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
	   SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
	   GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
	   Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
 })


-- Teleporting
local Teleport = Window:CreateTab("Teleports") -- Title, Image

local Label = Teleport:CreateLabel("Main Teleports")

local Button = Teleport:CreateButton({
	Name = "Kitchen",
	Callback = function()
		local spawn = game.Workspace:WaitForChild("SpawnLocation")
		PLR.Character.HumanoidRootPart.CFrame = spawn.CFrame + Vector3.new(0, 0, -1)
	end,
 })

local Button = Teleport:CreateButton({
	Name = "Vegies",
	Callback = function()
		local spawn = workspace.Garden.Decorations:GetChildren()[5].Trunk.Part
		PLR.Character.HumanoidRootPart.CFrame = spawn.CFrame + Vector3.new(0, 0, -1)
	end,
 })

local Button = Teleport:CreateButton({
	Name = "Processing",
	Callback = function()
		local spawn = workspace.SludgeRoom.MachineRoom.Trigger.Lever.LeverMovements.LeverUp
		PLR.Character.HumanoidRootPart.CFrame = spawn.CFrame + Vector3.new(0, 0, -1)
	end,
 })

local Button = Teleport:CreateButton({
	Name = "Elevator",
	Callback = function()
		local spawn = workspace.SludgeRoom.MachineRoom.Trigger.Lever.LeverMovements.LeverUp
		PLR.Character.HumanoidRootPart.CFrame = spawn.CFrame + Vector3.new(0, 1, 0)
	end,
 })

-- Items
local Items = Window:CreateTab("Items") -- Title, Image

local Button = Items:CreateButton({
	Name = "Rice",
	Callback = function()
		local lastloc = PLR.Character.HumanoidRootPart.CFrame
		local spawn = workspace.RiceRoom.Spawners:GetChildren()[8].CFrame
		local apex = workspace.RiceRoom.Spawners:GetChildren()[8].ProximityPrompt
		PLR.Character.HumanoidRootPart.CFrame = spawn + Vector3.new(1, 0, 0)
		wait(0.1)
		fireproximityprompt(apex, 1, true)
		wait(0.1)
		PLR.Character.HumanoidRootPart.CFrame = lastloc + Vector3.new(0, 0, -1)
	end,
 })

local Button = Items:CreateButton({
	Name = "Nori",
	Callback = function()
		local lastloc = PLR.Character.HumanoidRootPart.CFrame
		local spawn = workspace.RiceRoom.Spawners:GetChildren()[1].CFrame
		local apex = workspace.RiceRoom.Spawners:GetChildren()[1].ProximityPrompt
		PLR.Character.HumanoidRootPart.CFrame = spawn + Vector3.new(1, 0, 0)
		wait(0.1)
		fireproximityprompt(apex, 1, true)
		wait(0.1)
		PLR.Character.HumanoidRootPart.CFrame = lastloc + Vector3.new(0, 0, -1)
	end,
 })

local Button = Items:CreateButton({
	Name = "Tuna - Purple Fish",
	Callback = function()
		local lastloc = PLR.Character.HumanoidRootPart.CFrame
		local spawn = workspace.FishFarm.FishPods.TunaFishPod.TunaPrompt.CFrame
		local apex = workspace.FishFarm.FishPods.TunaFishPod.TunaPrompt.ProximityPrompt
		PLR.Character.HumanoidRootPart.CFrame = spawn + Vector3.new(1, 0, 0)
		wait(0.1)
		fireproximityprompt(apex, 1, true)
		wait(0.1)
		PLR.Character.HumanoidRootPart.CFrame = lastloc + Vector3.new(0, 0, -1)
	end,
 })

local Button = Items:CreateButton({
	Name = "Salmon - Blue Fish",
	Callback = function()
		local lastloc = PLR.Character.HumanoidRootPart.CFrame
		local spawn = workspace.FishFarm.FishPods.SalmonFishPod.Part.CFrame
		local apex = workspace.FishFarm.FishPods.SalmonFishPod.Part.ProximityPrompt
		PLR.Character.HumanoidRootPart.CFrame = spawn + Vector3.new(0, 0, -2)
		wait(0.1)
		fireproximityprompt(apex, 1, true)
		wait(0.1)
		PLR.Character.HumanoidRootPart.CFrame = lastloc + Vector3.new(0, 0, -1)
	end,
 })

 local Button = Items:CreateButton({
	Name = "Flouder - Orange Fish",
	Callback = function()
		local lastloc = PLR.Character.HumanoidRootPart.CFrame
		local spawn = workspace.FishFarm.FishPods.FlounderFishPod.Prompt.CFrame
		local apex = workspace.FishFarm.FishPods.FlounderFishPod.Prompt.ProximityPrompt
		PLR.Character.HumanoidRootPart.CFrame = spawn + Vector3.new(0, 0, -2)
		wait(0.1)
		fireproximityprompt(apex, 1, true)
		wait(0.1)
		PLR.Character.HumanoidRootPart.CFrame = lastloc + Vector3.new(0, 0, -1)
	end,
 })

 local Button = Items:CreateButton({
	Name = "Eel - Idk Fish",
	Callback = function()
		local lastloc = PLR.Character.HumanoidRootPart.CFrame
		local spawn = workspace.FishFarm.FishPods.EelFishPod.EelPrompt.CFrame
		local apex = workspace.FishFarm.FishPods.EelFishPod.EelPrompt.ProximityPrompt
		PLR.Character.HumanoidRootPart.CFrame = spawn + Vector3.new(0, 0, -2)
		wait(0.1)
		fireproximityprompt(apex, 1, true)
		wait(0.1)
		PLR.Character.HumanoidRootPart.CFrame = lastloc + Vector3.new(0, 0, -1)
	end,
 })
-- # FUNCTIONS 

local function fireproximityprompt(Obj, Amount, Skip)
    print("Test")
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end
