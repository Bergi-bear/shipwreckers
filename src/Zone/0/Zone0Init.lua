---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.02.2020 18:42
---
function InitZone0()
	TimerStart(CreateTimer(), 5, true, function()
		local x,y=GetRectCenterX(gg_rct_SingleTorrentZone),GetRectCenterY(gg_rct_SingleTorrentZone)
		CreateTorrent(x,y,4)
	end)
end