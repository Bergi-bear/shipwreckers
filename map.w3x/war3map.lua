gg_rct_Zone0 = nil
gg_rct_ZoneLaserGate0 = nil
gg_rct_SingleTorrentZone = nil
gg_rct_Combat0Zone = nil
gg_rct_Zone02In = nil
gg_rct_Zone02Out = nil
gg_rct_Spawn00 = nil
gg_rct_Region_007 = nil
gg_cam_CameraHATE = nil
gg_snd_AAA = nil
gg_snd_AAA1 = nil
gg_snd_Load = nil
gg_trg_InitZone = nil
gg_trg_Button0IsDead = nil
gg_trg_Button12IsDead = nil
gg_trg_ResLeft = nil
gg_trg_ResRight = nil
gg_trg_InCombatZone = nil
gg_trg_EVENTMMB = nil
gg_trg_NonAttack = nil
gg_trg_sec1 = nil
gg_trg_StartMainTheme = nil
gg_unit_h002_0023 = nil
gg_dest_B000_0118 = nil
gg_dest_B006_0274 = nil
gg_dest_B000_0275 = nil
gg_dest_B000_0273 = nil
gg_rct_Zone03In = nil
gg_rct_Zone03Out = nil
gg_trg_InMineWay = nil
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
end

function CreateAllDestructables()
    local d
    local t
    local life
    gg_dest_B000_0273 = BlzCreateDestructableWithSkin(FourCC("B000"), -3264.0, 128.0, 174.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0275 = BlzCreateDestructableWithSkin(FourCC("B000"), -1472.0, 0.0, 354.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0118 = BlzCreateDestructableWithSkin(FourCC("B000"), -2432.0, -1600.0, 84.000, 1.000, 0, FourCC("B000"))
    gg_dest_B006_0274 = BlzCreateDestructableZWithSkin(FourCC("B006"), -2368.0, 640.0, -108.0, 270.000, 1.500, 0, FourCC("B006"))
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
end

function CreateUnitsForPlayer10()
    local p = Player(10)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hbot"), -2984.9, 101.9, 2.767, FourCC("hbot"))
    u = BlzCreateUnitWithSkin(p, FourCC("o001"), 2801.5, 2496.1, 177.920, FourCC("o001"))
    u = BlzCreateUnitWithSkin(p, FourCC("hbot"), -1729.2, 69.6, 171.573, FourCC("hbot"))
    u = BlzCreateUnitWithSkin(p, FourCC("hbot"), -1727.6, 1412.6, 60.770, FourCC("hbot"))
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), -1039.7, 4367.0, 305.100, FourCC("n000"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -976.1, 4667.2, 161.097, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n001"), -759.1, 4598.9, 45.617, FourCC("n001"))
    u = BlzCreateUnitWithSkin(p, FourCC("n002"), -577.8, 4546.9, 137.784, FourCC("n002"))
    u = BlzCreateUnitWithSkin(p, FourCC("n002"), -709.9, 4809.1, 21.028, FourCC("n002"))
end

function CreateNeutralPassiveBuildings()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), 384.0, -640.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -1152.0, -704.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -2368.0, -2880.0, 270.000, FourCC("o000"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer9()
    CreateBuildingsForPlayer10()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer10()
end

function CreateAllUnits()
    CreateNeutralPassiveBuildings()
    CreatePlayerBuildings()
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
    gg_rct_Region_007 = Rect(1504.0, -3296.0, 3232.0, -1600.0)
    gg_rct_Zone03In = Rect(2464.0, 1632.0, 3136.0, 1920.0)
    gg_rct_Zone03Out = Rect(-1088.0, 2208.0, -800.0, 2976.0)
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
	CreateAndForceBullet(hero,angle,30,"Abilities/Weapons/BoatMissile/BoatMissile.mdl",x,y)
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

	local fire=AddSpecialEffect("FireGun.mdl",x,y)
	local inverse=1
	if board==90 then inverse=-1 end
	BlzSetSpecialEffectMatrixScale(fire,2,2,1)
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		--local xf,yf,zf=BlzGetLocalSpecialEffectX(fire),BlzGetLocalSpecialEffectY(fire),BlzGetLocalSpecialEffectZ(fire)
		local xhero,yhero=GetUnitX(hero),GetUnitY(hero)
		local nx,ny=MoveX(xhero,80,GetUnitFacing(hero)-board),MoveY(yhero,80,GetUnitFacing(hero)-board)
		local z=GetUnitZ(hero)
		BlzSetSpecialEffectPosition(fire,nx,ny,z-140+89)
		--print("z Огня="..BlzGetLocalSpecialEffectZ(fire))
		UnitDamageLine(hero,10,nx,ny,80,80*6,GetUnitFacing(hero)-board)
		if board==-90 then
			BlzSetSpecialEffectYaw(fire,math.rad(GetUnitFacing(hero)+board-5+90))
		else
			local problem=GetUnitFacing(hero)+board-5+90
			--print("проблемный угол="..problem)
			BlzSetSpecialEffectYaw(fire,math.rad(problem))
		end
		if data.ReleaseRMB==false and board==-90 then
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
		end
		if data.ReleaseLMB==false and board==90 then
			DestroyEffect(fire)
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function CreateBarrel(hero)
	local x,y=GetUnitXY(hero)
	local id=GetPlayerId(GetOwningPlayer(hero))
	local barrel=AddSpecialEffect("Barrel_Unit.mdl",x,y)
	local angle=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD
	local dist=DistanceBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])
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

function EffectAddRegistrationCollision(eff,UnitEffectOwner,range,duration,flag)
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
				elseif flag==2 then
					if IsUnitEnemy(e,GetOwningPlayer(UnitEffectOwner)) then
						UnitDamageArea(UnitEffectOwner,100,x,y,200,z)
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
			if GetUnitTypeId(target)==DummyID  then
				local x,y=GetUnitX(target),GetUnitY(target)
				ShowUnit(target, false)
				CreateTorrent(x,y)
				UnitDamageArea(target,0,GetUnitX(target),GetUnitY(target),150)
			end
			if damage>=30 then
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
	UnitAddAbility(dummy,FourCC('A003'))
	UnitApplyTimedLife(dummy,DummyID,1)
	if targ~=nil then
		--print("цель определена- "..GetUnitName(targ))
		Cast(dummy,0,0,targ)
	else
		targ=CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), DummyID, x, y, 0)
		UnitRemoveAbility(targ,FourCC('Aloc'))
		Cast(dummy,0,0,targ)
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
				DestroyEffect(AddSpecialEffect("Abilities/Weapons/AncestralGuardianMissile/AncestralGuardianMissile.mdl",nx,ny))
			end
		end
		if k>0 then
			dif=max-min
			if dif>=90 then
				--print("dif="..dif.."при минимуме="..min)
				for i=min,0,-10 do
					total=total+360
				end
			end
			med=total/k
			if k>=7 then
				--print("selfdamage")
				UnitDamageTarget( hero, hero, 10*(k-7), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			end
			data.IsDisabled=true
			if dif>=90 then med=med-180 end
			UnitAddForce(hero,med-180,5,80)
		end
	end
end


function UnitAddForce(hero,angle,speed,distance)
	local currentdistance=0
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		currentdistance=currentdistance+speed
		local x,y=GetUnitX(hero),GetUnitY(hero)
		local newX,newY=MoveX(x,speed,angle),MoveY(y,speed,angle)
		SetUnitX(hero,newX)
		SetUnitY(hero,newY)
		if currentdistance>=distance then
			data.IsDisabled=false
			DestroyTimer(GetExpiredTimer())
			--print("stop")
		end
	end)
end

function PointContentUnit(x,y,range,condconten)
	local content=false
	local e--временный юнит
	if condconten==nil then condconten=true end
	if range==nil then range=80 end
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and condconten  then
			--UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			content=true
		end
		GroupRemoveUnit(perebor,e)
	end
	return content
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
	gg_trg_DEADGUI = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(gg_trg_DEADGUI, EVENT_PLAYER_UNIT_DEATH)--меня полностью устраивает это событие
	TriggerAddAction(gg_trg_DEADGUI, function()
		local DeadUnit=GetTriggerUnit()--умерший

		local killer=GetKillingUnit()--убийца
		if IsUnitType(DeadUnit,UNIT_TYPE_HERO) then --герои
			TimerStart(CreateTimer(), 5, false, function()
				local PD=GetOwningPlayer(DeadUnit)
				ReviveHero(DeadUnit,GetPlayerStartLocationX(PD),GetPlayerStartLocationY(PD),true)
				SelectUnitForPlayerSingle(DeadUnit,PD)
			end)
		end
	end)
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
	print("Запущено башен: "..k)
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
		GroupEnumUnitsInRange(perebor,x,y,500,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id and GetOwningPlayer(e)~=GetOwningPlayer(hero)  then
				SetUnitOwner(e,GetOwningPlayer(hero),true)
				SaveGameCheckpoint("Ship",true)
				--print(GetUnitName(hero))
				DefineStartLocation(0, x, y)
				SetPlayerStartLocation(GetOwningPlayer(hero),0)
			end
			GroupRemoveUnit(perebor,e)
		end
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 09.02.2020 13:11
---
function CreateTorrent(x,y,size)
	local torrent=nil
	local z=GetTerrainZ(x,y)
	local IsWater=false
	if size==nil then size=1 end
	if z<=-80 then
		torrent=AddSpecialEffect("Torrent1.mdl",x,y)
		BlzSetSpecialEffectMatrixScale(torrent,size,size,size/10)
		DestroyEffect(torrent)
		IsWater=true
		if size>=3 then
			UnitFlyTorrentInRange(x,y,size*50)
		end
	end
	return IsWater
end

function UnitFlyTorrentInRange(x,y,range)
	local e--временный юнит
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and GetUnitFlyHeight(e)<=10 then
			FlyUnitOnTorrent(e,500)
			UnitAddAbility(e,FourCC('Aeth'))
			if IsUnitType(e,UNIT_TYPE_HERO) then
				local data=HERO[UnitGetPid(e)]
				data.OnTorrent=true
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
			UnitRemoveAbility(hero,FourCC('Aeth'))
			if IsUnitType(hero,UNIT_TYPE_HERO) then
				local data=HERO[UnitGetPid(hero)]
				data.OnTorrent=false
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

function CreateWeaponFrame()
	local texture={
		"ReplaceableTextures\\CommandButtons\\BTNDwarvenLongRifle",
		"ReplaceableTextures\\CommandButtons\\BTNHumanMissileUpThree.blp",
		"ReplaceableTextures\\CommandButtons\\BTNClusterRockets.blp",
		"ReplaceableTextures\\CommandButtons\\BTNFireBolt.blp",
		"ReplaceableTextures\\CommandButtons\\BTNFireRocks.blp",
		"ReplaceableTextures\\CommandButtons\\BTNBarrel.blp",
		"ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp",
		"ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp",
		"ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp",
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
		BlzFrameSetAllPoints(faceHover, face)
		BlzFrameSetTooltip(faceHover, tooltip)
		BlzFrameSetTexture(face, texture[i+1],0, true)
		BlzFrameSetSize(face, 0.04, 0.04)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_TOPLEFT, next+next+next*i, next)
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
		if i>= 1 then
			BlzFrameSetVisible(buttonsprite,false)
		end
--[[
			local new_Frame = BlzCreateFrame('ScriptDialogButton', face, 0, 0)
			local new_FrameImage = BlzCreateFrameByType("BACKDROP", "ButtonIcon", new_Frame, "", 0)
			local new_FrameCharges = BlzCreateFrameByType("BACKDROP", "ButtonCharges", new_Frame, "", 0)
			local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", new_FrameCharges, "", 0)
			BlzFrameSetPoint(new_FrameCharges, FRAMEPOINT_BOTTOMRIGHT, new_FrameImage, FRAMEPOINT_BOTTOMRIGHT, -0.002, 0.002-next)
			BlzFrameSetSize(new_FrameCharges, 0.012, 0.012)
			BlzFrameSetTexture(new_FrameCharges, "ChargesTexture.blp", 0, true)
			BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, new_FrameCharges, FRAMEPOINT_CENTER, 0.,0.)
			BlzFrameSetVisible(new_FrameCharges, false)
			BlzFrameSetText(new_FrameChargesText, "0")
]]

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
	if UnitAlive(u) then
		AllPoint(u,x,y)
		AllTarget(u,target)
		AllImmediate(u)
	end
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
	for i = 1,#TargetOrders do
		--print(TargetOrders[i].." is target")
		IssueTargetOrder(u,TargetOrders[i],target)
	end
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
	SetUnitPosition(source, x, y)
	if (RAbsBJ(GetUnitX(source) - x) > 0.5) or (RAbsBJ(GetUnitY(source) - y) > 0.5) then
		SetUnitPosition(source, x, last_y)
		bx = RAbsBJ(GetUnitX(source) - x) <= 0.5
		SetUnitPosition(source, last_x, y)
		by = RAbsBJ(GetUnitY(source) - y) <= 0.5
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
		--DestroyTimer(GetExpiredTimer()) -- временно вечный таймер
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
--- DateTime: 16.02.2020 18:42
---
function InitZone0()
	TimerStart(CreateTimer(), 5, true, function()
		local x,y=GetRectCenterX(gg_rct_SingleTorrentZone),GetRectCenterY(gg_rct_SingleTorrentZone)
		CreateTorrent(x,y,4)
	end)
	--перечисляем все регистрации
	Enter00()
	StartAllSaw()
	ActivatedAllTower()
end
--CUSTOM_CODE
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
    InitTrig_InitZone()
    InitTrig_Button0IsDead()
    InitTrig_Button12IsDead()
    InitTrig_ResLeft()
    InitTrig_ResRight()
    InitTrig_InCombatZone()
    InitTrig_InMineWay()
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
    SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 11264.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 11520.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
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
    DefineStartLocation(0, 1152.0, -2880.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
end

