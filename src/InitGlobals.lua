---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 22:05
--
---Глобалки
TIMER_PERIOD = 0.03125
HERO={}
do
	local InitGlobalsOrigin = InitGlobals -- записываем InitGlobals в переменную
	function InitGlobals()
		InitGlobalsOrigin() -- вызываем оригинальную InitGlobals из переменной
		InitGameCore()
		hideEverything()
		InitMouseMoveTrigger()
		InitDamage()
		InitUnitDeath()
		InitZone0()
		RegisterAnyCheckpointSave()
		StartMainTheme()
	end
end

function InitGameCore()
	--создаём героев
	--BlzEnableSelections(false,false)
	EnableDragSelect(false,false)
	HERO[0]={
		ReleaseW=false,
		ReleaseS=false,
		ReleaseA=false,
		ReleaseD=false,
		Acceleration=0,
		ReleaseLMB=false,
		ReleaseRMB=false,
		SpeedBase=14,
		UnitHero=CreateUnit(Player(0), FourCC('H000'), GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0)), 0),
		CurrentSpeed=0,
		WeaponIndex=1,
		AngleForce=0, --типа какой-то уго для отталкивания
		IsDisabled=false,
		OnTorrent=false
		--Camera=CreateUnit(Player(0), FourCC('e001'), GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0)), 0)
	}
	BlzLoadTOCFile("Main.toc")
	BlzLoadTOCFile("MySimpleButton.toc")
	BlzLoadTOCFile("BoxedText.toc")
	local HealthPlayer1 = HealthBarAdd(HERO[0].UnitHero)
	BlzFrameSetAbsPoint(HealthPlayer1, FRAMEPOINT_BOTTOM, 0.4, 0.04)
	SelectUnitForPlayerSingle(HERO[0].UnitHero,GetOwningPlayer(HERO[0].UnitHero))
	--CreateWeaponFrame()
	CreateWeaponFrame()



--триггеры
	-----------------------------------------------------------------OSKEY_1
	local TrigWeaponSwitch1 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch1,Player(i),OSKEY_1,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch1, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.WeaponIndex=1
		SwitchWeaponVisual(pid,data.WeaponIndex)
	end)
	-----------------------------------------------------------------OSKEY_2
	local TrigWeaponSwitch2 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch2,Player(i),OSKEY_2,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch2, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.WeaponIndex=2
		SwitchWeaponVisual(pid,data.WeaponIndex)
	end)
	-----------------------------------------------------------------OSKEY_3
	local TrigWeaponSwitch3 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch3,Player(i),OSKEY_3,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch3, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.WeaponIndex=3
		SwitchWeaponVisual(pid,data.WeaponIndex)
	end)
	-----------------------------------------------------------------OSKEY_4
	local TrigWeaponSwitch4 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch4,Player(i),OSKEY_4,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch4, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.WeaponIndex=4
		SwitchWeaponVisual(pid,data.WeaponIndex)
	end)
	-----------------------------------------------------------------OSKEY_5
	local TrigWeaponSwitch5 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch5,Player(i),OSKEY_5,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch5, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.WeaponIndex=5
		SwitchWeaponVisual(pid,data.WeaponIndex)
	end)
	-----------------------------------------------------------------OSKEY_6
	local TrigWeaponSwitch6 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch6,Player(i),OSKEY_6,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch6, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.WeaponIndex=6
		SwitchWeaponVisual(pid,data.WeaponIndex)
	end)
	-----------------------------------------------------------------OSKEY_W
	local gg_trg_EventUpW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpW,Player(i),OSKEY_W,0,true)
	end
	TriggerAddAction(gg_trg_EventUpW, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseW=true
	end)
	local TrigDepressW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressW,Player(i),OSKEY_W,0,false)
	end
	TriggerAddAction(TrigDepressW, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseW=false
	end)
	-----------------------------------------------------------------OSKEY_S
	local gg_trg_EventUpS = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpS,Player(i),OSKEY_S,0,true)
	end
	TriggerAddAction(gg_trg_EventUpS, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseS=true
	end)
	local TrigDepressS = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressS,Player(i),OSKEY_S,0,false)
	end
	TriggerAddAction(TrigDepressS, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseS=false
	end)
	-----------------------------------------------------------------OSKEY_D
	local TrigPressD = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigPressD,Player(i),OSKEY_D,0,true)
	end
	TriggerAddAction(TrigPressD, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		--BlzStartUnitAbilityCooldown(data.UnitHero,FourCC('A002'),5)
		data.ReleaseD=true
		BlzSetUnitFacingEx(data.UnitHero,GetUnitFacing(data.UnitHero)-5)
	end)
	local TrigDePressD = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressD,Player(i),OSKEY_D,0,false)
	end
	TriggerAddAction(TrigDePressD, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseD=false
	end)
	-----------------------------------------------------------------OSKEY_A
	local TrigPressA = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigPressA,Player(i),OSKEY_A,0,true)
	end
	TriggerAddAction(TrigPressA, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseA=true
		BlzSetUnitFacingEx(data.UnitHero,GetUnitFacing(data.UnitHero)+5)
	end)
	local TrigDePressA = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDePressA,Player(i),OSKEY_A,0,false)
	end
	TriggerAddAction(TrigDePressA, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseA=false
	end)
	-----------------------------------------------------------------LMB
	local TrigPressLMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigPressLMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end
	TriggerAddAction(TrigPressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			data.ReleaseLMB=true
			local hero=data.UnitHero
			--IssueImmediateOrder(hero,"stop")
			if data.WeaponIndex==2 then
				BoardCannon(hero,90,GetRandomInt(5,5))
			end
			if data.WeaponIndex==4 then
				CreateFire(hero,90)
			end
		end
	end)
	local TrigDePressLMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigDePressLMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end

	TriggerAddAction(TrigDePressLMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			data.ReleaseLMB=false
		end
	end)
	-----------------------------------------------------------------RMB
	local TrigPressRMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigPressRMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end
	TriggerAddAction(TrigPressRMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			data.ReleaseRMB=true
			local hero=data.UnitHero
			if data.WeaponIndex==1 then
				SingleCannon(hero)
			end
			if data.WeaponIndex==2 then
				BoardCannon(hero,-90,GetRandomInt(5,5))
			end
			if data.WeaponIndex==3 then
				UnitRocketArea(hero,GetPlayerMouseX[pid],GetPlayerMouseY[pid],200)
			end
			if data.WeaponIndex==4 then
				CreateFire(hero,-90)
			end
			if data.WeaponIndex==5 then
				CreateArtToss(hero,"Abilities/Spells/Other/Volcano/VolcanoMissile.mdl")
			end
			if data.WeaponIndex==6 then
				CreateBarrel(hero)
			end
		end
	end)
	local TrigDePressRMB=CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerEvent(TrigDePressRMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end
	TriggerAddAction(TrigDePressRMB, function()
		--print("any")
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			local pid=GetPlayerId(GetTriggerPlayer())
			local data=HERO[pid]
			data.ReleaseRMB=false
		end
	end)

	-----------------------------------------------------------------Lock
	TimerStart(CreateTimer(), 0.01, true, function()
		local data=HERO[0]
		local hero=data.UnitHero
		ForceUIKeyBJ(GetOwningPlayer(hero),"M")
		--IssueImmediateOrder(hero,"stop")
	end)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		for _, data in pairs(HERO) do
			local hero= data.UnitHero
			local p=GetOwningPlayer(hero)
			local turnrate=0
			--local camerax,cameray=MoveX(GetUnitX(hero),data.CurrentSpeed*20,GetUnitFacing(hero)),MoveY(GetUnitY(hero),data.CurrentSpeed*20,GetUnitFacing(hero))
			--CameraSetupSetDestPosition(gg_cam_CameraHATE, camerax,cameray, 0) -- пробовал 2
			--BlzCameraSetupApplyForceDurationSmooth(gg_cam_CameraHATE, true, 0.3, 0.03, 1, 1)
			--local camera=data.Camera
			--SetCameraPositionForPlayer(p, camerax,cameray)--багается пробелом но не дёргается
			SetCameraQuickPosition(GetUnitX(hero),GetUnitY(hero))
			--DestroyEffect(AddSpecialEffect("Abilities/Spells/Other/TinkerRocket/TinkerRocketMissile.mdl",camerax,cameray))
			--PanCameraToTimedForPlayer(p,GetUnitX(camera),GetUnitY(camera),1)-- супер стойкая к чем угодно, но дёргается
			SetCameraTargetControllerNoZForPlayer(p,hero, 10,10,true) -- не дергается
			--SetCameraFieldForPlayer(p,CAMERA_FIELD_ROTATION,         90.,.0)
			--if GetUnitCurrentOrder(camera)~=String2OrderIdBJ("move") then
				--IssuePointOrder(camera,"move",GetUnitX(hero),GetUnitY(hero))
			--	IssuePointOrder(camera,"move",camerax,cameray)
			--end

			UnitCheckPathingInRound(hero,50)

			if data.ReleaseLMB then

			end
			----------------------------------------------------W
			if data.ReleaseW then
				if data.Acceleration<=data.SpeedBase then
					data.Acceleration=data.Acceleration+1
				end
			else
				if data.Acceleration>0 then
					data.Acceleration=data.Acceleration-1
				end
			end
			----------------------------------------------------S
			if data.ReleaseS then
			end

			if data.ReleaseD then
				turnrate=data.Acceleration<=5 and 5 or (5-data.Acceleration/3)+3
				BlzSetUnitFacingEx(hero,GetUnitFacing(hero)-turnrate)
			end
			if data.ReleaseA then
				turnrate=data.Acceleration<=5 and 5 or (5-data.Acceleration/3)+3
				BlzSetUnitFacingEx(hero,GetUnitFacing(hero)+turnrate)
			end

			data.CurrentSpeed=data.Acceleration
			if data.CurrentSpeed>0 then--попытка сделать разгон
					--print("текущая скорость = "..data.CurrentSpeed)
				local x,y=GetUnitX(hero),GetUnitY(hero)
				local angle=GetUnitFacing(hero)
				data.AngleForce=angle
				local zhero=GetUnitZ(hero) --GetTerrainZ(x,y)
				local newX3,newY3=MoveX(x,90,angle),MoveY(y,180,angle)
				local newX2,newY2=MoveX(x,60,angle),MoveY(y,120,angle)
				local z3=GetTerrainZ(newX3,newY3)
				local z2=GetTerrainZ(newX2,newY2)
				local Perepad=zhero-z2
				--print("Perepad="..Perepad)
				--if z3<=-80 and z2<=-80  then
				local newX,newY=MoveX(x,data.CurrentSpeed,angle),MoveY(y,data.CurrentSpeed,angle)

				if Perepad<1  then

					SetUnitPositionSmooth(hero,newX,newY)
				else
					--print("Высоко, надо пройти")
					if Perepad>50 then
						SetUnitX(hero,newX)
						SetUnitY(hero,newY)
					end
				end
			end
		end
	end)
end



