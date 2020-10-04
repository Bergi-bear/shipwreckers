
do --Инициализация
	TimerStart(CreateTimer(), 1, false, function()
		--создаёт триггер отлова клавишь
		if not BlzLoadTOCFile("Main.toc") then
			print("errloadtoc")
		end
		TimerStart(CreateTimer(), 1, false, function()

			CreateAllWeaponFrames()
		end)
	end)
end
--

function CreateAbilityFrame(posX,PosY,texture,chargesCount,player) -- позиция 1 - 12
	local NextPoint=0.039
	if not texture then
		texture="ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
	end
	local SelfFrame = BlzCreateFrame("GlueWText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0)

	BlzFrameSetVisible(SelfFrame,false)
	BlzFrameSetVisible(SelfFrame,GetLocalPlayer()==player)
	BlzFrameSetTexture(BlzFrameGetChild(SelfFrame, 0), texture, 0, true)
	BlzFrameSetText(BlzFrameGetChild(SelfFrame, 1), "")
	BlzFrameSetSize(SelfFrame,NextPoint,NextPoint)
	BlzFrameSetAbsPoint(SelfFrame,FRAMEPOINT_CENTER,posX,PosY)

	local ChargeContent=BlzCreateFrame("GlueWText", SelfFrame, 0, 0)
	local chargesBox=BlzFrameGetChild(ChargeContent, 0)-- рамка
	local chargesText=BlzFrameGetChild(ChargeContent, 1)-- текст заряда

	BlzFrameSetText(chargesText, chargesCount)
	BlzFrameSetTexture(chargesBox, "UI\\Widgets\\Console\\Human\\CommandButton\\human-button-lvls-overlay", 0, true)
	BlzFrameSetSize(ChargeContent,NextPoint/1.5,NextPoint/3)
	BlzFrameSetScale(chargesText,0.6)
	BlzFrameSetPoint(ChargeContent, FRAMEPOINT_BOTTOMRIGHT, SelfFrame, FRAMEPOINT_BOTTOMRIGHT, 0.001,0.)

	--print(BlzFrameGetChildrenCount(SelfFrame))

	if true then -- События кликов по кнопке
		--print("создана ативная кнопка")
		local  ClickTrig = CreateTrigger()
		BlzFrameSetEnable(BlzGetTriggerFrame(), false)
		BlzFrameSetEnable(BlzGetTriggerFrame(), true)
		BlzTriggerRegisterFrameEvent(ClickTrig, SelfFrame, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(ClickTrig, ChargeContent, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(ClickTrig, function ()
			print("Нажата кнопка ")
			BlzFrameSetEnable(BlzGetTriggerFrame(), false)
			BlzFrameSetEnable(BlzGetTriggerFrame(), true)
		end)
	end
	local  TrigMOUSE_ENTER = CreateTrigger()
	BlzTriggerRegisterFrameEvent( TrigMOUSE_ENTER, SelfFrame, FRAMEEVENT_MOUSE_ENTER)
	BlzTriggerRegisterFrameEvent( TrigMOUSE_ENTER, ChargeContent, FRAMEEVENT_MOUSE_ENTER)
	TriggerAddAction( TrigMOUSE_ENTER, function ()
		print("показать подсказку")
	end)
	local  TrigMOUSE_LEAVE = CreateTrigger()
	BlzTriggerRegisterFrameEvent( TrigMOUSE_LEAVE, SelfFrame, FRAMEEVENT_MOUSE_LEAVE)
	BlzTriggerRegisterFrameEvent( TrigMOUSE_LEAVE, ChargeContent, FRAMEEVENT_MOUSE_LEAVE)
	TriggerAddAction( TrigMOUSE_LEAVE, function ()
		print("убрать подсказку")
	end)
	return SelfFrame,chargesText
end

function CreateAllWeaponFrames()
	local texture={
		"ReplaceableTextures\\CommandButtons\\BTNDwarvenLongRifle.blp",
		"ReplaceableTextures\\CommandButtons\\BTNHumanMissileUpThree.blp",
		"ReplaceableTextures\\CommandButtons\\BTNClusterRockets.blp",
		"ReplaceableTextures\\CommandButtons\\BTNFireBolt.blp",
		"ReplaceableTextures\\CommandButtons\\BTNFireRocks.blp",
		"ReplaceableTextures\\CommandButtons\\BTNBarrel.blp",
		"ReplaceableTextures\\CommandButtons\\BTNChainLightning.blp",
		"ReplaceableTextures\\PassiveButtons\\PASBTNUpgradeMoonGlaive.blp",
		"ReplaceableTextures\\CommandButtons\\BTNUnstableConcoction.blp",
	}
	local weaponName= {
		"[1] Носовое ордие",
		"[2] Бортовые пушки",
		"[3] Ракетница",
		"[4] Огнемёт",
		"[5] Вертикальный залп",
		"[6] Бочка",
		"[7] Молнии",
		"[8] Пилы",
		"[9] Нефтяное пятно"
	}
	local description={
		"Одиночный выстрел [RMB]",
		"Несколько выстрелов с борта [RMB] [LMB]",
		"Самоновадящаяся ракета [RMB] на цель",
		"Огнемёт из бортовых орудий. Удерживайте [RMB] [LMB] ",
		"Стреляет в указанную точку навесом [RMB]",
		"Спускает на воду бочку [RMB]",
		"Бьёт молнией в указанную цель [RMB]",
		"Урон касанием, перемещает пилу по корпусу [RMB]",
		"Оставляет позади себя нефтяное пятно, можно поджечь [RMB]"
	}


	--NewButton()
	local next=0.039
	local qerf=0
	for i = 0, 8 do
		local x,y=next+next+next*i, next*0.8
		local SelfFrame,new_FrameChargesText=CreateAbilityFrame(x,y,texture[i+1],9999,Player(0))

		local hot=BlzCreateFrameByType("BACKDROP", "Face", SelfFrame, "", 0)
		BlzFrameSetTexture(hot, "DDSSymbols\\"..(i+1)..".dds", 0, true)
		BlzFrameSetSize(hot, 0.02, 0.02)
		BlzFrameSetPoint(hot, FRAMEPOINT_TOPLEFT, SelfFrame, FRAMEPOINT_TOPLEFT, -0.003,0.)
		--Создаём переключающиеся рамки
		local buttonsprite = BlzCreateFrameByType("SPRITE", "justAName", SelfFrame, "WarCraftIIILogo", 0)
		BlzFrameSetPoint(buttonsprite, FRAMEPOINT_BOTTOMLEFT, SelfFrame, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
		BlzFrameSetSize(buttonsprite, 1., 1.)
		BlzFrameSetScale(buttonsprite, 1.)
		BlzFrameSetModel(buttonsprite, "selecter1.mdx", 0)
		---создаём индикацию кулдауна
	    CreateCooldownIndicator(SelfFrame,x,y) --болванчик со сменной текстурой
		FrameSelecter[i+1]=buttonsprite
		VisualCharges[i+1]=new_FrameChargesText
		HERO[0].SelfFrame[i+1]=SelfFrame

		qerf=next+next+next*i
		if i>= 1 then
			BlzFrameSetVisible(buttonsprite,false)
		end


	end


	for i=1,4 do
		local SkillButton=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetTexture(SkillButton, "ChargesTexture.blp", 0, true)
		BlzFrameSetSize(SkillButton, 0.04, 0.04)
		BlzFrameSetAbsPoint(SkillButton, FRAMEPOINT_TOPLEFT, qerf+next*i, next*1.3)

		local hot=BlzCreateFrameByType("BACKDROP", "Face", SkillButton, "", 0)
		if i==1 then
			BlzFrameSetTexture(hot, "DDSSymbols\\q.dds", 0, true)
		elseif i==2 then
			BlzFrameSetTexture(hot, "DDSSymbols\\e.dds", 0, true)
		elseif i==3 then
			BlzFrameSetTexture(hot, "DDSSymbols\\r.dds", 0, true)
		elseif i==4 then
			BlzFrameSetTexture(hot, "DDSSymbols\\f.dds", 0, true)
		end
		BlzFrameSetSize(hot, 0.03, 0.03)
		BlzFrameSetPoint(hot, FRAMEPOINT_CENTER, SkillButton, FRAMEPOINT_CENTER, 0.,0.)
		local t = CreateTrigger()
		BlzTriggerRegisterFrameEvent(t, hot, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(t,function()
			print("click "..i) -- вот тут не работает
		end)

	end
end