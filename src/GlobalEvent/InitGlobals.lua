---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 22:05
--
---Глобалки
TIMER_PERIOD = 0.03125
HERO={}
Ammo={}
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
	--EnablePreSelect(false,false)--выделение
	for i=0,0 do
		HERO[i]={
			ReleaseW=false,
			ReleaseS=false,
			ReleaseA=false,
			ReleaseD=false,
			Acceleration=0,
			ReleaseSpace=false,
			ReleaseLMB=false,
			ReleaseRMB=false,
			SpeedBase=14,
			UnitHero=CreateUnit(Player(0), FourCC('H000'), GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0)), 0),
			CurrentSpeed=0,
			WeaponIndex=1,
			AngleForce=0, --типа какой-то уго для отталкивания
			IsDisabled=false,
			OnTorrent=false,
			Alive=true,
			IsAttackReadyR=true,
			IsAttackReadyL=true,
			AttackCD=0.5,
			XPos=0,
			YPos=0,
			pid=i,
			OnWater=false,
			ForcesCount=0,
			ForceRemain={},
			ForceAngle={},
			ForceSpeed={},
			IsForce={}
			--Camera=CreateUnit(Player(0), FourCC('e001'), GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0)), 0)
		}
	end
	Ammo[0]={
		Available ={
			Single=true,
			Board=true,
			Rocket=false,
			Fire=false,
			Toss=true,
			Barrel=true,
			Light=true,
			Saw=true,
			Oil=true
		},
		Count={
			Single=150,
			Board=100,
			Rocket=0,
			Fire=0,
			Toss=10,
			Barrel=10,
			Light=100,
			Saw=999,
			Oil=100
		}
	}
	BlzLoadTOCFile("Main.toc")
	BlzLoadTOCFile("MySimpleButton.toc")
	BlzLoadTOCFile("BoxedText.toc")
	local HealthPlayer1 = HealthBarAdd(HERO[0].UnitHero)
	BlzFrameSetAbsPoint(HealthPlayer1, FRAMEPOINT_LEFT, 0.04, 0.58)
	SelectUnitForPlayerSingle(HERO[0].UnitHero,GetOwningPlayer(HERO[0].UnitHero))
	RegisterAllAmmoBoxes(HERO[0].UnitHero)
	--CreateWeaponFrame()
	CreateWeaponFrame()
	for i=1,9 do
		HeroUpdateWeaponCharges(HERO[0].UnitHero,i,0)
	end


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
		if Ammo[pid].Available.Single then
			data.WeaponIndex=1
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
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
		if Ammo[pid].Available.Board then
			data.WeaponIndex=2
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
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
		if Ammo[pid].Available.Rocket then
			data.WeaponIndex=3
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
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
		if Ammo[pid].Available.Fire then
			data.WeaponIndex=4
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
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
		if Ammo[pid].Available.Toss then
			data.WeaponIndex=5
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
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
		if Ammo[pid].Available.Barrel then
			data.WeaponIndex=6
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
	end)
	-----------------------------------------------------------------OSKEY_7
	local TrigWeaponSwitch7 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch7,Player(i),OSKEY_7,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch7, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		if Ammo[pid].Available.Barrel then
			data.WeaponIndex=7
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
	end)
	-----------------------------------------------------------------OSKEY_8
	local TrigWeaponSwitch8 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch8,Player(i),OSKEY_8,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch8, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		if Ammo[pid].Available.Barrel then
			data.WeaponIndex=8
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
	end)
	-----------------------------------------------------------------OSKEY_9
	local TrigWeaponSwitch9 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch9,Player(i),OSKEY_9,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch9, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		if Ammo[pid].Available.Barrel then
			data.WeaponIndex=9
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
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
		if not data.ReleaseD then
			BlzSetUnitFacingEx(data.UnitHero,GetUnitFacing(data.UnitHero)-5)
			data.ReleaseD=true
		end
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
		if not data.ReleaseA then
			data.ReleaseA=true
			BlzSetUnitFacingEx(data.UnitHero,GetUnitFacing(data.UnitHero)+5)
		end
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
	-----------------------------------------------------------------OSKEY_Space
	local gg_trg_EventUpSpace = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpSpace,Player(i),OSKEY_SPACE,0,true)
	end
	TriggerAddAction(gg_trg_EventUpSpace, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseSpace=true
	end)
	local TrigDepressSpace = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressSpace,Player(i),OSKEY_SPACE,0,false)
	end
	TriggerAddAction(TrigDepressSpace, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseSpace=false
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
			if 	data.Alive and data.IsAttackReadyL then
				data.IsAttackReadyL=false
				if data.WeaponIndex==2 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,4) then
					BoardCannon(hero,90,GetRandomInt(5,5))
				end
				if data.WeaponIndex==4 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					CreateFire(hero,1)
				end
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
			if 	data.Alive and data.IsAttackReadyR then
				data.IsAttackReadyR=false
				if data.WeaponIndex==1 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					SingleCannon(hero)
				end
				if data.WeaponIndex==2 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,4) then
					BoardCannon(hero,-90,GetRandomInt(5,5))
				end
				if data.WeaponIndex==3 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					UnitRocketArea(hero,GetPlayerMouseX[pid],GetPlayerMouseY[pid],200)
				end
				if data.WeaponIndex==4 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					CreateFire(hero,0)
				end
				if data.WeaponIndex==5 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					CreateArtToss(hero,"Abilities/Spells/Other/Volcano/VolcanoMissile.mdl")
				end
				if data.WeaponIndex==6 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					CreateBarrel(hero)
				end
				if data.WeaponIndex==7 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					CreateLightingCharges(hero)
				end
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
	local acdr=0
	local acdl=0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		for _, data in pairs(HERO) do
			local hero= data.UnitHero
			local p=GetOwningPlayer(hero)
			local turnrate=0
			local Vector3 = wGeometry.Vector3
			SetCameraQuickPosition(GetUnitX(hero),GetUnitY(hero))
			SetCameraTargetControllerNoZForPlayer(p,hero, 10,10,true) -- не дергается

			if data.IsAttackReadyR==false then
				acdr=acdr+TIMER_PERIOD
				if acdr>=data.AttackCD then
					data.IsAttackReadyR=true
					acdr=0
				end
			end
			if data.IsAttackReadyL==false then
				acdl=acdl+TIMER_PERIOD
				if acdl>=data.AttackCD then
					data.IsAttackReadyL=true
					acdl=0
				end
			end

			if data.ReleaseSpace then
				---print("показываем миникарту")
				BlzFrameSetVisible(MiniMap[data.pid], true)
			else
				BlzFrameSetVisible(MiniMap[data.pid], false)
			end

			UnitCheckPathingInRound(hero,60)--Фунция выталкивания --временно отрубил

			if data.ReleaseLMB then

			end
			----------------------------------------------------W
			if UnitAlive(hero) then
				if data.ReleaseW then
					if data.Acceleration<=data.SpeedBase then
						data.Acceleration=data.Acceleration+1
					end
				else
					if data.Acceleration>0 then
						data.Acceleration=data.Acceleration-1
					end
				end
			end
			----------------------------------------------------S
			if data.ReleaseS then
			end

			if data.ReleaseD and data.OnTorrent==false  then
				turnrate=data.Acceleration<=5 and 5 or (5-data.Acceleration/3)+3
				BlzSetUnitFacingEx(hero,GetUnitFacing(hero)-turnrate)
			end
			if data.ReleaseA and data.OnTorrent==false then
				turnrate=data.Acceleration<=5 and 5 or (5-data.Acceleration/3)+3
				BlzSetUnitFacingEx(hero,GetUnitFacing(hero)+turnrate)
			end

			data.CurrentSpeed=data.Acceleration

			--if data.CurrentSpeed>0 and data.Alive and data.OnTorrent==false then--
					--print("текущая скорость = "..data.CurrentSpeed)
				--[[local x,y=GetUnitX(hero),GetUnitY(hero)
				local angle=GetUnitFacing(hero)
				data.AngleForce=angle
				local zhero=GetUnitZ(hero) --GetTerrainZ(x,y)
				local newX3,newY3=MoveX(x,180,angle),MoveY(y,180,angle)
				local newX2,newY2=MoveX(x,60,angle),MoveY(y,60,angle)
				local z3=GetTerrainZ(newX3,newY3)
				local z2=GetTerrainZ(newX2,newY2)
				local Perepad=zhero-z2
				local newX,newY=MoveX(x,data.CurrentSpeed,angle),MoveY(y,data.CurrentSpeed,angle)

				if Perepad<1  then
					SetUnitPositionSmooth(hero,newX,newY)
				else
					if Perepad>110 then
						SetUnitX(hero,newX)
						SetUnitY(hero,newY)
					else
						SetUnitPositionSmooth(hero,newX,newY)
					end
				end
				]]
------
				local k=data.ForcesCount
				local WASDMoving = Vector3:copyFromUnit(hero)
				local angle=GetUnitFacing(hero)
				local newPos=WASDMoving
			if data.CurrentSpeed>0 and data.Alive and not data.OnTorrent and not data.IsDisabled then--движение при нажатиии кнопок

				newPos=WASDMoving+WASDMoving:yawPitchOffset( data.CurrentSpeed, angle * ( math.pi / 180 ), 0.0 )
			else

			end


			if RectContainsCoords(gg_rct_WaterTreem,GetUnitXY(hero)) then
				newPos=newPos+Vector3:new(10, 0, 0)
				--print("поток")
			end
				local f=0
				for i=1,k do
					if data.ForceRemain[i]>0 then
						--print("Внешняя сила="..data.ForceRemain[i])
						f=f+1
						newPos=newPos+newPos:yawPitchOffset( data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0.0 )
						--newPos=Vector3:copyFromUnit(hero)+Vector3:new(data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0)
						data.ForceRemain[i]=data.ForceRemain[i]-data.ForceSpeed[i]
					else
						if data.IsForce[i] then
							data.IsForce[i]=false
						end
					end
				end
				if f==0 then
					data.ForcesCount=0
					data.IsDisabled=false
					SetUnitPathing(hero,true)
					--print("нет больше сил")
				end



			local tempZ=NexPointZ(GetUnitX(hero),GetUnitY(hero), GetUnitFacing(hero),60) --вырван угол data.ForceAngle[i] * ( math.pi / 180 )
			--data.AngleForce=angle
			--print("perepad="..tempZ)
			--[[
			if tempZ<=10 then
				SetUnitPositionSmooth(hero,newPos.x,newPos.y)
			end

			if data.ForcesCount==0 then
				SetUnitPositionSmooth(hero,newPos.x,newPos.y)
				--print("простое движение")
			end]]

			if tempZ<1  then
				SetUnitPositionSmooth(hero,newPos.x,newPos.y)
			else
				if tempZ>110 then
					SetUnitX(hero,newPos.x)
					SetUnitY(hero,newPos.y)
				else
					SetUnitPositionSmooth(hero,newPos.x,newPos.y)
				end
			end


			data.XPos=GetUnitX(hero)
			data.YPos=GetUnitY(hero)

		end
	end)
end

function NexPointZ(x,y,angle,next)
	local perepad=0
	local zhero=GetTerrainZ(x,y)
	local newX2,newY2=MoveX(x,next,angle),MoveY(y,next,angle)
	local z2=GetTerrainZ(newX2,newY2)
	perepad=zhero-z2
	return math.abs(perepad)
end