local t = {
    [1] = { -- [1] window with index 1 is always function window
        name = {
            default = "Function window",
        },
        -- 12 entiries - requires 12 state flags
        data = {
            {
                icon = { 4, 13, 4, 0 },
                clientWindow = 1, -- CHAR INFO
				description = {
					default = "Character Window" -- Hover Text Description
				},
                -- customWindow = 2, -- Optional. 2-... for client custom windows (this script windows) instant open.
                -- raceLimit = { 0, 1, 2 },  -- Optional.
                -- raceBoss = { 0, 1, 2, 3, 4, 5, 6, 7, 8 },  -- Optional.
                -- guildGrade = { 1, 2 },  -- Optional.
                -- isGM = false,  -- Optional.
                -- isPremium = false,  -- Optional.
            },
            {
                icon = { 4, 13, 12, 0 },
                clientWindow = 2, -- INVENTORY
				description = {
					default = "Inventory Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 5, 0 },
                clientWindow = 3, -- SKILL
				description = {
					default = "Skill Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 6, 0 },
                clientWindow = 4, -- FORCE
				raceLimit = {0, 1 },
				description = {
					default = "Force Skill Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 7, 0 },
                raceLimit = { 1 },
                clientWindow = 5, -- SUMMON (CORA ONLY)
				description = {
					default = "Summon Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 11, 0 },
                clientWindow = 6, -- MACRO
				description = {
					default = "Macro Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 8, 0 },
                clientWindow = 7, -- PARTY
				description = {
					default = "Party Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 9, 0 },
                clientWindow = 8, -- GUILD
				description = {
					default = "Guild Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 13, 0 },
                clientWindow = 9, -- MAIL
				description = {
					default = "Mail Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 14, 0 },
                clientWindow = 10, -- REP BELLATO
                raceLimit = { 0 },
                raceBoss = { 0, 1, 5 },
				description = {
					default = "Bellato Race Leader Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 15, 0 },
                clientWindow = 10, -- REP CORA
                raceLimit = { 1 },
                raceBoss = { 0, 1, 5 },
				description = {
					default = "Cora Race Leader Window" -- Hover Text Description
				},
            },
            {
                icon = { 4, 13, 16, 0 },
                clientWindow = 10, -- REP ACCRETIA
                raceLimit = { 2 },
                raceBoss = { 0, 1, 5 },
				description = {
					default = "Accretia Race Leader Window" -- Hover Text Description
				},
            },
            {
                icon = { 8, 0, 7, 1 },
                clientWindow = 49, -- REMAIN ORE
				description = {
					default = "Remaining Ore" -- Hover Text Description
				},
            },
            {
                icon = { 8, 0, 5, 421 },
                customWindow = 3, -- DAILY LOGIN
                isPremium = true,
				description = {
					default = "Daily Login Reward" -- Hover Text Description
				},
            },
        },
    },
    [2] = {
        name = {
            default = "Custom window",
        },
        width = 520,
        height = 100,
        layout = { 50, 50, 50, 0 }, -- column width
        headerWindowID = 0,   -- Optional
        footerWindowID = 0,   -- Optional
        strModal_Ok = {       -- optional.
            default = "OK",
        },
        strModal_Cancel = { -- optional.
            default = "Cancel",
        },
        strModal_Text = { -- optional.
            default = "Are you sure? ",
        },
        overlayIcons = { -- optional. max 32
            { 8,  0, 19, 295 },
            { 23, 3, 9,  0 },
            { 0,  0, 0,  0 },
            { 0,  0, 0,  0 },
        },
        data = {
            {
                icon = { 8, 0, 26, 183 },
                description = { -- Optional.
                    default = "custom tooltip",
                },
                durability = 0, -- Optional.
                tooltip = { -- Optional.
                    name = {
                        text = {
                            default = "Pseudo name",
                        },
                        color = 0xFF00FF00,
                    },
                    info = {
                        default = {
                            { "Left 1", "Right 1" },
                            { "Left 2", "Right 2" },
                            { "Left 3", "Right 3" },
                        },
                    },
                },
            },
            {
                item = "iwswd45",
                upgrade = 0x7FFF0000,
                durability = 0, -- Optional
            },
            {
                icon = { 8, 0, 26, 195 },
                description = {
                    default = "on hover text",
                },
            },
            {
                 icon = { 1, 7, 22, 0 },
                description = {
                    default = "on hover text",
                },
            },
        },
    },
    [3] = {
        name = {
            default = "RF Corruption Daily Login Reward",
        },
        width = 520,
        height = 530,
        layout = { 0, 0, 0, 0, 0, 0, 0 }, -- column width
        headerWindowID = 4,   -- Optional
        footerWindowID = 0,   -- Optional
        strModal_Ok = {       -- optional.
            default = "OK",
        },
        strModal_Cancel = { -- optional.
            default = "Cancel",
        },
        strModal_Text = { -- optional.
            default = "Claim today's rewards ? ",
        },
        overlayIcons = { -- optional. max 32
            { 8,  0, 5, 496 },
        },
        data = {
            {
                item = "ipgld01",
                upgrade = 0,
                durability = 1, -- Optional Day 1
            },
            {
                item = "ipevn05",
                upgrade = 0,
                durability = 10, -- Optional Day 2
            },
            {
                item = "irtal01",
                upgrade = 0,
                durability = 5, -- Optional Day 3
            },
            {
                item = "irtal06",
                upgrade = 0,
                durability = 5, -- Optional Day 4
            },
            {
                item = "irtal13",
                upgrade = 0,
                durability = 5, -- Optional Day 5
            },
            {
                item = "irtal03",
                upgrade = 0,
                durability = 5, -- Optional Day 6
            },
            {
                item = "irtal01",
                upgrade = 0,
                durability = 1, -- Optional Day 7
            },
            -- week 2
            {
                item = "ipgld02",
                upgrade = 0,
                durability = 1, -- Optional Day 8
            },
            {
                item = "ipgld06",
                upgrade = 0,
                durability = 1, -- Optional Day 9
            },
            {
                item = "ipgld07",
                upgrade = 0,
                durability = 1, -- Optional Day 10
            },
            {
                item = "irtal01",
                upgrade = 0,
                durability = 5, -- Optional Day 11
            },
            {
                item = "irtal06",
                upgrade = 0,
                durability = 5, -- Optional Day 12
            },
            {
                item = "irtal13",
                upgrade = 0,
                durability = 5, -- Optional Day 13
            },
            {
                item = "ipevn05",
                upgrade = 0,
                durability = 99, -- Optional Day 14
            },
            -- week 3
            {
                item = "ipgld06",
                upgrade = 0,
                durability = 1, -- Optional Day 15
            },
            {
                item = "ipgld06",
                upgrade = 0,
                durability = 1, -- Optional Day 16
            },
            {
                item = "ipgld07",
                upgrade = 0,
                durability = 1, -- Optional Day 17
            },
            {
                item = "irtal01",
                upgrade = 0,
                durability = 5, -- Optional Day 18
            },
            {
                item = "irtal06",
                upgrade = 0,
                durability = 5, -- Optional Day 19
            },
            {
                item = "irtal13",
                upgrade = 0,
                durability = 5, -- Optional Day 20
            },
            {
                item = "irtal01",
                upgrade = 0,
                durability = 1, -- Optional Day 21
            },
            -- week 4
            {
                item = "irtal01",
                upgrade = 0,
                durability = 20, -- Optional Day 22
            },
            {
                item = "bxcsa01",
                upgrade = 0,
                durability = 5, -- Optional Day 23
            },
            {
                item = "bxcsa05",
                upgrade = 0,
                durability = 5, -- Optional Day 24
            },
            {
                item = "bxdbr01",
                upgrade = 0,
                durability = 5, -- Optional Day 25
            },
            {
                item = "bxgol04",
                upgrade = 0,
                durability = 5, -- Optional Day 26
            },
            {
                item = "bxgol05",
                upgrade = 0,
                durability = 5, -- Optional Day 27
            },
            {
                item = "bxbbb01",
                upgrade = 0,
                durability = 5, -- Optional Day 28
            },
            -- week 5
            {
                item = "irtal01",
                upgrade = 0,
                durability = 20, -- Optional Day 29
            },
            {
                item = "bxcsa01",
                upgrade = 0,
                durability = 5, -- Optional Day 30
            },
            {
                item = "bxcsa05",
                upgrade = 0,
                durability = 5, -- Optional Day 31
            },
        },
    },
    [4] = {
        name = {
            default = "Daily login header",
        },
        width = 520,
        height = 90,
        layout = { 0, 0 }, -- column width
        headerWindowID = 0,   -- Optional
        footerWindowID = 0,   -- Optional
        data = {
            {
                text = {
                    default = "<c:A8E10C>RF Corruption Daily Reward<c:A8E10C>\nLogin everyday to claim your reward!",
                },
            },
            {
                 icon = { 1, 7, 22, 0 },
            },
        },
    },
 -----------------------------------BATTLE PASS------------------------------------------------

---------------------------------------------------------------------------------------
}
 
return t