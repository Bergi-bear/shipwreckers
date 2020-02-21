---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.01.2020 20:04

function AddQuest(questnumber,compas,hero,qx,qy,questendunit)
	local x,y=GetUnitX(hero),GetUnitY(hero)
	local model="war3mapImported/AneuCaster.mdl"
	local player=GetOwningPlayer(hero)

	--FIXME GetLocalPlayer
	if GetLocalPlayer()~=player then
		model=""
	else
		--print("звук созданного квеста")
		StartSound(bj_questSecretSound)
	end
	local QuestPointer=AddSpecialEffect(model,x,y)
	local data=Quest[questnumber]
	data.hero=hero
	data.questendunit=questendunit
	data.isactive=true
	BlzSetSpecialEffectPitch(QuestPointer,math.rad(-90))--/bj_DEGTORAD

	if compas==true then
		TimerStart(CreateTimer(), 0.03, true, function()
			local z=GetUnitZ(hero)
			local xc,yc=GetUnitX(hero),GetUnitY(hero)
			if questendunit~=nil then
				qx,qy=GetUnitX(questendunit),GetUnitY(questendunit)
			end
			local Angle=AngleBetweenXY(xc,yc,qx,qy)
			BlzSetSpecialEffectPosition(QuestPointer,MoveX(xc,130,Angle/bj_DEGTORAD),MoveY(yc,130,Angle/bj_DEGTORAD),z+10)
			BlzSetSpecialEffectYaw(QuestPointer,Angle)

			if data.isend==true then
				if GetLocalPlayer()==player then
					StartSound(bj_questCompletedSound)
				end
				DestroyTimer(GetExpiredTimer())
				DestroyEffect(QuestPointer)
				print("квест №"..questnumber.." выполнен, даём награду")
			end
		end)
		TimerStart(CreateTimer(), 10, true, function()
			if data.isend==true then
				DestroyTimer(GetExpiredTimer())
				--print("Выключаем мигалку")
			else
				PingMinimapForPlayer(player,qx,qy,3)
			end
		end)
	end
end
--BlzSetSpecialEffectMatrixScale()

function FindUnitOfType(id)
	local unit=nil
	local e--временный юнит
	local k=0
	--print("ищем")
	GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
	while true do
		e = FirstOfGroup(perebor)

		if e == nil then break end
		if UnitAlive(e) and GetUnitTypeId(e)==id then
			k=k+1
			--print("найден")
			--UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			unit=e
		end
		GroupRemoveUnit(perebor,e)
	end
	if k>1 then
		print("Ошибка получено "..k.." юнитов")
	end
	if unit==nil then
		print("Не найдено живых юнитов данного типа")
	end
	return unit
end

function QuestRegistrator(hero)
	--регистрация
	if gg_trg_InRange==nil then
		gg_trg_InRange = CreateTrigger()
	end

	TriggerRegisterUnitInRangeSimple(gg_trg_InRange, 256, hero)
	--print("регистрация для"..GetUnitName(hero))
	TriggerAddAction(gg_trg_InRange, function()
		local entering=GetTriggerUnit()
		local dataq=nil
		if GetUnitTypeId(entering)==FourCC('Obla') then--- мастер клинка
		dataq=Quest[2]
			if dataq.hero==hero and dataq.isend==false then
				dataq.isend=true
				SetPlayerAllianceStateBJ(Player(5),GetOwningPlayer(hero), bj_ALLIANCE_ALLIED_VISION)
				SetPlayerAllianceStateBJ(GetOwningPlayer(hero),Player(5), bj_ALLIANCE_ALLIED_VISION)
				QuestMessageBJ(GetPlayersAllies(GetOwningPlayer(hero)), bj_QUESTMESSAGE_UNITAVAILABLE, "|cffffff00Заключен союз:|r теперь вы имеете общий обзор с деревней орков")
			end
		end

		--Перечисляем события регистрации кого либо возле героя
		--print(GetUnitName(GetTriggerUnit()).." зарегистрирован возле "..GetUnitName(hero))
	end)
end