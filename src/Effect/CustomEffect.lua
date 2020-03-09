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
				UnitAddVectorForce(e,angle,distance/16,distance*3)
				--print(distance..GetUnitName(e))
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