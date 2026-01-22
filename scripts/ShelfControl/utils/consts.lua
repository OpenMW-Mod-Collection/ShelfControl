MAXINT = 2 ^ 53

UnrestrictiveFactions = {
    -- vanilla
    ["temple"]             = true,
    ["imperial cult"]      = true,
    ["talos cult"]         = true,
    -- TD
    ["t_mw_temple"]        = true,
    ["t_mw_imperialCult"]  = true,
    ["t_cyr_imperialCult"] = true,
    ["t_sky_imperialCult"] = true,
}

Spellbooks = {
    -- vanilla
    bk_SecretsDwemerAnimunculi      = true,
    -- Tamriel Data
    T_Bk_AboveItAllTR               = true,
    T_Bk_AdventuresEndTR            = true,
    T_Sc_BattleCryTR                = true,
    T_Note_BloodBeatTR              = true,
    T_Sc_BonesongTR                 = true,
    T_Bk_BonewalkerRitualsTR        = true,
    T_Bk_BonewalkerRitualsOTR       = true,
    T_Note_BralegelsNoteTR          = true,
    T_Bk_BreakoutTR                 = true,
    T_Sc_CallOfTheBeastsTR          = true,
    T_Bk_CavesOfIceTR               = true,
    T_Note_ChaoticallyScrawledTR    = true,
    T_Bk_CowardiceOfTheEnemyTR      = true,
    T_Bk_DalgorJournalTR            = true,
    T_Bk_FableValenwoodTR           = true,
    T_Bk_TheFaithfulTR              = true,
    T_Bk_FollyOfSteelTR             = true,
    T_Sc_FoundationsOfProtectionTR  = true,
    T_Bk_HandInHandTR               = true,
    T_Bk_HandsOffTR                 = true,
    T_Bk_BreakInSetOfArmorTR        = true,
    T_Bk_InterrogatingDunmerTR      = true,
    T_Bk_JustPunishmentTR           = true,
    T_Bk_LaidLowTR                  = true,
    T_Bk_LikeInTheDealTR            = true,
    T_Bk_LockedCellarTR             = true,
    T_Bk_MasonSongTR                = true,
    T_Bk_MostCruelTradeTR           = true,
    T_Bk_MothersDiaryTR             = true,
    T_Bk_MysteriesOfTheWormTR       = true,
    T_Sc_NewFoundHealthGalodusTR    = true,
    T_Bk_OlgolGroMuksPrivateNotesTR = true,
    T_Bk_ElementalDaedraTR          = true,
    T_Bk_OnTheMoveTR                = true,
    T_Bk_ThePeryitonVol1CloseTR     = true,
    T_Bk_ThePeryitonVol1OpenTR      = true,
    T_Bk_ThePeryitonVol2CloseTR     = true,
    T_Bk_ThePeryitonVol2OpenTR      = true,
    T_Bk_ThePeryitonVol3CloseTR     = true,
    T_Bk_ThePeryitonVol3OpenTR      = true,
    T_Bk_ThePeryitonVol4CloseTR     = true,
    T_Bk_ThePeryitonVol4OpenTR      = true,
    T_Bk_ThePeryitonVol5CloseTR     = true,
    T_Bk_ThePeryitonVol5OpenTR      = true,
    T_Sc_PrayerToAzuraTR            = true,
    T_Sc_PrideUnboundTR             = true,
    T_Sc_RalenRothadasMemoirTR      = true,
    T_Sc_ReunrefinedTR              = true,
    T_Sc_ReverenceTR                = true,
    T_Bk_RuhnAniaAlmsiviTR          = true,
    T_Bk_SecondDoorTR               = true,
    T_Bk_SeekingHomeTR              = true,
    T_Bk_SevenPennantsTR            = true,
    T_Bk_SmallKindnessTR            = true,
    T_Bk_SpectrumStudyTR            = true,
    T_Sc_SteadfastTR                = true,
    T_Sc_StillImageTR               = true,
    T_Bk_TasteOfSugarTR             = true,
    T_Sc_ThreeSonetsTR              = true,
    T_Sc_EntangleDreamTR            = true,
    T_Bk_TheTormentKlauseinTR_V1    = true,
    T_Bk_TheTormentKlauseinTR_V2    = true,
    T_Bk_TrueJusticeTR              = true,
    -- T_Bk_WeightOfGuiltTR            = true, -- excluded due to being a TG quest item
}

-- +----------------------------------+
-- | Consts for buyable book messages |
-- +----------------------------------+

CitiesWithOrdinators = {
    "vivec",
    "mournhold",
    "necrom",
}
MANY_VENDORS_THRESHOLD = 3
LOW_DISPOSITION = 30

-- +------------------------------------+
-- | Consts for NPC owned book messages |
-- +------------------------------------+

MagicClasses = {
    -- criteria for adding is:
    -- Specialization: Magic
    -- And at least 3/5 major skills need to be magic (may have exceptions)

    -- vanilla playable
    battlemage      = true,
    healer          = true,
    mage            = true,
    nightblade      = true,
    sorcerer        = true,
    spellsword      = true,
    witchhunter     = true,
    -- vanilla NPC
    alchemist       = true,
    enchanter       = true,
    ["guild guide"] = true,
    mabrigash       = true,
    necromancer     = true,
    priest          = true,
    warlock         = true,
    ["wise woman"]  = true,
    witch           = true,
    -- bloodmoon NPC
    shaman          = true,
    -- TD
    astrologer      = true,
    naturalist      = true,
    ["clever-man"]  = true,
}
LOW_INT = 30
HIGH_ENCH = 75

-- +----------------------------------------+
-- | Consts for faction owned book messages |
-- +----------------------------------------+

FactionArchetypes = {
    -- it's all over the place, I know...
    mage = {
        -- vanilla
        ["mages guild"]      = true,
        telvanni             = true,
        -- TD
        ["t_cyr_magesguild"] = true,
        ["t_ham_magesguild"] = true,
        ["t_sky_magesguild"] = true,
    },
    warrior = {
        -- vanilla
        ["fighters guild"]       = true,
        ["imperial legion"]      = true,
        redoran                  = true,
        blades                   = true,
        -- TD
        ["t_cyr_imperiallegion"] = true,
        ["t_cyr_blades"]         = true,
        ["t_sky_fightersguild"]  = true,
    },
    rogue = {
        -- vanilla
        ["thieves guild"]      = true,
        ["morag tong"]         = true,
        hlaalu                 = true,
        -- TD
        ["t_cyr_thievesguild"] = true,
        ["t_sky_thievesguild"] = true,
    }
}
