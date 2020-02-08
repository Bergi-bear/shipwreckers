---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.02.2020 18:00
---
---
---
---
--BlzLoadTOCFile("Main.toc")
--HealthPlayer1 = HealthBarAdd(udg_Pala)
--BlzFrameSetAbsPoint(HealthPlayer1, FRAMEPOINT_TOPRIGHT, 0.8, 0.57)

function HealthBarAdd(u)
	local bar = BlzCreateSimpleFrame("MyFakeBar", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetVisible(bar,true)
	BlzFrameSetTexture(bar, "Replaceabletextures\\Teamcolor\\Teamcolor00.blp", 0, true)
	BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"MyBarBorder.blp", 0, true)
	BlzFrameSetText(BlzGetFrameByName("MyFakeBarTitle",0), GetHeroProperName(u))
	local lefttext = BlzGetFrameByName("MyFakeBarLeftText",0)
	local righttext = BlzGetFrameByName("MyFakeBarRightText",0)
	local function on_timer()
		BlzFrameSetValue(bar, GetUnitLifePercent(u))

		BlzFrameSetText(lefttext, R2I(GetWidgetLife(u)))
		BlzFrameSetText(righttext, R2I(BlzGetUnitMaxHP(u)))
	end
	TimerStart(CreateTimer(),0.5,true, on_timer)
	return bar
end




function CreateWeaponFrame()
	local texture={
		"ReplaceableTextures\\CommandButtons\\BTNDwarvenLongRifle",
		"ReplaceableTextures\\CommandButtons\\BTNHumanMissileUpThree.blp",
		"ReplaceableTextures\\CommandButtons\\BTNClusterRockets.blp",
		"ReplaceableTextures\\CommandButtons\\BTNFireBolt.blp",
		"ReplaceableTextures\\CommandButtons\\BTNCannonTower.blp",
		"ReplaceableTextures\\CommandButtons\\BTNBarrel.blp"
	}
	local weaponName={
		"[1] Носовое ордие",
		"[2] Бортовые пушки",
		"[3] Ракетница",
		"[4] Огнемёт",
		"[5] Вертикальный залп",
		"[6] Бочка"
	}
	local description={
		"Одиночный выстрел [RMB]",
		"Несколько выстрелов с борта [RMB] [LMB]",
		"Самоновадящаяся ракета [RMB] на цель",
		"Огнемёт из бортовых орудий. Удерживайте [RMB] [LMB] ",
		"Стреляет в указанную точку навесом [RMB]",
		"Спускает на воду бочку [RMB]"
	}
	local next=0.039
	for i = 0, 5 do
		local face = BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)--Create a new frame of Type BACKDROP
		local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face,"", 0) --face is a BACKDROP it can not have events nor a tooltip, thats why one creates an empty frame managing that.
		local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)--Create the BoxedText Frame
		BlzFrameSetAllPoints(faceHover, face)
		BlzFrameSetTooltip(faceHover, tooltip)
		BlzFrameSetTexture(face, texture[i+1],0, true)
		BlzFrameSetSize(face, 0.04, 0.04)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_TOPLEFT, next+next*i, 0.6)
		BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_TOP, next+next*i, 0.6-next)
		BlzFrameSetSize(tooltip, 0.15, 0.08)
		BlzFrameSetText(BlzGetFrameByName("BoxedTextValue",0), description[i+1])
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle",0), weaponName[i+1])
		local t = CreateTrigger()
		BlzTriggerRegisterFrameEvent(t, tooltip, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, faceHover, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, face, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(t,function()
			print("click "..i) -- вот тут не работает
		end)

	end

end
--[[ --работает
TimerStart(CreateTimer(),0,false, function()
	print("Start")
	BlzLoadTOCFile("war3mapImported\\MySimpleButton.toc")
	BlzLoadTOCFile("war3mapImported\\MyStatusBar.toc")
	local trigger = CreateTrigger()
	TriggerAddAction(trigger, function()
		print("Button Click")
		-- SimpleButton does not keep the focus.
	end)
	local prevButton = nil

	local customInfo = BlzCreateSimpleFrame("SimpleInfoPanelIconDamage", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 18)
	BlzFrameSetAbsPoint(customInfo, FRAMEPOINT_CENTER, 0.2, 0.2)
	BlzFrameSetSize(customInfo, 0.1, 0.1)

	local button = BlzCreateSimpleFrame("MySimpleButton", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetAbsPoint(button, FRAMEPOINT_CENTER, 0.9, 0.3)
	BlzFrameSetTexture(BlzGetFrameByName("MySimpleButtonTexture", 0), "ReplaceableTextures\\CommandButtons\\BTNHeroPaladin", 0, true)
	BlzTriggerRegisterFrameEvent(trigger, button, FRAMEEVENT_CONTROL_CLICK)

	button = BlzCreateSimpleFrame("MySimpleButton", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetAbsPoint(button, FRAMEPOINT_CENTER, 0.4, 0.3)
	BlzFrameSetTexture(BlzGetFrameByName("MySimpleButtonTexture", 0), "ReplaceableTextures\\CommandButtons\\BTNHeroMountainKing", 0, true)
	BlzTriggerRegisterFrameEvent(trigger, button, FRAMEEVENT_CONTROL_CLICK)
	BlzFrameSetEnable(BlzGetFrameByName("MySimpleButtonTexture", 0), false)
	prevButton = button

	button = BlzCreateSimpleFrame("MySimpleButton", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetAbsPoint(button, FRAMEPOINT_CENTER, -0.1, 0.5)
	BlzFrameSetTexture(BlzGetFrameByName("MySimpleButtonTexture", 0), "ReplaceableTextures\\CommandButtons\\BTNHeroArchMage", 0, true)
	BlzTriggerRegisterFrameEvent(trigger, button, FRAMEEVENT_CONTROL_CLICK)


	BlzFrameSetTooltip(button, customInfo)

	print("Done")
end)]]