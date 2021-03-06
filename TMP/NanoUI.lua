---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 18.10.2020 19:39
---
---
portrait="war3mapImported\\avatar_kain.blp"
bagT="war3mapImported\\bag.dds"
empBar="war3mapImported\\VbarEMP.dds"
mainHero=nil --Переменная назначается автоматически при выборе героя

do
    TimerStart(CreateTimer(), .1, false, function()
        --HideEverything()
       -- BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false) -- черна рамка
        BlzFrameSetAbsPoint ( BlzGetFrameByName ( "ConsoleUIBackdrop" , 0 ) , FRAMEPOINT_TOPRIGHT , 0 , - 0,8 )
        BlzHideOriginFrames(true)
        BlzEnableUIAutoPosition ( false )
        local GAME_UI     = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
        local WORLD_FRAME = BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0)
        BlzFrameSetAllPoints(WORLD_FRAME, GAME_UI)
        BlzFrameSetAlpha(BlzGetFrameByName("SimpleInventoryCover", 0), 0) --скрыть заглушку отсутсвия инвентаря
        BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0), false)

        BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0)) -- ПОдсказка при наведении на дефолт фреймы
        BlzFrameSetPoint(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), FRAMEPOINT_BOTTOM, BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), FRAMEPOINT_BOTTOM, 0, 0.08)


        for i = 0,11 do --отвязка всех кнопок
            --print("очистка.. "..i)
            BlzFrameClearAllPoints(BlzGetFrameByName("CommandButton_"..i, 0))
            BlzFrameSetAbsPoint(BlzGetFrameByName("CommandButton_"..i, 0),FRAMEPOINT_CENTER,1,1)
            --
        end

        CreateQWERDFG()
        --ShowInventory()
        MenuFrame()
        ShowFPSPINGAPM()
        CreatePortrait()
        --CreateBars()
        InitSelectionRegister()

    end)
end
function HideEverything()
    --BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
    for i = 0, 11 do
        --BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false) --отключить
       -- BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. i, 0), 0, 0)--скрыть, но работать будут по хоткеям
    end
    BlzHideOriginFrames(true)--скрыть всё
end

function ShowInventory()
    local next=0.039/1.3
    local step=(next*6)+next/2
    BlzFrameSetVisible(BlzFrameGetParent(BlzGetOriginFrame(ORIGIN_FRAME_ITEM_BUTTON, 0)), true)
    BlzFrameSetAlpha(BlzGetFrameByName("SimpleInventoryCover", 0), 0)
    local infoPanel=BlzFrameGetParent(BlzGetFrameByName("SimpleInfoPanelUnitDetail",0)) -- панель стат героя
    BlzFrameClearAllPoints(infoPanel)
    BlzFrameSetVisible(infoPanel,true)
    BlzFrameSetAbsPoint(infoPanel, FRAMEPOINT_CENTER, 0,9) --0,9 чтобы полностью убрать

    for i = 0, 5 do
        local item = BlzGetOriginFrame(ORIGIN_FRAME_ITEM_BUTTON, i)
        BlzFrameSetVisible(item, true)
        BlzFrameClearAllPoints(item)
        BlzFrameSetSize(item, next, next)
        BlzFrameSetAbsPoint(item,FRAMEPOINT_BOTTOM,0.31+next/2+(next*i),0.04)

        local bag = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0), '', 0)
        BlzFrameSetParent(bag, BlzGetFrameByName("ConsoleUIBackdrop", 0))
        BlzFrameSetTexture(bag, bagT, 0, true)
        BlzFrameSetSize(bag, next, next)
        BlzFrameSetAbsPoint(bag,FRAMEPOINT_BOTTOM,0.31+next/2+(next*i),0.04)

    end
end

function MenuFrame()
    BlzFrameSetVisible(BlzGetFrameByName("UpperButtonBarFrame",0),true)
    for i=0,3 do
        local f10=BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, i)
        BlzFrameSetParent(f10, BlzGetFrameByName("ConsoleUIBackdrop", 0))
        BlzFrameSetVisible(f10, true)
        BlzFrameClearAllPoints(f10)
        BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65+(0.08*i) ,0.59)
    end
end

function CreateQWERDFG()
    local next=0.039
    for i=8,11 do --RTY
        BlzFrameSetAbsPoint(BlzGetFrameByName("CommandButton_"..i, 0), FRAMEPOINT_CENTER, 0.07-next+next*i ,next/2)
    end
    --BlzFrameSetAbsPoint(BlzGetFrameByName("CommandButton_"..0, 0), FRAMEPOINT_CENTER, 0.4 ,next*1,5) --центровка
end

function ShowFPSPINGAPM()
    BlzFrameSetVisible(BlzGetFrameByName("ResourceBarFrame",0),true)
    local fps=BlzGetFrameByName("ResourceBarFrame",0)
    BlzFrameClearAllPoints(fps)
    BlzFrameSetAbsPoint(fps, FRAMEPOINT_CENTER, 0.87 ,0.62)
end

function CreatePortrait()
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(buttonIconFrame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(buttonIconFrame, portrait, 0, true)
    BlzFrameSetSize(buttonIconFrame, 0.085, 0.16)
    BlzFrameSetAbsPoint(buttonIconFrame, FRAMEPOINT_CENTER, -0.08, 0.49)
end

function CreateBars(hero,index)
    local nextBar=0.02
    local x,y=-0.03+index*nextBar, 0.49
    local into = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(into, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(into, "Replaceabletextures\\Teamcolor\\Teamcolor0"..index..".blp", 0, true)
    BlzFrameSetSize(into, 0.0195, 0)
    BlzFrameSetAbsPoint(into, FRAMEPOINT_BOTTOM,x,y-0.075)
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(buttonIconFrame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(buttonIconFrame, empBar, 0, true)
    BlzFrameSetSize(buttonIconFrame, 0.02, 0.16)
    BlzFrameSetAbsPoint(buttonIconFrame, FRAMEPOINT_CENTER,x,y)

    local textMax = BlzCreateFrameByType("TEXT", "ButtonChargesText", buttonIconFrame, "", 0)
    BlzFrameSetPoint(textMax, FRAMEPOINT_BOTTOM, buttonIconFrame, FRAMEPOINT_BOTTOM, 0.,0.01)
    BlzFrameSetText(textMax, "100")

    local textCurrent = BlzCreateFrameByType("TEXT", "ButtonChargesText", buttonIconFrame, "", 0)
    BlzFrameSetPoint(textCurrent, FRAMEPOINT_TOP, buttonIconFrame, FRAMEPOINT_TOP, 0.,-0.01)
    BlzFrameSetText(textCurrent, "100")

    local per1=0.16/100
    local sec=0
    TimerStart(CreateTimer(), 0.05, true, function()
        --print(per1)
        sec=sec+per1
        --print(sec)
        if sec>=0.15 then
            DestroyTimer(GetExpiredTimer())
            TimerStart(CreateTimer(), 0.05, true, function()
                local hp=0
                if index==0 then
                    hp=GetUnitLifePercent(hero)
                else
                    hp=GetUnitManaPercent(hero)
                end
                BlzFrameSetText(textCurrent, R2I(hp))
                BlzFrameSetSize(into, 0.0195, hp*0.15/100)
            end)
        end
        BlzFrameSetSize(into, 0.0195, sec)
        --BlzFrameSetAbsPoint(into, FRAMEPOINT_CENTER,x,y-(0.16+sec))
    end)
end

function InitSelectionRegister()
    local this = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        TriggerRegisterPlayerUnitEvent(this, Player(i), EVENT_PLAYER_UNIT_SELECTED, nil)
    end
    TriggerAddAction(this, function()
        local hero=GetTriggerUnit()
        --print(GetUnitName(hero))
        if IsUnitType(hero,UNIT_TYPE_HERO)   then
            if GetOwningPlayer(hero)==GetTriggerPlayer()  then

                if not mainHero then
                   -- print("Определён первый герой для игрока")
                    mainHero=hero
                    ShowInventory()
                    CreateBars(hero,0)
                    CreateBars(hero,1)
                end
            end
        end
    end)
end