local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Trojan Exploit Spy",
   LoadingTitle = "권남부대 병신들을 조져버리기 위한 허브",
   LoadingSubtitle = "by Trojan",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Trojan Exploit"
   },
   Discord = {
      Enabled = false,
      Invite = "XMApCeSTgz", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Trojan HUB Key",
      Subtitle = "Trojan HUB Open",
      Note = "디스코드에서 키를 획들하세요! 링크:XMApCeSTgz",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Trojan777"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Trojan HUB",
   Content = "허브 준비 완료 권남부대를 조져봐요",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("Best User!")
      end
   },
},
})

local Player = Window:CreateTab("플레이어", nil)
local Tool = Window:CreateTab("도구", nil)
local Gun = Window:CreateTab("ACS, CE엔진", nil)
local ETC = Window:CreateTab("기타", nil)

local WS = Player:CreateSlider({
   Name = "속도",
   Range = {16, 500},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local JP = Player:CreateSlider({
   Name = "점프 파워",
   Range = {50, 500},
   Increment = 10,
   Suffix = "JuMP",
   CurrentValue = 10,
   Flag = "Jump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local ij = Player:CreateButton({
   Name = "무한 점프",
   Callback = function()
      game:GetService("UserInputService").JumpRequest:Connect(function()
         game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
      end)
   end
})


local BT = Tool:CreateButton({
   Name = "F3X",
   Callback = function()
   loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
   end,
})

local TT = Tool:CreateButton({
   Name = "텔레포트 툴",
   Callback = function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Trojan Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local CK = Gun:CreateButton({
   Name = "CE 엔진 킬올",
   Callback = function()
  if game.ReplicatedStorage:FindFirstChild("CarbonResource") then
  for _,player in pairs(game.Players:GetPlayers()) do
      if player ~= game.Players.LocalPlayer then
           game.ReplicatedStorage.CarbonResource.Events:GetChildren()[4]:FireServer(player.Character.Humanoid, 100, "Head", {'nil', 'Auth', 'nil', 'nil'})
      end
  end
else
  print("Game doesn't have Carbon!")
end
   end,
})

local AK = Gun:CreateButton({
   Name = "ACS 엔진 킬올",
   Callback = function()
if game.ReplicatedStorage:FindFirstChild("ACS_Engine") then
   for _,player in pairs(game.Players:GetPlayers()) do
       if player ~= game.Players.LocalPlayer then
           game.ReplicatedStorage["ACS_Engine"].Eventos.Damage:FireServer(player.Character.Humanoid, 100, 100, 0)
       end
   end
else
   print("Game doesn't have ACS!")
end
   end,
})

local FD = Gun:CreateButton({
   Name = "운지 수갑있어야 가능",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Applehollyday7/Apple_GUI/main/cave%20army%20killall", true))();
   end,
})


local IY = ETC:CreateButton({
   Name = "IY Admin",
   Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
   end,
})

local TE = ETC:CreateButton({
   Name = "태권도 학원 EXP치트",
   Callback = function()
     while true do
    workspace.MainEvent.AddPoints:FireServer()
    wait(0.01)
end
   end,
})
