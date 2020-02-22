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