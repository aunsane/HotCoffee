db = require('m_database')
clist = require('m_clist')
icolib = require('m_icolib')
genmenu = require('m_genmenu')
winapi = require('winapi')
changes = require('Changes')

Icons =
{
	Menu =
	{
		View = icolib.AddIcon('menuView', 'View'),
		Skin = icolib.AddIcon('menuSkin', 'Skin', 'MirLua/View'),
		Icons =
		{
			Root = icolib.AddIcon('menuIcons', 'Icons', 'MirLua/View')
		},
		Smileys = 
		{
			Root = icolib.AddIcon('menuSmileys', 'Smileys', 'MirLua/View'),
			Disabled = icolib.AddIcon('packDisabled', 'Smileys pack disabled', 'MirLua/View/Smileys'),
			Enabled = icolib.AddIcon('packEnabled', 'Smileys pack enabled', 'MirLua/View/Smileys')
		},
		Font =
		{
			Root = icolib.AddIcon('menuFont', 'Font', 'MirLua/View'),
			Disabled = icolib.AddIcon('fontDisabled', 'Font disabled', 'MirLua/View/Font'),
			Enabled = icolib.AddIcon('fontEnabled', 'Font enabled', 'MirLua/View/Font')
		},
		IEView =
		{
			Root = icolib.AddIcon('menuIEView', 'IEView', 'MirLua/View'),
			Enabled = icolib.AddIcon('IEViewCBEnabled', 'Enabled', "MirLua/View/IEView"),
			Disabled = icolib.AddIcon('IEViewCBDisabled', 'Disabled', "MirLua/View/IEView"),
		},
		Chats =
		{
			Root = icolib.AddIcon('menuChats', 'Chats', 'MirLua/View'),
			AutoSize =
			{
				Enabled = icolib.AddIcon('ChatsASEnabled', 'Auto size enabled', "MirLua/View/Chats"),
				Disabled = icolib.AddIcon('ChatsASDisabled', 'Auto size disabled', "MirLua/View/Chats"),
			}
		}
	}
}

----- Global Prebuild main menu array -------------------------------------------------------------
PreBuildMenuFuncs = {}

m.HookEvent("CList/PreBuildMainMenu", function()
	for _, v in pairs(PreBuildMenuFuncs) do v() end
end)
---------------------------------------------------------------------------------------------------

hViewRoot = clist.AddMainMenuItem({
	Name = 'View',
	Icon = Icons.Menu.View,
	Uid = '678268C5-7842-4160-9B36-72DF2F3737DB'
})

----- IEView --------------------------------------------------------------------------------------
hIERoot = clist.AddMainMenuItem({
	Name = '&IEView',
	Icon = Icons.Menu.IEView.Root,
	Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f71d',
	Parent = hViewRoot,
	Position = 500
})

IEViewMenuEntires =
{
	{ Name = "Animation",   Description = "Animation",    Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f721' },
	{ Name = "Avatars",     Description = "Avatars",      Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f71f' },
	{ Name = "ShortLinks",  Description = "Short links",  Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f800' },
	{ Name = "CustomContextMenu",  Description = "Context menu",  Uid = 'a6bf0371-97ed-48cb-ae2d-586b6036f800' },
}

function IEView_RebuildLog() m.CallService("SRMsg/BroadcastMessage", 0, 1335) end

for i, v in ipairs(IEViewMenuEntires) do
	serviceName = "Scripts/IEView/" .. v.Name
	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Service = serviceName, Uid = v.Uid, Position = i, Icon = Icons.Menu.IEView.Disabled, Parent = hIERoot })
	m.CreateServiceFunction(serviceName, function ()
		db.WriteSetting(_, "IEView_Template", v.Name, 1 - db.GetSetting(_, "IEView_Template", v.Name), 1)
		IEView_RebuildLog()
	end)
end

PreBuildMenuFuncs["IEView"] = function()
	genmenu.ShowMenuItem(hIERoot, m.IsPluginLoaded('0495171b-7137-4ded-97f8-ce6fed67d691') and db.GetSetting(_, "IEView_Template", "Modules"))
	for i, v in ipairs(IEViewMenuEntires) do
		genmenu.ModifyMenuItem(v.hMenuItem, nil, (db.GetSetting(_, "IEView_Template", v.Name) == 1 and Icons.Menu.IEView.Enabled or Icons.Menu.IEView.Disabled), -1)
	end
end

m.HookEvent("LangPack/Changed", function(w,l) IEView_RebuildLog() end)
----- /IEView -------------------------------------------------------------------------------------
----- Skins ---------------------------------------------------------------------------------------
hSkinRoot = clist.AddMainMenuItem({
	Name = 'Skin',
	Parent = hViewRoot,
	Icon = Icons.Menu.Skin,
	Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD00',
	Position = 100
})

Skins =
{
	{ Name = 'defaultmirl', Description = 'Miranda style',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD01' },
	{ Name = 'defaultwinl', Description = 'Windows style',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD02' },

	{ Name = 'diplomatd',   Description = 'Diplomat Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD03' },
	{ Name = 'diplomatl',   Description = 'Diplomat Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD04' },

	{ Name = 'glamourd',    Description = 'Glamour Dark',    Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD05' },
	{ Name = 'glamourl',    Description = 'Glamour Light',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD06' },

	{ Name = 'goldtimed',   Description = 'Goldtime Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD07' },
	{ Name = 'goldtimel',   Description = 'Goldtime Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD08' },

	{ Name = 'graphited',   Description = 'Graphite Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD09' },
	{ Name = 'graphitel',   Description = 'Graphite Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD0A' },

	{ Name = 'photooned',   Description = 'Photoone Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD0B' },
	{ Name = 'photoonel',   Description = 'Photoone Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD0C' },

	{ Name = 'surfaceb',    Description = 'Surface Black',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD0D' },
	{ Name = 'surfacew',    Description = 'Surface White',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD0E' },

	{ Name = 'textolited',  Description = 'Textolite Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD0F' },
	{ Name = 'textolitel',  Description = 'Textolite Light', Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD10' },

	{ Name = 'winstyled',   Description = 'Winstyle Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD11' },
	{ Name = 'winstylel',   Description = 'Winstyle Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2DD12' },
}

function WriteTabSRMMSkin(skinName, fontName)
	local patternLong = 'diplomatd,diplomatl,glamourd,glamourl,goldtimed,goldtimel,photooned,photoonel,surfaceb,surfacew'
	local patternShort = 'graphited,graphitel,textolited,textolitel'

	local result = 0

	if patternLong:find(skinName) and fontName == 'printing' then
		result = 7
	elseif patternLong:find(skinName) and fontName == 'handwriting' then
		result = 4
	elseif patternShort:find(skinName) and fontName == 'printing' then
		result = 6
	elseif patternShort:find(skinName) and fontName == 'handwriting' then
		result = 3
	end

	if result > 0 then
		winapi.SetIniValue(m.Parse('%miranda_path%\\skins\\tabsrmm\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'CaptionOffset', result)
	end
end

function ApplySkin(skinName, fontName)
	db.WriteSetting(_, 'PackInfo', 'Skin', skinName)
	db.DeleteModule(_, 'ModernSkin')

	for setting in db.Settings(_, 'SmileyAdd') do
		if setting:find('*-filename') then
			db.DeleteSetting(_, 'SmileyAdd', setting)
		end
	end
	
	WriteTabSRMMSkin(skinName, fontName)

	local noTipperSkin = "defaultmirl,defaultwinl,winstylel,winstyled";
	
	m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\skins\\"..skinName..".ini"), 0)
	m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\skins\\fonts\\"..fontName..".ini"), 0)

	m.CallService("TabSRMsg/ReloadSkin")
	m.CallService("IEView/ReloadOptions")
	m.CallService("mToolTip/ReloadSkin", noTipperSkin:find(skinName) and 0 or 1, skinName)
	m.CallService("Popup/LoadSkin", 0, skinName)
	m.CallService("SmileyAdd/Reload")
	
	m.CallService("Font/ReloadSvc")
	m.CallService("Colour/ReloadSvc")
	
	m.CallService("ModernSkinSel/Apply", 0, m.Parse("%miranda_path%\\skins\\clist_modern\\"..skinName..".msf"))
end


for i, v in ipairs(Skins) do
	local serviceName = "MirLua/Scripts/ApplySkin/" .. v.Name

	m.CreateServiceFunction(serviceName, function()
		ApplySkin(v.Name, db.GetSetting(_, 'PackInfo', 'Font'))
	end)

	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Parent = hSkinRoot, Service = serviceName, Position = i, Icon = icolib.AddIcon(v.Name, v.Description, 'MirLua/View/Skin'), Uid = v.Uid })
end

PreBuildMenuFuncs["Skins"] = function()
	for i, v in ipairs(Skins) do
		local file = io.open(m.Parse('%miranda_path%\\Skins\\' .. v.Name .. '.ini'), "r")
		genmenu.ShowMenuItem(v.hMenuItem, file ~= nil)
		if file then io.close(file) end
	end
	
	local skinName = db.GetSetting(_, 'PackInfo', 'Skin')
	genmenu.ModifyMenuItem(hSkinRoot, nil, skinName ~= nil and icolib.GetIcon(skinName) or nil, -1)
end
----- /Skins --------------------------------------------------------------------------------------
----- Fonts ---------------------------------------------------------------------------------------
hFontRoot = clist.AddMainMenuItem({
	Name = 'Font',
	Parent = hViewRoot,
	Icon = Icons.Menu.Font.Root,
	Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E0',
	Position = 400
})

Fonts =
{
	{ Name = "handwriting", Description = "Handwriting", Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E1' },
	{ Name = "printing",    Description = "Printing",    Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E1' }
}

function ApplyFont(fontName)
	m.ForkThread(function()
		db.WriteSetting(_, 'PackInfo', 'Font', fontName)
		WriteTabSRMMSkin(db.GetSetting(_, 'PackInfo', 'Skin'), fontName)
		m.CallService("TabSRMsg/ReloadSkin", 0, 0)
		m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\skins\\fonts\\" .. fontName .. ".ini"), 0)
		m.CallService("Font/ReloadSvc", 0, 0)
		m.CallService("Colour/ReloadSvc", 0, 0)
	end)
end

for i, v in ipairs(Fonts) do
	local serviceName = "MirLua/Scripts/ApplyFont/" .. v.Name
	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Service = serviceName, Parent = hFontRoot, Icon = Icons.Menu.Font.Disabled, Position = i, Uid = v.Uid })
	m.CreateServiceFunction(serviceName, function()
		ApplyFont(v.Name)
	end)
end

PreBuildMenuFuncs["Fonts"] = function()
	for i, v in ipairs(Fonts) do
		local fontName = db.GetSetting(_, 'PackInfo', 'Font')
		genmenu.ModifyMenuItem(v.hMenuItem, nil, v.Name == fontName and Icons.Menu.Font.Enabled or Icons.Menu.Font.Disabled, -1)
	end
end
----- /Fonts --------------------------------------------------------------------------------------
----- Icons ---------------------------------------------------------------------------------------
hIconsRoot = clist.AddMainMenuItem({
	Name = 'Icons',
	Parent = hViewRoot,
	Icon = Icons.Menu.Icons.Root,
	Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713100',
	Position = 200
})

IconPacks =
{
	{ Name = 'Fugue', Description = 'Fugue', Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713101' },
	{ Name = 'Nova',  Description = 'Nova',  Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713102' },
	{ Name = 'Xpk',   Description = 'Xpk',   Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713103' },
}

function HaveAccess()
	local hFile = winapi.CreateFile(m.Parse("%miranda_path%\\Miranda.test"), winapi.GENERIC_WRITE, 1, 0, 4, winapi.FILE_ATTRIBUTE_NORMAL, 0)
	if hFile ~= winapi.INVALID_HANDLE_VALUE then
		winapi.CloseHandle(hFile)
		winapi.DeleteFile(m.Parse("%miranda_path%\\Miranda.test"))
		return true
	end
	return false
end

function MakeCmdLine(batch)
	local result = ''
	for i, v in ipairs(batch) do
		result = result .. v.Bin .. ' ' .. (v.Args or '') .. ' & '
	end
	return result
end

function ApplyIconPack(name)
	m.HookEvent("Miranda/System/PShutdown", function()
		local Batch = 
		{
			{
				Bin = "pushd",
				Args = m.Parse('%miranda_path%\\skins\\ieview\\!tools\\icons\\packs\\')
			},
			{ 
				Bin = "7z.exe",
				Args = string.format('x "%s" -aoa -o"%s"', name .. ".7z", m.Parse("%miranda_path%\\skins\\ieview\\!tools\\icons"))
			},
			{	
				Bin = "popd"
			},
			{
				Bin = "pushd",
				Args = m.Parse("%miranda_path%\\skins\\icons")
			},
			{
				Bin = "start /wait IconPatcher.exe",
				Args = string.format("/pid=%d /bin=%q /arc=%s /res=* /silent", winapi.GetCurrentProcessId(), m.GetFullPath(), name)
			},
			{
				Bin = "start /wait IconPatcher.exe",
				Args = string.format("/bin=%q /arc=%s_HotCoffee /res=* /verysilent", m.GetFullPath(), name)
			},
			{
				Bin = "start",
				Args = string.format('"" "%s"', m.GetFullPath())
			}
		}
		winapi.ShellExecute(HaveAccess() and "open" or "runas", 'cmd.exe', '/C '.. MakeCmdLine(Batch))
	end)
	m.CallService("CloseAction")
end

for i, v in ipairs(IconPacks) do
	local serviceName = "MirLua/Scripts/ApplyIconPack/" .. v.Name

	m.CreateServiceFunction(serviceName, function()
		changes.Ask(function()
			ApplyIconPack(v.Name)
		end)
	end)

	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Parent = hIconsRoot, Service = serviceName, Position = i, Icon = icolib.AddIcon(v.Name, v.Description, 'MirLua/View/Icons'), Uid = v.Uid })
end

PreBuildMenuFuncs["Icons"] =  function()
	for i, v in ipairs(IconPacks) do
		local file = m.Parse('%miranda_path%\\skins\\icons\\'..v.Name..'_HotCoffee.7z')
		genmenu.ShowMenuItem(v.hMenuItem, os.rename(file, file))
	end	
end
----- /Icons --------------------------------------------------------------------------------------
----- Smileys -------------------------------------------------------------------------------------
hSmileysRoot = clist.AddMainMenuItem({
	Name = 'Smileys',
	Parent = hViewRoot,
	Icon = Icons.Menu.Smileys.Root,
	Uid = '807EBF36-8A4B-472B-856A-FE4DB4EEF7E0',
	Position = 300
})

function ApplySmilePack(name, type, background)
	local smilesRoot = m.Parse("%miranda_path%\\skins\\smileys")
	winapi.CopyFile(string.format("%s\\%s\\%s\\%s_%s_pack.msl", smilesRoot, background, type, type, name), string.format("%s\\%s\\%s\\%s.msl", smilesRoot, background, type, type))
end

SmileyPacks = 
{
	{ Name = 'big',   Description = 'Big pack',   Uid = '807EBF36-8A4B-472B-856A-FE4DB4EEF7E1' },
	{ Name = 'small', Description = 'Small pack', Uid = '807EBF36-8A4B-472B-856A-FE4DB4EEF7E2' }
}

for i, v in ipairs(SmileyPacks) do
	local serviceName = "MirLua/Scripts/ApplySmileyPack/" .. v.Name

	m.CreateServiceFunction(serviceName, function()
		local fileName = string.format(m.Parse("%miranda_path%\\%s"), db.GetSetting(_, 'SmileyAdd', 'clist-filename'))
		local file = io.open(fileName, "r")
		if not file then return end
		local line = file:read('*l')
		if line:lower():find(v.Name) then
			io.close(file)
			return
		end
		io.close(file)

		local types = { 'emoji', 'kolobok', 'mra', 'skype' }
		for i, type in pairs(types) do
			ApplySmilePack(v.Name, type, '_dark')
			ApplySmilePack(v.Name, type, '_light')
		end
		m.CallService("SmileyAdd/Reload")
	end)

	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Parent = hSmileysRoot, Service = serviceName, Position = i, Uid = v.Uid })
end	

PreBuildMenuFuncs["Smileys"] = function()
	local fileName = m.Parse('%miranda_path%\\skins\\smileys\\_light\\emoji\\emoji.msl')
	
	genmenu.ShowMenuItem(hSmileysRoot, (os.rename(fileName, fileName) and m.IsPluginLoaded('bd542bb4-5ae4-4d0e-a435-ba8dbe39607f')))

	local file = io.open(fileName, "r")
	local line = file:read('*l'):lower()
	
	for i, v in ipairs(SmileyPacks) do
		genmenu.ModifyMenuItem(v.hMenuItem, nil, line:find(v.Name) and Icons.Menu.Smileys.Enabled or Icons.Menu.Smileys.Disabled, -1)
	end
	io.close(file)
end
----- /Smileys ------------------------------------------------------------------------------------
----- Chats ---------------------------------------------------------------------------------------
hChatsRoot = clist.AddMainMenuItem({
	Name = 'Chats',
	Icon = Icons.Menu.Chats.Root,
	Uid = 'a6bf0371-97ed-48cb-ae2d-496b6036f71d',
	Parent = hViewRoot,
	Position = 600
})

hChatsAutoSizeInput = clist.AddMainMenuItem({
	Name = 'Auto-size input area',
	Icon = Icons.Menu.Chats.AutoSize.Disabled,
	Uid = 'a6bf0371-97ed-48cb-ae2d-497b6036f71d',
	Parent = hChatsRoot,
	Service = 'Scripts/View/AutoSizeArea',
	Position = 100
})

m.CreateServiceFunction('Scripts/View/AutoSizeArea', function()
--	if winapi.MessageBox(m.NULL, m.Translate('The changes will take effect only after closing all dialog windows. Continue?'), m.Translate('Changes...'), 36) ~= 6 then
--	  return
--	end
 	local blob = db.GetSetting(_, "Tab_SRMsg", "CNTW_Def_Flags")
	  if blob & 16384 ~= 0 then
	    blob = blob & (~16384)
	  else
	    blob = blob | 16384
	end  
	db.WriteSetting(_, "Tab_SRMsg", "CNTW_Def_Flags", blob, db.DBVT_DWORD)
--	m.CallService("SRMsg/BroadcastMessage", 0, 16)
	m.CallService("TabSRMsg/ReloadSettings", 0, 0)
	m.CallService("TabSRMsg/ReloadSkin", 0, 0)
end)

PreBuildMenuFuncs["Chats"] = function()
	genmenu.ShowMenuItem(hChatsRoot, m.IsPluginLoaded('6ca5f042-7a7f-47cc-a715-fc8c46fbf434'))
	genmenu.ModifyMenuItem(hChatsAutoSizeInput, nil, ((db.GetSetting(_, "Tab_SRMsg", "CNTW_Def_Flags") & 16384) == 0) and Icons.Menu.Chats.AutoSize.Disabled or Icons.Menu.Chats.AutoSize.Enabled , -1)
end
----- /Chats --------------------------------------------------------------------------------------