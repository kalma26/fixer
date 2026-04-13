local projectName = 'elddev'
local moduleName = 'dailyLoginWindow'

local script = {
	m_strUUID = projectName .. ".lua." .. moduleName,
	m_pszLogPath = '.\\sirin-log\\guard\\ModWindowExt.log',
}

-- Utility to return YYYYMMDD string for per-day tracking
local function getTodayDate()
    local t = os.date("*t")
    return string.format("%04d%02d%02d", t.year, t.month, t.day)
end

-- Keep track of each player's last claim date
local playerLastClaim = {}


local function getGiveItemError(retCode)
	if retCode == 10 then return 'Invalid item type' end
	if retCode == 11 then return 'Item not found' end
	if retCode == 12 then return 'Invalid map' end
	if retCode == 13 then return 'No empty space' end
	if retCode == 14 then return 'Emb_AddStorage failed' end
	if retCode == 15 then return 'Player not found' end

	if retCode == 20 then return 'Invalid talic code' end
	if retCode == 21 then return 'Empty slot in upgrade code' end
	if retCode == 22 then return 'Exceed max talic of the same type' end
	if retCode == 23 then return 'Exceed max talic of the same type' end
	if retCode == 24 then return 'Exceed max talic of the same type' end
	if retCode == 25 then return 'Exceed max talic of the same type' end
	if retCode == 26 then return 'Exceed max talic of the same type' end
	if retCode == 27 then return 'Exceed max talic of the same type' end
	if retCode == 28 then return 'Exceed max talic of the same type' end
	if retCode == 29 then return 'Exceed max talic of the same type' end
	if retCode == 30 then return 'Invalid weapon type' end
	if retCode == 31 then return 'Exceed max talic of the same type' end
	if retCode == 32 then return 'Invalid item type' end
	return string.format('Failed to claim (%d)', retCode)
end

---@param pPlayer CPlayer
---@param day string | integer
local function getTodayReward(pPlayer, day)
    local playerId = pPlayer.m_id.wIndex
    local today = getTodayDate()

    -- ✅ Prevent double-claiming in same calendar day
    if playerLastClaim[playerId] == today then
        NetMgr.privateAnnounceMsg(pPlayer, "You have already claimed today's reward!", 0xFFFF, ANN_TYPE.mid3, 0xFFFFFF00)
        return
    end

    local langId = Sirin.CLanguageAsset.instance():getPlayerLanguage(pPlayer.m_id.wIndex)
    local windows = SirinScript_CustomWindowsByLangID[langId]
    if not windows or not windows[3] or not windows[3].data then
        print("No data for daily login window")
        return
    end

    local todayReward = windows[3].data[day]
    if not todayReward then
        print("No reward data for day:", day)
        return
    end

    local reward = todayReward
    reward.itemStrCode = Sirin.mainThread.baseToItemLooting(
        Sirin.mainThread.g_Main:m_tblItemData_get(reward.item[1]):GetRecord(reward.item[2])
    ).m_strCode

    local giveItem = Sirin.mainThread.modChargeItem.giveItemByName(
        pPlayer.m_Param.m_aszName,
        reward.itemStrCode,
        reward.durability,
        reward.upgrade,
        0
    )

    if giveItem == 0 then
        -- ✅ Mark as claimed
        playerLastClaim[playerId] = today

        -- ✅ Notify player
        NetMgr.privateAnnounceMsg(pPlayer, "Today's reward successfully claimed!", 0xFFFF, ANN_TYPE.mid3, 0xFFFFFF00)

        -- ✅ Disable the claimed button in UI
        local send = {}
        send.ct = 3  -- Update existing window
        send.data = {}

        local w = {}
        table.insert(send.data, w)
        w.id = 3  -- Window ID for daily login
        w.data = {}

        local data = {}
        data.id = day
        data.stateFlags = tonumber("111", 2)  -- Disable this day's button
		data.overlayFlags = 0
        table.insert(w.data, data)

        local netOP = NetOP:new()
        netOP:SendData(pPlayer, "sirin.proto.customWindows", send, true)

    else
        NetMgr.privateAnnounceMsg(pPlayer, getGiveItemError(giveItem), 0xFFFF, ANN_TYPE.mid3, 0xFFFFFF00)
    end
end




---@param pPlayer CPlayer
---@param dwActWindowID integer
---@param dwActDataID integer
---@param dwSelectWindowID integer
---@param dwSelectDataID integer
---@param dwVisualVer integer
---@param strInput string
function script.onButtonPress(pPlayer, dwActWindowID, dwActDataID, dwSelectWindowID, dwSelectDataID, dwVisualVer, strInput)
	print(string.format("daily dwActWindowID: %d dwActDataID: %d dwSelectWindowID: %d dwSelectDataId: %d dwVisualVer %s",
		dwActWindowID, dwActDataID, dwSelectWindowID, dwSelectDataID, dwVisualVer, strInput))

	local currentDay = os.date("*t").day
	local playerId = pPlayer.m_id.wIndex
	local today = getTodayDate()

	-- ✅ When clicking the function-menu button (opens daily login window)
	if dwActWindowID == 1 and dwActDataID == 14 then
		local langId = Sirin.CLanguageAsset.instance():getPlayerLanguage(pPlayer.m_id.wIndex)
		local windows = SirinScript_CustomWindowsByLangID[langId]
		if not windows or not windows[3] or not windows[3].data then
			print("No data for daily login window")
			return
		end

		-- Build main reward button list
		local send = { ct = 3, data = {} }
		local w = { id = 3, data = {} }
		table.insert(send.data, w)

	for i = 1, #windows[3].data do
    	local data = { id = i }

    if playerLastClaim[playerId] == today and i == currentDay then
        -- Already claimed today: disable button and remove overlay
        data.stateFlags = tonumber("111", 2)
        data.overlayFlags = 0
    elseif i == currentDay then
        -- Claimable today: enable button and show overlay
        data.stateFlags = tonumber("11101", 2)
        data.overlayFlags = 1
    else
        -- Past or future days: show as claimed or locked
        data.stateFlags = tonumber("111", 2)
        data.overlayFlags = (playerLastClaim[playerId] and i < currentDay) and 0 or 1
    end

    table.insert(w.data, data)
end

		local netOP = NetOP:new()
		netOP:SendData(pPlayer, "sirin.proto.customWindows", send, true)

		-- Build header window
		local send2 = { ct = 3, data = {} }
		local w2 = { id = 4, data = {} }
		table.insert(send2.data, w2)

		for i = 1, #windows[3].data do
			local data = { id = i }

			if playerLastClaim[playerId] == today and i == currentDay then
				data.stateFlags = tonumber("111", 2) -- disable icon/overlay for claimed
			elseif i == currentDay then
				data.stateFlags = tonumber("11101", 2)
			else
				data.stateFlags = tonumber("111", 2)
			end

			table.insert(w2.data, data)
		end

		local netOP2 = NetOP:new()
		netOP2:SendData(pPlayer, "sirin.proto.customWindows", send2, true)
	end

	-- ✅ When player presses the claim button for today's reward
	if dwActWindowID == 3 and dwActDataID == currentDay then
		getTodayReward(pPlayer, currentDay)
	end
end


---@param pPlayer CPlayer
local function sendUpdatedData(pPlayer)
	local langId = Sirin.CLanguageAsset.instance():getPlayerLanguage(pPlayer.m_id.wIndex)
	local windows = SirinScript_CustomWindowsByLangID[langId]
	local send = {}
	send.ct = 0 -- 0 init, 1 add (set), 2 delete, 3 update
	send.data = {}

	for _, sw in pairs(windows) do
		local w = clone(sw)

		if w.id == 1 and #w.data > 0 then
			for i = 1, #w.data - 1 do
				w.data[i].stateFlags = tonumber("101", 2)
			end

			w.data[#w.data].stateFlags = tonumber("1101", 2)
		end

		table.insert(send.data, w)
	end

	local netOP = NetOP:new()
	netOP:SendData(pPlayer, "sirin.proto.customWindows", send, true)
end

---@param pPlayer CPlayer
---@param pUserDB CUserDB
---@param bFirstStart boolean
function script.CPlayer__Load(pPlayer, pUserDB, bFirstStart)
	-- sendUpdatedData(pPlayer)
end

-- Print to server console script loaded
function script.onThreadBegin()
	print("'daily login window by eld-dev' Script Loaded")
end

function script.onThreadEnd()
end

local function autoInit()
	if not _G[moduleName] then -- One time initialization
		_G[moduleName] = script -- Bind your script to a global variable. Variable name must be unique.

		table.insert(SirinLua.onThreadBegin, function() _G[moduleName].onThreadBegin() end)
		table.insert(SirinLua.onThreadEnd, function() _G[moduleName].onThreadEnd() end)
	else
		_G[moduleName] = script -- On reload
	end
	SirinLua.HookMgr.releaseHookByUID(script.m_strUUID)

	SirinLua.HookMgr.addHook("CPlayer__Load", HOOK_POS.after_event, script.m_strUUID, script.CPlayer__Load)
	-- Add hook to respond to clicks from Function Menu. Call -> onButtonPressed
	SirinLua.HookMgr.addHook("onPressCustomWindowButton", HOOK_POS.after_event, script.m_strUUID, script.onButtonPress)
end

autoInit()
