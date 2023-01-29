
local test_service = "zenhub" --Service Name -- Service Name

-- [ Panda Authentic System ]
local RblxTokenID = game:GetService("RbxAnalyticsService"):GetClientId();-- Change this whatever you want, this is basically Roblox HWID

-- [ PC Version ]
local GenerateLink, Validate = (function()
    local Level1;

    Level1 = {
        [1] = game:GetService("HttpService"),
        [2] = game:GetService("HttpService").GenerateGUID,
        [3] = string.gsub,
        [4] = table.insert,
        [5] = set_thread_identity or setthreadidentity or setthreadcontext or syn.set_thread_identity,
        -- [6] = request or syn.request,
        [6] = function(settings)
            local ex_request = syn and syn.request or request;
            if ex_request then
              return ex_request(settings);
            end;
            if settings.Method == nil or settings.Method == 'GET' then
              local Body = game:HttpGet(settings.Url);
              return {
                Success = true,
                StatusCode = 200,
                Body = Body
              }
            else
              warn('unsupported request settings');
              return {
                Success = false
              }
            end
          end,
        [7] = string.byte,
        [8] = function(length)
            local result = "";
        
            for i=0,(length/32)+1 do
                local guid = Level1[2](Level1[1]);
                guid = Level1[3](guid, "{", "");
                guid = Level1[3](guid, "}", "");
                guid = Level1[3](guid, "-", "");
                
                result = result .. guid;
            end
        
            return result;
        end,
        [9] = function(str, sep)
            local result = {}
            local regex = Level1[15]("([^%s]+)", sep);
            for each in Level1[14](str, regex) do
               Level1[4](result, each)
            end
            return result
        end,
        [10] = table.clear,
        [11] = getfenv,
        [12] = next,
        [13] = tonumber,
        [14] = string.gmatch,
        [15] = string.format,
        [16] = islclosure,
        [17] = newcclosure(function() return true; end),
        [18] = clonefunction,
        [19] = newcclosure(function() return false; end),
        [20] = hookfunction,
        [21] = setmetatable,
        [22] = newcclosure,
        [23] = function(URL, Exploit)
            local Response = Level1[6]({
                Url = URL .. "/fingerprint",
                Method = "GET",
                Headers = {
                    ["User-Agent"] = "Lua-Auth-Client/1.0"
                }
            });
    
            if (Response.Success and Response.Body ~= "") then
                return true, URL .. "/getkey?service=" .. Exploit .. "&hwid=" .. RblxTokenID;
            else
                return false, nil
            end
        end,
        [24] = function(URL, Exploit, Key)
            local fingerprint = Level1[6]({
                Url = URL .. "/fingerprint",
                Method = "GET",
                Headers = {
                    ["User-Agent"] = "Lua-Auth-Client/1.0"
                }
            });
    
            if (fingerprint.Success and fingerprint.Body ~= "") then
                local Blob = Level1[8](#fingerprint.Body);
                local Response = Level1[6]({
                    Url = URL .. "/validate?service=" .. Exploit .. "&key=" .. Key .. "&hwid=" .. RblxTokenID .. "&blob=" .. Blob,
                    Method = "GET",
                    Headers = {
                        ["User-Agent"] = "Lua-Auth-Client/1.0"
                    }
                });
        
                if (Response.Success and Response.Body ~= "") then
                    local bytes = Level1[9](Response.Body, "#");
    
                    for index, _ in Level1[12], bytes do
                        if (index%2==0) then
                            bytes[index] = nil
                        end
                    end
    
                    local bytes_ = {};
    
                    for _, value in Level1[12], bytes do
                        if (value ~= nil) then
                            Level1[4](bytes_, Level1[13](value));
                        end
                    end
    
                    bytes = bytes_;
    
                    for index, value in Level1[12], bytes do
                        if ((Level1[7](Key:sub(index, index)) * Level1[7](Blob:sub(index, index))) - (Level1[7](Blob:sub(index, index)) + Level1[7](Key:sub(index, index))) ~= value) then
                            return false
                        end
                    end
                    
                    return true
                else
                    return false
                end
            else
                return false
            end
        end
    }
    
    local Original = Level1[20];
   -- local Old = Level1[18](Level1[20]);
    
    Level1[21](Level1, {
        __newindex = Level1[22](function() 
            while (true) do 
                if (Level1[17]() == Level1[19]()) then
                    break;
                end
            end
        end)
    });
    
   -- for _, value in Level1[12], Level1 do
     --   if (typeof(value) == "function" and not Level1[16](value)) then
       --     Level1[_] = Level1[18](value);
       -- end
   -- end
    
    Level1[20](Original, function(...)
        local args = {...};
    
        for _, value in Level1[12], Level1 do
            if (value == args[1]) then
                while (true) do
                    if (Level1[17]() == Level1[19]()) then
                        break;
                    end
                end
            end
        end
    
        return Old(...);
    end)
       
    return Level1[23], Level1[24];
end)();



function PandaAutoKeyGenerate()
    if _G.PandaExecutionKey == "PandaDevelopmentTeam" then
    	print('[ Client ] - Panda V2 Executor Detected...Automatic Generate Link')

    	-- This Code will Activate because of Panda V2 Specialize Software
    	local kew = "https://pandatechnology.xyz/getkey?service="..test_service.."&hwid="..test_hwid
        setclipboard(kew)
        Notify('Zenhub', 'Panda V2 Detected... Sending Data', 6)
    else
        print('[ Client ] - Using Universal Executor')
        end
end

function ExecuteMainHub()
	if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
		-- PC Script Load Here
		print("[ Zenhub ] - Running x86 Version")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/zenhubzen/bfsource/main/pcshit", true))()
		else
		print("[ Zenhub ] - Attemtping to Running on Arm Version")
        wait(2)
        print("[ Zenhub ] - Unable to Execute the Script ( This Version of  Zenhub only support PC Version, Use the Mobile Version.")
	  end
	end

function Notify(titletxt, text, time)
    local GUI = Instance.new("ScreenGui")
    local Main = Instance.new("Frame", GUI)
    local title = Instance.new("TextLabel", Main)
    local message = Instance.new("TextLabel", Main)
    GUI.Name = "NotificationOof"
    GUI.Parent = game.CoreGui
    Main.Name = "MainFrame"
    Main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(1, 5, 0, 50)
    Main.Size = UDim2.new(0, 330, 0, 100)

    title.BackgroundColor3 = Color3.new(0, 0, 0)
    title.BackgroundTransparency = 0.89999997615814
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Font = Enum.Font.SourceSansSemibold
    title.Text = titletxt
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 17
    
    message.BackgroundColor3 = Color3.new(0, 0, 0)
    message.BackgroundTransparency = 1
    message.Position = UDim2.new(0, 0, 0, 30)
    message.Size = UDim2.new(1, 0, 1, -30)
    message.Font = Enum.Font.SourceSans
    message.Text = text
    message.TextColor3 = Color3.new(1, 1, 1)
    message.TextSize = 16

    wait(0.1)
    Main:TweenPosition(UDim2.new(1, -330, 0, 50), "Out", "Sine", 0.5)
    wait(time)
    Main:TweenPosition(UDim2.new(1, 5, 0, 50), "Out", "Sine", 0.5)
    wait(0.6)
    GUI:Destroy();
end

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

    if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
        -- PC Script Load Here
            local s, e = GenerateLink("https://pandatechnology.xyz", test_service);
            if s then
            print("[ Zenhub ] - Link Generated!")
            setclipboard(e)
            DiscordLib:Notification("Key System" , "Key Copied to Your Clipboard\n& Paste on Your Browser" , 3)
        end
    else
            print("[ Zenhub ] - Unable to Execute the Script ( This Version of  Zenhub only support PC Version, Use the Mobile Version.")
        end
      end
end)

CORNERGET.Name = "CORNER GET"
CORNERGET.Parent = GETKEY

local done = false
local backto = false

if done == true then
Main1.Visible = true
keysystem:Destroy()
end

if backto == true then
  Main.Visible = true
  end
  

SUBMIT.Name = "SUBMIT"
SUBMIT.Parent = Main
SUBMIT.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
SUBMIT.Position = UDim2.new(0.710396051, 0, 0.572815537, 0)
SUBMIT.Size = UDim2.new(0, 101, 0, 40)
SUBMIT.Font = Enum.Font.FredokaOne
SUBMIT.Text = "SUMBIT"
SUBMIT.TextColor3 = Color3.fromRGB(255, 255, 255)
SUBMIT.TextSize = 14.000
SUBMIT.MouseButton1Click:Connect(function()

local key = KEYHERE.text -- The Key

if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
    -- PC Script Load Here
    if Validate("https://pandatechnology.xyz", test_service, key) then 
		print("Valid Key")
	-- Script goes Here
		DiscordLib:Notification("Key System","Key Correct", 8)
		writefile("ZENKey.txt", key)
		ExecuteMainHub()
		keysystem:Destroy()
	else --Add this thing for some reason lul
		DiscordLib:Notification("Key System","Wrong Key!", 8)
	end
    else
    -- Mobile Version Patch
    if Mobile_Validate("https://pandatechnology.xyz", test_service, key) then 
		print("[ ZenHub M] - Valid Key")
	-- Script goes Here
		DiscordLib:Notification("Key System","Key Correct", 8)
		writefile("ZENKey.txt", key)
		ExecuteMainHub()
		keysystem:Destroy()
	else --Add this thing for some reason lul
		DiscordLib:Notification("Key System","Wrong Key!", 8)
	end
  end
end)

if KEYHERE.Text == "" then
 done = false
 backto = true
  end

UICorner.Parent = SUBMIT

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


spawn(function()
    PandaAutoKeyGenerate()
    local hasExistingKey = isfile("ZENKey.txt")
    if hasExistingKey and hasExistingKey ~= nil then
        local foundKey = readfile("ZENKey.txt")
        if foundKey == "" then
            delfolder("ZENKey.txt") 
            done = false
        end
        
local key = readfile("ZENKey.txt") -- The Key
print('[ Client ] - Key Detected... Please Wait')
if Validate("https://pandatechnology.xyz", test_service, key) then 
	print("Valid Key")
	-- Script goes Here
	DiscordLib:Notification("Key System","Saved Key!", 4)	
	ExecuteMainHub()
	keysystem:Destroy()
elseif not string.match(final, "Whitelisted!") then
    print('[ Client ] - Key Data Invalid, Deleting Old Key...')
    delfolder("ZENKey.txt") 
    wait(1)
    PandaAutoKeyGenerate()
    backto = true--Your Keysystem Function
elseif not hasExistingKey then
    print('[ Client ] - Creating Key Data...')
    writefile("ZENKey.txt", "")
    wait(1)
    PandaAutoKeyGenerate()
    backto = true--Your Keysystem Function
end
    
    end
end)
