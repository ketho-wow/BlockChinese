-------------------------------------------
--- Author: Ketho (EU-Boulderfist)		---
--- License: Public Domain				---
--- Created: 2011.11.09					---
--- Version: v0.1 [2011.11.09]			---
-------------------------------------------
--- Curse			http://www.curse.com/addons/wow/blockchinese
--- WoWInterface	N/A

-- 227       : Japanese katakana / hiragana
-- 228 - 233 : Chinese characters and Japanese kanji
-- 234 - 237 : Korean characters

local events = {
	"CHAT_MSG_SAY",
	"CHAT_MSG_YELL",
	"CHAT_MSG_CHANNEL",
}

local function filter(self, event, msg, ...)
	if strfind(msg, "[\228-\237]") then
		return true
	end
end

for _, v in ipairs(events) do
	ChatFrame_AddMessageEventFilter(v, filter)
end