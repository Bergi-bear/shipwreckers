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