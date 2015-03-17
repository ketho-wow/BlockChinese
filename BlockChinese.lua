-------------------------------------------
--- Author: Ketho (EU-Boulderfist)		---
--- License: Public Domain				---
--- Created: 2011.11.09					---
--- Version: 1.1 [2015.03.17]			---
-------------------------------------------
--- Curse			http://www.curse.com/addons/wow/blockchinese
--- WoWInterface	http://www.wowinterface.com/downloads/info20488-BlockChinese.html

-- 227       : Japanese katakana / hiragana
-- 228 - 233 : Chinese characters and Japanese kanji
-- 234 - 237 : Korean characters

local events = {
	"CHAT_MSG_SAY",
	"CHAT_MSG_YELL",
	"CHAT_MSG_CHANNEL",
	"CHAT_MSG_TEXT_EMOTE",
	"CHAT_MSG_WHISPER",
	--"CHAT_MSG_GUILD",
	--"CHAT_MSG_PARTY",
	--"CHAT_MSG_PARTY_LEADER",
	--"CHAT_MSG_RAID",
	--"CHAT_MSG_RAID_LEADER",
	--"CHAT_MSG_INSTANCE_CHAT",
	--"CHAT_MSG_INSTANCE_CHAT_LEADER",
}

local function filter(self, event, msg, ...)
	if strfind(msg, "[\227-\237]") then
		return true
	end
end

for _, v in pairs(events) do
	ChatFrame_AddMessageEventFilter(v, filter)
end
