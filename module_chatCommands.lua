local projectName = 'chatCommands'
local moduleName = 'module_chatCommands'

local script = {
    m_strUUID = projectName .. ".lua." .. moduleName,
}

---@param pPlayer CPlayer
---@param dwID number
---@param strData string
function script.hookHandler1(pPlayer, dwID, strData)
    -- Safety checks (prevents crashes)
    if not pPlayer then return end
    if not strData or strData == "" then return end

    -- Get player name (adjust if your structure differs)
    local playerName = pPlayer.m_strName or "Unknown"

    -- Combine name + message
    local finalMessage = "[" .. playerName .. "]: " .. strData

    -- Debug to server console
    if dump then
        dump(pPlayer, dwID, finalMessage)
    end

    -- Send message to global chat
    if NetMgr and NetMgr.SendGlobalChatData then
        NetMgr.SendGlobalChatData(
            finalMessage,
            CHAT_TYPE.Whole,
            ANN_TYPE.mid1,
            nil,
            0xFF00FFFF
        )
    end
end

function script.onThreadBegin()
    -- Optional: init logic here
end

function script.onThreadEnd()
    -- Optional: cleanup logic here
end

local function autoInit()
    if not _G[moduleName] then
        -- First load
        _G[moduleName] = script

        table.insert(SirinLua.onThreadBegin, function()
            if _G[moduleName] and _G[moduleName].onThreadBegin then
                _G[moduleName].onThreadBegin()
            end
        end)

        table.insert(SirinLua.onThreadEnd, function()
            if _G[moduleName] and _G[moduleName].onThreadEnd then
                _G[moduleName].onThreadEnd()
            end
        end)
    else
        -- Reload
        _G[moduleName] = script
    end

    -- Remove old hook before adding new one (prevents duplicates)
    if SirinLua and SirinLua.HookMgr then
        SirinLua.HookMgr.releaseHookByUID(script.m_strUUID)
        SirinLua.HookMgr.addHook(
            "customChatHandler",
            HOOK_POS.original,
            script.m_strUUID,
            script.hookHandler1
        )
    end
end

autoInit()