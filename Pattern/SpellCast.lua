



perebor=CreateGroup()
function UnitDamageArea(u,damage,x,y,range,type)
	local e--временный юнит
	GroupEnumUnitsInRange(perebor,x,y,range,null)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(u)) then -- and GetUnitCurrentOrder(unit)~="attack" then
			UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
		end
		GroupRemoveUnit(perebor,e)
	end
end




function PointContainAnyDest(x,y,range)
	local IsHooked=false
	local e=nil
	SetRect(GlobalRect, x - range, y - range, x + range, y +range)
	EnumDestructablesInRect(GlobalRect,nil,function ()
		if GetDestructableLife(GetEnumDestructable())>0 then
			IsHooked=true
		end
	end)
	if IsHooked==false then
		GroupEnumUnitsInRange(perebor,x,y,range,null)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end

			if UnitAlive(e) and IsUnitType(e,UNIT_TYPE_STRUCTURE) then
				IsHooked=true
			end
			GroupRemoveUnit(perebor,e)
		end
	end
	if IsHooked==false and InMapXY(x,y)==false then
		IsHooked=true
	end
	return IsHooked
end

----------------------------------
----------------------------------
----------------------------------
function InitSpellTrigger()
	local SpellTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)

		TriggerRegisterPlayerUnitEvent(SpellTrigger, player, EVENT_PLAYER_UNIT_SPELL_CAST)

	end
	TriggerAddAction(SpellTrigger, function()

		local caster           = GetTriggerUnit()
		local target=GetSpellTargetUnit()
		local casterX, casterY = GetUnitX(caster), GetUnitY(caster)
		local spellId          = GetSpellAbilityId()
		local ownplayer=GetOwningPlayer(caster)
		local id=GetPlayerId(ownplayer)


		if spellId == FourCC('A000') then -- Лезвия
			--local eff=AddSpecialEffectTarget("war3mapImported/ArcaneGlaive_2.mdl",caster,"chest")
			local eff                    = AddSpecialEffect("war3mapImported/ArcaneGlaive_2.mdl", casterX, casterY)
			local period                 = 0.03
			local durAll, durDmg, durCur = 0.6, 0.1, 0
			local damage                 = BlzGetUnitBaseDamage(caster, 0)/3
			local oldcd=10--BlzGetUnitAbilityCooldown(caster,spellId,0)
			local longblades=1
			local range=200*longblades
			local ttk=0

			BlzSetSpecialEffectScale(eff, 2*longblades)
			--print("oldcd="..oldcd)
			ttk=KillTreeInRange(casterX,casterY,range)
			BlzSetUnitAbilityCooldown(caster,spellId,0,oldcd-ttk)
			UnitDamageArea(caster, damage, GetUnitX(caster), GetUnitY(caster), range)--[[урон в 0 секунду]]
			TimerStart(CreateTimer(), period, true, function()
				BlzSetSpecialEffectPosition(eff, GetUnitX(caster), GetUnitY(caster), GetUnitZ(caster) + 60)
				ttk=ttk+KillTreeInRange(GetUnitX(caster), GetUnitY(caster),range)
				-- damage duration
				durCur = durCur + period
				if durCur >= durDmg then
					durCur = 0
					--print("damage")
					UnitDamageArea(caster, damage, GetUnitX(caster), GetUnitY(caster), range)
				end

				-- all duration
				durAll = durAll - period
				if durAll < 0 then
					--print("Всего срублено деревьев "..ttk)
					AddLumber(ttk,caster)
					DestroyEffect(eff)
					PauseTimer(GetExpiredTimer())
					DestroyTimer(GetExpiredTimer())
				end

			end)

		elseif spellId == FourCC('A001') then -- Крюк
			local data=HERO[GetHandleId(caster)]
			local dataT=data.TalantW
			local MaxRange=700
			if dataT.AddChain then	MaxRange=MaxRange+700	end--Удлинённый крюк
			if dataT.Pudge then	MaxRange=MaxRange+500	end--Пудж
			local EffChain={}
			local speed=50
			local ChainCount=1
			local CurRange=0
			local NewX,NewY=casterX,casterY
			local Angle=AngleBetweenXY(casterX,casterY,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD -- вот уже где реаьный разврат
			if GetPlayerMouseX[id]==0 and GetPlayerMouseY[id]==0 then	Angle=GetUnitFacing(caster)	end
			local hook=AddSpecialEffect("war3mapImported/TimberChainHead.mdl", NewX, NewY)
			local z=0
			local revers=false
			local forces=false
			local CasterRange=0
			local TreeFinderRange=70
			local ttk=0
			local damage=GetHeroStr(caster,true)--/3 убрал деление на 3
			--
			--print("0")
			--UnitRefreshAbilityTooltip(caster,spellId)
			--BlzSetAbilityExtendedTooltip(spellId,"описание",0) -- вообще не работает
			--BlzSetAbilityTooltip(spellId,"название",0) -- работает только с цифрами
			--BlzSetAbilityActivatedExtendedTooltip(spellId,"чё это вообще такое",0)-- варкрафт уходит в ошибку

			-- действия
			BlzSetSpecialEffectScale(hook, 2)
			BlzSetSpecialEffectYaw(hook,math.rad(Angle))
			TimerStart(CreateTimer(), 0.03, true, function()
				if revers==false and forces==false then
					NewX=MoveX(casterX,CurRange,Angle)
					NewY=MoveY(casterY,CurRange,Angle)
					z=GetTerrainZ(NewX, NewY) + 60

					--BlzPauseUnitEx(caster,true)
					--BlzPauseUnitEx(caster,false)
					BlzSetSpecialEffectPosition(hook,MoveX(casterX,CurRange+speed,Angle),MoveY(casterY,CurRange+speed,Angle),z)
					if ChainCount>=2 then
						EffChain[ChainCount]=AddSpecialEffect("war3mapImported/ChainElement.mdl", NewX, NewY)
						BlzSetSpecialEffectZ(EffChain[ChainCount],z)
						BlzSetSpecialEffectScale(EffChain[ChainCount], 2)
						BlzSetSpecialEffectYaw(EffChain[ChainCount],math.rad(Angle))
					end
					ChainCount=ChainCount+1
					CurRange=CurRange+speed
					if CurRange>=MaxRange  then
						--print("revers")
						revers=true
					end
					local WX,WY=MoveX(casterX,CurRange+speed,Angle), MoveY(casterY,CurRange+speed,Angle)
					if PointContainAnyDest(WX,WY,TreeFinderRange) then --and InMapXY(MoveX(casterX,CurRange+speed,Angle),MoveY(casterY,CurRange+speed,Angle))==false then
						--print("Попал в дерево")
						ttk=KillTreeInRange(WX, WY,TreeFinderRange)
						forces=true
						revers=false
						ChainCount=1
					end

				end
				if forces then

					DestroyEffect(EffChain[ChainCount])
					--print("Уничтожение куска цепи "..ChainCount)
					ChainCount=ChainCount+1
					CasterRange=CasterRange+speed
					SetUnitX(caster,MoveX(casterX,CasterRange,Angle))
					SetUnitY(caster,MoveY(casterY,CasterRange,Angle))
					--BlzPauseUnitEx(caster,true)
					--PauseUnit(caster,false)
					UnitDamageArea(caster, damage, GetUnitX(caster), GetUnitY(caster), 150)
					if CasterRange>=CurRange then
						--BlzPauseUnitEx(caster,false)
						AddLumber(ttk,caster)
						DestroyEffect(hook)
						IssueImmediateOrder(caster,"stop")
						PauseTimer(GetExpiredTimer())
						DestroyTimer(GetExpiredTimer())
					end
				end

				if revers then
					DestroyEffect(EffChain[ChainCount])
					ChainCount=ChainCount-1
					CurRange=CurRange-speed
					--BlzPauseUnitEx(caster,true)
					--PauseUnit(caster,false)
					BlzSetSpecialEffectPosition(hook,MoveX(casterX,CurRange+speed,Angle),MoveY(casterY,CurRange+speed,Angle),z)
					if ChainCount<=0 then
						--print("полная остановка")
						--BlzPauseUnitEx(caster,false)
						IssueImmediateOrder(caster,"stop")
						DestroyEffect(hook)
						PauseTimer(GetExpiredTimer())
						DestroyTimer(GetExpiredTimer())
					end
				end
			end)


		elseif spellId == FourCC('A002') then -- Запуск пилы
			local chakrum=CreateUnit(ownplayer,FourCC('e002'),casterX,casterY,0)
			local Angle=AngleBetweenXY(casterX,casterY,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD
			if GetPlayerMouseX[id]==0 and GetPlayerMouseY[id]==0 then	Angle=GetUnitFacing(caster)	end
			local MaxDistance =1000
			local CurrentDistance=DistanceBetweenXY(casterX,casterY,GetPlayerMouseX[id],GetPlayerMouseY[id])
			PlaySoundAtPointBJ(gg_snd_Saw, 100, GetUnitLoc(caster), 0)
			if CurrentDistance>=MaxDistance then CurrentDistance=MaxDistance end
			--print("Текущая дистанция= "..CurrentDistance)
			local EndX,EndY=MoveX(casterX,CurrentDistance,Angle),MoveY(casterY,CurrentDistance,Angle)
			local NewX,NewY,z = 0,0,0
			local speed=15
			local data = HERO[GetHandleId(caster)]
			local damage=BlzGetUnitBaseDamage(caster, 0)/3
			data.ChakrumUnit=chakrum
			data.IsReturned=false
			KillUnit(data.WaitReturnerUnit)
			SetUnitPathing(chakrum,false)
			BlzUnitHideAbility(caster,spellId,true)
			--UnitAddAbility(caster,FourCC('A003'))
			BlzUnitHideAbility(caster,FourCC('A003') ,false)

			--IssuePointOrder(chakram,"move",EndX,EndY)
			TimerStart(CreateTimer(), 0.03, true, function()
				NewX=MoveX(GetUnitX(chakrum),speed,Angle)
				NewY=MoveY(GetUnitY(chakrum),speed,Angle)
				z=GetTerrainZ(NewX, NewY) + 60
				SetUnitX(chakrum,NewX)
				SetUnitY(chakrum,NewY)
				SetUnitZ(chakrum,z)
				if IsUnitInRangeXY(chakrum,EndX,EndY,100) or data.IsReturned then
					UnitAddAbility(caster,FourCC('A005'))--дегенерация маны
					BlzUnitHideAbility(caster,FourCC('A005'),true)
					PauseTimer(GetExpiredTimer())
					DestroyTimer(GetExpiredTimer())
					--print("Прибыл в конечную точку или оборван")
				end
			end)
			--Таймер урона
			TimerStart(CreateTimer(), 0.1, true, function()
				--print("попытка нанести урон")
				if GetUnitState(caster,UNIT_STATE_MANA)<=1 then --закончилась мана
					data.IsReturned=true
					--print("закончилась мана")
					IssueImmediateOrder(caster,"windwalk")
				end

				UnitDamageArea(caster,damage,GetUnitX(chakrum),GetUnitY(chakrum),150)
				local ttk=KillTreeInRange(GetUnitX(chakrum), GetUnitY(chakrum),150)
				AddLumber(ttk,caster)
				if UnitAlive(chakrum)==false then
				--	print("чакрум уничтожен")
					PauseTimer(GetExpiredTimer())
					DestroyTimer(GetExpiredTimer())
				end
			end)
		elseif spellId == FourCC('A003') then -- возврат пилы
			--UnitRemoveAbility(caster,spellId)
			BlzUnitHideAbility(caster,FourCC('A003'),true)
			UnitRemoveAbility(caster,FourCC('A005'))--дегенерация маны
			UnitRemoveAbility(caster,FourCC('B001'))--её аура
			BlzUnitHideAbility(caster,FourCC('A002') ,false)
			local data = HERO[GetHandleId(caster)]
			local chakrum=data.ChakrumUnit
			data.IsReturned=true
			local NewX,NewY,z = 0,0,0
			local Angle=0
			local speed=20
			--активаця возврата
			TimerStart(CreateTimer(), 0.03, true, function()
				Angle=AngleBetweenXY(GetUnitX(chakrum),GetUnitY(chakrum),GetUnitX(caster),GetUnitY(caster))/bj_DEGTORAD
				NewX=MoveX(GetUnitX(chakrum),speed,Angle)
				NewY=MoveY(GetUnitY(chakrum),speed,Angle)
				z=GetTerrainZ(NewX, NewY) + 60
				SetUnitX(chakrum,NewX)
				SetUnitY(chakrum,NewY)
				SetUnitZ(chakrum,z)
				if IsUnitInRangeXY(chakrum,GetUnitX(caster),GetUnitY(caster),40) then
					PauseTimer(GetExpiredTimer())
					DestroyTimer(GetExpiredTimer())
					UnitRemoveAbility(caster,FourCC('A005'))--дегенерация маны
					UnitRemoveAbility(caster,FourCC('B001'))--её аура
					--print("Прибыл обратно к юниту")
					KillUnit(chakrum)
					data.WaitReturnerUnit = CreateUnit(ownplayer, FourCC('e001'), -0, 0, 0)
				end
			end)
		elseif spellId == FourCC('A007') then -- Q Талант
			local data=Talants[id]
			local hero=HEROSimple[id]
			SetUnitPosition(data.q,GetUnitX(hero),GetUnitY(hero))
			SelectUnitForPlayerSingle(data.q,ownplayer)
		elseif spellId == FourCC('A008') then -- W Талант
			local data=Talants[id]
			local hero=HEROSimple[id]
			SetUnitPosition(data.w,GetUnitX(hero),GetUnitY(hero))
			SelectUnitForPlayerSingle(data.w,ownplayer)
		elseif spellId == FourCC('A009') then -- E Талант
			local data=Talants[id]
			local hero=HEROSimple[id]
			SetUnitPosition(data.e,GetUnitX(hero),GetUnitY(hero))
			SelectUnitForPlayerSingle(data.e,ownplayer)
		elseif spellId == FourCC('A00A') then -- R Талант
			local data=Talants[id]
			local hero=HEROSimple[id]
			SetUnitPosition(data.r,GetUnitX(hero),GetUnitY(hero))
			SelectUnitForPlayerSingle(data.r,ownplayer)

		end
	end)
end