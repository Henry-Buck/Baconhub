local scripts = {
	[9754968779] = {
		name = "+1 Health Per Click",
		path = "scripts/PlusOneHealthPerClick.lua",
		url = "https://raw.githubusercontent.com/Henry-Buck/Baconhub/main/scripts/PlusOneHealthPerClick.lua",
	},
	[10000383119] = {
		name = "Gun Evolution",
		path = "scripts/GunEvolution.lua",
		url = "https://raw.githubusercontent.com/Henry-Buck/Baconhub/main/scripts/GunEvolution.lua",
	},
}

local scriptInfo = scripts[game.GameId]

if not scriptInfo then
	warn("BaconHub does not support this game id: " .. tostring(game.GameId))
	return
end

local source = game:HttpGet(scriptInfo.url)
local loadedScript, loadError = loadstring(source)

if not loadedScript then
	error("Failed to load BaconHub script for " .. scriptInfo.name .. ": " .. tostring(loadError))
end

loadedScript()
