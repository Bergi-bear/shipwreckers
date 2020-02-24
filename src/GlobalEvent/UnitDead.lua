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
	end)
end