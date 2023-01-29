do
    local Babix = game.CoreGui:FindFirstChild("ThunderScreen");if Babix then Babix:Destroy();end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local DiscordLib = {}

	local Balaraja = Instance.new("ScreenGui")
	
	Balaraja.Name = "Balaraja"
    Balaraja.Parent = game.CoreGui
    Balaraja.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
local NotiFrame = Instance.new("Frame")
	NotiFrame.Name = "NotiFrame"
	NotiFrame.Parent = Balaraja
	NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	NotiFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotiFrame.BackgroundTransparency = 1
	NotiFrame.Position = UDim2.new(1.2, 0, 0.0613496937, 0)
	NotiFrame.Size = UDim2.new(0, 1632, 0, 100)

	local Notilistlayout = Instance.new("UIListLayout")

	Notilistlayout.Name = "Notilistlayout"
	Notilistlayout.Parent = NotiFrame
	Notilistlayout.FillDirection = Enum.FillDirection.Vertical
	Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
	Notilistlayout.Padding = UDim.new(0, 5)

	function DiscordLib:Notification(text,text2,delays,logo)
		if logo == nil then
			logo = "11354741327"
		end
		if delays == nil then
			delays = 1
		end
		local TitleFrame = Instance.new("Frame")

		TitleFrame.Name = "TitleFrame"
		TitleFrame.Parent = NotiFrame
		TitleFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
		TitleFrame.Size = UDim2.new(0, 0, 0, 0)

		local Main_UiStroke = Instance.new("UIStroke")

		Main_UiStroke.Thickness = 1
		Main_UiStroke.Name = ""
		Main_UiStroke.Parent = TitleFrame
		Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
		Main_UiStroke.Color = Color3.fromRGB(50, 101, 152)
		Main_UiStroke.Transparency = 0

		TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)

		local ConnerTitile = Instance.new("UICorner")

		ConnerTitile.CornerRadius = UDim.new(0, 4)
		ConnerTitile.Name = "ConnerTitile"
		ConnerTitile.Parent = TitleFrame

		local imagenoti = Instance.new("ImageLabel")

		imagenoti.Name = "imagenoti"
		imagenoti.Parent = TitleFrame
		imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
		imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		imagenoti.Position = UDim2.new(0.135999978, 0, 0.5, 0)
		imagenoti.Size = UDim2.new(0, 50, 0, 50)
		imagenoti.BackgroundTransparency = 1
		imagenoti.Image = "http://www.roblox.com/asset/?id="..tostring(logo)

		local txdlid = Instance.new("TextLabel")
		local LableFrame = Instance.new("Frame")

		txdlid.Name = "txdlid"
		txdlid.Parent = TitleFrame
		txdlid.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
		txdlid.BackgroundTransparency = 1.000
		txdlid.Position = UDim2.new(0.25, 0, 0.25, 0)
		txdlid.Size = UDim2.new(0, 175, 0, 24)
		txdlid.Font = Enum.Font.Code
		txdlid.TextColor3 = Color3.fromRGB(85, 170, 255)
		txdlid.TextSize = 13.000
		txdlid.Text = text
		txdlid.TextXAlignment = Enum.TextXAlignment.Left

		LableFrame.Name = "LableFrame"
		LableFrame.Parent = TitleFrame
		LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		LableFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LableFrame.BackgroundTransparency = 1.000
		LableFrame.Position = UDim2.new(0.625999987, 0, 0.620000005, 0)
		LableFrame.Size = UDim2.new(0, 175, 0, 25)

		local TextNoti = Instance.new("TextLabel")

		TextNoti.Name = "TextNoti"
		TextNoti.Parent = LableFrame
		TextNoti.Active = true
		TextNoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextNoti.BackgroundTransparency = 1.000
		TextNoti.Size = UDim2.new(0, 175, 0, 25)
		TextNoti.Font = Enum.Font.Code
		TextNoti.Text = text2
		TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextNoti.TextSize = 12.000
		TextNoti.TextXAlignment = Enum.TextXAlignment.Left

		repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)

		local Time = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local UIPadding = Instance.new("UIPadding")

		Time.Name = "Time"
		Time.Parent = TitleFrame
		Time.Active = true
		Time.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
		Time.BorderSizePixel = 0
		Time.Position = UDim2.new(0.0320000015, 0, 0.870000005, 0)
		Time.Size = UDim2.new(0, 236, 0, 3)

		UICorner.Parent = Time
		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Name = ""

		UIPadding.Parent = NotiFrame
		UIPadding.PaddingLeft = UDim.new(0, 15)
		UIPadding.PaddingTop = UDim.new(0, 15)

		TweenService:Create(
			Time,
			TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 0, 0, 3)} 
		):Play()
		delay(tonumber(delays),function()
			TweenService:Create(
				imagenoti,
				TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				TextNoti,
				TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				txdlid,
				TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			wait(0.3)
			TweenService:Create(
				TitleFrame,
				TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 0, 0, 70)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			wait(0.3)
			TitleFrame:Destroy()
		end
		)
	end


-- Panda Authentic Key System ( Mobile Version ) 
-- Tested on Hydrogen

local Exploit = "zenhub"

local _Players = game:GetService("Players");
local _tostring = tostring;
local _request = request;

function Generate(URL, Exploit)
  return URL .. "/getkey?service=" .. Exploit .. "&hwid=" .. _tostring(_Players.LocalPlayer.UserId) .. "_MOBILE";
end;

function ExecuteMainHub()
	if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
		-- PC Script Load Here
		print("[ Zenhub ] - Running x86 Version")
		print("[ Zenhub ] - Unable to Execute the Script ( This Version of  Zenhub only support Mobile Version, Use the PC Version.")
		else
		print("[ Zenhub ] - Attemtping to Running on Arm Version")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/zenhubzen/bfsource/main/kiggi", true))()
	  end
	end

local keysystem = Instance.new("ScreenGui")
local Main1 = Instance.new("Frame")
local maincorner = Instance.new("UICorner")
local LOGO = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local CORNERGET = Instance.new("UICorner")
local DISCORD = Instance.new("TextButton")
local CORNERDISCORD = Instance.new("UICorner")
local NAME = Instance.new("TextLabel")
local HUB = Instance.new("TextLabel")
local getkey = Instance.new("TextButton")
local CORNERDISCORD_2 = Instance.new("UICorner")
local SUBMIT = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local NO1 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TITLENO = Instance.new("TextLabel")
local TEXTNO = Instance.new("TextLabel")
local NO2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local NOTI = Instance.new("TextLabel")
local WindowStroke = Instance.new("UIStroke")
local WindowStrokeshit = Instance.new("UIStroke")
local WindowStrokeshit1 = Instance.new("UIStroke")
local WindowStrokeshit2 = Instance.new("UIStroke")
local WindowStrokeshit3 = Instance.new("UIStroke")
local WindowStrokeshit4 = Instance.new("UIStroke")

--Properties:

keysystem.Name = "keysystem"
keysystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
keysystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main1.Name = "Main1"
Main1.Parent = keysystem
Main1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main1.Position = UDim2.new(0.317497045, 0, 0.144578308, 0)
Main1.Size = UDim2.new(0, 190, 0, 200)
Main1.Active = true
Main1.Visible = false
Main1.Draggable = true

WindowStroke.Name = "WindowStroke"
WindowStroke.Parent = Main1
WindowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStroke.Color = Color3.fromRGB(255,255,255)
WindowStroke.LineJoinMode = Enum.LineJoinMode.Round
WindowStroke.Thickness = 2
WindowStroke.Transparency = 0
WindowStroke.Enabled = true
WindowStroke.Archivable = true

WindowStrokeshit.Name = "WindowStroke"
WindowStrokeshit.Parent = KEYHERE
WindowStrokeshit.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStrokeshit.Color = Color3.fromRGB(231, 54, 0)
WindowStrokeshit.LineJoinMode = Enum.LineJoinMode.Round
WindowStrokeshit.Thickness = 1
WindowStrokeshit.Transparency = 0
WindowStrokeshit.Archivable = false
WindowStrokeshit.Enabled = true

WindowStrokeshit1.Name = "WindowStroke"
WindowStrokeshit1.Parent = destroy
WindowStrokeshit1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStrokeshit1.Color = Color3.fromRGB(255, 255, 255)
WindowStrokeshit1.LineJoinMode = Enum.LineJoinMode.Round
WindowStrokeshit1.Thickness = 1
WindowStrokeshit1.Transparency = 0
WindowStrokeshit1.Archivable = false
WindowStrokeshit1.Enabled = true

WindowStrokeshit2.Name = "WindowStroke"
WindowStrokeshit2.Parent = DISCORD
WindowStrokeshit2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStrokeshit2.Color = Color3.fromRGB(255, 255, 255)
WindowStrokeshit2.LineJoinMode = Enum.LineJoinMode.Round
WindowStrokeshit2.Thickness = 1
WindowStrokeshit2.Transparency = 0
WindowStrokeshit2.Archivable = false
WindowStrokeshit2.Enabled = true

WindowStrokeshit3.Name = "WindowStroke"
WindowStrokeshit3.Parent = getkey
WindowStrokeshit3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStrokeshit3.Color = Color3.fromRGB(255, 255, 255)
WindowStrokeshit3.LineJoinMode = Enum.LineJoinMode.Round
WindowStrokeshit3.Thickness = 1
WindowStrokeshit3.Transparency = 0
WindowStrokeshit3.Archivable = false
WindowStrokeshit3.Enabled = true

WindowStrokeshit4.Name = "WindowStroke"
WindowStrokeshit4.Parent = SUBMIT
WindowStrokeshit4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStrokeshit4.Color = Color3.fromRGB(255, 255, 255)
WindowStrokeshit4.LineJoinMode = Enum.LineJoinMode.Round
WindowStrokeshit4.Thickness = 1
WindowStrokeshit4.Transparency = 0
WindowStrokeshit4.Archivable = false
WindowStrokeshit4.Enabled = true


maincorner.Name = "maincorner"
maincorner.Parent = Main1



DISCORD.Name = "DISCORD"
DISCORD.Parent = Main1
DISCORD.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
DISCORD.Position = UDim2.new(0.13418974, 0, 0.6960128, 0)
DISCORD.Size = UDim2.new(0, 140, 0, 40)
DISCORD.Font = Enum.Font.SourceSans
DISCORD.Text = "PC VERSION"
DISCORD.TextColor3 = Color3.fromRGB(255, 255, 255)
DISCORD.TextSize = 14.000
DISCORD.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zenhubzen/bfsource/main/pcshit", true))()
keysystem:Destroy()
end)

CORNERDISCORD.Name = "CORNER DISCORD"
CORNERDISCORD.Parent = DISCORD

NAME.Name = "NAME"
NAME.Parent = Main1
NAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAME.BackgroundTransparency = 1.000
NAME.Position = UDim2.new(0.111489578, 0, 0.00442506745, 0)
NAME.Size = UDim2.new(0, 150, 0, 50)
NAME.Font = Enum.Font.FredokaOne
NAME.Text = "SELECT DEVICE"
NAME.TextColor3 = Color3.fromRGB(255, 255, 255)
NAME.TextSize = 14.000

HUB.Name = "HUB"
HUB.Parent = Main1
HUB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HUB.BackgroundTransparency = 1.000
HUB.Position = UDim2.new(0.198232114, 0, 0.00442507118, 0)
HUB.Size = UDim2.new(0, 191, 0, 50)
HUB.Font = Enum.Font.FredokaOne
HUB.Text = ""
HUB.TextColor3 = Color3.fromRGB(255, 0, 0)
HUB.TextSize = 16.000
HUB.TextWrapped = true

SUBMIT.Name = "SUBMIT"
SUBMIT.Parent = Main1
SUBMIT.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
SUBMIT.Position = UDim2.new(0.13418974, 0, 0.3360128, 0)
SUBMIT.Size = UDim2.new(0, 140, 0, 40)
SUBMIT.Font = Enum.Font.SourceSans
SUBMIT.Text = "MOBILE VERSION"
SUBMIT.TextColor3 = Color3.fromRGB(255, 255, 255)
SUBMIT.TextSize = 14.000
SUBMIT.TextWrapped = true
SUBMIT.MouseButton1Click:Connect(function()
Main1.Visible = false
wait(1)
Main1:Destroy()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zenhubzen/bfsource/main/kiggi", true))()
end)

local service_name = "zenhub" -- Given by SkieHacker ex. zenhub / voidhub
local keysystem = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local maincorner = Instance.new("UICorner")
local LOGO = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local KEYHERE = Instance.new("TextBox")
local CORNERKEY = Instance.new("UICorner")
local GETKEY = Instance.new("TextButton")
local CORNERGET = Instance.new("UICorner")
local SUBMIT = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local DISCORD = Instance.new("TextButton")
local CORNERDISCORD = Instance.new("UICorner")
local NAME = Instance.new("TextLabel")
local HUB = Instance.new("TextLabel")
local NOTIFICATION = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local NOTI = Instance.new("TextLabel")
local WindowStroke = Instance.new("UIStroke")
local WindowStrokeshit = Instance.new("UIStroke")

--Properties:


keysystem.Name = "keysystem"
keysystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
keysystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = keysystem
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.Position = UDim2.new(0.282734662, 0, 0.293172687, 0)
Main.Size = UDim2.new(0, 404, 0, 206)
Main.Active = true
Main.Draggable = true

WindowStroke.Name = "WindowStroke"
WindowStroke.Parent = Main
WindowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStroke.Color = Color3.fromRGB(255,255,255)
WindowStroke.LineJoinMode = Enum.LineJoinMode.Round
WindowStroke.Thickness = 1
WindowStroke.Transparency = 0
WindowStroke.Enabled = true
WindowStroke.Archivable = true

WindowStrokeshit.Name = "WindowStroke"
WindowStrokeshit.Parent = KEYHERE
WindowStrokeshit.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
WindowStrokeshit.Color = Color3.fromRGB(255,255,255)
WindowStrokeshit.LineJoinMode = Enum.LineJoinMode.Round
WindowStrokeshit.Thickness = 1
WindowStrokeshit.Transparency = 0
WindowStrokeshit.Archivable = false
WindowStrokeshit.Enabled = true

maincorner.Name = "maincorner"
maincorner.Parent = Main

LOGO.Name = "LOGO"
LOGO.Parent = Main
LOGO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOGO.BackgroundTransparency = 1.000
LOGO.Position = UDim2.new(-0.0470297076, 0, 0.0708536655, 0)
LOGO.Size = UDim2.new(0, 216, 0, 199)
LOGO.Image = "rbxassetid://11354741327"

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0247524753, 0, 0.140776694, 0)
Frame.Size = UDim2.new(0, 384, 0, 2)

KEYHERE.Name = "KEY HERE"
KEYHERE.Parent = Main
KEYHERE.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
KEYHERE.Position = UDim2.new(0.445544571, 0, 0.233009696, 0)
KEYHERE.Size = UDim2.new(0, 200, 0, 50)
KEYHERE.Font = Enum.Font.Gotham
KEYHERE.PlaceholderText = "KEY HERE"
KEYHERE.Text = ""
KEYHERE.TextColor3 = Color3.fromRGB(255, 255, 255)
KEYHERE.TextSize = 14.000
KEYHERE.TextWrapped = true
KEYHERE.ClearTextOnFocus = false

CORNERKEY.Name = "CORNER KEY"
CORNERKEY.Parent = KEYHERE

GETKEY.Name = "GET KEY"
GETKEY.Parent = Main
GETKEY.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
GETKEY.Position = UDim2.new(0.425742567, 0, 0.572815537, 0)
GETKEY.Size = UDim2.new(0, 104, 0, 40)
GETKEY.Font = Enum.Font.FredokaOne
GETKEY.Text = "GET KEY"
GETKEY.TextColor3 = Color3.fromRGB(255, 255, 255)
GETKEY.TextSize = 14.000
GETKEY.MouseButton1Click:Connect(function()
setclipboard(Generate("https://pandatechnology.xyz", service_name))
            DiscordLib:Notification("Key System" , "Key Copied to Your Clipboard\n& Paste on Your Browser" , 3)
end)

CORNERGET.Name = "CORNER GET"
CORNERGET.Parent = GETKEY

SUBMIT.Name = "SUBMIT"
SUBMIT.Parent = Main
SUBMIT.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
SUBMIT.Position = UDim2.new(0.710396051, 0, 0.572815537, 0)
SUBMIT.Size = UDim2.new(0, 101, 0, 40)
SUBMIT.Font = Enum.Font.FredokaOne
SUBMIT.Text = "SUMBIT"
SUBMIT.TextColor3 = Color3.fromRGB(255, 255, 255)
SUBMIT.TextSize = 14.000
UICorner.Parent = SUBMIT
SUBMIT.MouseButton1Click:Connect(function()
  print('Debug - Verification 1.0 - Clicked')
  local key = KEYHERE.Text
  local Blob = "";
  print('Debug - Verification 1.1 - Algorithm Check')
  for i=-1, #Key do
    Blob = Blob .. "_";
  end
  print('Debug - Verification 1.2 - Getting Response')
  local Response = _request({
      Url = URL .. "/validate?service=" .. Exploit .. "&key=" .. Key .. "&hwid=" .. _tostring(_Players.LocalPlayer.UserId) .. "_MOBILE&blob=" .. Blob,
      Method = "GET",
      Headers = {
        ["User-Agent"] = "Mobile-Auth-Client/1.0"
      }
    }
  );
  print('Debug - Verification 1.3 - Response Caught')
  if (Response.Success and Response.Body ~= "") then
	print('Debug - Verification 1.4 - Response Valid')
	DiscordLib:Notification("Key System","Key Valid ! , Load Script", 8)
	ExecuteMainHub()
	keysystem:Destroy()
	writefile("ZENKey.txt", key)
  else
	print('Debug - Verification 1.5 - Response Probably Invalid')
	DiscordLib:Notification("Key System","Wrong Key!", 8)
  end  
end)



DISCORD.Name = "DISCORD"
DISCORD.Parent = Main
DISCORD.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
DISCORD.Position = UDim2.new(0.487623751, 0, 0.805825293, 0)
DISCORD.Size = UDim2.new(0, 166, 0, 31)
DISCORD.Font = Enum.Font.FredokaOne
DISCORD.Text = "JOIN DISCORD"
DISCORD.TextColor3 = Color3.fromRGB(255, 255, 255)
DISCORD.TextSize = 14.000
DISCORD.MouseButton1Click:Connect(function()
setclipboard("https://discord.gg/tdASek5w9c")
DiscordLib:Notification("Key System","Copied!", 8)
end)


CORNERDISCORD.Name = "CORNER DISCORD"
CORNERDISCORD.Parent = DISCORD

NAME.Name = "NAME"
NAME.Parent = Main
NAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NAME.BackgroundTransparency = 1.000
NAME.Position = UDim2.new(0.301980197, 0, -0.0533980615, 0)
NAME.Size = UDim2.new(0, 191, 0, 50)
NAME.Font = Enum.Font.FredokaOne
NAME.Text = "ZEN           KEY SYSTEM"
NAME.TextColor3 = Color3.fromRGB(255, 255, 255)
NAME.TextSize = 16.000

HUB.Name = "HUB"
HUB.Parent = Main
HUB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HUB.BackgroundTransparency = 1.000
HUB.Position = UDim2.new(0.227722734, 0, -0.0533980578, 0)
HUB.Size = UDim2.new(0, 191, 0, 50)
HUB.Font = Enum.Font.FredokaOne
HUB.Text = "HUB"
HUB.TextColor3 = Color3.fromRGB(255, 0, 0)
HUB.TextSize = 16.000
HUB.TextWrapped = true
