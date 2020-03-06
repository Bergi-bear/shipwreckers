gg_rct_Zone0 = nil
gg_rct_ZoneLaserGate0 = nil
gg_rct_SingleTorrentZone = nil
gg_rct_Combat0Zone = nil
gg_rct_Zone02In = nil
gg_rct_Zone02Out = nil
gg_rct_Spawn00 = nil
gg_rct_Zone03In = nil
gg_rct_Zone03Out = nil
gg_rct_Region_010 = nil
gg_rct_Region_011 = nil
gg_rct_Combat1Zone = nil
gg_rct_TestFog = nil
gg_rct_DeapZone1 = nil
gg_cam_CameraHATE = nil
gg_snd_AAA = nil
gg_snd_AAA1 = nil
gg_snd_Load = nil
gg_snd_CollectOB1 = nil
gg_trg_InitZone = nil
gg_trg_Button0IsDead = nil
gg_trg_Button12IsDead = nil
gg_trg_ResLeft = nil
gg_trg_ResRight = nil
gg_trg_InCombatZone = nil
gg_trg_InMineWay = nil
gg_trg_Button0to1 = nil
gg_trg_Barga = nil
gg_trg_EVENTMMB = nil
gg_trg_NonAttack = nil
gg_trg_sec1 = nil
gg_trg_StartMainTheme = nil
gg_unit_h002_0023 = nil
gg_unit_o001_0002 = nil
gg_dest_B000_0131 = nil
gg_dest_B000_0118 = nil
gg_dest_B006_0274 = nil
gg_dest_B000_0275 = nil
gg_dest_B000_0273 = nil
gg_rct_Zone04In = nil
gg_trg_Button3IsDead = nil
gg_dest_B000_0963 = nil
function InitGlobals()
end

function InitSounds()
    gg_snd_AAA = CreateSound("Units/Creeps/GoblinZeppelin/GoblinZeppelinWhat3", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_AAA, "GoblinZeppelinWhat")
    SetSoundDuration(gg_snd_AAA, 1838)
    SetSoundChannel(gg_snd_AAA, 0)
    SetSoundVolume(gg_snd_AAA, 110)
    SetSoundDistances(gg_snd_AAA, 0.0, 100000.0)
    SetSoundDistanceCutoff(gg_snd_AAA, 3000.0)
    gg_snd_AAA1 = CreateSound("Units/Creeps/GoblinZeppelin/GoblinZeppelinWhat4", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_AAA1, "GoblinZeppelinWhat")
    SetSoundDuration(gg_snd_AAA1, 1417)
    SetSoundChannel(gg_snd_AAA1, 0)
    SetSoundVolume(gg_snd_AAA1, 110)
    SetSoundDistances(gg_snd_AAA1, 0.0, 100000.0)
    SetSoundDistanceCutoff(gg_snd_AAA1, 3000.0)
    gg_snd_Load = CreateSound("Abilities/Spells/Other/LoadUnload/Loading.flac", false, true, true, 1, 1, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_Load, "LoadUnload")
    SetSoundDuration(gg_snd_Load, 740)
    SetSoundVolume(gg_snd_Load, 127)
    gg_snd_CollectOB1 = CreateSound("OverBoardGame/Collect2.flac", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundDuration(gg_snd_CollectOB1, 1601)
    SetSoundChannel(gg_snd_CollectOB1, 0)
    SetSoundVolume(gg_snd_CollectOB1, 127)
    SetSoundPitch(gg_snd_CollectOB1, 1.0)
    SetSoundDistances(gg_snd_CollectOB1, 300.0, 10000.0)
    SetSoundDistanceCutoff(gg_snd_CollectOB1, 3000.0)
    SetSoundConeAngles(gg_snd_CollectOB1, 0.0, 0.0, 127)
    SetSoundConeOrientation(gg_snd_CollectOB1, 0.0, 0.0, 0.0)
end

function CreateAllDestructables()
    local d
    local t
    local life
    gg_dest_B000_0118 = BlzCreateDestructableWithSkin(FourCC("B000"), -2432.0, -1600.0, 84.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0963 = BlzCreateDestructableWithSkin(FourCC("B000"), 3840.0, 2880.0, 84.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0275 = BlzCreateDestructableWithSkin(FourCC("B000"), -1472.0, 0.0, 354.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0273 = BlzCreateDestructableWithSkin(FourCC("B000"), -3264.0, 128.0, 174.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0131 = BlzCreateDestructableWithSkin(FourCC("B000"), -1600.0, 3008.0, 84.000, 1.000, 0, FourCC("B000"))
    gg_dest_B006_0274 = BlzCreateDestructableZWithSkin(FourCC("B006"), -2368.0, 640.0, -108.0, 270.000, 1.500, 0, FourCC("B006"))
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1236.2, 4326.5, 308.209, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -218.2, 5280.3, 308.209, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), 2449.9, -1278.2, 272.568, FourCC("e007"))
end

function CreateBuildingsForPlayer9()
    local p = Player(9)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -704.0, -1088.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -576.0, -2624.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 64.0, -3008.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 64.0, -2496.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 704.0, -3264.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 704.0, -2624.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -576.0, -3264.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -1216.0, -3008.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -3904.0, 2240.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -4416.0, 2240.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -4224.0, 2880.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -4864.0, 2880.0, 270.000, FourCC("h001"))
end

function CreateBuildingsForPlayer10()
    local p = Player(10)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("n003"), -1984.0, 6080.0, 270.000, FourCC("n003"))
    u = BlzCreateUnitWithSkin(p, FourCC("n003"), -1984.0, 4352.0, 270.000, FourCC("n003"))
    u = BlzCreateUnitWithSkin(p, FourCC("n003"), 704.0, 4352.0, 270.000, FourCC("n003"))
    u = BlzCreateUnitWithSkin(p, FourCC("n003"), 704.0, 6080.0, 270.000, FourCC("n003"))
    gg_unit_h002_0023 = BlzCreateUnitWithSkin(p, FourCC("h002"), 832.0, -1472.0, 270.000, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), 1216.0, -832.0, 270.000, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("n004"), -2368.0, 7808.0, 270.000, FourCC("n004"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), -6208.0, 6400.0, 270.000, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), -6272.0, 5696.0, 270.000, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), -6080.0, 5056.0, 270.000, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), -5632.0, 6848.0, 270.000, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), -4800.0, 6784.0, 270.000, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), -4352.0, 6464.0, 270.000, FourCC("h002"))
end

function CreateUnitsForPlayer10()
    local p = Player(10)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hbot"), -2984.9, 101.9, 2.767, FourCC("hbot"))
    gg_unit_o001_0002 = BlzCreateUnitWithSkin(p, FourCC("o001"), 2801.5, 2496.1, 177.920, FourCC("o001"))
    u = BlzCreateUnitWithSkin(p, FourCC("hbot"), -1729.2, 69.6, 171.573, FourCC("hbot"))
end

function CreateNeutralPassiveBuildings()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), 1408.0, 5504.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -1152.0, 3584.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), 384.0, -640.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -1152.0, -704.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -2368.0, -2880.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -5952.0, 5504.0, 270.000, FourCC("o000"))
end

function CreateNeutralPassive()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2985.8, 5702.8, 53.022, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2833.6, 5698.4, 308.209, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2213.9, 3535.3, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1541.1, -898.2, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1541.6, -678.4, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1638.8, -1032.0, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -3182.4, 488.6, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -3192.6, -177.9, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1565.6, 453.3, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1541.4, -131.3, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 2936.2, -3072.4, 245.969, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 2866.6, -2823.1, 253.298, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 2693.0, -3017.0, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e003"), -2708.5, 2585.8, 200.070, FourCC("e003"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1773.7, 1497.3, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2543.9, -2240.3, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 855.1, 323.7, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1125.6, 305.2, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e003"), 1011.0, 161.7, 200.070, FourCC("e003"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1009.5, -3207.5, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1202.0, -3198.8, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1416.3, 4627.9, 308.210, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2420.0, 3644.5, 357.748, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2619.5, 3644.5, 3.283, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2818.8, 3639.8, 345.796, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2431.7, 3848.2, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2603.5, 3837.4, 335.332, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2817.4, 3840.5, 69.411, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 524.7, 2255.7, 308.210, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), 3940.2, 2463.8, 250.782, FourCC("e007"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), 3941.5, 2201.7, 218.624, FourCC("e007"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer9()
    CreateBuildingsForPlayer10()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
    CreateUnitsForPlayer10()
end

function CreateAllUnits()
    CreateNeutralPassiveBuildings()
    CreatePlayerBuildings()
    CreateNeutralPassive()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_Zone0 = Rect(-3104.0, -1536.0, -2784.0, -1408.0)
    gg_rct_ZoneLaserGate0 = Rect(-2656.0, 544.0, -2112.0, 704.0)
    gg_rct_SingleTorrentZone = Rect(-1856.0, 1312.0, -1600.0, 1600.0)
    gg_rct_Combat0Zone = Rect(-1184.0, -160.0, 384.0, 1440.0)
    gg_rct_Zone02In = Rect(-1344.0, 1280.0, -1216.0, 1824.0)
    gg_rct_Zone02Out = Rect(-576.0, -384.0, -64.0, -256.0)
    gg_rct_Spawn00 = Rect(-576.0, 32.0, -128.0, 224.0)
    gg_rct_Zone03In = Rect(2464.0, 1632.0, 3136.0, 1920.0)
    gg_rct_Zone03Out = Rect(-1088.0, 2208.0, -800.0, 2976.0)
    gg_rct_Region_010 = Rect(-736.0, 3040.0, -416.0, 3296.0)
    gg_rct_Region_011 = Rect(-3232.0, 2080.0, -2144.0, 2944.0)
    we = AddWeatherEffect(gg_rct_Region_011, FourCC("LRaa"))
    EnableWeatherEffect(we, true)
    gg_rct_Combat1Zone = Rect(-2080.0, 4160.0, 800.0, 6176.0)
    gg_rct_TestFog = Rect(96.0, 6752.0, 1728.0, 8576.0)
    gg_rct_DeapZone1 = Rect(2016.0, 4896.0, 3104.0, 5440.0)
    gg_rct_Zone04In = Rect(3232.0, 2496.0, 3520.0, 2880.0)
end

function CreateCameras()
    gg_cam_CameraHATE = CreateCameraSetup()
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_ROTATION, 90.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_ANGLE_OF_ATTACK, 304.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_TARGET_DISTANCE, 1650.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_ROLL, 0.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    CameraSetupSetField(gg_cam_CameraHATE, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    CameraSetupSetDestPosition(gg_cam_CameraHATE, 0.0, 0.0, 0.0)
end

--CUSTOM_CODE
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 24.02.2020 22:15
---

function CreateDeadShip(x,y)

end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.02.2020 21:08
ReactionAI=1
UnitAI={}

function StartSheepAI(hero)
	if UnitAI[GetHandleId(hero)]==nil then
	--	print("Запущен первый прототип ИИ")
	else
		print("ОШИБКА, НЕВОЗМОЖНО ИЗМЕНИТЬ ТИП ИИ")
	end
	UnitAI[GetHandleId(hero)]={
		IsMove=true,
		IsAttack=false,
		IsEscape=false,
		RandomTimeFactor=GetRandomReal(-.5,.5)
	}
	local data=UnitAI[GetHandleId(hero)]
	TimerStart(CreateTimer(), ReactionAI+data.RandomTimeFactor, true, function()--поиск врага 1 секунда по умлочанию
		local e=nil
		local x,y=GetUnitXY(hero)
		local enemy=nil
		GroupEnumUnitsInRange(perebor,x,y,1000,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) and IsUnitVisible(e,GetOwningPlayer(hero)) and data.IsEscape==false then
				enemy=e
				data.IsAttack=true
				--print("Найден враг "..GetUnitName())
			end
			GroupRemoveUnit(perebor,e)
		end
		if enemy~=nil then
			local xe,ye=GetUnitXY(enemy)
			if IsUnitInRange(hero,enemy,100) then
				if data.IsEscape==false then
					local escapeX,escapeY=MoveXY(xe,ye,500,GetUnitFacing(hero)-180)
					--print("Слишком близко!")
					data.IsEscape=true
					data.IsAttack=false
					IssuePointOrder(hero,"move",escapeX,escapeY)
					TimerStart(CreateTimer(), 3, false, function()--3 секунды отсутпления
						DestroyTimer(GetExpiredTimer())
						data.IsEscape=false
						data.IsAttack=true
						--print("снова в бой")
					end)
				end
			else
				if data.IsEscape==false then
					if GetUnitCurrentOrder(hero)~=String2OrderIdBJ("move") then
						IssuePointOrder(hero,"move",xe,ye)
					end
					SingleCannon(hero)
				end
			end
		end
		if UnitAlive(hero)==false then
			DestroyTimer(GetExpiredTimer())
		--	print("умираю....")
		end
	end)
end
-------------------башенки
function StartTowerAI(hero)
	if UnitAI[GetHandleId(hero)]==nil then
		--	print("Запущен первый прототип ИИ")
	else
		print("ОШИБКА, НЕВОЗМОЖНО ИЗМЕНИТЬ ТИП ИИ")
	end
	UnitAI[GetHandleId(hero)]={
		IsAttack=false,
		FocusUnit=nil,
		RandomTimeFactor=GetRandomReal(-.5,.5)
	}
	local data=UnitAI[GetHandleId(hero)]
	TimerStart(CreateTimer(), ReactionAI+data.RandomTimeFactor, true, function()--поиск врага 1 секунда по умлочанию
		local e=nil
		local x,y=GetUnitXY(hero)
		local enemy=nil
		GroupEnumUnitsInRange(perebor,x,y,2000,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil or enemy~=nil then break end
			if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) and IsUnitVisible(e,GetOwningPlayer(hero)) then
				enemy=e
				data.IsAttack=true
				--print("Найден враг "..GetUnitName())
			end
			GroupRemoveUnit(perebor,e)
		end

		if data.IsAttack and data.FocusUnit~=enemy then
			SetUnitLookAt(hero, 'bone_turret', enemy, 0, 0, 90)
			data.FocusUnit=enemy
		end

		if enemy~=nil then
			if IsUnitInRange(hero,enemy,1800) then
				local xe,ye=GetUnitXY(enemy)
				local angle=AngleBetweenXY(xe,ye,x,y)/bj_DEGTORAD
				local dist=DistanceBetweenXY(x,y,xe,ye)
				CreateArtToss(hero,"Abilities/Spells/Other/Volcano/VolcanoMissile.mdl",angle-180,dist,3)
			else
				data.IsAttack=false
				data.FocusUnit=nil
			end
		end
		if UnitAlive(hero)==false then
			DestroyTimer(GetExpiredTimer())
			--	print("умираю....")
		end
	end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 22.02.2020 21:14
function ActivatedAllTower()
	local e--временный юнит
	local k=0
	local id=FourCC('h002')
	GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and GetUnitTypeId(e)==id then
			k=k+1
			StartTowerAI(e)
		end
		GroupRemoveUnit(perebor,e)
	end
	--print("Запущено башен: "..k)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 24.02.2020 13:40

function RegisterAllAmmoBoxes(hero)
	local gg_trg_RANGE = CreateTrigger()
	TriggerRegisterUnitInRangeSimple(gg_trg_RANGE, 150, hero)

	TriggerAddAction(gg_trg_RANGE, function()
		local AmmoBox=GetTriggerUnit()
		local IsResurrected=false
		local IsKill=false
		--print("any")
		if IsUnitZCollision(hero,GetUnitZ(AmmoBox)) then
			if  GetUnitTypeId(AmmoBox)==FourCC('e002') then-- простой ящик
				--print("мммм")
				HeroUpdateWeaponCharges(hero,1,-100)
				HeroUpdateWeaponCharges(hero,2,-100)
				IsResurrected=true
				IsKill=true
			elseif GetUnitTypeId(AmmoBox)==FourCC('e003') or GetUnitTypeId(AmmoBox)==FourCC('e006') then
				if Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Rocket==false then
					Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Rocket=true
				end
				HeroUpdateWeaponCharges(hero,3,-50)
				IsResurrected=false
				IsKill=true
			elseif GetUnitTypeId(AmmoBox)==FourCC('e007') then
				if Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Fire==false then
					Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Fire=true
				end
				HeroUpdateWeaponCharges(hero,4,-300)
				IsResurrected=false
				IsKill=true
			elseif GetUnitTypeId(AmmoBox)==FourCC('e008') then
				if Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Toss==false then
					Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Toss=true
				end
				HeroUpdateWeaponCharges(hero,5,-15)
				IsResurrected=false
				IsKill=true
			elseif GetUnitTypeId(AmmoBox)==FourCC('e009') then
				if Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Barrel==false then
					Ammo[GetPlayerId(GetOwningPlayer(hero))].Available.Barrel=true
				end
				HeroUpdateWeaponCharges(hero,6,-10)
				IsResurrected=false
				IsKill=true
			end

			if UnitAlive(AmmoBox) and IsKill then
				local x,y=GetUnitXY(AmmoBox)
				local p=GetOwningPlayer(AmmoBox)
				local id=GetUnitTypeId(AmmoBox)
				KillUnit(AmmoBox)
				PlaySoundAtPointBJ( gg_snd_CollectOB1, 100, Location(GetUnitXY(hero)), 0 )
				if IsResurrected then
					TimerStart(CreateTimer(), 60, false, function()
						local new=CreateUnit(p,id,x,y,0)
						SetUnitAnimation(new,"Birth")
					end)
				end
			end
		end
	end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 22.02.2020 18:00
---
function RegisterAnyCheckpointSave()
	SetMaxCheckpointSaves(3)
	local gg_trg_RANGE = CreateTrigger()
	local e
	local k=0
	local id=FourCC('o000')--верфь
	GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and GetUnitTypeId(e)==id then
			k=k+1

			TriggerRegisterUnitInRangeSimple(gg_trg_RANGE, 256, e)
		end
		GroupRemoveUnit(perebor,e)
	end

	TriggerAddAction(gg_trg_RANGE, function()
		local hero=GetTriggerUnit()
		local x,y=GetUnitXY(hero)
		local e
		local id=FourCC('o000')--верфь
		--print(GetUnitName(hero).." 1")
		HealUnit(hero,9999)
		GroupEnumUnitsInRange(perebor,x,y,500,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id and GetOwningPlayer(e)~=GetOwningPlayer(hero)  then
				local pid=GetPlayerId(GetOwningPlayer(hero))
				SetUnitOwner(e,GetOwningPlayer(hero),true)
				SaveGameCheckpoint("Ship",true)
				--print(GetUnitName(hero))
				DefineStartLocation(0, x, y)
				SetPlayerStartLocation(GetOwningPlayer(hero),0)

				--добавляем, чуть чуть чуть боеприпасов для каждого разблокированного оружия
				if Ammo[pid].Available.Single then
					HeroUpdateWeaponCharges(hero,1,-50)
				end
				if Ammo[pid].Available.Board then
					HeroUpdateWeaponCharges(hero,2,-50)
				end
				if Ammo[pid].Available.Rocket then
					HeroUpdateWeaponCharges(hero,3,-10)
				end
				if Ammo[pid].Available.Fire then
					HeroUpdateWeaponCharges(hero,4,-100)
				end
				if Ammo[pid].Available.Toss then
					HeroUpdateWeaponCharges(hero,5,-5)
				end
				if Ammo[pid].Available.Barrel then
					HeroUpdateWeaponCharges(hero,6,-5)
				end
				if Ammo[pid].Available.Light then
					HeroUpdateWeaponCharges(hero,7,-10)
				end
				if Ammo[pid].Available.Saw then
					--HeroUpdateWeaponCharges(hero,2,-10)
					--ничего, это оружие бесконечное
				end
				if Ammo[pid].Available.Oil then
					HeroUpdateWeaponCharges(hero,9,-10)
				end
			end
			GroupRemoveUnit(perebor,e)
		end
	end)
end

function HealUnit(hero,amount)
	local p=GetOwningPlayer(hero)
	local MaxHP=BlzGetUnitMaxHP(hero)
	local CurrentHP=GetUnitState(hero,UNIT_STATE_LIFE)
	local LoosingHP=MaxHP-CurrentHP
	local OverHeal=amount-LoosingHP
	local TotalHeal=amount
	if LoosingHP<=amount then TotalHeal=LoosingHP	end
	SetUnitState(hero,UNIT_STATE_LIFE,CurrentHP+TotalHeal)
	if TotalHeal>1 then
		FlyTextTagLumberBounty(hero,"+"..R2I(TotalHeal),p)
	end
	return OverHeal
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.02.2020 13:11
---
function CreateTorrent(x,y,size,zMax)
	local torrent=nil
	local z=GetTerrainZ(x,y)
	local IsWater=false
	if size==nil then size=1 end
	if zMax==nil then zMax=size*50 end
	if z<=-80 then
		torrent=AddSpecialEffect("Torrent.mdl",x,y)
		BlzSetSpecialEffectMatrixScale(torrent,size,size,size/10)
		DestroyEffect(torrent)
		IsWater=true
		if size>=3 then
			UnitFlyTorrentInRange(x,y,size*50,zMax)
		end
	end
	return IsWater
end

function UnitFlyTorrentInRange(x,y,range,zMax)
	local e--временный юнит
	if zMax==nil then zMax=110 end
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and GetUnitFlyHeight(e)<=10 then
			FlyUnitOnTorrent(e,zMax)

			SetUnitPathing(e,false)

			if IsUnitType(e,UNIT_TYPE_HERO) then
				local data=HERO[UnitGetPid(e)]
				data.OnTorrent=true
				local distance=DistanceBetweenXY(x,y,GetUnitX(e),GetUnitY(e))
				local angle=AngleBetweenXY(x,y,GetUnitX(e),GetUnitY(e))/bj_DEGTORAD
				UnitAddForce(e,angle,distance/16,zMax)
				--print(distance)
			else
				UnitCollisionOFF(e)
			end
		end
		GroupRemoveUnit(perebor,e)
	end
end

function UnitGetPid(hero)
	return GetPlayerId(GetOwningPlayer(hero))
end


function FlyUnitOnTorrent(hero,MaxHeight)
	local i=0
	local speed=10
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=GetUnitXY(hero)
		---local nx,ny=MoveXY(x,y,speed,angle)
		local f=ParabolaZ(MaxHeight, MaxHeight,i*speed)
		local z=GetUnitZ(hero)
		local zGround=GetTerrainZ(x,y)
		SetUnitZ(hero,f)
		--print("z="..z)
		--print("zGround="..zGround)
		i=i+1
		if  i>5 and z<=zGround+1 then--z<=-89 and
			--UnitRemoveAbility(hero,FourCC('Aeth'))
			--SetUnitPathing(hero,true)
			UnitRemoveAbility(hero,FourCC('B000'))
			if IsUnitType(hero,UNIT_TYPE_HERO) then
				local data=HERO[UnitGetPid(hero)]
				--IssueImmediateOrder(hero,"stop")
				data.OnTorrent=false
				data.OnWater=true
				SetUnitPathing(hero,true)
				--print("false")
			end
			--print("end")
			DestroyTimer(GetExpiredTimer())
			CreateTorrent(x,y)
		end
		if i>=100 then
			DestroyTimer(GetExpiredTimer())
			print("ERROR")
		end
	end)
end



function WaveEffect(eff)
	local i=0
	local wave=50
	local deep=BlzGetLocalSpecialEffectZ(eff)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local f=SinBJ(i*wave)
		BlzSetSpecialEffectZ(eff,f+deep)
		i=i+0.3
		if i>=wave then
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function ExplodeEffect(eff,size)
	local onGround=false
	local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
	local explode=AddSpecialEffect("Abilities/Spells/Other/TinkerRocket/TinkerRocketMissile.mdl",x,y)
	BlzSetSpecialEffectScale(explode,size)
	DestroyEffect(explode)
	onGround=CreateTorrent(x,y,size)
	RemoveEffect(eff)
	return onGround
end

function EffectAddExplodedTimer(eff,time,hero)
	local sec=time
	local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
	TimerStart(CreateTimer(), 1, true, function()
		if sec>0 then
			FlyTextTagMissXY(x,y,sec,GetOwningPlayer(hero))
		end
		sec=sec-1
		if sec<0 then
			ExplodeEffect(eff,3)
			UnitDamageArea(hero,500,x,y,300)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function RemoveEffect (eff)
	BlzSetSpecialEffectPosition(eff,4000,4000,-200)
	DestroyEffect(eff)
end
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



FrameSelecter={}
VisualCharges={}


function CreateWeaponFrame()
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
--[[
	local new_Frame = BlzCreateFrameByType("SPRITE", "justAName", frame_owner, "WarCraftIIILogo", 0)
	BlzFrameSetPoint(new_Frame, FRAMEPOINT_BOTTOMLEFT, frame_relative, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
	BlzFrameSetSize(new_Frame, 1., 1.)
	BlzFrameSetScale(new_Frame, 1.)
	BlzFrameSetModel(new_Frame, "selecter1.mdx", 0)
]]



	--NewButton()
	local next=0.039
	for i = 0, 8 do
		local face = BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face,"", 0)
		local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)
		local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)
		BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)
		BlzFrameSetText(new_FrameChargesText, "0")
		BlzFrameSetAllPoints(faceHover, face)
		BlzFrameSetTooltip(faceHover, tooltip)
		BlzFrameSetTexture(face, texture[i+1],0, true)
		BlzFrameSetTexture(charges, "ChargesTexture.blp", 0, true)
		BlzFrameSetSize(face, 0.04, 0.04)
		BlzFrameSetSize(charges, 0.04, 0.012)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_TOPLEFT, next+next+next*i, next)
		BlzFrameSetAbsPoint(charges, FRAMEPOINT_TOPLEFT, next+next+next*i, next*1.3)
		BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_TOP, next+next+next*i, next*3)
		BlzFrameSetSize(tooltip, 0.15, 0.08)
		BlzFrameSetText(BlzGetFrameByName("BoxedTextValue",0), description[i+1])
		BlzFrameSetText(BlzGetFrameByName("BoxedTextTitle",0), weaponName[i+1])
		--if i==0 then
		local buttonsprite = BlzCreateFrameByType("SPRITE", "justAName", face, "WarCraftIIILogo", 0)
		BlzFrameSetPoint(buttonsprite, FRAMEPOINT_BOTTOMLEFT, face, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
		BlzFrameSetSize(buttonsprite, 1., 1.)
		BlzFrameSetScale(buttonsprite, 1.)
		BlzFrameSetModel(buttonsprite, "selecter1.mdx", 0)
		FrameSelecter[i+1]=buttonsprite
		VisualCharges[i+1]=new_FrameChargesText
		if i>= 1 then
			BlzFrameSetVisible(buttonsprite,false)
		end

			--[[проблемный блок зарядов
			local new_Frame = BlzCreateFrame('ScriptDialogButton', face, 0, 0)
			local new_FrameImage = BlzCreateFrameByType("BACKDROP", "ButtonIcon", new_Frame, "", 0)
			local new_FrameCharges = BlzCreateFrameByType("BACKDROP", "ButtonCharges", new_Frame, "", 0)
			local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", new_FrameCharges, "", 0)
			BlzFrameSetPoint(new_FrameCharges, FRAMEPOINT_BOTTOMRIGHT, new_FrameImage, FRAMEPOINT_BOTTOMRIGHT, -0.002, 0.002-next)
			BlzFrameSetSize(new_FrameCharges, 0.012, 0.012)
			BlzFrameSetTexture(new_FrameCharges, "ChargesTexture.blp", 0, true)
			BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, new_FrameCharges, FRAMEPOINT_CENTER, 0.,0.)
			BlzFrameSetVisible(new_FrameCharges, false)
			BlzFrameSetText(new_FrameChargesText, "0")]]


		--end

		local t = CreateTrigger()
		BlzTriggerRegisterFrameEvent(t, tooltip, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, faceHover, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, face, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(t,function()
			print("click "..i) -- вот тут не работает
		end)
	end
end

function SwitchWeaponVisual(pid,index)
	if GetLocalPlayer()==Player(pid) then
		for i=1, #FrameSelecter do
			BlzFrameSetVisible(FrameSelecter[i],false)
		end
		BlzFrameSetVisible(FrameSelecter[index],true)
	end
end

function HeroUpdateWeaponCharges(hero,index,amount)
	local pid=GetPlayerId(GetOwningPlayer(hero))
	local data=Ammo[pid]
	local count=0
	local HasAmmo=true
	--слабонервным не смотреть
	if index==1 then
		data.Count.Single=data.Count.Single-amount
		count=data.Count.Single
	elseif index==2 then
		data.Count.Board=data.Count.Board-amount
		count=data.Count.Board
	elseif index==3 then
		data.Count.Rocket=data.Count.Rocket-amount
		count=data.Count.Rocket
	elseif index==4 then
		data.Count.Fire=data.Count.Fire-amount
		count=data.Count.Fire
	elseif index==5 then
		data.Count.Toss=data.Count.Toss-amount
		count=data.Count.Toss
	elseif index==6 then
		data.Count.Barrel=data.Count.Barrel-amount
		count=data.Count.Barrel
	elseif index==7 then
		data.Count.Light=data.Count.Light-amount
		count=data.Count.Light
	elseif index==8 then
		data.Count.Saw=data.Count.Saw-amount
		count=data.Count.Saw
	elseif index==9 then
		data.Count.Oil=data.Count.Oil-amount
		count=data.Count.Oil
	end

	if count+amount<amount then
		HasAmmo=false
		if index==1 then
			count=data.Count.Single==0
		elseif index==2 then
			count=data.Count.Board==0
		elseif index==3 then
			count=data.Count.Rocket==0
		elseif index==4 then
			count=data.Count.Fire==0
		elseif index==5 then
			count=data.Count.Toss==0
		elseif index==6 then
			count=data.Count.Barrel==0
		elseif index==7 then
			count=data.Count.Light==0
		elseif index==8 then
			count=data.Count.Saw==0
		elseif index==9 then
			count=data.Count.Oil==0
		end
		--print(count.." мало патронов")
	end
	--print(count)
	if GetLocalPlayer()==Player(pid) then
	BlzFrameSetText(VisualCharges[index], count )
	end
	return HasAmmo
end




ButtonList={}
function NewButton(button_type, texture, size_x, size_y, relative_frame, frame_point_from, frame_point_to, offset_x, offset_y, parent_frame)
	local new_Frame = BlzCreateFrame('ScriptDialogButton', parent_frame, 0, 0)
	local new_FrameImage = BlzCreateFrameByType("BACKDROP", "ButtonIcon", new_Frame, "", 0)
	local new_FrameCharges = BlzCreateFrameByType("BACKDROP", "ButtonCharges", new_Frame, "", 0)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", new_FrameCharges, "", 0)


	ButtonList[GetHandleId(new_Frame)] = {
		button_type = button_type,
		item = nil,
		button = new_Frame,
		image = new_FrameImage,
		original_texture = texture,
		charges_frame = new_FrameCharges,
		charges_text_frame = new_FrameChargesText,
		sprite = nil
	}

	--FrameRegisterNoFocus(new_Frame)
	--FrameRegisterClick(new_Frame, texture)

	--BlzTriggerRegisterFrameEvent(ClickTrigger, new_Frame, FRAMEEVENT_CONTROL_CLICK)
	--BlzTriggerRegisterFrameEvent(EnterTrigger, new_Frame, FRAMEEVENT_MOUSE_ENTER)
	--BlzTriggerRegisterFrameEvent(LeaveTrigger, new_Frame, FRAMEEVENT_MOUSE_LEAVE)


	BlzFrameSetPoint(new_FrameCharges, FRAMEPOINT_BOTTOMRIGHT, new_FrameImage, FRAMEPOINT_BOTTOMRIGHT, -0.002, 0.002)
	BlzFrameSetSize(new_FrameCharges, 0.012, 0.012)
	BlzFrameSetTexture(new_FrameCharges, "ChargesTexture.blp", 0, true)
	BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, new_FrameCharges, FRAMEPOINT_CENTER, 0.,0.)
	BlzFrameSetVisible(new_FrameCharges, false)
	BlzFrameSetText(new_FrameChargesText, "0")

	BlzFrameSetPoint(new_Frame, frame_point_from, relative_frame, frame_point_to, offset_x, offset_y)
	BlzFrameSetSize(new_Frame, size_x, size_y)
	BlzFrameSetTexture(new_FrameImage, texture, 0, true)
	BlzFrameSetAllPoints(new_FrameImage, new_Frame)

	return new_Frame
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.02.2020 22:34
---

function hideEverything()
	BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
	for i = 1,11 do
		BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false)
	end
	BlzFrameSetSize(BlzGetFrameByName("CommandButton_0", 0),0,0)--сколлапсировал в точку
	local GAME_UI     = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
	local WORLD_FRAME = BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0)
	BlzHideOriginFrames(true)
	BlzFrameSetAllPoints(WORLD_FRAME, GAME_UI)
	BlzFrameSetVisible(BlzGetFrameByName("CinematicPortrait", 0), true)
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0), true)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.02.2020 21:25
---
DummyID=FourCC('e000')
function CastArea(caster,id,x,y,range, xPoz,yPoz)
	local dx,dy=x,y
	if xPoz~=nil then
		print("позиция")
		dx,dy=xPoz,yPoz
	end
	local dummy=CreateUnit(GetOwningPlayer(caster), DummyID, dx, dy, 0)--
	if UnitAddAbility(dummy,id) then
	else
		print("ошибка добавления способности")
	end
	---для одиночек

	if range==0 or range==nil then
		--IssuePointOrder(dummy,"blizzard",x,y)-- на точку
		Cast(dummy,x,y)
		--IssuePointOrder(dummy,"acidbomb",x,y)-- на точку
	end
	local e--временный юнит
	GroupEnumUnitsInRange(perebor,x,y,range,null)
	while true do
		e = FirstOfGroup(perebor)
		--print("перебор юнитов в радиусе "..range.." "..GetUnitName(e))
		if e == nil then break end
		if UnitAlive(e) and e~=dummy then -- and GetUnitCurrentOrder(unit)~="attack" then
			print(GetUnitName(e).." в переборе")
			--IssueTargetOrder(dummy,"antimagicshell",e)-- на юнита
			--IssueTargetOrder(dummy,"acidbomb",e)-- на юнита
			Cast(dummy,0,0,e)
		end
		GroupRemoveUnit(perebor,e)
	end
	UnitApplyTimedLife(dummy,FourCC('e000'),3)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.02.2020 12:47
---
function CreateAndForceBullet(hero,angle,speed,effectmodel,xs,ys)
	local xhero,yhero=GetUnitX(hero),GetUnitY(hero)
	local zhero=GetUnitZ(hero)+60
	local bullet=AddSpecialEffect(effectmodel,xs,ys)
	--local bam=nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	--local cloud=nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	--local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local CollisionEnemy=false
	local CollisisonDestr=false
	--print("Скорость корабля"..data.CurrentSpeed)
	BlzSetSpecialEffectScale(bam,0.1)
	BlzSetSpecialEffectScale(cloud,0.02)
	DestroyEffect(bam)
	DestroyEffect(cloud)
	BlzSetSpecialEffectZ(bullet,zhero)
	--print(zhero)
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y,z=BlzGetLocalSpecialEffectX(bullet),BlzGetLocalSpecialEffectY(bullet),BlzGetLocalSpecialEffectZ(bullet)
		local zGround=GetTerrainZ(MoveX(x,speed*2,angle),MoveY(y,speed*2,angle))
		BlzSetSpecialEffectPosition(bullet,MoveX(x,speed,angle),MoveY(y,speed,angle),z-2)
		BlzSetSpecialEffectPosition(cloud,MoveX(x,speed/3,angle),MoveY(y,speed/3,angle),z-2)
		--local xbam,ybam=BlzGetLocalSpecialEffectX(bam),BlzGetLocalSpecialEffectY(bam)
		--BlzSetSpecialEffectPosition(bam,MoveX(xbam,2*data.CurrentSpeed,GetUnitFacing(hero)),MoveY(ybam,2*data.CurrentSpeed,GetUnitFacing(hero)),z-50)
		local ZBullet=BlzGetLocalSpecialEffectZ(bullet)
		--print("zGround ="..zGround.."z= "..z)
		--BlzSetSpecialEffectPosition(bam,MoveX(GetUnitX(hero),120,GetUnitFacing(hero)),MoveY(GetUnitY(hero),120,GetUnitFacing(hero)),z)
		CollisionEnemy=UnitDamageArea(hero,100,x,y,100,ZBullet)
		CollisisonDestr=PointContentDestructable(x,y,100,false)
		if z<=-90 or zGround+z>=-70+z or CollisionEnemy or CollisisonDestr then
			PointContentDestructable(x,y,100,true)
			if z<=-90 then
				CreateTorrent(x,y)
				BlzSetSpecialEffectPosition(bullet,4000,4000,0)
			end
			--print("Условие урона прошло")
			UnitDamageArea(hero,100,x,y,200,ZBullet)
			DestroyEffect(bullet)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function SingleCannon(hero)
	local angle=GetUnitFacing(hero)
	local x=MoveX(GetUnitX(hero),110,angle)
	local y=MoveY(GetUnitY(hero),110,angle)
	local modelEff="Abilities/Weapons/BoatMissile/BoatMissile.mdl"
	--local modelEff="bluegas4"
	CreateAndForceBullet(hero,angle,30,modelEff,x,y)
end

---@param board real
function BoardCannon(hero,board,cannon) -- left -90 right+90
	local facing=GetUnitFacing(hero)
	local angle=facing+board
	local x=MoveX(GetUnitX(hero),60,angle)
	local y=MoveY(GetUnitY(hero),60,angle)
	local inverse=-1
	if board==-90 then inverse =1 end
	local x1=MoveX(x,30,facing)
	local y1=MoveY(y,30,facing)
	local x2=MoveX(x,-30,facing)
	local y2=MoveY(y,-30,facing)
	local x3=MoveX(x,-60,facing)
	local y3=MoveY(y,-60,facing)
	local x4=MoveX(x,-90,facing)
	local y4=MoveY(y,-90,facing)
	if cannon>=1 then
		CreateAndForceBullet(hero,angle,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x,y)--Центр
	end
	if cannon>=2 then
		CreateAndForceBullet(hero,angle+5*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x1,y1)--Спереди
	end
	if cannon>=3 then
		CreateAndForceBullet(hero,angle-5*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x2,y2)--Сзади 1
	end
	if cannon>=4 then
		CreateAndForceBullet(hero,angle-10*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x3,y3)--Сзади 2
	end
	if cannon>=5 then
		CreateAndForceBullet(hero,angle-15*inverse,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x4,y4)--Сзади 3
	end
end

function CreateFire(hero,board)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local facing=GetUnitFacing(hero)
	--board=board+90
	local angle=facing+board
	local x=MoveX(GetUnitX(hero),60,angle)
	local y=MoveY(GetUnitY(hero),60,angle)

	--local fire=AddSpecialEffect("FireGun.mdl",x,y)
	local fire=AddSpecialEffect("Flame Thrower.mdl",x,y)
	local inverse=1
	if board==1 then inverse=-1 end
	BlzSetSpecialEffectMatrixScale(fire,1,1,1)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		--local xf,yf,zf=BlzGetLocalSpecialEffectX(fire),BlzGetLocalSpecialEffectY(fire),BlzGetLocalSpecialEffectZ(fire)
		local xhero,yhero=GetUnitX(hero),GetUnitY(hero)
		--local nx,ny=MoveX(xhero,80,GetUnitFacing(hero)-board),MoveY(yhero,80,GetUnitFacing(hero)-board)
		local nx,ny=MoveXY(xhero,yhero,10,GetUnitFacing(hero)-board)
		local z=GetUnitZ(hero)
		BlzSetSpecialEffectPosition(fire,nx,ny,z-140+89)
		BlzPlaySpecialEffect(fire,ANIM_TYPE_BIRTH)
		--HeroUpdateWeaponCharges(hero,4,1)

		--print("z Огня="..BlzGetLocalSpecialEffectZ(fire))

		if board==0 then
			BlzSetSpecialEffectYaw(fire,math.rad(GetUnitFacing(hero)+board-5-90))
			UnitDamageLine(hero,10,nx,ny,80,80*6,GetUnitFacing(hero)+board-5-90)
		else
			local problem=GetUnitFacing(hero)+board-5+90
			--print("проблемный угол="..problem)
			BlzSetSpecialEffectYaw(fire,math.rad(problem))
			UnitDamageLine(hero,10,nx,ny,80,80*6,GetUnitFacing(hero)+board-5+90)
		end
		if (data.ReleaseRMB==false and board==0)  then
			--print("отключен вручную")
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
			BlzPlaySpecialEffect(fire,ANIM_TYPE_DEATH)
		end
		if (data.ReleaseLMB==false and board==1)  then
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
			BlzPlaySpecialEffect(fire,ANIM_TYPE_DEATH)
		end
		if Ammo[GetPlayerId(GetOwningPlayer(hero))].Count.Fire<=0 then
			--print("закончились заряды")
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
			BlzPlaySpecialEffect(fire,ANIM_TYPE_DEATH)
		end
		HeroUpdateWeaponCharges(hero,4,1)
	end)
end

function CreateBarrel(hero,angle,dist)
	local x,y=GetUnitXY(hero)
	local id=GetPlayerId(GetOwningPlayer(hero))
	local barrel=AddSpecialEffect("Barrel_Unit.mdl",x,y)
	if angle==nil then	angle=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD end
	if dist==nil then dist=DistanceBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id]) end
	if dist>=200 then dist=200 end
	if dist<=100 then dist=100 end
	BlzSetSpecialEffectYaw(barrel,math.rad(angle))
	BlzPlaySpecialEffect(barrel,ANIM_TYPE_WALK)
	BlzSetSpecialEffectZ(barrel,GetUnitZ(hero))
	JumpEffect(barrel,dist/20,150,angle,dist,hero,1)
end

function CreateArtToss(hero,effectmodel,angle,dist,flag)
	local x,y=GetUnitXY(hero)
	local id=GetPlayerId(GetOwningPlayer(hero))
	local art=AddSpecialEffect(effectmodel,x,y)
	if angle==nil then angle=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD end
	if dist==nil then dist=DistanceBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id]) end
	if dist>=1200 then dist=1200 end
	if dist<=200 then dist=200 end
	local speed=dist/50
	BlzSetSpecialEffectYaw(art,math.rad(angle))
	---BlzPlaySpecialEffect(barrel,ANIM_TYPE_WALK)
	if flag==nil then
		JumpEffect(art,speed,700,angle,dist,hero,2)
	elseif flag==3 then--Стрельба простых пушек
		JumpEffect(art,speed*2,200,angle,dist*.7,hero,flag,GetUnitZ(hero)+150)--осколочный мелкий
	else
		JumpEffect(art,speed,300,angle,dist,hero,flag)--любой другой
	end
end

function JumpEffect(eff,speed, maxHeight,angle,distance,hero,flag,ZStart)
	local i=0
	if ZStart==nil then ZStart=GetUnitZ(hero) end
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
		local nx,ny=MoveXY(x,y,speed,angle)
		local f=ParabolaZ(maxHeight,distance,i*speed)+ZStart
		local z=BlzGetLocalSpecialEffectZ(eff)
		local zGround=GetTerrainZ(nx,ny)
		BlzSetSpecialEffectPosition(eff,nx,ny,f)
		i=i+1
		if i==10 then
			if flag==4 then
				EffectAddRegistrationCollision(eff,hero,150,0,1)
			end
		end


		if z<=zGround and i>5 then
			if flag==nil then -- без флага

			end

			if flag==1 then -- бочка со взрывчаткой и таймером
				BlzPlaySpecialEffect(eff,ANIM_TYPE_STAND)
				if CreateTorrent(nx,ny) then
					WaveEffect(eff)
					EffectAddExplodedTimer(eff,3,hero)
				else
					--BlzSetSpecialEffectZ(eff,z+30)
					ExplodeEffect(eff,3)
					UnitDamageArea(hero,500,nx,ny,250)
				end
			elseif flag==2 then -- навесной разделяющийся
				CreateTorrent(nx,ny)
				if ExplodeEffect(eff,3)==false then-- взрыв не на воде
					--print("разделяемся")
					for i=1,7 do
						local cluster=AddSpecialEffect("Abilities/Spells/Other/Volcano/VolcanoMissile.mdl",nx,ny)
						BlzSetSpecialEffectZ(cluster,z)
						BlzSetSpecialEffectScale(cluster,0.4)
						JumpEffect(cluster,10,GetRandomInt(50,150),GetRandomInt(0,359),GetRandomInt(50,200),hero,3)
					end
				end
				DestroyEffect(eff)
				UnitDamageArea(hero,300,nx,ny,150)
			elseif  flag==3 then-- осколки
				CreateTorrent(nx,ny)
				DestroyEffect(eff)
				UnitDamageArea(hero,100,nx,ny,200,z)
			elseif  flag==4 then-- выпрыгнул гоблин
				if CreateTorrent(nx,ny,0.1) then
					BlzSetSpecialEffectZ(eff,-90)

				else
					DestroyEffect(eff)
				end
			end
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function EffectAddRegistrationCollision(eff,hero,range,duration,flag)
	local sec=duration
	local infinity=false
	if duration==nil or duration==0 then infinity=true end
	TimerStart(CreateTimer(), 0.1, true, function()
		local x,y,z=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff),BlzGetLocalSpecialEffectZ(eff)
		local e=nil
		GroupEnumUnitsInRange(perebor,x,y,range,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and IsUnitZCollision(e,z) then
				--print("Эффет столкнулся с "..GetUnitName(e))
				if flag==1 then-- орк в уточке
					RemoveEffect(eff)
					PlaySoundAtPointBJ( gg_snd_Load, 100, Location(x,y), 0 )
					DestroyTimer(GetExpiredTimer())
					HealUnit(hero,100)

				elseif flag==2 then-- глубоководная мина
					if IsUnitEnemy(e,GetOwningPlayer(hero)) then
						UnitDamageArea(hero,100,x,y,200,z)
					end
				end
			end
			GroupRemoveUnit(perebor,e)
		end
		sec=sec-1
		if sec<0 and infinity==false then
			DestroyEffect(eff)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.02.2020 12:24



function InitDamage()
	local DamageTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGING) -- До вычета брони
		TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGED) -- После вычета брони
	end
	TriggerAddAction(DamageTrigger, function()
		local damage     = GetEventDamage() -- число урона
		local damageType = BlzGetEventDamageType()
		if damage < 1 then return end

		local eventId         = GetHandleId(GetTriggerEventId())
		local isEventDamaging = eventId == GetHandleId(EVENT_PLAYER_UNIT_DAMAGING)
		local isEventDamaged  = eventId == GetHandleId(EVENT_PLAYER_UNIT_DAMAGED)

		local target          = GetTriggerUnit() -- тот кто получил урон
		local targetHandleId  = GetHandleId(target)
		local caster          = GetEventDamageSource() -- тот кто нанёс урон
		local casterOwner     = GetOwningPlayer(caster)

		if isEventDamaged then
			if GetUnitTypeId(target)==DummyID  then--попадание в даммика эффект ракеты
				local x,y=GetUnitX(target),GetUnitY(target)
				ShowUnit(target, false)
				CreateTorrent(x,y)
				UnitDamageArea(target,0,GetUnitX(target),GetUnitY(target),150)
			end
			if damage>=200 then
				local angle=GetRandomReal(0,360)
				local dist=200
				CreateArtToss(target,"GoblinRubberDuck.mdl",angle,dist,4)
				local r=GetRandomInt(1,2)
				if r==1 then
					PlaySoundAtPointBJ( gg_snd_AAA, 100, Location(GetUnitX(target),GetUnitY(target)), 0 )
				else
					PlaySoundAtPointBJ( gg_snd_AAA1, 100, Location(GetUnitX(target),GetUnitY(target)), 0 )
				end
				--JumpEffect
			end
		end
	end)
end




perebor=CreateGroup()
function UnitDamageArea(u,damage,x,y,range,ZDamageSource,EffectModel)
	local OnlyCHK=false
	local isdamage=false
	local e=nil
	if ZDamageSource==nil then ZDamageSource=GetUnitZ(u)+60 end
	--print("Поиск целей в на высоте "..ZDamageSource)
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(u))  and IsUnitZCollision(e,ZDamageSource) then
			UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			isdamage=true
			if EffectModel~=nil then
				--print("эффеет")
				local DE=AddSpecialEffect(EffectModel,GetUnitX(e),GetUnitY(e))
				BlzSetSpecialEffectZ(DE,ZDamageSource)
				DestroyEffect(DE)
			end
		end
		GroupRemoveUnit(perebor,e)
	end
	if PointContentDestructable(x,y,range,true,1+damage/10) then	isdamage=true	end
	return isdamage
end

function IsUnitZCollision(hero,ZDamageSource)
	local zcollision=false
	local z=GetUnitZ(hero)
	--print("Высота снаряда="..ZDamageSource.."Высота юнита="..z)
	if  ZDamageSource+60>=z and ZDamageSource-60<=z then
		zcollision=true
	end
	return zcollision
end


function UnitDamageLine(u,damage,x,y,range,distance,angle)
	local isdamage=false
	local nx,ny
	for i=0,distance/range do
		nx=MoveX(x,i*range,angle)
		ny=MoveY(y,i*range,angle)
		UnitDamageArea(u,damage,nx,ny,range)
	end
	return isdamage
end

function UnitRocketArea(hero,x,y,range)
	local find=false
	local e--временный юнит
	local targ=nil
	--print("стреляем")
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil or find==true then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) then
			targ=e
		end
		GroupRemoveUnit(perebor,e)
	end
	local dummy=CreateUnit(GetOwningPlayer(hero), DummyID, GetUnitX(hero), GetUnitY(hero), 0)
	SetUnitZ(dummy,GetUnitZ(hero))
	UnitAddAbility(dummy,FourCC('A003'))
	UnitApplyTimedLife(dummy,DummyID,1)
	if targ~=nil then
		--print("цель определена- "..GetUnitName(targ))
		Cast(dummy,0,0,targ)
	else
		targ=CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), DummyID, x, y, 0)

		UnitRemoveAbility(targ,FourCC('Aloc'))
		if Cast(dummy,0,0,targ)==false then
			--print("выстрел в пустоту")
			HeroUpdateWeaponCharges(hero,3,-1)
		end
		UnitApplyTimedLife(targ,DummyID,3)
		--print("Нет врагов, летим в воду")
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.01.2020 23:40
---
GetPlayerMouseX={}
GetPlayerMouseY={}
function InitMouseMoveTrigger()
	local MouseMoveTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		if GetPlayerSlotState(player) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(player) == MAP_CONTROL_USER then
			TriggerRegisterPlayerEvent(MouseMoveTrigger, player, EVENT_PLAYER_MOUSE_MOVE)
		end
	end
		TriggerAddAction(MouseMoveTrigger, function()
			--print("ismove")
			local id=GetPlayerId(GetTriggerPlayer())
			GetPlayerMouseX[id]=BlzGetTriggerPlayerMouseX()
			GetPlayerMouseY[id]=BlzGetTriggerPlayerMouseY()
		end)
end
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
		OnTorrent=false,
		Alive=true,
		IsAttackReadyR=true,
		IsAttackReadyL=true,
		AttackCD=0.5,
		XPos=0,
		YPos=0,
		OnWater=false
		--Camera=CreateUnit(Player(0), FourCC('e001'), GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0)), 0)
	}
	Ammo[0]={
		Available ={
			Single=true,
			Board=true,
			Rocket=false,
			Fire=false,
			Toss=true,
			Barrel=true,
			Light=false,
			Saw=false,
			Oil=false
		},
		Count={
			Single=150,
			Board=100,
			Rocket=0,
			Fire=0,
			Toss=10,
			Barrel=10,
			Light=0,
			Saw=0,
			Oil=0
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


			local dx=math.abs(GetUnitX(hero)-data.XPos)
			local tbag=false
			if dx>100 then
				--SetUnitX(hero,data.XPos)
				--SetUnitY(hero,data.YPos)
				tbag=true
				print("Телепорт баг в функции тика таймера "..dx)
			end


			if data.CurrentSpeed>0 and data.Alive and not tbag and data.OnTorrent==false then--
					--print("текущая скорость = "..data.CurrentSpeed)
				local x,y=GetUnitX(hero),GetUnitY(hero)

				local angle=GetUnitFacing(hero)
				data.AngleForce=angle
				local zhero=GetUnitZ(hero) --GetTerrainZ(x,y)
				local newX3,newY3=MoveX(x,180,angle),MoveY(y,180,angle)
				local newX2,newY2=MoveX(x,60,angle),MoveY(y,60,angle)
				local z3=GetTerrainZ(newX3,newY3)
				local z2=GetTerrainZ(newX2,newY2)

				local Perepad=zhero-z2
				--print("Perepad="..Perepad)
				--if z3<=-80 and z2<=-80  then
				local newX,newY=MoveX(x,data.CurrentSpeed,angle),MoveY(y,data.CurrentSpeed,angle)

				dx=math.abs(GetUnitX(hero)-data.XPos)
				if dx>100 then
					print("Телепорт баг в функции Нью "..dx)
				end


				if Perepad<1  then


					dx=math.abs(GetUnitX(hero)-data.XPos)
					if dx>100 then
						print("Телепорт баг в функции 1 "..dx)
					else
						SetUnitPositionSmooth(hero,newX,newY)
					end
					--SetUnitX(hero,newX)
					--SetUnitY(hero,newY)
				else
					--print("Высоко, надо пройти "..Perepad)
					if Perepad>110 then
						--print("Большой перепад="..Perepad)
						dx=math.abs(GetUnitX(hero)-data.XPos)
						if dx>100 then
							print("Телепорт баг в функции 2 "..dx)
						end
						SetUnitX(hero,newX)
						SetUnitY(hero,newY)
					else
						dx=math.abs(GetUnitX(hero)-data.XPos)
						if dx>100 then
							print("Телепорт баг в функции 3"..dx)
						end
						SetUnitPositionSmooth(hero,newX,newY)
						--SetUnitX(hero,newX)
						--SetUnitY(hero,newY)
					end
				end
			end

			--[[local dx=math.abs(GetUnitX(hero)-data.XPos)

			if dx>100 then
				SetUnitX(hero,data.XPos)
				SetUnitY(hero,data.YPos)
				print("Телепорт баг в функции тика таймера "..dx)
			end
			]]
			data.XPos=GetUnitX(hero)
			data.YPos=GetUnitY(hero)

		end
	end)
end




---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.02.2020 13:24

function UnitCheckPathingInRound(hero,range)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local x,y=GetUnitX(hero),GetUnitY(hero)
	local nx,ny=nil,nil
	local a=10
	local z=nil
	local k=0
	local total=0
	local med=0
	local min=350
	local max=0
	local current=0
	local dif=0
	local perepad=0
	if data.IsDisabled==false then
		for i=0,35 do
			nx=MoveX(x,range,a*i)
			ny=MoveY(y,range,a*i)
			z=GetTerrainZ(nx,ny)
			perepad=GetUnitZ(hero)-GetTerrainZ(x,y)
			--print("perepad="..perepad)
			--if perepad<=2 then
			if z>-80 and data.OnTorrent==false then
				k=k+1
				total=total+a*i
				current=a*i
				if current>=max then max=current end
				if current<=min then min=current end
				--print("a="..a*i)
				if UnitAlive(hero)  and k>=10 then
					DestroyEffect(AddSpecialEffect("Abilities/Weapons/AncestralGuardianMissile/AncestralGuardianMissile.mdl",nx,ny))
				end
			end
		end
		if k>0 then
			dif=max-min
			if dif>=90 then
				--print("dif="..dif.."при минимуме="..min)
				for _=min,0,-10 do
					total=total+360
				end
			end
			med=total/k
			if k>=10 then
				--print("selfdamage")
				UnitDamageTarget( hero, hero, 5*(k-7), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			end
			if k>=30 then
				KillUnit(hero)
			end

			if dif>=90 then med=med-180  end

			if  UnitAlive(hero) and k>=10 then
				data.IsDisabled=true
				--print("force ="..k)
				UnitAddForce(hero,med-180,5+k,80+5*k)
			end
		end
	end
end


function UnitAddForce(hero,angle,speed,distance)
	local currentdistance=0
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		currentdistance=currentdistance+speed
		--print(currentdistance)
		local x,y=GetUnitX(hero),GetUnitY(hero)
		local newX,newY=MoveX(x,speed,angle),MoveY(y,speed,angle)
		local dx=math.abs(x-newX)
		if dx>=50 then
			print("телепорт баг в адд форсе")
		else
			--print(dx)
			SetUnitX(hero,newX)
			SetUnitY(hero,newY)
		end

		if currentdistance>=distance  or (data.OnWater and data.OnTorrent==false) then --or data.OnTorrent==false--or not UnitAlive(hero)
			data.IsDisabled=false
			data.OnWater=false
			DestroyTimer(GetExpiredTimer())
			--print("stop cur="..currentdistance.." dist="..distance)
		end
	end)
end

function PointContentUnit(x,y,range,condconten)
	local content=false
	local e--временный юнит
	local ContentUnit=nil
	if condconten==nil then condconten=true end
	if range==nil then range=80 end
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and condconten and content==false  then
			content=true
			ContentUnit=e
		end
		GroupRemoveUnit(perebor,e)
	end
	return content,ContentUnit
end

GlobalRect=Rect(0,0,0,0)
function PointContentDestructable (x,y,range,iskill,damage)
	local content=false
	if range==nil then range=80 end
	if iskill==nil then iskill=false end
	SetRect(GlobalRect, x - range, y - range, x + range, y +range)
	EnumDestructablesInRect(GlobalRect,nil,function ()
		local d=GetEnumDestructable()
		if GetDestructableLife(d)>0 then
			content=true
			if iskill then
				SetDestructableLife(d,GetDestructableLife(d)-damage)
				if GetDestructableLife(d)>=1 then
					SetDestructableAnimation(d,"Stand Hit")
				end
				--KillDestructable(d)
			end
		end
	end)
	return content
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.01.2020 20:11
function InitUnitDeath()
	local gg_trg_DEADGUI = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_DEADGUI, EVENT_PLAYER_UNIT_DEATH)--меня полностью устраивает это событие
	TriggerAddAction(gg_trg_DEADGUI, function()
		local DeadUnit=GetTriggerUnit()--умерший

		local killer=GetKillingUnit()--убийца
		if IsUnitType(DeadUnit,UNIT_TYPE_HERO) then --герои
			TimerStart(CreateTimer(), 1, false, function()--юнит жив ещё 1 секунду
				local PD=GetOwningPlayer(DeadUnit)
				local pid=GetPlayerId(PD)
				local data=HERO[pid]
				data.Alive=false
			end)

			TimerStart(CreateTimer(), 5, false, function()
				local PD=GetOwningPlayer(DeadUnit)
				local pid=GetPlayerId(PD)
				local data=HERO[pid]
				data.Alive=true
				ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
				SelectUnitForPlayerSingle(DeadUnit,PD)
			end)
		end
		if IsUnitInGroup(DeadUnit,OrcSkeletonPoolG) then--зомбки орки с первой зоны
			OrcSkeletonPool[4]=OrcSkeletonPool[4]-1
			local hObelisk=GetUnitUserData(DeadUnit)
			for i=1,4 do
				if hObelisk==GetHandleId(OrcSkeletonPool[5+i]) then
					local obelisk=OrcSkeletonPool[5+i]
					SetUnitUserData(obelisk,GetUnitUserData(obelisk)-1)
				end
			end
		end
		if GetUnitTypeId(DeadUnit)==FourCC('h001') then
			ShowUnit(DeadUnit,false)
			DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",GetUnitXY(DeadUnit)))
		end
	end)
end

--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.01.2020 12:16

TargetOrders={"innerfire","slow","heal","controlmagic","invisibility","magicleash","spellsteal","polymorph","repair","thunderbolt","banish","holybolt","load","unstableconcoctoin","spirintlink",
"bloodlust","ensnare","devour","purge","lightingshield","healingwave","hex","chainlightning","antimagicshell","unholyfrenzy","possession","web","absorbmana","curse","restoration","cripple","frostarmor",
"deathpact","sleep","darkritual","faeriefire","renew","autodispel","cyclone","entanglingroots","flamingarrows","manaburn","shadowstrike","creepthunderbolt","mindrot","deathcoil",
"parasite","charm","creepdevour","forkedlighting","cripple","blackarrow","acidbomb","doom","soulburn","transmute","rejuvination"}

PointOrders={"flare","dispel","cloudoffog","flamestrike","blizzard","healingward","stasistrap","evileye","farsight","eathquake","ward","serpentward","shockwave","inferno","impale","deathanddecay","carrionswarm",
"detonate","forceofnature","blink","selfdestruct","silence","rainoffire","breathofirre","volcano","stampede","healingspray","clusterrockets","summonfactory","drunkenhaze"}

ImmediateOrders={"defend","magicdefense","militia","townbellon","avatar","divineshield","resurrection","massteleport","waterelemental","thunderclap","summonphoenix","etherealform","berserk",
"battlestations","corporealform","whirlwind","stomp","spiritwolf","locustswarm","mirrorimage","voodoo","windwalk","raisedead","recharge","replenish","borrow","stoneform","cannibalize","sphinksform","replenishlife",
"replenishmana","carrionscarabs","animatedead","coupletarget","manaflareon","vengeance","ravenform","bearform","taunt","roar","ambush", "fanofknives","starfall","metamorphosis","immolation",
"tranquility","monsoon","frenzy","howlofterror","manashield","battleroar","elementalfury","wateryminion","slimemonster","robogoblin","tornado","chemicalrage"}
---@param u unit
---@param x real
---@param y real
---@param target unit
function Cast(u,x,y,target)
	local IsCast=false
	if UnitAlive(u) then
		AllPoint(u,x,y)
		if AllTarget(u,target) then
			IsCast=true
		end
		AllImmediate(u)
	end
	return IsCast
end

function AllImmediate(u)
	for i = 1,#ImmediateOrders do
	--print(ImmediateOrders[i].." is immediate")
		IssueImmediateOrder(u,ImmediateOrders[i])
	end
end

function AllPoint(u,x,y)
	for i = 1,#PointOrders do
	--	print(PointOrders[i].." is point")
		IssuePointOrder(u,PointOrders[i],x,y)
	end
end

function AllTarget(u,target)
	local IsCast=false
	for i = 1,#TargetOrders do
		--print(TargetOrders[i].." is target")
		if IssueTargetOrder(u,TargetOrders[i],target) then
			IsCast=true
		end
	end
	return IsCast
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 23:44
---
---@param x real
---@param y real
---@return boolean
function InMapXY(x, y)
	return x > GetRectMinX(bj_mapInitialPlayableArea) and x < GetRectMaxX(bj_mapInitialPlayableArea) and y > GetRectMinY(bj_mapInitialPlayableArea) and y < GetRectMaxY(bj_mapInitialPlayableArea)
end

---@param x real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetX(x, distance, angle)
	return x + distance * math.cos(angle)
end

---@param y real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetY(y, distance, angle)
	return y + distance * math.sin(angle)
end

---@param x real
---@param distance real
---@param angle real degrees
---@return real
function MoveX(x, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD)
end

---@param y real
---@param distance real
---@param angle real degrees
---@return real
function MoveY(y, distance, angle)
	return y + distance * math.sin(angle * bj_DEGTORAD)
end


local GetTerrainZ_location = Location(0, 0)
---@param x real
---@param y real
---@return real
function GetTerrainZ(x, y)
	MoveLocation(GetTerrainZ_location, x, y)
	return GetLocationZ(GetTerrainZ_location)
end

---@param target unit
---@return real
function GetUnitZ(target)
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	return GetLocationZ(GetTerrainZ_location) + GetUnitFlyHeight(target)
end

---@param target unit
---@param z real
function SetUnitZ(target, z)
	UnitAddAbility(target, FourCC('Aave'))
	UnitRemoveAbility(target, FourCC('Aave'))
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	SetUnitFlyHeight(target, z - GetLocationZ(GetTerrainZ_location), 0)
end

---@param h real максимальная высота в прыжке на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки, где следует взять высоту по параболе
---@return real
function ParabolaZ (h, d, x)
	return (4 * h / d) * (d - x) * (x / d)
end

---@param zs real начальная высота высота одного края дуги
---@param ze real конечная высота высота другого края дуги
---@param h real максимальная высота на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки
---@return real
function GetParabolaZ(zs, ze, h, d, x)
	return (2 * (zs + ze - 2 * h) * (x / d - 1) + (ze - zs)) * (x / d) + zs
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real
function DistanceBetweenXY(xa, ya, xb, yb)
	local dx = xb - xa
	local dy = yb - ya
	return math.sqrt(dx * dx + dy * dy)
end

---@param xa real
---@param ya real
---@param za real
---@param xb real
---@param yb real
---@param zb real
---@return real
function DistanceBetweenXYZ(xa, ya, za, xb, yb, zb)
	local dx = xb - xa
	local dy = yb - ya
	local dz = zb - za
	return math.sqrt(dx * dx + dy * dy + dz * dz)
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real radian
function AngleBetweenXY(xa, ya, xb, yb)
	return math.atan(yb - ya, xb - xa)
end

---@param a real radian
---@param b real radian
---@return real radian
function AngleDifference(a, b)
	local c---@type real
	local d---@type real
	if a > b then
		c = a - b
		d = b - a + 2 * math.pi
	else
		c = b - a
		d = a - b + 2 * math.pi
	end
	return c > d and d or c
end

--@author https://xgm.guru/p/wc3/warden-math
---@param a real degrees
---@param b real degrees
---@return real degrees
function AngleDifferenceDeg(a, b)
	a, b = math.abs(a, 360), math.abs(b, 360)
	local x---@type real
	if (a > b) then
		a, b = b, a
	end
	x = b - 360
	if (b - a > a - x) then
		b = x
	end
	return math.abs(a - b)
end

-- Находит длину перпендикуляра от отрезка, заданного xa, ya, xb, yb к точке, заданной xc, yc
--@author https://xgm.guru/p/wc3/perpendicular
---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@param xc real
---@param yc real
---@return real
function Perpendicular (xa, ya, xb, yb, xc, yc)
	return math.sqrt((xa - xc) * (xa - xc) + (ya - yc) * (ya - yc)) * math.sin(math.atan(yc - ya, xc - xa) - math.atan(yb - ya, xb - xa))
end

--@Hate https://xgm.guru/p/wc3/241479
---@param source unit
---@param x real
---@param y real
function SetUnitPositionSmooth(source, x, y)
	local last_x = GetUnitX(source)
	local last_y = GetUnitY(source)
	local bx
	local by
	--print("Смус выполнена")
	SetUnitPosition(source, x, y)
	if (RAbsBJ(GetUnitX(source) - x) > 0.5) or (RAbsBJ(GetUnitY(source) - y) > 0.5) then
		SetUnitPosition(source, x, last_y)
		bx = RAbsBJ(GetUnitX(source) - x) <= 0.5
		SetUnitPosition(source, last_x, y)
		by = RAbsBJ(GetUnitY(source) - y) <= 0.5

		---
		local dx=math.abs(x-last_x)
		if dx>=100 then
			print("Телепорт бак в функции Smooth"..dx )
		end
		---
		if bx then
			SetUnitPosition(source, x, last_y)
		elseif by then
			SetUnitPosition(source, last_x, y)
		else
			SetUnitPosition(source, last_x, last_y)
		end
	end
end

function GetUnitXY(unit)
	return GetUnitX(unit),GetUnitY(unit)
end

function MoveXY(x,y, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD),y + distance * math.sin(angle * bj_DEGTORAD)
end

function UnitCollisionOFF(unit)
	UnitAddAbility(unit,FourCC('A000'))
	IssueImmediateOrder(unit,"windwalk")
end

---@param text string
---@param textSize real
---@param x real
---@param y real
---@param z real
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param xvel real
---@param yvel real
---@param fadepoint real
---@param lifespan real
---@param player player
---@return texttag
function FlyTextTag(text, textSize, x, y, z, red, green, blue, alpha, xvel, yvel, fadepoint, lifespan, player)
	local t = CreateTextTag()
	SetTextTagText(t, text, textSize)
	SetTextTagPos(t, x, y, z)
	SetTextTagColor(t, red, green, blue, alpha)
	SetTextTagVelocity(t, xvel, yvel)
	SetTextTagFadepoint(t, fadepoint)
	SetTextTagLifespan(t, lifespan)
	SetTextTagPermanent(t, false)
	if player ~= nil then
		SetTextTagVisibility(t, player == GetLocalPlayer())
	end
	return t
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagGoldBounty(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 255, 220, 0, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagLumberBounty(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 0, 200, 80, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagMiss(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.03, 1, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagCriticalStrike(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.04, 2, 5, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagManaBurn(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 82, 82, 255, 255, 0, 0.04, 2, 5, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagShadowStrike(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 160, 255, 0, 255, 0, 0.04, 2, 5, player)
end

function FlyTextTagMissXY(x,y, text, player)
	return FlyTextTag(text, 0.024, x, y, 150, 255, 0, 0, 255, 0, 0.03, 1, 3, player)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 22.02.2020 19:51
---
function StartMainTheme()
	--print("играй музыка1")
	TimerStart(CreateTimer(), 1, false, function()
		--print("играй музыка2")
		--PlayThematicMusicBJ("NewMusic/Brandberg - Anubis.mp3;NewMusic/Deficio - Egyptica.mp3")
		--PlayMusicBJ("NewMusic/Brandberg - Anubis.mp3;NewMusic/Deficio - Egyptica.mp3")
		--PlayThematicMusicBJ("NewMusic/Deficio - Egyptica.mp3")--работает
	end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.02.2020 23:45
---

SawDiskModel="Chakram_02.mdl"--"Abilities\\Weapons\\SentinelMissile\\SentinelMissile.mdl"
SawChainModel="abilities\\weapons\\wyvernspear\\wyvernspearmissile.mdl"
function CreateRoundSawZ(hero,ChainCount,angle,z)
	local xs,ys=GetUnitXY(hero)
	local saw=AddSpecialEffect(SawDiskModel,xs,ys)
	local chain={}
	local step=60
	local SpeedRandomFactor=GetRandomReal(-1,1)
	local speed=3+SpeedRandomFactor
	if z==nil then z=GetUnitZ(hero)+30 end
	if angle==nil then angle=0 end
	for i=1,ChainCount do
		chain[i]=AddSpecialEffect(SawChainModel,xs,ys)
		--print("создан кусок цепи "..i)
	end
	-- установки
	BlzSetSpecialEffectScale(saw,0.9)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=0,0
		for i=1,ChainCount do
			x,y=MoveXY(xs,ys,step*i,angle)
			BlzSetSpecialEffectPosition(chain[i],x,y,z)
			BlzSetSpecialEffectYaw(chain[i],math.rad(angle))
		end
		local nx,ny=MoveXY(xs,ys,step*ChainCount,angle)
		BlzSetSpecialEffectPosition(saw,nx,ny,z)
		UnitDamageArea(hero,20,nx,ny,150,z-90,"Abilities/Weapons/AncestralGuardianMissile/AncestralGuardianMissile.mdl")
		angle=angle+speed
		if UnitAlive(hero)==false then
			DestroyTimer(GetExpiredTimer()) -- временно вечный таймер
			DestroyEffect(saw)
			for i=1,ChainCount do
				DestroyEffect(chain[i])
			end
		end
	end)
end

function StartAllSaw()
	local e--временный юнит
	local k=0
	local id=FourCC('h001')
	GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and GetUnitTypeId(e)==id then
			k=k+1
			CreateRoundSawZ(e,6,GetRandomInt(0,360))
		end
		GroupRemoveUnit(perebor,e)
	end
	--print("Запущено пил: "..k)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.02.2020 20:39

function Enter00()
	local trg_InCombatZone = CreateTrigger()
	TriggerRegisterEnterRectSimple(trg_InCombatZone, gg_rct_Combat0Zone)
	TriggerAddAction(trg_InCombatZone, function ()
		local x,y=GetRectCenterX(gg_rct_Combat0Zone),GetRectCenterY(gg_rct_Combat0Zone)
		local temp=CreateGroup()
		--print("вошел в зону боя")
		DisableTrigger(GetTriggeringTrigger())
		for i=1, 3 do
			local new=CreateUnit(Player(11), FourCC('u000'), x, y, 0)
			StartSheepAI(new)
			GroupAddUnit(temp,new)
		end
		TimerStart(CreateTimer(), 1, true, function()
			if IsUnitGroupDeadBJ(temp) then
				DestroyTimer(GetExpiredTimer())
				--print("мертвы, открываем ворота")
				QuestMessageBJ(GetPlayersAllies(Player(0)), bj_QUESTMESSAGE_UNITAVAILABLE, "|cffffff00Враги уничтожены:|r путь свободен")
				EnumDestructablesInRectAll(gg_rct_Zone02In, function()
					KillDestructable(GetEnumDestructable())
				end)
				EnumDestructablesInRectAll(gg_rct_Zone02Out, function()
					KillDestructable(GetEnumDestructable())
				end)
			end
		end)
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.02.2020 20:49

function InMineWay()
	local gg_trg_InMineWay = CreateTrigger()
	TriggerRegisterEnterRectSimple(gg_trg_InMineWay, gg_rct_Zone03In)
	TriggerAddAction(gg_trg_InMineWay, function()
		--print("баржа отправляется в путь")
		DisableTrigger(GetTriggeringTrigger())
		local barga=gg_unit_o001_0002
		UnitAddAbility(barga,FourCC('Avul'))
		local xs,ys=GetUnitXY(barga)
		local x,y=GetRectCenterX(gg_rct_Zone03Out),GetRectCenterY(gg_rct_Zone03Out)
		IssuePointOrder(barga,"move",x,y)
		TimerStart(CreateTimer(), 1, true, function()
			if GetUnitCurrentOrder(barga)==0 then
				IssuePointOrder(barga,"move",x,y)
			end
			if GetUnitCurrentOrder(barga)~=String2OrderIdBJ("move") then
				--print("остановка "..GetUnitCurrentOrder(barga)..OrderId2String(GetUnitCurrentOrder(barga)))
			end
			--print("Созданамина")
			CreateBarrel(barga,GetUnitFacing(barga)-180,100)
			if IsUnitInRangeXY(barga,x,y,250)  then
				if GetDestructableLife(gg_dest_B000_0131) <= 0 then
					--print("конец")
					DestroyTimer(GetExpiredTimer())
				end
				IssuePointOrder(barga,"move",xs,ys)
				--print("назад")
			end
			if IsUnitInRangeXY(barga,xs,ys,200) then
				--print("вперёд")
				IssuePointOrder(barga,"move",x,y)
			end
		end)
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.02.2020 18:42
---
function InitZone0()
	TimerStart(CreateTimer(), 5, true, function()
		local x,y=GetRectCenterX(gg_rct_SingleTorrentZone),GetRectCenterY(gg_rct_SingleTorrentZone)
		CreateTorrent(x,y,4,500)
	end)
	--перечисляем все регистрации
	Enter00()
	StartAllSaw()
	ActivatedAllTower()
	InMineWay()
	InitZone1()--- временно потом перенести в другое место
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 07.03.2020 0:35
---

function MineReplacer()--ужасно, больше так не буду делать, мозголомание бредовое
	local e=nil
	local k=0
	local id=FourCC('e004')--!!!!!
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				local x,y=GetUnitXY(e)
				KillUnit(e)
				k=k+1
				CreateDeepMine(x,y)
			end
			GroupRemoveUnit(perebor,e)
		end
		--print("Запущено юнитов мин: "..k)
end

function CreateDeepMine(x,y)
	local eff=AddSpecialEffect("Water Mine",x,y)
	BlzSetSpecialEffectZ(eff,-200)
	TimerStart(CreateTimer(), 0.3, true, function()
		local IsContent, hero=PointContentUnit(x,y,100)
		if IsContent and IsUnitZCollision(hero,-90) then
			--UnitDamageArea(hero,100,x,y,100,-90)
			UnitDamageTarget( hero, hero, 100, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			ExplodeEffect(eff,3)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.02.2020 18:42
---
function InitZone1()
	TimerStart(CreateTimer(), 10, true, function()
		--CreateZombies()
		InitZombies()
		--gg_rct_TestFog

	end)
	--print("0")
	CreateFogInRect(gg_rct_TestFog)
	MineReplacer()
end

function CreateFogInRect(rect)
	--print("1")
	local xMax,yMax=GetRectMaxX(rect),GetRectMaxY(rect)
	local xMin,yMin=GetRectMinX(rect),GetRectMinY(rect)
	local step=70
	local Wide=R2I(math.abs(xMax-xMin)/step)
	local Height=R2I(math.abs(yMax-yMin)/step)
	local xPos,yPos=xMax,yMax
	local fog={}
	--print("x="..Wide.." y="..Height)
	for i=0,Wide do
		xPos=MoveX(xMax,-step*i,0)
		--print("Создан туман по х="..i)
		for k=0,Height do
			yPos=MoveY(yMax,-step*k,90)
			--fog[i]=
			--print("Создан туман по y="..k)
			local eff =AddSpecialEffect("bluegas4",xPos,yPos) --WaterOrb --bluegas
			SetEffectAlphaNearHero(eff)
		end
	end
end

function SetEffectAlphaNearHero(eff)
	local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
	local t=CreateTimer()
	TimerStart(t,0.3, true, function()
		local IsContent, hero=PointContentUnit(x,y,450)

		if IsContent then
			local xh,yh=GetUnitXY(hero)
			local xe,ye=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
			local angle=(AngleBetweenXY(xe,ye,xh,yh)/bj_DEGTORAD)-180
			--EffectAddForce(eff,angle,30,500,t)

			--print(angle)
			BlzSetSpecialEffectAlpha(eff,80)
			--print("alpha")
			BlzPlaySpecialEffect(eff,ANIM_TYPE_DEATH)
			--DestroyEffect(eff)
			--BlzSetSpecialEffectPosition(eff,xn,yn,0)
			--DestroyTimer(GetExpiredTimer())
			--BlzSetSpecialEffectTime(eff,2300)
			--BlzSetSpecialEffectPosition(eff,4000,4000,0)
		else
			BlzSetSpecialEffectAlpha(eff,20)
			BlzPlaySpecialEffect(eff,ANIM_TYPE_STAND)
			--BlzSetSpecialEffectPosition(eff,x,y,0)
		end
		if not eff then
			DestroyTimer(GetExpiredTimer())
			print("ссылка таймера уничтожена")
		end

	end)
end


function EffectAddForce(eff,angle,speed,distance,t)
	local currentdistance=0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		currentdistance=currentdistance+speed
		local x,y=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
		local newX,newY=MoveX(x,speed,angle),MoveY(y,speed,angle)
		BlzSetSpecialEffectPosition(eff,newX,newY,0)
		--print("forceeff"..currentdistance)
		if currentdistance>=distance   then
			DestroyTimer(GetExpiredTimer())
			DestroyTimer(t)
			DestroyEffect(eff)
		end
	end)
end




function InitZombies()--ужасно, больше так не буду делать, мозголомание бредовое
	local e=nil
	local k=0
	local id=FourCC('n003')
	if OrcSkeletonPool[4]<=OrcSkeletonPool[5]*3 then
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				local r=GetRandomInt(1,3)
				k=k+1
				if OrcSkeletonPool[5+k]==nil then
					OrcSkeletonPool[5+k]=e
				end

				if OrcSkeletonPool[4]<OrcSkeletonPool[5]*3 then
					if GetUnitUserData(e)<3 then
						local orc=CreateUnit(GetOwningPlayer(e), OrcSkeletonPool[r],GetUnitX(e),GetUnitY(e),0)
						OrcSkeletonPool[4]=OrcSkeletonPool[4]+1
						GroupAddUnit(OrcSkeletonPoolG,orc)
						SetUnitUserData(orc,GetHandleId(e))
						SetUnitUserData(e,GetUnitUserData(e)+1)
						--print("создан скелет"..GetUnitUserData(e))
					end
				else

				end



			end
			GroupRemoveUnit(perebor,e)
		end
		--print("Запущено юнитов: "..k)
		OrcSkeletonPool[5]=k
	end
end

OrcSkeletonPoolG=CreateGroup()
OrcSkeletonPool={
	FourCC('n000'),
	FourCC('n001'),
	FourCC('n002'),
	0,--число скелетов
	4,--число обелисков
	nil,
	nil,
	nil,
	nil,
}
--CUSTOM_CODE
function Trig_Button3IsDead_Func001A()
    KillDestructable(GetEnumDestructable())
end

function Trig_Button3IsDead_Actions()
    EnumDestructablesInRectAll(gg_rct_Zone04In, Trig_Button3IsDead_Func001A)
end

function InitTrig_Button3IsDead()
    gg_trg_Button3IsDead = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_Button3IsDead, gg_dest_B000_0963)
    TriggerAddAction(gg_trg_Button3IsDead, Trig_Button3IsDead_Actions)
end

function Trig_InitZone_Func001A()
    KillDestructable(GetEnumDestructable())
end

function Trig_InitZone_Actions()
    EnumDestructablesInRectAll(gg_rct_Zone02In, Trig_InitZone_Func001A)
end

function InitTrig_InitZone()
    gg_trg_InitZone = CreateTrigger()
    TriggerAddAction(gg_trg_InitZone, Trig_InitZone_Actions)
end

function Trig_Button0IsDead_Func001A()
    KillDestructable(GetEnumDestructable())
end

function Trig_Button0IsDead_Actions()
    EnumDestructablesInRectAll(gg_rct_Zone0, Trig_Button0IsDead_Func001A)
end

function InitTrig_Button0IsDead()
    gg_trg_Button0IsDead = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_Button0IsDead, gg_dest_B000_0118)
    TriggerAddAction(gg_trg_Button0IsDead, Trig_Button0IsDead_Actions)
end

function Trig_Button12IsDead_Func001C()
    if (not (IsDestructableAliveBJ(gg_dest_B000_0273) == false)) then
        return false
    end
    if (not (IsDestructableAliveBJ(gg_dest_B000_0275) == false)) then
        return false
    end
    return true
end

function Trig_Button12IsDead_Conditions()
    if (not Trig_Button12IsDead_Func001C()) then
        return false
    end
    return true
end

function Trig_Button12IsDead_Func002A()
    KillDestructable(GetEnumDestructable())
end

function Trig_Button12IsDead_Actions()
    EnumDestructablesInRectAll(gg_rct_ZoneLaserGate0, Trig_Button12IsDead_Func002A)
end

function InitTrig_Button12IsDead()
    gg_trg_Button12IsDead = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_Button12IsDead, gg_dest_B000_0273)
    TriggerRegisterDeathEvent(gg_trg_Button12IsDead, gg_dest_B000_0275)
    TriggerAddCondition(gg_trg_Button12IsDead, Condition(Trig_Button12IsDead_Conditions))
    TriggerAddAction(gg_trg_Button12IsDead, Trig_Button12IsDead_Actions)
end

function Trig_ResLeft_Func002C()
    if (not (IsDestructableAliveBJ(gg_dest_B006_0274) == true)) then
        return false
    end
    return true
end

function Trig_ResLeft_Actions()
    TriggerSleepAction(2)
    if (Trig_ResLeft_Func002C()) then
        DestructableRestoreLife(GetDyingDestructable(), GetDestructableMaxLife(GetLastCreatedDestructable()), true)
    else
    end
end

function InitTrig_ResLeft()
    gg_trg_ResLeft = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_ResLeft, gg_dest_B000_0273)
    TriggerAddAction(gg_trg_ResLeft, Trig_ResLeft_Actions)
end

function Trig_ResRight_Func002C()
    if (not (IsDestructableAliveBJ(gg_dest_B006_0274) == true)) then
        return false
    end
    return true
end

function Trig_ResRight_Actions()
    TriggerSleepAction(2)
    if (Trig_ResRight_Func002C()) then
        DestructableRestoreLife(GetDyingDestructable(), GetDestructableMaxLife(GetLastCreatedDestructable()), true)
    else
    end
end

function InitTrig_ResRight()
    gg_trg_ResRight = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_ResRight, gg_dest_B000_0275)
    TriggerAddAction(gg_trg_ResRight, Trig_ResRight_Actions)
end

function Trig_InCombatZone_Func001A()
    DestructableRestoreLife(GetEnumDestructable(), GetDestructableMaxLife(GetEnumDestructable()), true)
end

function Trig_InCombatZone_Actions()
    EnumDestructablesInRectAll(gg_rct_Zone02In, Trig_InCombatZone_Func001A)
    DisableTrigger(GetTriggeringTrigger())
end

function InitTrig_InCombatZone()
    gg_trg_InCombatZone = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_InCombatZone, gg_rct_Combat0Zone)
    TriggerAddAction(gg_trg_InCombatZone, Trig_InCombatZone_Actions)
end

function Trig_InMineWay_Actions()
end

function InitTrig_InMineWay()
    gg_trg_InMineWay = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_InMineWay, gg_rct_Zone03In)
    TriggerAddAction(gg_trg_InMineWay, Trig_InMineWay_Actions)
end

function Trig_Button0to1_Func001A()
    KillDestructable(GetEnumDestructable())
end

function Trig_Button0to1_Actions()
    EnumDestructablesInRectAll(gg_rct_Region_010, Trig_Button0to1_Func001A)
end

function InitTrig_Button0to1()
    gg_trg_Button0to1 = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_Button0to1, gg_dest_B000_0131)
    TriggerAddAction(gg_trg_Button0to1, Trig_Button0to1_Actions)
end

function Trig_Barga_Actions()
end

function InitTrig_Barga()
    gg_trg_Barga = CreateTrigger()
    TriggerRegisterUnitInRangeSimple(gg_trg_Barga, 256, gg_unit_o001_0002)
    TriggerAddAction(gg_trg_Barga, Trig_Barga_Actions)
end

function Trig_EVENTMMB_Conditions()
    if (not (BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_MIDDLE)) then
        return false
    end
    return true
end

function Trig_EVENTMMB_Actions()
    DisplayTextToForce(GetPlayersAll(), "TRIGSTR_011")
end

function InitTrig_EVENTMMB()
    gg_trg_EVENTMMB = CreateTrigger()
    TriggerRegisterPlayerMouseEventBJ(gg_trg_EVENTMMB, Player(0), bj_MOUSEEVENTTYPE_DOWN)
    TriggerAddCondition(gg_trg_EVENTMMB, Condition(Trig_EVENTMMB_Conditions))
    TriggerAddAction(gg_trg_EVENTMMB, Trig_EVENTMMB_Actions)
end

function Trig_NonAttack_Func004C()
    if (not (GetIssuedOrderIdBJ() == String2OrderIdBJ("move"))) then
        return false
    end
    if (not (IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true)) then
        return false
    end
    return true
end

function Trig_NonAttack_Conditions()
    if (not Trig_NonAttack_Func004C()) then
        return false
    end
    return true
end

function Trig_NonAttack_Actions()
    PauseUnitBJ(true, GetTriggerUnit())
    IssueImmediateOrderBJ(GetTriggerUnit(), "stop")
    PauseUnitBJ(false, GetTriggerUnit())
end

function InitTrig_NonAttack()
    gg_trg_NonAttack = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_NonAttack, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    TriggerRegisterAnyUnitEventBJ(gg_trg_NonAttack, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    TriggerAddCondition(gg_trg_NonAttack, Condition(Trig_NonAttack_Conditions))
    TriggerAddAction(gg_trg_NonAttack, Trig_NonAttack_Actions)
end

function Trig_sec1_Actions()
    PlaySoundAtPointBJ(gg_snd_AAA, 100, GetUnitLoc(gg_unit_h002_0023), 0)
end

function InitTrig_sec1()
    gg_trg_sec1 = CreateTrigger()
    TriggerAddAction(gg_trg_sec1, Trig_sec1_Actions)
end

function InitCustomTriggers()
    InitTrig_Button3IsDead()
    InitTrig_InitZone()
    InitTrig_Button0IsDead()
    InitTrig_Button12IsDead()
    InitTrig_ResLeft()
    InitTrig_ResRight()
    InitTrig_InCombatZone()
    InitTrig_InMineWay()
    InitTrig_Button0to1()
    InitTrig_Barga()
    InitTrig_EVENTMMB()
    InitTrig_NonAttack()
    InitTrig_sec1()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_InitZone)
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-11520.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -11776.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -11520.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -11776.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("SunkenRuinsDay")
    SetAmbientNightSound("SunkenRuinsNight")
    SetMapMusic("Music", true, 0)
    InitSounds()
    CreateRegions()
    CreateCameras()
    CreateAllDestructables()
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_003")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, 1792.0, 5888.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
end

