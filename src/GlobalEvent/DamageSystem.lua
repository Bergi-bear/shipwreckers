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