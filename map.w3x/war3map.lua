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
gg_rct_Zone04In = nil
gg_rct_WaterTreem = nil
gg_rct_BossZone1 = nil
gg_rct_Boss1Gate = nil
gg_rct_VisiblePoint0 = nil
gg_rct_Boss1Gate1 = nil
gg_rct_ActivateArrow1 = nil
gg_rct_Sercret1 = nil
gg_rct_Gate3 = nil
gg_cam_CameraHATE = nil
gg_snd_AAA = nil
gg_snd_AAA1 = nil
gg_snd_Load = nil
gg_snd_CollectOB1 = nil
gg_trg_ResArrowBotton = nil
gg_trg_Button3IsDead = nil
gg_trg_InitZone0 = nil
gg_trg_Button0IsDead = nil
gg_trg_Button12IsDead = nil
gg_trg_ResLeft = nil
gg_trg_ResRight = nil
gg_trg_InCombatZone = nil
gg_trg_Button0to1 = nil
gg_trg_Visiblepoint = nil
gg_trg_InitZone1BossOpenGate = nil
gg_trg_Button10IsDead = nil
gg_trg_EVENTMMB = nil
gg_trg_NonAttack = nil
gg_trg_sec1 = nil
gg_trg_StartMainTheme = nil
gg_unit_h002_0023 = nil
gg_dest_B000_0131 = nil
gg_dest_B000_0118 = nil
gg_dest_B006_0274 = nil
gg_dest_B000_0275 = nil
gg_dest_B000_0273 = nil
gg_dest_B000_0906 = nil
gg_dest_B000_0963 = nil
gg_dest_DTfx_1224 = nil
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
    gg_dest_B000_0906 = BlzCreateDestructableWithSkin(FourCC("B000"), 2944.0, 8256.0, 84.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0275 = BlzCreateDestructableWithSkin(FourCC("B000"), -1472.0, 0.0, 354.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0273 = BlzCreateDestructableWithSkin(FourCC("B000"), -3264.0, 128.0, 174.000, 1.000, 0, FourCC("B000"))
    gg_dest_B000_0131 = BlzCreateDestructableWithSkin(FourCC("B000"), -1600.0, 3008.0, 84.000, 1.000, 0, FourCC("B000"))
    gg_dest_B006_0274 = BlzCreateDestructableZWithSkin(FourCC("B006"), -2368.0, 640.0, -108.0, 270.000, 1.500, 0, FourCC("B006"))
    gg_dest_DTfx_1224 = BlzCreateDestructableZWithSkin(FourCC("DTfx"), -3776.0, 7872.0, -139.9, 270.000, 1.000, 0, FourCC("DTfx"))
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1236.2, 4326.5, 308.209, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -218.2, 5280.3, 308.209, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e005"), 2412.5, 7463.1, 248.200, FourCC("e005"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 6987.8, 3603.6, 342.641, FourCC("e00C"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 7795.5, 3614.4, 342.641, FourCC("e00C"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 6176.1, 3612.6, 342.641, FourCC("e00C"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 8565.6, 3553.7, 342.641, FourCC("e00C"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 8487.1, 2276.0, 342.641, FourCC("e00C"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 7680.2, 2344.8, 342.641, FourCC("e00C"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 6905.4, 2385.8, 342.641, FourCC("e00C"))
    u = BlzCreateUnitWithSkin(p, FourCC("e00C"), 6884.4, 2980.5, 342.641, FourCC("e00C"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -4800.0, 2880.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -4160.0, 2880.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 4928.0, 3008.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 4928.0, 2304.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 8064.0, 2688.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 7296.0, 3200.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 8064.0, 3200.0, 270.000, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), 7296.0, 2688.0, 270.000, FourCC("h001"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("n004"), -2432.0, 7680.0, 270.000, FourCC("n004"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("o001"), 2801.5, 2496.1, 177.920, FourCC("o001"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), -1088.0, 10560.0, 270.000, FourCC("o000"))
    u = BlzCreateUnitWithSkin(p, FourCC("o000"), 5696.0, 5248.0, 270.000, FourCC("o000"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2913.7, 3607.7, 345.796, FourCC("e004"))
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
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1750.7, 1487.5, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2543.9, -2240.3, 251.580, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 855.1, 323.7, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1125.6, 305.2, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e003"), 950.8, 203.7, 200.070, FourCC("e003"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1009.5, -3207.5, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1202.0, -3198.8, 18.886, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 1416.3, 4627.9, 308.210, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2339.7, 3620.9, 357.748, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2532.9, 3615.3, 3.283, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2719.6, 3604.2, 345.796, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2351.4, 3824.6, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2516.9, 3808.2, 335.332, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2718.1, 3804.9, 69.411, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), 524.7, 2255.7, 308.210, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), 2449.9, -1278.2, 272.570, FourCC("e007"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), 3940.2, 2463.8, 250.782, FourCC("e007"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), 3941.5, 2201.7, 218.624, FourCC("e007"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2912.3, 3808.4, 69.411, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2428.8, 3721.6, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2620.7, 3716.0, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 2815.7, 3703.1, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1346.0, 6759.2, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2962.1, 7154.5, 53.022, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1506.0, 7104.0, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1408.9, 7576.1, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1041.8, 8158.4, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1323.1, 8256.5, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1932.8, 8325.1, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 251.2, 7132.6, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1029.0, 9661.5, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 319.0, 9848.7, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1317.4, 10044.6, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1478.7, 9749.3, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1674.2, 9915.1, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1622.4, 8742.5, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 660.4, 8969.4, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1655.4, 8322.6, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 607.2, 7163.3, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 294.3, 6517.8, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 101.9, 6510.0, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -732.8, 10679.5, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -747.1, 10419.6, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1089.9, 10715.6, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 70.5, 10867.1, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -321.2, 10904.9, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1939.3, 11116.9, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 41.7, 9088.0, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -271.4, 8403.2, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 42.7, 8102.8, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -254.8, 8082.0, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), 1.7, 7627.0, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -265.0, 7396.4, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -132.0, 7860.4, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -237.6, 6883.0, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e004"), -32.1, 7386.2, 108.625, FourCC("e004"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1918.5, 7149.9, 53.022, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -1919.1, 8219.2, 53.022, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e002"), -2946.7, 8245.2, 53.022, FourCC("e002"))
    u = BlzCreateUnitWithSkin(p, FourCC("e007"), -3488.3, 8823.0, 218.624, FourCC("e007"))
    u = BlzCreateUnitWithSkin(p, FourCC("e003"), 2277.5, 7422.6, 200.070, FourCC("e003"))
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
    gg_rct_TestFog = Rect(-448.0, 6464.0, 1856.0, 11232.0)
    gg_rct_DeapZone1 = Rect(2048.0, 4000.0, 3072.0, 5440.0)
    gg_rct_Zone04In = Rect(3136.0, 2400.0, 3584.0, 3040.0)
    gg_rct_WaterTreem = Rect(1312.0, -4416.0, 5792.0, -4032.0)
    gg_rct_BossZone1 = Rect(-3328.0, 6688.0, -1536.0, 8704.0)
    gg_rct_Boss1Gate = Rect(-1600.0, 6720.0, -1216.0, 8512.0)
    gg_rct_VisiblePoint0 = Rect(-1696.0, 2848.0, -1536.0, 2976.0)
    gg_rct_Boss1Gate1 = Rect(-3040.0, 8576.0, -2400.0, 8928.0)
    gg_rct_ActivateArrow1 = Rect(-3872.0, 7776.0, -3680.0, 7968.0)
    gg_rct_Sercret1 = Rect(1856.0, 6400.0, 2624.0, 6656.0)
    gg_rct_Gate3 = Rect(3072.0, 5792.0, 3360.0, 6656.0)
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
		--hero - юнит к которому подошли
		TimerStart(CreateTimer(), 0.5, true, function()
			CallCollect(hero,AmmoBox)
			if not IsUnitInRange(hero,AmmoBox,300) then
				DestroyTimer(GetExpiredTimer())
			end
			if not UnitAlive(AmmoBox) then
				DestroyTimer(GetExpiredTimer())
			end
		end)
	end)
end

function CallCollect (hero,AmmoBox)
	local IsResurrected=false
	local IsKill=false
	--print("any")
	if not AmmoBox then

	end
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
		local data=HERO[UnitGetPid(hero)]
		--print(GetUnitName(hero).." 1")
		HealUnit(hero,9999)
		GroupEnumUnitsInRange(perebor,x,y,500,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id and data.ChkPointID~=GetHandleId(e) then  --
				local pid=GetPlayerId(GetOwningPlayer(hero))
				SetUnitOwner(e,GetOwningPlayer(hero),true)
				SaveGameCheckpoint("Ship",true)
				data.ChkPointID=GetHandleId(e)
				--print(GetUnitName(hero))
				DefineStartLocation(0, x, y)
				SetPlayerStartLocation(GetOwningPlayer(hero),0)

				--добавляем, чуть чуть чуть боеприпасов для каждого разблокированного оружия
				if GetOwningPlayer(e)~=GetOwningPlayer(hero) then
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

			SetUnitPathing(e,false)--отключени

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
MiniMap={}


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


	--NewButton()
	local next=0.039
	local qerf=0
	for i = 0, 8 do
		local face = BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		local faceHover = BlzCreateFrameByType("FRAME", "FaceFrame", face,"", 0)
		local tooltip = BlzCreateFrame("BoxedText", face, 0, 0)
		local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)

		--[[]local TextNumber = BlzCreateFrameByType("TEXT", "ButtonChargesText", face, "", 0)
		BlzFrameSetPoint(TextNumber, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0.,0.)
		BlzFrameSetText(TextNumber, i+1)]]

		local hot=BlzCreateFrameByType("BACKDROP", "Face", face, "", 0)
		BlzFrameSetTexture(hot, "DDSSymbols\\"..(i+1)..".dds", 0, true)
		BlzFrameSetSize(hot, 0.02, 0.02)
		BlzFrameSetPoint(hot, FRAMEPOINT_CENTER, face, FRAMEPOINT_CENTER, 0.,0.)

		BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)
		BlzFrameSetText(new_FrameChargesText, "0")
		BlzFrameSetAllPoints(faceHover, face)
		BlzFrameSetTooltip(faceHover, tooltip)
		BlzFrameSetTexture(face, texture[i+1],0, true)
		BlzFrameSetTexture(charges, "ChargesTexture.blp", 0, true)
		BlzFrameSetSize(face, 0.04, 0.04)
		BlzFrameSetSize(charges, 0.04, 0.012)
		BlzFrameSetAbsPoint(face, FRAMEPOINT_TOPLEFT, next+next+next*i, next*1.3)
		BlzFrameSetAbsPoint(charges, FRAMEPOINT_TOPLEFT, next+next+next*i, next*1.6)
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
		--ТАЛАНТЫ

		for k=1,3 do
			local TalantBut=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
			BlzFrameSetTexture(TalantBut, texture[i+1], 0, true)
			BlzFrameSetSize(TalantBut, 0.013, 0.013)
			--print(k)
			BlzFrameSetAbsPoint(TalantBut, FRAMEPOINT_TOPLEFT, next*1.75+next*i+next*k*.3, 0.013)
		end

		--
		qerf=next+next+next*i
		if i>= 1 then
			BlzFrameSetVisible(buttonsprite,false)
		end

		local t = CreateTrigger()
		BlzTriggerRegisterFrameEvent(t, tooltip, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, faceHover, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, face, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, buttonsprite, FRAMEEVENT_CONTROL_CLICK)
		BlzTriggerRegisterFrameEvent(t, charges, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(t,function()
			print("click "..i) -- вот тут не работает
		end)
	end
	--Создаём кнопки QERF
	--[[local gold=BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	BlzFrameSetAbsPoint(gold, FRAMEPOINT_CENTER,  0.4,0.3)
	BlzFrameSetText(gold, "Недостаточно золота")]]

	for i=1,4 do
		local SkillButton=BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
		BlzFrameSetTexture(SkillButton, "ChargesTexture.blp", 0, true)
		BlzFrameSetSize(SkillButton, 0.04, 0.04)
		BlzFrameSetAbsPoint(SkillButton, FRAMEPOINT_TOPLEFT, qerf+next*i, next*1.3)

		local hot=BlzCreateFrameByType("BACKDROP", "Face", SkillButton, "", 0)
		if i==1 then
			BlzFrameSetTexture(hot, "DDSSymbols\\q.dds", 0, true)
		elseif i==2 then
			BlzFrameSetTexture(hot, "DDSSymbols\\e.dds", 0, true)
		elseif i==3 then
			BlzFrameSetTexture(hot, "DDSSymbols\\r.dds", 0, true)
		elseif i==4 then
			BlzFrameSetTexture(hot, "DDSSymbols\\f.dds", 0, true)
		end
		BlzFrameSetSize(hot, 0.03, 0.03)
		BlzFrameSetPoint(hot, FRAMEPOINT_CENTER, SkillButton, FRAMEPOINT_CENTER, 0.,0.)
		local t = CreateTrigger()
		BlzTriggerRegisterFrameEvent(t, hot, FRAMEEVENT_CONTROL_CLICK)
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
	BlzHideOriginFrames(true)--скрыть всё
	BlzFrameSetAllPoints(WORLD_FRAME, GAME_UI)
	--BlzFrameSetVisible(BlzGetFrameByName("CinematicPortrait", 0), false)
	--скрываем по одиночке
	BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0), true)

	local map=BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP, 0)
	BlzFrameClearAllPoints(map)
	BlzFrameSetVisible(map, true)
	BlzFrameSetSize(map, 0.35, 0.35)
	BlzFrameSetAbsPoint(map,FRAMEPOINT_CENTER,0.3,0.4)
	BlzFrameSetVisible(map, false)
	MiniMap[0]=map
	MiniMap[1]=map
	MiniMap[2]=map
	MiniMap[3]=map

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
			--print(GetUnitName(e).." в переборе")
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
		SetFogStateRadius(GetOwningPlayer(hero),FOG_OF_WAR_VISIBLE,x,y,300,true)-- Небольгая подсветка

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

function SingleCannon(hero,angle,modelEff)
	if not angle then angle=GetUnitFacing(hero) end
	local x=MoveX(GetUnitX(hero),110,angle)
	local y=MoveY(GetUnitY(hero),110,angle)
	if not modelEff then modelEff="Abilities/Weapons/BoatMissile/BoatMissile.mdl" end
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
					if IsUnitType(hero,UNIT_TYPE_HERO) then
						RemoveEffect(eff)
						PlaySoundAtPointBJ( gg_snd_Load, 100, Location(x,y), 0 )
						DestroyTimer(GetExpiredTimer())
						HealUnit(hero,100)
						--print("Лечение подбор орка для"..GetUnitName(hero))
					end
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

function CreateLightingCharges(hero)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	--print("1")
	TimerStart(CreateTimer(), 0.7, true, function()
		if data.ReleaseRMB then
			HeroUpdateWeaponCharges(hero,7,-1)
			FindEnemyForLighting(hero,500)
		else
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

function FindEnemyForLighting(hero, range)
	local e=nil
	local x,y=GetUnitXY(hero)

	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	--print("2")
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) and IsUnitVisible(e,GetOwningPlayer(hero))  then
			--print("найден враг")
			if HeroUpdateWeaponCharges(hero,7,1) then
				local dummy=CreateUnit(GetOwningPlayer(hero), DummyID, GetUnitX(hero), GetUnitY(hero), 0)
				SetUnitZ(dummy,GetUnitZ(hero)+90)
				UnitAddAbility(dummy,FourCC('A00B'))-- молния
				UnitApplyTimedLife(dummy,DummyID,1)
				if not Cast(dummy,0,0,e) then
					HeroUpdateWeaponCharges(hero,7,-1)
				end
			else
				DestroyTimer(GetExpiredTimer())
			end
		end
		GroupRemoveUnit(perebor,e)
	end
end

function SawActivated(hero)
	local data=HERO[GetPlayerId(GetOwningPlayer(hero))]
	local saw=AddSpecialEffect(SawDiskModel,GetUnitXY(hero))
	local id=UnitGetPid(hero)
	BlzSetSpecialEffectScale(saw,0.7)
	--HeroUpdateWeaponCharges(hero,8,-1)
	--print("пила активирована")
	local CurAngle=GetUnitFacing(hero)
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local x,y=GetUnitXY(hero)
		local angle=AngleBetweenXY(x,y,GetPlayerMouseX[id],GetPlayerMouseY[id])/bj_DEGTORAD
		--angle=math.abs(angle)
		--print(angle)
		--if CurAngle>=angle-10 and CurAngle<=angle+10 then
		if data.ReleaseRMB then
			if CurAngle <=angle then
				if CurAngle<angle-10 then
					CurAngle=CurAngle+5
				end
			else
				CurAngle=CurAngle-5
			end
		end

		local nx,ny=MoveXY(x,y,130,angle)

		if UnitDamageArea(hero,30,nx,ny,150,GetUnitZ(hero)+50,"Abilities/Weapons/AncestralGuardianMissile/AncestralGuardianMissile.mdl") then
			--[[if HeroUpdateWeaponCharges(hero,8,1) then
			else
				DestroyTimer(GetExpiredTimer())
				DestroyEffect(saw)
			end]]
		end


		BlzSetSpecialEffectPosition(saw,nx,ny,GetUnitZ(hero)+20)
		if  data.WeaponIndex~=8 then
			DestroyTimer(GetExpiredTimer())
			DestroyEffect(saw)
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

	if  ZDamageSource+60>=z and ZDamageSource-60<=z then
		zcollision=true
	else
		--print("Высота снаряда="..ZDamageSource.."Высота юнита="..z)
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
	for i=0,0 do
		HERO[i]={
			ReleaseW=false,
			ReleaseS=false,
			ReleaseA=false,
			ReleaseD=false,
			Acceleration=0,
			ReleaseSpace=false,
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
			pid=i,
			OnWater=false,
			ForcesCount=0,
			ForceRemain={},
			ForceAngle={},
			ForceSpeed={},
			IsForce={},
			ChkPointID=0,
			--Camera=CreateUnit(Player(0), FourCC('e001'), GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0)), 0)
		}
	end
	Ammo[0]={
		Available ={
			Single=true,
			Board=true,
			Rocket=false,
			Fire=true,
			Toss=true,
			Barrel=true,
			Light=true,
			Saw=true,
			Oil=true
		},
		Count={
			Single=150,
			Board=100,
			Rocket=0,
			Fire=500,
			Toss=10,
			Barrel=10,
			Light=100,
			Saw=99,
			Oil=100
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
	-----------------------------------------------------------------OSKEY_7
	local TrigWeaponSwitch7 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch7,Player(i),OSKEY_7,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch7, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		if Ammo[pid].Available.Light then
			data.WeaponIndex=7
			SwitchWeaponVisual(pid,data.WeaponIndex)
		end
	end)
	-----------------------------------------------------------------OSKEY_8
	local TrigWeaponSwitch8 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch8,Player(i),OSKEY_8,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch8, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		if Ammo[pid].Available.Saw and  data.WeaponIndex~=8 then
			data.WeaponIndex=8
			SwitchWeaponVisual(pid,data.WeaponIndex)
			SawActivated(data.UnitHero)
		end
	end)
	-----------------------------------------------------------------OSKEY_9
	local TrigWeaponSwitch9 = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigWeaponSwitch9,Player(i),OSKEY_9,0,true)
	end
	TriggerAddAction(TrigWeaponSwitch9, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		if Ammo[pid].Available.Oil then
			data.WeaponIndex=9
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
	-----------------------------------------------------------------OSKEY_Space
	local gg_trg_EventUpSpace = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpSpace,Player(i),OSKEY_SPACE,0,true)
	end
	TriggerAddAction(gg_trg_EventUpSpace, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		BlzFrameSetVisible(MiniMap[data.pid], true)
		data.ReleaseSpace=true
	end)
	local TrigDepressSpace = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressSpace,Player(i),OSKEY_SPACE,0,false)
	end
	TriggerAddAction(TrigDepressSpace, function()
		local pid=GetPlayerId(GetTriggerPlayer())
		local data=HERO[pid]
		data.ReleaseSpace=false
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
				if data.WeaponIndex==7 and HeroUpdateWeaponCharges(hero,data.WeaponIndex,1) then
					CreateLightingCharges(hero)
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
			local Vector3 = wGeometry.Vector3
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

			if data.ReleaseSpace then
				---print("показываем миникарту")
				BlzFrameSetVisible(MiniMap[data.pid], true)
			else
				BlzFrameSetVisible(MiniMap[data.pid], false)
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

			--if data.CurrentSpeed>0 and data.Alive and data.OnTorrent==false then--
			--print("текущая скорость = "..data.CurrentSpeed)
			--[[local x,y=GetUnitX(hero),GetUnitY(hero)
			local angle=GetUnitFacing(hero)
			data.AngleForce=angle
			local zhero=GetUnitZ(hero) --GetTerrainZ(x,y)
			local newX3,newY3=MoveX(x,180,angle),MoveY(y,180,angle)
			local newX2,newY2=MoveX(x,60,angle),MoveY(y,60,angle)
			local z3=GetTerrainZ(newX3,newY3)
			local z2=GetTerrainZ(newX2,newY2)
			local Perepad=zhero-z2
			local newX,newY=MoveX(x,data.CurrentSpeed,angle),MoveY(y,data.CurrentSpeed,angle)

			if Perepad<1  then
				SetUnitPositionSmooth(hero,newX,newY)
			else
				if Perepad>110 then
					SetUnitX(hero,newX)
					SetUnitY(hero,newY)
				else
					SetUnitPositionSmooth(hero,newX,newY)
				end
			end
			]]
			------
			local k=data.ForcesCount
			local WASDMoving = Vector3:copyFromUnit(hero)
			local angle=GetUnitFacing(hero)
			local newPos=WASDMoving
			if data.CurrentSpeed>0 and data.Alive and not data.OnTorrent and not data.IsDisabled then--движение при нажатиии кнопок

				newPos=WASDMoving+WASDMoving:yawPitchOffset( data.CurrentSpeed, angle * ( math.pi / 180 ), 0.0 )
			else

			end


			if RectContainsCoords(gg_rct_WaterTreem,GetUnitXY(hero)) then
				newPos=newPos+Vector3:new(10, 0, 0)
				--print("поток")
			end
			local f=0
			for i=1,k do
				if data.ForceRemain[i]>0 then
					--print("Внешняя сила="..data.ForceRemain[i])
					f=f+1
					newPos=newPos+newPos:yawPitchOffset( data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0.0 )
					--newPos=Vector3:copyFromUnit(hero)+Vector3:new(data.ForceSpeed[i], data.ForceAngle[i] * ( math.pi / 180 ), 0)
					data.ForceRemain[i]=data.ForceRemain[i]-data.ForceSpeed[i]
				else
					if data.IsForce[i] then
						data.IsForce[i]=false
					end
				end
			end
			if f==0 then
				data.ForcesCount=0
				data.IsDisabled=false
				SetUnitPathing(hero,true)
				--print("нет больше сил")
			end


			--print("1")
			--local tempZ=PerepadZ(hero) --вырван угол data.ForceAngle[i] * ( math.pi / 180 )
			--data.AngleForce=angle
			--local NexX,NexY=
			local NexZ=0
			if data.ForcesCount==0 then
				NexZ=GetTerrainZ(MoveXY(GetUnitX(hero),GetUnitY(hero),200,GetUnitFacing(hero)))
			else
				NexZ=GetTerrainZ(MoveXY(GetUnitX(hero),GetUnitY(hero),200,data.AngleForce))
			end
		--print("Z="..NexZ)
		if NexZ<=50 then
		SetUnitPositionSmooth(hero,newPos.x,newPos.y)
		else
			--print("Высоко не перелететь")
		end
			data.XPos=GetUnitX(hero)
			data.YPos=GetUnitY(hero)

		end
	end)
end

function PerepadZ(hero)
	--print("2")
	local perepad=0
	local zhero=GetUnitZ(hero)
	local z2=GetTerrainZ(GetUnitXY(hero))
	perepad=zhero-z2
	return math.abs(perepad)
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
				print("force ="..k)
				SetUnitPathing(hero,false)--отключение
				UnitAddVectorForce(hero,med-180,10+k,80+5*k)
			end
		end
	end
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


---------ВЕКТОРА
---
function UnitAddVectorForce(hero,Angle,Speed,Distance)
	local data=nil
	local k=0
	local h=0
	if IsUnitType(hero,UNIT_TYPE_HERO) then
		h=UnitGetPid(hero)

	else
		h=GetHandleId(hero)
		print("НЕГЕРОЙ толкаемый")
	end
	if not HERO[h] then
		--print("первый толчек для "..GetUnitName(hero))
		HERO[h]={
			ForcesCount=0,
			ForceRemain={},
			ForceAngle={},
			ForceSpeed={},
			IsForce={}
		}
		--data=HERO[GetHandleId(hero)]
		--MovingSystem(hero)
	end
	data=HERO[h]
	data.ForcesCount=data.ForcesCount+1
	k=data.ForcesCount
	data.ForceRemain[k]=Distance
	data.ForceSpeed[k]=Speed
	data.ForceAngle[k]=Angle
	data.IsForce[k]=true
	data.AngleForce=Angle
	--print("параметры заданы"..GetUnitName(hero)..k)
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
--- DateTime: 11.03.2020 22:30
function FindUnitOfType(id,flag,x,y)
	--flag nil - вся карта
	--flag any - радиус
	local unit=nil
	local e--временный юнит
	local k=0
	--print("ищем")
	if not flag then
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				k=k+1
				unit=e
			end
			GroupRemoveUnit(perebor,e)
		end
	else
		GroupEnumUnitsInRange(perebor,x,y,flag,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				k=k+1
				unit=e
			end
			GroupRemoveUnit(perebor,e)
		end
	end


	if k>1 then
		print("Ошибка получено "..k.." юнитов")
	end
	if unit==nil then
		print("Не найдено живых юнитов данного типа")
	end
	return unit
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 08.03.2020 12:10
---
if(_G["WM"] == nil) then WM = (function(m,h) h(nil,(function() end), (function(e) _G[m] = e end)) end) end -- WLPM MM fallback

-- Warcraft 3 Geometry module by ScorpioT1000 / 2020
-- Thanks to DGUI by Ashujon / 2009
WM("wGeometry", function(import, export, exportDefault)
	local Functions = nil
	local Vector3 = nil
	local Matrix3 = nil
	local Matrix4 = nil
	local Camera = nil
	local zTesterLocation = Location(0,0)

	local getTerrainZ = function(x,y)
		MoveLocation(zTesterLocation, x, y)
		return GetLocationZ(zTesterLocation)
	end

	local _GetUnitZ = function(u)
		return GetUnitFlyHeight(u) + getTerrainZ(GetUnitX(u), GetUnitY(u))
	end

	local _SetUnitZ = function(u, z)
		SetUnitFlyHeight(u, z - getTerrainZ(GetUnitX(u), GetUnitY(u)), 0)
	end

	local _GetItemZ = function(i)
		return getTerrainZ(GetItemX(u), GetItemY(u))
	end

	local _GetDestructableZ = function(d)
		return getTerrainZ(GetDestructableX(d), GetDestructableY(d))
	end

	-- Must be called for each non-air unit before manipulating Z coordinate
	-- @param u Unit
	local unlockUnitZ = function(u)
		UnitAddAbility(u , 'Aave')
		UnitRemoveAbility(u , 'Aave')
	end


	-- Math functions
	Functions = {
		-- 1D clamp
		clamp = function(value, _min, _max)
			if value > _max then
				value = _max
			end
			if value < _min then
				value = _min
			end
			return value
		end,

		-- 1D distance
		distance = function(value1, value2)
			return math.abs(value1 - value2)
		end,

		-- 1D linear spline interpolation between 2 points
		lerp = function(value1, value2, amount)
			return value1 + (value2 - value1) * amount
		end,

		-- 1D hermite spline interpolation between 2 points
		hermite = function(value1, tangent1, value2, tangent2, amount)
			local v1 = value1
			local v2 = value2
			local t1 = tangent1
			local t2 = tangent2
			local s = amount
			local result = 0.
			local sCubed = s * s * s
			local sSquared = s * s

			if (amount == 0.) then
				result = value1
			elseif (amount == 1.) then
				result = value2
			else
				result = (2 * v1 - 2 * v2 + t2 + t1) * sCubed +
						(3 * v2 - 3 * v1 - 2 * t1 - t2) * sSquared +
						t1 * s +
						v1
			end
			return result
		end,

		-- 1D bezier spline interpolation between 3 points
		bezier = function(p0, p1, p2, amount)
			local amountInv = 1-amount
			return amountInv*amountInv*p0
					+ 2*amount*amountInv*p1
					+ amount*amount*p2
		end
	}



	-- 3D Vector ====================
	Vector3 = {
		-- x, y, z

		-- Create a new vector from coords. Skip the coords to create a zero vector
		new = function(self, x, y, z)
			local o = {}
			setmetatable(o,self)
			o.x = x or 0.
			o.y = y or 0.
			o.z = z or 0.
			return o
		end,

		-- Copy vector from another
		copyFrom = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.x = that.x
			o.y = that.y
			o.z = that.z
			return o
		end,

		-- Copy vector from Unit X/Y/Z
		-- @param u Unit
		copyFromUnit = function(self, u)
			local o = {}
			setmetatable(o,self)
			o.x = GetUnitX(u)
			o.y = GetUnitY(u)
			o.z = _GetUnitZ(u)
			return o
		end,

		-- Copy vector from Location X/Y/Z
		-- @param loc Location
		copyFromLocation = function(self, loc)
			local o = {}
			setmetatable(o,self)
			o.x = GetLocationX(loc)
			o.y = GetLocationY(loc)
			o.z = GetLocationZ(loc)
			return o
		end,

		-- Copy vector from Item X/Y/Z
		-- @param i Item
		copyFromItem = function(self, i)
			local o = {}
			setmetatable(o,self)
			o.x = GetItemX(i)
			o.y = GetItemY(i)
			o.z = _GetItemZ(i)
			return o
		end,

		-- Copy vector from Destructable X/Y/Z
		-- @param d Destructable
		copyFromDestructable = function(self, d)
			local o = {}
			setmetatable(o,self)
			o.x = GetDestructableX(d)
			o.y = GetDestructableX(d)
			o.z = _GetDestructableZ(d)
			return o
		end,

		-- Create a new X-oriented unit vector
		newRight = function(self)
			return Vector3:new(1.,0.,0.)
		end,

		-- Create a new Y-oriented unit vector
		newForward = function(self)
			return Vector3:new(0.,1.,0.)
		end,

		-- Create a new Z-oriented unit vector
		newUp = function(self)
			return Vector3:new(0.,0.,1.)
		end,

		length = function(self)
			return math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z)
		end,

		lengthSquared = function(self)
			return self.x*self.x+self.y*self.y+self.z*self.z
		end,

		length2d = function(self)
			return math.sqrt(self.x*self.x+self.y*self.y)
		end,

		normalize = function(self)
			local len = math.sqrt(self.x*self.x+self.y*self.y+self.z*self.z)
			return Vector3:new(self.x/len, self.y/len, self.z/len)
		end,

		distance = function(self, that)
			return math.sqrt(
					(self.x-that.x)*(self.x-that.x) +
							(self.y-that.y)*(self.y-that.y) +
							(self.z-that.z)*(self.z-that.z)
			)
		end,

		distanceSquared = function(self, that)
			return
			(self.x-that.x)*(self.x-that.x) +
					(self.y-that.y)*(self.y-that.y) +
					(self.z-that.z)*(self.z-that.z)
		end,

		__eq = function(self, that)
			return self.x == that.x and self.y == that.y and self.z == that.z
		end,

		__add = function(self, that)
			return Vector3:new(
					self.x + that.x,
					self.y + that.y,
					self.z + that.z
			)
		end,

		__sub = function(self, that)
			return Vector3:new(
					self.x - that.x,
					self.y - that.y,
					self.z - that.z
			)
		end,

		__unm = function(self, that)
			return Vector3:new(
					-self.x,
					-self.y,
					-self.z
			)
		end,

		-- Uses cross product (!)
		-- @see https://en.wikipedia.org/wiki/Cross_product
		__mul = function(self, that)
			return self:crossProduct(that)
		end,

		-- Division by a number (!)
		__div = function(self, aNumber)
			return Vector3:new(
					self.x / aNumber,
					self.y / aNumber,
					self.z / aNumber
			)
		end,

		-- @param that Vector3
		-- @return number
		-- @see https://en.wikipedia.org/wiki/Dot_product
		dotProduct = function(self, that)
			return self.x*that.x + self.y*that.y + self.z*that.z
		end,

		-- @param that Vector3
		-- @return Vector3
		-- @see https://en.wikipedia.org/wiki/Cross_product
		crossProduct = function(self, that)
			return Vector3:new(
					self.y * that.z - self.z * that.y,
					self.z * that.x - self.x * that.z,
					self.x * that.y - self.y * that.x
			)
		end,

		scale = function(self, aNumber)
			return Vector3:new(
					self.x * aNumber,
					self.y * aNumber,
					self.z * aNumber
			)
		end,

		-- Spheric coordinates offset
		-- @param distance number in game units
		-- @param yaw number (angle in radians)
		-- @param pitch number (angle in radians)
		-- @return Vector3 result point
		-- @see https://en.wikipedia.org/wiki/Aircraft_principal_axes
		yawPitchOffset = function(self, distance, yaw, pitch)
			return Vector3:new(
					distance * math.cos(yaw) * math.cos(pitch),
					distance * math.sin(yaw) * math.cos(pitch),
					distance * math.cos(pitch)
			)
		end,

		-- Transforms the vector by 3x3 matrix transformation components
		-- @param Matrix3 m
		-- @return Vector3
		-- @see https://en.wikipedia.org/wiki/Transformation_matrix
		transform3 = function(self, m)
			return Vector3:new(
					self.x*m.m11+self.y*m.m21+self.z*m.m31,
					self.x*m.m12+self.y*m.m22+self.z*m.m32,
					self.x*m.m13+self.y*m.m23+self.z*m.m33
			)
		end,

		-- Transforms the vector by 4x4 matrix transformation components
		-- @param Matrix4 m
		-- @return Vector3
		-- @see https://en.wikipedia.org/wiki/Transformation_matrix
		transform4 = function(self, m)
			local w = self.x*m.m14+self.y*m.m24+self.z*m.m34+m.m44
			return Vector3:new(
					(self.x*m.m11+self.y*m.m21+self.z*m.m31+m.m41)/w,
					(self.x*m.m12+self.y*m.m22+self.z*m.m32+m.m42)/w,
					(self.x*m.m13+self.y*m.m23+self.z*m.m33+m.m43)/w
			)
		end,

		-- Applies linear interpolation
		-- @param that Vector3
		-- @param amount current animation state, number between 0 and 1
		-- @return Vector3 result
		lerp = function(self, that, amount)
			return Vector3:new(
					Functions.lerp(self.x, that.x, amount),
					Functions.lerp(self.y, that.y, amount),
					Functions.lerp(self.z, that.z, amount)
			)
		end,

		-- Applies hermite spline interpolation
		-- @param that Vector3
		-- @param amount current animation state, number between 0 and 1
		-- @param tangent1 (optional)
		-- @param tangent2 (optional)
		-- @return Vector3 result
		hermite = function(self, that, amount, tangent1, tangent2)
			if(tangent1 == nil) then
				tangent1 = 0.
			end
			if(tangent2 == nil) then
				tangent2 = 0.
			end
			return Vector3:new(
					Functions.hermite(self.x, tangent1, that.x, tangent2, amount),
					Functions.hermite(self.y, tangent1, that.y, tangent2, amount),
					Functions.hermite(self.z, tangent1, that.z, tangent2, amount)
			)
		end,

		-- Applies bezier spline interpolation
		-- @param p2 Vector3 point 2
		-- @param p3 Vector3 point 3
		-- @param amount current animation state, number between 0 and 1
		-- @return Vector3 result
		bezier = function(self, p2, p3, amount)
			return Vector3:new(
					Functions.bezier(self.x, p2.x, p3.x, amount),
					Functions.bezier(self.y, p2.y, p3.y, amount),
					Functions.bezier(self.z, p2.z, p3.z, amount)
			)
		end,

		-- Checks if the point is in a sphere
		-- @param c Vector3 sphere center
		-- @param r number sphere radius
		-- @return boolean
		isInSphere = function(self, c, r)
			return self:distanceSquared(c) < (r*r)
		end,

		-- Checks if the point is inside axis-aligned bounding box (AABB)
		-- @param vMin
		-- @param vMax
		-- @return boolean
		isInAABB = function(self, vMin, vMax)
			return (self.x >= vMin.x and self.x <= vMax.x) and
					(self.y >= vMin.y and self.y <= vMax.y) and
					(self.z >= vMin.z and self.z <= vMax.z)
		end,

		applyToLocation = function(self, loc)
			MoveLocation(loc, self.x, self.y)
		end,

		applyToUnit = function(self, u)
			SetUnitX(u, self,x)
			SetUnitY(u, self.y)
			_SetUnitZ(u, self.z)
		end,

		__tostring = function(self)
			return "{ " .. tostring(self.x) .. ", " .. tostring(self.y) .. ", " .. tostring(self.z) .. " }"
		end,
	}
	Vector3.__index = Vector3




	-- 3x3 Matrix ====================
	Matrix3 = {
		-- m11, m12, m13
		-- m21, m22, m23
		-- m31, m32, m33

		-- Create a new matrix from coords. Skip coords to create a zero matrix
		-- @return Matrix3
		new = function(self, m11, m12, m13, m21, m22, m23, m31, m32, m33)
			local o = {}
			setmetatable(o,self)
			o.m11 = m11 or 0.
			o.m12 = m12 or 0.
			o.m13 = m13 or 0.
			o.m21 = m21 or 0.
			o.m22 = m22 or 0.
			o.m23 = m23 or 0.
			o.m31 = m31 or 0.
			o.m32 = m32 or 0.
			o.m33 = m33 or 0.
			return o
		end,

		-- Copy matrix from another
		-- @return Matrix3
		copyFrom = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.m11 = that.m11
			o.m12 = that.m12
			o.m13 = that.m13
			o.m21 = that.m21
			o.m22 = that.m22
			o.m23 = that.m23
			o.m31 = that.m31
			o.m32 = that.m32
			o.m33 = that.m33
			return o
		end,

		-- Create a new identity matrix
		-- @return Matrix3
		newIdentity = function(self)
			local o = {}
			setmetatable(o,self)
			o.m11 = 1.
			o.m12 = 0.
			o.m13 = 0.
			o.m21 = 0.
			o.m22 = 1.
			o.m23 = 0.
			o.m31 = 0.
			o.m32 = 0.
			o.m33 = 1.
			return o
		end,

		-- Create a new scaling matrix
		-- @return Matrix3
		newScaling = function(self, scaleX, scaleY, scaleZ)
			local o = {}
			setmetatable(o,self)
			o.m11 = scaleX or 1.
			o.m12 = 0.
			o.m13 = 0.
			o.m21 = 0.
			o.m22 = scaleY or 1.
			o.m23 = 0.
			o.m31 = 0.
			o.m32 = 0.
			o.m33 = scaleZ or 1.
			return o
		end,

		-- Create a new scaling matrix
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Scaling_(geometry)
		newScaling = function(self, scaleX, scaleY, scaleZ)
			return Matrix3:new(
					scaleX or 1., 0., 0.,
					0., scaleY or 1., 0.,
					0., 0., scaleZ or 1.
			)
		end,

		-- Create a new rotation X matrix from the angle (in radians)
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Rotation_matrix
		newRotationX = function(self, a)
			return Matrix3:new(
					1., 0., 0.,
					0., math.cos(a), -math.sin(a),
					0., math.sin(a), math.cos(a)
			)
		end,

		-- Create a new rotation Y matrix from the angle (in radians)
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Rotation_matrix
		newRotationY = function(self, a)
			return Matrix3:new(
					math.cos(a), 0., math.sin(a),
					0., 1., 0.,
					-math.sin(a), 0., math.cos(a)
			)
		end,

		-- Create a new rotation Z matrix from the angle (in radians)
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Rotation_matrix
		newRotationZ = function(self, a)
			return Matrix3:new(
					math.cos(a), -math.sin(a), 0.,
					math.sin(a), math.cos(a), 0.,
					0., 0., 1.
			)
		end,

		-- Create a new axis rotation matrix from the vector and angle (in radians)
		-- @param v Vector3
		-- @param a number
		-- @return Matrix3
		-- @see
		newRotationAxis = function(self, v, a)
			local cosa = math.cos(a)
			local sina = math.sin(a)
			return Matrix3:new(
					cosa+(1.-cosa)*v.x*v.x,
					(1.-cosa)*v.x*v.y-sina*v.z,
					(1.-cosa)*v.x*v.z+sina*v.y,

					(1.-cosa)*v.y*v.x+sina*v.z,
					cosa+(1.-cosa)*v.y*v.y,
					(1.-cosa)*v.y*v.z-sina*v.x,

					(1.-cosa)*v.z*v.x-sina*v.y,
					(1.-cosa)*v.z*v.y+sina*v.x,
					cosa+(1.-cosa)*v.z*v.z
			)
		end,

		-- Create a new rotation matrix from the yaw-pitch-roll vector
		-- @param v Vector3 where x = yaw, y = pitch, z = roll
		-- @return Matrix3
		-- @see https://en.wikipedia.org/wiki/Aircraft_principal_axes
		newRotationYawPitchRoll = function(self, v)
			local cosa = math.cos(v.x)
			local sina = math.sin(v.x)
			local cosb = math.cos(v.y)
			local sinb = math.sin(v.y)
			local cosy = math.cos(v.z)
			local siny = math.sin(v.z)
			return Matrix3:new(
					cosa*cosb,
					cosa*sinb*siny-sina*cosy,
					cosa*sinb*cosy+sina*siny,

					sina*cosb,
					sina*sinb*siny+cosa*cosy,
					sina*sinb*cosy-cosa*siny,

					-sinb,
					cosb*siny,
					cosb*cosy
			)
		end,

		__eq = function(self, that)
			return self.m11 == that.m11 and self.m12 == that.m12 and self.m13 == that.m13
					and self.m21 == that.m21 and self.m22 == that.m22 and self.m23 == that.m23
					and self.m31 == that.m31 and self.m32 == that.m32 and self.m33 == that.m33
		end,

		-- Matrix multiplication
		__mul = function(self, that)
			return Matrix3:new(
					self.m11*that.m11+self.m21*that.m12+self.m31*that.m13,
					self.m12*that.m11+self.m22*that.m12+self.m32*that.m13,
					self.m13*that.m11+self.m23*that.m12+self.m33*that.m13,

					self.m11*that.m21+self.m21*that.m22+self.m31*that.m23,
					self.m12*that.m21+self.m22*that.m22+self.m32*that.m23,
					self.m13*that.m21+self.m23*that.m22+self.m33*that.m23,

					self.m11*that.m31+self.m21*that.m32+self.m31*that.m33,
					self.m12*that.m31+self.m22*that.m32+self.m32*that.m33,
					self.m13*that.m31+self.m23*that.m32+self.m33*that.m33
			)
		end,

		__tostring = function(self)
			return "{ \n  " .. tostring(self.m11) .. ", " .. tostring(self.m12) .. ", " .. tostring(self.m13) .. "\n"
					.. "  " .. tostring(self.m21) .. ", " .. tostring(self.m22) .. ", " .. tostring(self.m23) .. "\n"
					.. "  " .. tostring(self.m31) .. ", " .. tostring(self.m32) .. ", " .. tostring(self.m33) .. "\n}"
		end,
	}
	Matrix3.__index = Matrix3




	-- 4x4 Matrix ====================
	Matrix4 = {
		-- m11, m12, m13, m14
		-- m21, m22, m23, m24
		-- m31, m32, m33, m34
		-- m41, m42, m43, m44

		-- Create a new matrix from coords. Skip coords to create a zero matrix
		-- @return Matrix4
		new = function(self,
		               m11, m12, m13, m14,
		               m21, m22, m23, m24,
		               m31, m32, m33, m34,
		               m41, m42, m43, m44
		)
			local o = {}
			setmetatable(o,self)
			o.m11 = m11 or 0.
			o.m12 = m12 or 0.
			o.m13 = m13 or 0.
			o.m14 = m14 or 0.
			o.m21 = m21 or 0.
			o.m22 = m22 or 0.
			o.m23 = m23 or 0.
			o.m24 = m24 or 0.
			o.m31 = m31 or 0.
			o.m32 = m32 or 0.
			o.m33 = m33 or 0.
			o.m34 = m34 or 0.
			o.m41 = m41 or 0.
			o.m42 = m42 or 0.
			o.m43 = m43 or 0.
			o.m44 = m44 or 0.
			return o
		end,

		-- Copy matrix from another 4x4 matrix
		-- @param Matrix4 that
		-- @return Matrix4
		copyFrom = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.m11 = that.m11
			o.m12 = that.m12
			o.m13 = that.m13
			o.m14 = that.m14
			o.m21 = that.m21
			o.m22 = that.m22
			o.m23 = that.m23
			o.m24 = that.m24
			o.m31 = that.m31
			o.m32 = that.m32
			o.m33 = that.m33
			o.m34 = that.m34
			o.m41 = that.m41
			o.m42 = that.m42
			o.m43 = that.m43
			o.m44 = that.m44
			return o
		end,

		-- Creates a 4x4 matrix from 3x3 matrix
		-- @param Matrix3 that
		-- @return Matrix4
		copyFrom3 = function(self, that)
			local o = {}
			setmetatable(o,self)
			o.m11 = that.m11
			o.m12 = that.m12
			o.m13 = that.m13
			o.m14 = 0.
			o.m21 = that.m21
			o.m22 = that.m22
			o.m23 = that.m23
			o.m24 = 0.
			o.m31 = that.m31
			o.m32 = that.m32
			o.m33 = that.m33
			o.m34 = 0.
			o.m41 = 0.
			o.m42 = 0.
			o.m43 = 0.
			o.m44 = 1.
			return o
		end,

		-- Create a new identity matrix
		-- @return Matrix4
		newIdentity = function(self)
			local o = {}
			setmetatable(o,self)
			o.m11 = 1.
			o.m12 = 0.
			o.m13 = 0.
			o.m14 = 0.
			o.m21 = 0.
			o.m22 = 1.
			o.m23 = 0.
			o.m24 = 0.
			o.m31 = 0.
			o.m32 = 0.
			o.m33 = 1.
			o.m34 = 0.
			o.m41 = 0.
			o.m42 = 0.
			o.m43 = 0.
			o.m44 = 1.
			return o
		end,


		__eq = function(self, that)
			return self.m11 == that.m11 and self.m12 == that.m12 and self.m13 == that.m13 and self.m14 == that.m14
					and self.m21 == that.m21 and self.m22 == that.m22 and self.m23 == that.m23 and self.m24 == that.m24
					and self.m31 == that.m31 and self.m32 == that.m32 and self.m33 == that.m33 and self.m34 == that.m34
					and self.m41 == that.m41 and self.m42 == that.m42 and self.m43 == that.m43 and self.m44 == that.m44
		end,

		-- Matrix multiplication
		__mul = function(self, that)
			return Matrix4:new(
					self.m11*that.m11+self.m21*that.m12+self.m31*that.m13+self.m41*that.m14,
					self.m12*that.m11+self.m22*that.m12+self.m32*that.m13+self.m42*that.m14,
					self.m13*that.m11+self.m23*that.m12+self.m33*that.m13+self.m43*that.m14,
					self.m14*that.m11+self.m24*that.m12+self.m34*that.m13+self.m44*that.m14,

					self.m11*that.m21+self.m21*that.m22+self.m31*that.m23+self.m41*that.m24,
					self.m12*that.m21+self.m22*that.m22+self.m32*that.m23+self.m42*that.m24,
					self.m13*that.m21+self.m23*that.m22+self.m33*that.m23+self.m43*that.m24,
					self.m14*that.m21+self.m24*that.m22+self.m34*that.m23+self.m44*that.m24,

					self.m11*that.m31+self.m21*that.m32+self.m31*that.m33+self.m41*that.m34,
					self.m12*that.m31+self.m22*that.m32+self.m32*that.m33+self.m42*that.m34,
					self.m13*that.m31+self.m23*that.m32+self.m33*that.m33+self.m43*that.m34,
					self.m14*that.m31+self.m24*that.m32+self.m34*that.m33+self.m44*that.m34,

					self.m11*that.m41+self.m21*that.m42+self.m31*that.m43+self.m41*that.m44,
					self.m12*that.m41+self.m22*that.m42+self.m32*that.m43+self.m42*that.m44,
					self.m13*that.m41+self.m23*that.m42+self.m33*that.m43+self.m43*that.m44,
					self.m14*that.m41+self.m24*that.m42+self.m34*that.m43+self.m44*that.m44
			)
		end,

		__tostring = function(self)
			return "{ \n  "..tostring(self.m11)..", "..tostring(self.m12)..", "..tostring(self.m13)..", "..tostring(self.m14).."\n"
					.."  "..tostring(self.m21)..", "..tostring(self.m22)..", "..tostring(self.m23)..", "..tostring(self.m24).."\n"
					.."  "..tostring(self.m31)..", "..tostring(self.m32)..", "..tostring(self.m33)..", "..tostring(self.m34).."\n"
					.."  "..tostring(self.m41)..", "..tostring(self.m42)..", "..tostring(self.m43)..", "..tostring(self.m44).."\n}"
		end,
	}
	Matrix4.__index = Matrix4




	-- Projections ====================
	-- Screen aspect ratio
	local screenWidth = 0.544
	local screenHeight = 0.302
	local radToDeg = 180.0 / math.pi
	local degToRad = math.pi / 180.0

	-- Builds a perspective projection matrix based on a field of view.
	-- @return Matrix4
	-- @see https://docs.microsoft.com/en-us/windows/win32/direct3d9/d3dxmatrixperspectivefovlh
	local matrix4perspective1 = function(fovy, Aspect, zn, zf)
		return Matrix4:new(2*zn/fovy,0,0,0,0,2*zn/Aspect,0,0,0,0,zf/(zf-zn),1,0,0,zn*zf/(zn-zf),0)
	end

	-- Builds a customized perspective projection matrix
	-- @return Matrix4
	-- @see https://docs.microsoft.com/en-us/windows/win32/direct3d9/d3dxmatrixperspectiveoffcenterlh
	local matrix4Perspective2 = function(n, f, r, l, t, b)
		return Matrix4:new(2*n/(r-l), 0, (r+l)/(r-l), 0, 0, 2*n/(t-b), (t+b)/(t-b), 0, 0, 0, -(f+n)/(f-n), -2*f*n/(f-n), 0, 0, -1, 0)
	end

	-- Builds a look-at matrix
	-- @param PosCamera Vector3
	-- @param AxisX Vector3
	-- @param AxisY Vector3
	-- @param AxisZ Vector3
	-- @return Matrix4
	-- @see https://docs.microsoft.com/en-us/windows/win32/direct3d9/d3dxmatrixlookatlh
	local matrix4Look = function(PosCamera, AxisX, AxisY, AxisZ)
		return Matrix4:new(AxisX.x,AxisY.x,AxisZ.x,0,AxisX.y,AxisY.y,AxisZ.y,0,AxisX.z,AxisY.z,AxisZ.z,0,-AxisX:dotProduct(PosCamera),-AxisY:dotProduct(PosCamera),-AxisZ:dotProduct(PosCamera),1)
	end



	-- Camera ====================
	-- Game camera projection state with eye and target
	-- @see https://knowledge.autodesk.com/support/3ds-max/learn-explore/caas/CloudHelp/cloudhelp/2017/ENU/3DSMax/files/GUID-B1F4F126-65AC-4CB6-BDC3-02799A0BAEF3-htm.html
	Camera = {

		-- Creates a new camera
		-- @param initialZ initial z-offset (optional), can be retrieved from GetCameraTargetPositionZ()
		new = function(self, initialZ)
			local o = {}
			setmetatable(o,self)
			o.changed = false
			o.initialZ = initialZ or 0.
			o.eye = Vector3:new(0.0, -922.668, o.initialZ+1367.912)
			o.target = Vector3:new(0, 0, o.initialZ)
			o.distance = 0.
			o.yaw = 0.
			o.pitch = 0.
			o.roll = 0.
			o.axisX = Vector3:new()
			o.axisY = Vector3:new()
			o.axisZ = Vector3:new()
			o.view = Matrix4:new()
			o.projection = matrix4Perspective2(0.5, 10000, -screenWidth/2, screenWidth/2, -screenHeight/2, screenHeight/2)
			o:_updateDistanceYawPitch()
			o:_updateAxisMatrix()

			return o
		end,

		-- Converts window coordinate to world coordinate
		-- @param v Vector3 where x and y - window coords and z - overlay range
		-- @return Vector3
		windowToWorld = function(self, v)
			return Vector3:new(
					self.eye.x+self.axisZ.x*v.z+v.x*self.axisX.x*screenWidth*v.z+v.y*self.axisY.x*screenHeight*v.z,
					self.eye.y+self.axisZ.y*v.z+v.x*self.axisX.y*screenWidth*v.z+v.y*self.axisY.y*screenHeight*v.z,
					self.eye.z+self.axisZ.z*v.z+v.x*self.axisX.z*screenWidth*v.z+v.y*self.axisY.z*screenHeight*v.z
			)
		end,

		-- Converts world coordinate to window coordinate
		-- @param v Vector3
		-- @return Vector3
		worldToWindow = function(self, v)
			v = v:transform4(self.view):transform4(self.projection)
			v.z = math.abs(v.z)
			return v
		end,

		-- @param v Vector3
		setPosition = function(self, v)
			self.eye = self.eye + (v - self.target)
			self.target = Vector3:newFrom(v)
			self.changed = true
		end,

		-- @param eye Vector3
		-- @param target Vector3
		setEyeAndTarget = function(self, eye, target)
			self.eye = Vector3:newFrom(eye)
			self.target = Vector3:newFrom(target)
			self:_updateDistanceYawPitch()
			self:_updateAxisMatrix()
			self.changed = true
		end,

		-- @param v Vector3 where x = yaw, y = pitch, z = roll
		-- @param eyeLock boolean - move target instead of eye
		setYawPitchRoll = function(self, v, eyeLock)
			local XY = self.distance*math.cos(v.y)
			local modifier = Vector3:new(
					XY*math.cos(v.x),
					XY*math.sin(v.x),
					self.distance*math.sin(v.y)
			)
			self.yaw = v.x
			self.pitch = v.y
			self.roll = v.z
			if(eyeLock) then
				self.target = self.eye + modifier
			else
				self.eye = self.target - modifier
			end
			self:_updateAxisMatrix()
			self.changed = true
		end,

		-- uses warcraft native functions
		-- @param thePlayer Player
		-- @param skipChangedFlag boolean. Set to true to deny .changed flag unsetting
		applyCameraToPlayer = function(self, thePlayer, skipChangedFlag)
			if(GetLocalPlayer() == thePlayer) then
				SetCameraField(CAMERA_FIELD_ROTATION, self.yaw*radToDeg, 0)
				SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, self.pitch*radToDeg, 0)
				SetCameraField(CAMERA_FIELD_ROLL, self.roll*radToDeg, 0)
				SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, self.distance, 0)
				-- call SetCameraTargetController(AtUnit, self.target.x, self.target.y, false)
				SetCameraField(CAMERA_FIELD_ZOFFSET, self.target.z-self.initialZ, 0)
			end
			if(not skipChangedFlag) then
				self.changed = false
			end
		end,

		-- internal use methods
		_updateDistanceYawPitch = function(self)
			local delta = (self.target - self.eye)
			self.distance = delta:length()
			self.yaw = Atan2(delta.y, delta.x)
			self.pitch = Atan2(delta.z, delta:length2d())
		end,

		_updateAxisMatrix = function(self)
			self.axisZ = (self.target - self.eye):normalize()
			local mRotation = Matrix3:newRotationAxis(self.axisZ, -self.roll)
			self.axisX = self.axisZ:crossProduct(Vector3:newUp()):normalize()
			self.axisY = self.axisX:crossProduct(self.axisZ):transform3(mRotation)
			self.axisX = self.axisX:transform3(mRotation)
			self.view = matrix4Look(self.eye, self.axisX, self.axisY, self.axisZ)
		end
	}
	Camera.__index = Camera

	local wGeometry = {
		Functions = Functions,
		Vector3 = Vector3,
		Matrix3 = Matrix3,
		Matrix4 = Matrix4,
		matrix4perspective1 = matrix4perspective1,
		matrix4Perspective2 = matrix4Perspective2,
		matrix4Look = matrix4Look,
		Camera = Camera,
		unlockUnitZ = unlockUnitZ
	}
	exportDefault(wGeometry)
	export(wGeometry)
end)
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
				DestroyGroup(temp)
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
		print("баржа отправляется в путь")
		DisableTrigger(GetTriggeringTrigger())
		local barga=FindUnitOfType(FourCC('o001'),1000,GetUnitXY(GetTriggerUnit()))
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
	local x,y=GetRectCenterX(gg_rct_SingleTorrentZone),GetRectCenterY(gg_rct_SingleTorrentZone)
	TimerStart(CreateTimer(), 5, true, function()
		CreateTorrent(x,y,4,500)
	end)
	local WaterBirth =AddSpecialEffect("Whirlpool",x,y)
	BlzPlaySpecialEffect(WaterBirth,ANIM_TYPE_BIRTH)
	--перечисляем все регистрации
	Enter00()
	StartAllSaw()
	ActivatedAllTower()
	InMineWay()
	InitZone1()--- временно потом перенести в другое место
	InitZone2()
	InitZone3()
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.02.2020 20:49

function DeeperShip()
	local ThisTrigger = CreateTrigger()
	TriggerRegisterEnterRectSimple(ThisTrigger, gg_rct_DeapZone1)
	TriggerAddAction(ThisTrigger, function()
		--print("Создаём перевернутые корабли")
		DisableTrigger(GetTriggeringTrigger())
		local x,y
		for i=1, 5 do
			x,y=GetRandomReal(GetRectMinX(gg_rct_DeapZone1), GetRectMaxX(gg_rct_DeapZone1)), GetRandomReal(GetRectMinY(gg_rct_DeapZone1), GetRectMaxY(gg_rct_DeapZone1))
			local new=CreateUnit(Player(11), FourCC('u001'), x, y, 0)
			MakeShipDeep(new)
		end

	end)
end


function MakeShipDeep(hero)
	SetUnitAnimation(hero,"Death")
	SetUnitTimeScale(hero,10)
	TimerStart(CreateTimer(), 2.1/10, false, function()
		SetUnitTimeScale(hero,0)
		TimerStart(CreateTimer(), 3.7, false, function()
			StartSheepAIDeepAggressor(hero)
		end)
	end)
end

function StartSheepAIDeepAggressor(hero)
	if UnitAI[GetHandleId(hero)]==nil then
		--	print("Запущен первый прототип ИИ")
	else
		--print("ОШИБКА, НЕВОЗМОЖНО ИЗМЕНИТЬ ТИП ИИ или добавить повторно")
		return
	end
	UnitAI[GetHandleId(hero)]={
		IsMove=true,
		IsAttack=false,
		--IsEscape=false,
		RandomTimeFactor=GetRandomReal(-.5,.5),
		xai=GetUnitX(hero),
		yai=GetUnitY(hero),
		enemy=nil
	}
	local data=UnitAI[GetHandleId(hero)]
	TimerStart(CreateTimer(), ReactionAI+data.RandomTimeFactor, true, function()--поиск врага 1 секунда по умлочанию
		local e=nil
		local x,y=GetUnitXY(hero)
		local enemy=nil
		--local HasTarget=false
		GroupEnumUnitsInRange(perebor,x,y,600,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) and IsUnitType(e,UNIT_TYPE_HERO) and not data.enemy and IsUnitVisible(e,GetOwningPlayer(hero)) then--
					enemy=e
					--print("поиск всех целей под условиями")
				if data.IsAttack==false then

					SetUnitTimeScale(hero,-0.5)
					SetUnitAnimation(hero,"Death")
					--
					data.enemy=enemy
				end
				data.IsAttack=true

			end
			GroupRemoveUnit(perebor,e)
		end

		if data.enemy~=nil then
			--print(GetUnitName(data.enemy).." цель атаки")
			if IsUnitInRange(hero,data.enemy,1000)==false then
				data.enemy=nil
			end
			--local xe,ye=GetUnitXY(enemy)
			--IssuePointOrder(hero,"move",xe,ye)
			if IsUnitInRange(hero,data.enemy,300) then
				SetUnitFacing(hero,-180+AngleBetweenXY(x,y,GetUnitX(data.enemy),GetUnitY(data.enemy))/bj_DEGTORAD)
			else
				IssueTargetOrder(hero,"move",data.enemy)
			end
			SingleCannon(hero)
		else

			if data.IsAttack and data.enemy==nil then
				data.IsAttack=false
				MakeShipDeep(hero)
			end

		end
		if UnitAlive(hero)==false then
			DestroyTimer(GetExpiredTimer())
			SetUnitTimeScale(hero,1)
			SetUnitAnimation(hero,"Death")
			--	print("умираю....")
			TimerStart(CreateTimer(), 60, false, function()
				local new=CreateUnit(Player(11), FourCC('u001'), data.xai, data.yai, 0)
				MakeShipDeep(new)
			end)
		end
	end)
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
			TimerStart(CreateTimer(), 60, false, function()
				CreateDeepMine(x,y)
			end)
		end
	end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 11.03.2020 1:03
FirstEnterBoss=false

function BossZoneInit()
	ThisTriggerBoss1 = CreateTrigger()
	TriggerRegisterEnterRectSimple(ThisTriggerBoss1, gg_rct_BossZone1)
	--local FirstEnter=false
	TriggerAddAction(ThisTriggerBoss1, function()
		local hero=GetTriggerUnit()
		if IsUnitType(hero,UNIT_TYPE_HERO) then
			--print("Запускаем Триггер")
			local boss=Kraken--FindUnitOfType(FourCC('n004')) -- определение босса
			CreateFogModifierRectBJ(true, GetOwningPlayer(hero), FOG_OF_WAR_VISIBLE, gg_rct_BossZone1)
			BlzSetUnitMaxHP(boss,10000)
			HealUnit(boss,10000)
			--DisableTrigger(GetTriggeringTrigger())
			EnumDestructablesInRectAll(gg_rct_Boss1Gate, function()	DestructableRestoreLife(GetEnumDestructable(), GetDestructableMaxLife(GetEnumDestructable()), true) end)
			if not FirstEnterBoss then
				FirstEnterBoss=true
				StartTentacleBossAI(boss)
			--	print("Запускаем ИИ босса")
			end
		end
	end)
end
faze=0
function StartTentacleBossAI(hero)
	--local faze=0
	local bossX,bossY=GetUnitXY(hero)
	local p=GetOwningPlayer(hero)



	TimerStart(CreateTimer(), 10, true, function()
		faze=faze+1
		--print("Фаза "..faze)
		if not AnyHeroContainInRect(gg_rct_BossZone1) then
			--print("Все герои вышли из зоны, восстановление зоны")
			FirstEnterBoss=false
			faze=0
			DestroyTimer(GetExpiredTimer())
			EnumDestructablesInRectAll(gg_rct_Boss1Gate, function()	KillDestructable(GetEnumDestructable())	end)
			CreateFogModifierRectBJ(false, GetOwningPlayer(HERO[0].UnitHero), FOG_OF_WAR_VISIBLE, rect)

		end
		if faze==1 then -- тентакли из воды
			TimerStart(CreateTimer(), 2, true, function()
				--print("Маркер оплетения точки")
				local e=nil
				GroupEnumUnitsInRange(perebor, bossX, bossY,1200,nil)
				while true do
					e = FirstOfGroup(perebor)
					if e == nil then break end
					if UnitAlive(e) and IsUnitEnemy(e,p) then
						local nx,ny=0,0
						for i=0,5 do
							nx,ny=MoveXY(GetUnitX(e),GetUnitY(e),200,60*i)
							CreateTorrent(nx,ny,2)
							CreateTentacle(hero,nx,ny,5,1)
						end
					end
					GroupRemoveUnit(perebor,e)
				end
				if faze~=1 or not UnitAlive(hero)  then
					DestroyTimer(GetExpiredTimer())
				end
			end)
		elseif faze==2 then
			TimerStart(CreateTimer(), 1, true, function()
				--print("Попытки притянуть героев")
				local e=nil
				GroupEnumUnitsInRange(perebor, bossX, bossY,1300,nil)
				while true do
					e = FirstOfGroup(perebor)
					if e == nil then break end
					if UnitAlive(e) and IsUnitEnemy(e,p) then
						local angle=-180+AngleBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(e),GetUnitY(e))/bj_DEGTORAD
						UnitAddVectorForce(e,angle,5,DistanceBetweenXY(GetUnitX(hero),GetUnitY(hero),GetUnitX(e),GetUnitY(e)))
					end
					GroupRemoveUnit(perebor,e)
				end
				if faze~=2  then -- тут так задумано or not UnitAlive(hero)
				--	print("конец фазы притягивания")
					DestroyTimer(GetExpiredTimer())
				end
			end)
		elseif faze==3 then --большая шупальца
			--Units\Creeps\ForgottenOne\ForgottenOneTent
			local big=AddSpecialEffect("Units\\Creeps\\ForgottenOne\\ForgottenOneTent",bossX,bossY)
			BlzSetSpecialEffectScale(big,1.7)
			BlzPlaySpecialEffect(big,ANIM_TYPE_ATTACK)
			local k=GetRandomInt(0,11)
			TimerStart(CreateTimer(), 0.7, false, function()--задержка
				TimerStart(CreateTimer(), 1, true, function()-- анимация ударов
					--print("play")
					BlzPlaySpecialEffect(big,ANIM_TYPE_ATTACK)
					if faze~=3 or not UnitAlive(hero)  then
						DestroyTimer(GetExpiredTimer())
						DestroyEffect(big)
					end
				end)
			end)
			TimerStart(CreateTimer(), 1, true, function()--удары
				BlzSetSpecialEffectYaw(big,math.rad(k*30))
				local ax,ay=MoveXY(bossX,bossY,330,k*30)
				CreateTorrent(ax,ay,3)
				UnitDamageArea(hero,250,ax,ay,150)

				--BlzPlaySpecialEffect(big,ANIM_TYPE_ATTACK)

				k=k+1
				--print(k)
				if faze~=3 or not UnitAlive(hero)  then
					DestroyTimer(GetExpiredTimer())
					DestroyEffect(big)
				end
			end)
		elseif faze==4 then-- буллет хелл
			faze=0
			TimerStart(CreateTimer(), 1, true, function()
				--local angle=GetRandomInt(0,360)
				local factor= GetRandomInt(30,50)
				for i=1,12 do
					SingleCannon(hero,factor*i,"Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
				end
				if faze~=0 or not UnitAlive(hero)  then
					DestroyTimer(GetExpiredTimer())
				end
			end)
		end
		if not UnitAlive(hero) then
			print("Босс умер")
			faze=0
			local new=CreateUnit(GetOwningPlayer(boss), FourCC('o000'),bossX ,bossY , GetRandomInt(0,360))
			SetUnitTimeScale(new,-1)
			SetUnitAnimation(new,"Death")
			DestroyTrigger(ThisTriggerBoss1)
			EnumDestructablesInRectAll(gg_rct_Boss1Gate, function()	KillDestructable(GetEnumDestructable())	end)
			EnumDestructablesInRectAll(gg_rct_Boss1Gate1, function() KillDestructable(GetEnumDestructable()) end)
			DestroyTimer(GetExpiredTimer())

		end
	end)
end

function CreateTentacle(boss,x,y,time, delay)
	local new
	TimerStart(CreateTimer(), delay, false, function()
		new=CreateUnit(GetOwningPlayer(boss), FourCC('nfgt'), x ,y, GetRandomInt(0,360))
		SetUnitAnimation(new,"birth")
		UnitApplyTimedLife(new,GetUnitTypeId(new),time)
	end)

	return new
end


function AnyHeroContainInRect(rect)
	local contain=false
	local PIG=1--Player In Game
	for i=0,PIG-1 do
		if  RectContainsUnit(rect,HERO[i].UnitHero) then
			contain=true
		else
			CreateFogModifierRectBJ(false, GetOwningPlayer(HERO[i].UnitHero), FOG_OF_WAR_VISIBLE, rect)
			CreateFogModifierRectBJ(true, GetOwningPlayer(HERO[i].UnitHero), FOG_OF_WAR_MASKED, rect)
			CreateFogModifierRectBJ(true, GetOwningPlayer(HERO[i].UnitHero), FOG_OF_WAR_FOGGED, rect)
		end
	end
	return contain
end

function TentacleInFog()
	TimerStart(CreateTimer(), 10,true, function()
		--print("период")
		if not UnitAlive(Kraken) then
			DestroyTimer(GetExpiredTimer())
		end
		for i=0,3 do
			local hero=HERO[i].UnitHero
			--print("i="..i..GetUnitName(hero))
			if not Kraken then print("Кракен не определён") end
			if IsUnitInRange(Kraken,hero,2800) or RectContainsCoords(gg_rct_TestFog,GetUnitXY(hero)) then
				--print("призыв")
				CreateTorrent(GetUnitXY(hero))
				CreateTentacle(Kraken,GetUnitX(hero),GetUnitY(hero),10,0.5)
			end
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
	DeeperShip()
	Kraken=FindUnitOfType(FourCC('n004'))
	BossZoneInit()
	TentacleInFog()
	--Открыть ворота к боссу
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

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.02.2020 18:42
---
function InitZone2()

	EnterArrow1()
end



function EnterArrow1()
	local ThisTrigger = CreateTrigger()
	local button=gg_dest_DTfx_1224
	TriggerRegisterEnterRectSimple(ThisTrigger, gg_rct_ActivateArrow1)
	TriggerAddAction(ThisTrigger, function()
		--print("смерть")
		--CreateArrow()
		KillDestructable(button)
		TimerStart(CreateTimer(),2,true, function ()
			DestructableRestoreLife(button, GetDestructableMaxLife(button), true)
			if PointContentUnit(GetDestructableX(button),GetDestructableY(button),200) then
				--print("Юнит втутри ")
				KillDestructable(button)
				--CreateArrow()
			else
				DestroyTimer(GetExpiredTimer())
				--print("Разрушение таймера ")
			end
		end)
	end)
end

function CreateArrow()
	print("Выпускаем стрелу")
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 07.03.2020 0:35
---

function TorrentReplacer()
	local e=nil
	local k=0
	local id=FourCC('e00C')--!!!!!--Глифы торрентовdddc
		GroupEnumUnitsInRect(perebor,bj_mapInitialPlayableArea,nil)
		while true do
			e = FirstOfGroup(perebor)
			if e == nil then break end
			if UnitAlive(e) and GetUnitTypeId(e)==id then
				local x,y=GetUnitXY(e)
				KillUnit(e)
				k=k+1
				CreateWhirlpool(x,y)
			end
			GroupRemoveUnit(perebor,e)
		end
		--print("Заменено существ: "..k)
end

function CreateWhirlpool(x,y)
	local eff =AddSpecialEffect("Whirlpool",x,y)
	BlzSetSpecialEffectZ(eff,-190)
	BlzPlaySpecialEffect(eff,ANIM_TYPE_BIRTH)
	TimerStart(CreateTimer(), 5, true, function()
		CreateTorrent(x,y,4,500)
	end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.02.2020 18:42
---
function InitZone3()

	TorrentReplacer()
end


--CUSTOM_CODE
function Trig_ResArrowBotton_Actions()
        CreateArrow()
    TriggerSleepAction(2)
    DestructableRestoreLife(GetDyingDestructable(), GetDestructableMaxLife(GetLastCreatedDestructable()), true)
end

function InitTrig_ResArrowBotton()
    gg_trg_ResArrowBotton = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_ResArrowBotton, gg_dest_DTfx_1224)
    TriggerAddAction(gg_trg_ResArrowBotton, Trig_ResArrowBotton_Actions)
end

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

function Trig_InitZone0_Func001A()
    KillDestructable(GetEnumDestructable())
end

function Trig_InitZone0_Actions()
    EnumDestructablesInRectAll(gg_rct_Zone02In, Trig_InitZone0_Func001A)
end

function InitTrig_InitZone0()
    gg_trg_InitZone0 = CreateTrigger()
    TriggerAddAction(gg_trg_InitZone0, Trig_InitZone0_Actions)
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

function Trig_Visiblepoint_Actions()
    DisableTrigger(GetTriggeringTrigger())
    CreateFogModifierRectBJ(true, GetOwningPlayer(GetTriggerUnit()), FOG_OF_WAR_VISIBLE, gg_rct_VisiblePoint0)
end

function InitTrig_Visiblepoint()
    gg_trg_Visiblepoint = CreateTrigger()
    TriggerRegisterEnterRectSimple(gg_trg_Visiblepoint, gg_rct_Zone03Out)
    TriggerAddAction(gg_trg_Visiblepoint, Trig_Visiblepoint_Actions)
end

function Trig_InitZone1BossOpenGate_Func001A()
    KillDestructable(GetEnumDestructable())
end

function Trig_InitZone1BossOpenGate_Actions()
    EnumDestructablesInRectAll(gg_rct_Boss1Gate, Trig_InitZone1BossOpenGate_Func001A)
end

function InitTrig_InitZone1BossOpenGate()
    gg_trg_InitZone1BossOpenGate = CreateTrigger()
    TriggerAddAction(gg_trg_InitZone1BossOpenGate, Trig_InitZone1BossOpenGate_Actions)
end

function Trig_Button10IsDead_Func001A()
    KillDestructable(GetEnumDestructable())
end

function Trig_Button10IsDead_Actions()
    EnumDestructablesInRectAll(gg_rct_Sercret1, Trig_Button10IsDead_Func001A)
end

function InitTrig_Button10IsDead()
    gg_trg_Button10IsDead = CreateTrigger()
    TriggerRegisterDeathEvent(gg_trg_Button10IsDead, gg_dest_B000_0906)
    TriggerAddAction(gg_trg_Button10IsDead, Trig_Button10IsDead_Actions)
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
    InitTrig_ResArrowBotton()
    InitTrig_Button3IsDead()
    InitTrig_InitZone0()
    InitTrig_Button0IsDead()
    InitTrig_Button12IsDead()
    InitTrig_ResLeft()
    InitTrig_ResRight()
    InitTrig_InCombatZone()
    InitTrig_Button0to1()
    InitTrig_Visiblepoint()
    InitTrig_InitZone1BossOpenGate()
    InitTrig_Button10IsDead()
    InitTrig_EVENTMMB()
    InitTrig_NonAttack()
    InitTrig_sec1()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_InitZone0)
    ConditionalTriggerExecute(gg_trg_InitZone1BossOpenGate)
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
    DefineStartLocation(0, 6528.0, 4480.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
end

