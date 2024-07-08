local function GetMessage(self, event, ...)
    local args = {...}
    local text = args[1]
    SendChatMessage("No!")
end

local function FollowStart()
    SendChatMessage("I'm following you")
end

local function FollowEnd()
    SendChatMessage("Stop follow")
end

local f1 = CreateFrame("Frame")
f1:RegisterEvent("CHAT_MSG_SAY")
f1:SetScript("OnEvent", GetMessage)

local f2 = CreateFrame("Frame")
f2:RegisterEvent("AUTOFOLLOW_BEGIN")
f2:SetScript("OnEvent", FollowStart)

local f3 = CreateFrame("Frame")
f3:RegisterEvent("AUTOFOLLOW_END")
f3:SetScript("OnEvent", FollowEnd)