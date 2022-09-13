CreatorSettings = {
    CreatorTitle = "Création", -- Titre du menu 
    CreatorSubtitle = "~b~Création de personnage", -- Sous-titre du menu 
    EndingMessage = "~g~Bienvenue sur la Template Pixerian - Community !",
    EnableRandomSpawn = false, -- Activer ou non le fait de spawn aléatoirement au lieu de choisir selon les positions indiqués dans (CreatorSettings.SpawnSpoint)
    ApparationList = {Index = 1, "Los Santos", "Sandy Shore", "Paleto Bay"}, -- Liste des lieux d'apparitions 
    SpawnPoint = { -- Configuration des lieux d'apparitions 
        {x = -875.06390380859, y = -434.12512207031, z = 38.499759674072, h = 297.08}, -- Los Santos
        {x = 1508.5308837891, y = 3580.7763671875, z = 35.435287475586, h = 30.69543838500976}, -- Sandy Shore
        {x = -96.31616973877, y = 6324.2807617188, z = 31.576301574707, h = 317.6529846191406} -- Paleto Bay
    },
    EnableItem = true, -- Activer ou non le fait de donner des items à la fin de la création de personnage 
    ItemList = { -- Liste des items donné à la fin de la création de personnage si (CreatorSettings.Enable == true)
        {name = "bread", count = 10}
    },
    Board = { -- Configuration de l'ardoise que tient la personne qui fait sa création
        FirstText = "Sans-Emploi",
        SecondText = "Los Angeles",
        ThirdText = "Police department"
    },
    ClothesList = { -- Configuration des tenues lors de la création de personnage
        {
            name = "Décontractée",
            ["male"] = {
                ['tshirt_1'] = 0,  ['tshirt_2'] = 1,
                ['torso_1'] = 3,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 1,
                ['pants_1'] = 5,   ['pants_2'] = 0,
                ['shoes_1'] = 6,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = -1,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
            ["female"] = {
                ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                ['torso_1'] = 488,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 15,
                ['pants_1'] = 11,   ['pants_2'] = 0,
                ['shoes_1'] = 3,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
        },
        {
            name = "Plage",
            ["male"] = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 15,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 15,
                ['pants_1'] = 6,   ['pants_2'] = 2,
                ['shoes_1'] = 5,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
            ["female"] = {
                ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                ['torso_1'] = 18,   ['torso_2'] = 4,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 15,
                ['pants_1'] = 5,   ['pants_2'] = 10,
                ['shoes_1'] = 5,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
        },
        {
            name = "Work",
            ["male"] = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 95,   ['torso_2'] = 2,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 11,
                ['pants_1'] = 4,   ['pants_2'] = 2,
                ['shoes_1'] = 7,   ['shoes_2'] = 2,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
            ["female"] = {
                ['tshirt_1'] = 21,  ['tshirt_2'] = 0,
                ['torso_1'] = 66,    ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 7,
                ['pants_1'] = 23,    ['pants_2'] = 12,
                ['shoes_1'] = 7,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,    ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,   ['bproof_2'] = 0,
            },
        },
        {
            name = "Streetwear",
            ["male"] = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 1,
                ['torso_1'] = 352,   ['torso_2'] = 2,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 4,
                ['pants_1'] = 0,   ['pants_2'] = 3,
                ['shoes_1'] = 7,   ['shoes_2'] = 1,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
            ["female"] = {
                ['tshirt_1'] = 60,  ['tshirt_2'] = 0,
                ['torso_1'] = 355,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 6,
                ['pants_1'] = 1,   ['pants_2'] = 6,
                ['shoes_1'] = 3,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
        },
        {
            name = "Manager",
            ["male"] = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 1,
                ['torso_1'] = 349,   ['torso_2'] = 3,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 4,
                ['pants_1'] = 24,   ['pants_2'] = 1,
                ['shoes_1'] = 10,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = -1,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
            ["female"] = {
                ['tshirt_1'] = 14,  ['tshirt_2'] = 1,
                ['torso_1'] = 357,   ['torso_2'] = 2,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 0,
                ['pants_1'] = 23,   ['pants_2'] = 0,
                ['shoes_1'] = 7,   ['shoes_2'] = 0,
                ['helmet_1'] = -1,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = -1,     ['ears_2'] = 0,
                ['mask_1'] = 0,     ['mask_2'] = 0,
                ['bags_1'] = 0,     ['bags_2'] = 0,
                ['bproof_1'] = 0,     ['bproof_2'] = 0,
            },
        }
    },
    -- NE PAS TOUCHER A CETTE PARTIE
    Similarity = 5,
    ShapeMixData = 0.5, 
    SkinMixData = 0.5, 
    SkinColor = 5,
    IdentityLastName = "",
    IdentityFirstName = "",
    IdentitySex = "",
    IdentityDDN = "",
    IdentityHeight = "",
    PrincipalCam = {x = 402.92, y = -1000.72, z = -99.01, fov = 20.00},
    BodyCam = {x = 402.92, y = -1000.72, z = -99.01, fov = 25.00},
    PlayerSex = {Index = 1, "Homme", "Femme"},
    MomList = {Index = 1, "Hannah", "Aubrey", "Jasmine", "Gisele", "Amelia", "Isabella", "Zoe", "Ava", "Camila", "Violet", "Sophia", "Evelyn", "Nicole", "Ashley", "Gracie", "Brianna", "Natalie", "Olivia", "Elizabeth", "Charlotte", "Emma" },
    DadList = {Index = 1, "Benjamin", "Daniel", "Montsef", "Noah", "Andrew", "Juan", "Alex", "Isaac", "Evan", "Ethan", "Vincent", "Angel", "Diego", "Jibril", "Gabriel", "Michael", "Santiago", "Kevin", "Louis", "Samuel", "Anthony", " Claude", "Niko" },
    GridPanels = {
        defaultnose = { x = 0.5, y = 0.5 },
        defaultnose1 = { x = 0.5, y = 0.5 },
        defaultnose2 = { x = 0.5, y = 0.5 },
        defaulteyebrow = { x = 0.5, y = 0.5 },
        defaultcheeks = { x = 0.5, y = 0.5 },
        defaultcheeks1 = { x = 0.5, y = 0.5 },
        defaulteyeopen = { x = 0.5, y = 0.5 },
        defaultlips = { x = 0.5, y = 0.5 },
        defaultjaw = { x = 0.5, y = 0.5 },
        defaultchin = { x = 0.5, y = 0.5 },
        defaultchin1 = { x = 0.5, y = 0.5 },
        defaultneck = { x = 0.5, y = 0.5 }
    },
    HairColor = {1,1},
    HairSecondaryColor = {1,1},
    BeardColor = {1,1},
    EyesbrowColor = {1,1},
    Percentage = {1,1,1,1,1}
}





