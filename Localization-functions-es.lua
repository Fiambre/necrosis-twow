------------------------------------------------------------------------------------------------------
-- Necrosis LdC
--
-- Crateur initial (US) : Infernal (http://www.revolvus.com/games/interface/necrosis/)
-- Implmentation de base (FR) : Tilienna Thorondor
-- Reprise du projet : Lomig & Nyx des Larmes de Cenarius, Kael'Thas
--
-- Skins et voix Franaises : Eliah, Ner'zhul
-- Version Allemande par Arne Meier et Halisstra, Lothar
-- Remerciements spciaux pour Sadyre (JoL)
-- Version 06.05.2006-1
------------------------------------------------------------------------------------------------------



------------------------------------------------
-- SPANISH VERSION FUNCTIONS --
------------------------------------------------

if ( GetLocale() == "esES" ) then

NECROSIS_UNIT_WARLOCK = "Brujo";

NECROSIS_ANTI_FEAR_SPELL = {
	-- Buffs giving temporary immunity to fear effects
	["Buff"] = {
		"Resguardo contra el miedo",			-- Dwarf priest racial trait
		"Voluntad de los Renegados",		-- Forsaken racial trait
		"Intrépido",			-- Trinket
		"Ira rabiosa",		-- Warrior Fury talent
		"Temeridad",			-- Warrior Fury talent
		"Deseo de muerte",			-- Warrior Fury talent
		"Ira bestial",		-- Hunter Beast Mastery talent (pet only)
		"Bloque de hielo",			-- Mage Ice talent
		"Protección divina",		-- Paladin Holy buff
		"Escudo divino",		-- Paladin Holy buff
		"Tótem de tremor",			-- Shaman totem
		"Suprimir magia"			-- Majordomo (NPC) spell
		--  "Grounding Totem" is not considerated, as it can remove other spell than fear, and only one each 10 sec.		
	},

	-- Debuffs and curses giving temporary immunity to fear effects
	["Debuff"] = {
		"Curse of Temeridad"		-- Warlock curse
	}
};

-- Creature type absolutly immune to fear effects
NECROSIS_ANTI_FEAR_UNIT = {
	"No-muerto"
};

-- Word to search for spell immunity. First (.+) replace the spell's name, 2nd (.+) replace the creature's name
NECROSIS_ANTI_FEAR_SRCH = "Tu (.+) ha fallado. (.+) es inmune."

NECROSIS_SPELL_TABLE = {
	[1] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar corcel vil",		Length = 0,	Type = 0},
	[2] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Invocar corcel nefasto",		Length = 0,	Type = 0},
	[3] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar diablillo",			Length = 0,	Type = 0},
	[4] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar abisario",		Length = 0,	Type = 0},
	[5] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar súcubo",		Length = 0,	Type = 0},
	[6] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invocar manáfago",		Length = 0,	Type = 0},
	[7] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Descarga de las Sombras",			Length = 0,	Type = 0},
	[8] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Infernal",			Length = 3600,	Type = 3},
	[9] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Desterrar",			Length = 30,	Type = 2},
	[10] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Esclavizar demonio",			Length = 30000,	Type = 2},
	[11] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Resurrección de piedra de alma",	Length = 1800,	Type = 1},
	[12] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Inmolar",			Length = 15,	Type = 5},
	[13] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Fear",				Length = 15,	Type = 5},
	[14] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Corrupción",			Length = 17,	Type = 5},
	[15] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Dominio vil",		Length = 300,	Type = 3},
	[16] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de fatalidad",			Length = 60,	Type = 3},
	[17] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Sacrificio",			Length = 30,	Type = 3},
	[18] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Fuego de alma",			Length = 60,	Type = 3},
	[19] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Espiral mortal",			Length = 120,	Type = 3},
	[20] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Quemadura de las Sombras",			Length = 15,	Type = 3},
	[21] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Conflagrar",			Length = 10,	Type = 3},
	[22] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de agonía",		Length = 24,	Type = 4},
	[23] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de debilidad",		Length = 120,	Type = 4},
	[24] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Curse of Temeridad",		Length = 120,	Type = 4},
	[25] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de las Lenguas",		Length = 30,	Type = 4},
	[26] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de los Elementos",		Length = 300,	Type = 4},
	[27] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de la Sombra",		Length = 300,	Type = 4},
	[28] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Sifón de vida",			Length = 30,	Type = 5},
	[29] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Aullido de terror",		Length = 40,	Type = 3},
	[30] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ritual de fatalidad",		Length = 3600,	Type = 0},
	[31] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Armadura demoníaca",			Length = 0,	Type = 0},
	[32] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Respiración inagotable",		Length = 0,	Type = 0},
	[33] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Invisibilidad",			Length = 0,	Type = 0},
	[34] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ojo de Kilrogg",		Length = 0,	Type = 0},
	[35] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Esclavizar demonio",			Length = 0,	Type = 0},
	[36] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Piel de demonio",			Length = 0,	Type = 0},
	[37] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ritual de invocación",		Length = 0,	Type = 0},
	[38] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Enlace de alma",			Length = 0,	Type = 0},
	[39] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Detectar demonios",			Length = 0,	Type = 0},
	[40] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Maldición de extenuación",		Length = 12,	Type = 4},
	[41] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Transfusión de vida",			Length = 0,	Type = 0},
	[42] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Amplificar maldición",			Length = 180,	Type = 3},
	[43] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Resguardo de las Sombras",			Length = 30,	Type = 3},
	[44] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Demonic Sacrificio",		Length = 0,	Type = 0},

};
-- Type 0 = Pas de Timer
-- Type 1 = Timer permanent principal
-- Type 2 = Timer permanent
-- Type 3 = Timer de cooldown
-- Type 4 = Timer de maldiction
-- Type 5 = Timer de combat

NECROSIS_ITEM = {
	["Soulshard"] = "Fragmento de alma",
	["Piedra de alma"] = "Soulstone",
	["Piedra de salud"] = "Healthstone",
	["Piedra de hechizo"] = "Spellstone",
	["Piedra de fuego"] = "Firestone",
	["Offhand"] = "Sostenido en mano izquierda",
	["Twohand"] = "Dos manos",
	["InfernalStone"] = "Piedra infernal",
	["DemoniacStone"] = "Figurilla demoníaca",
	["Piedra de hogar"] = "Hearthstone",
	["SoulPouch"] = {"Faltriquera de almas", "Bolsa de tela vil", "Bolsa de tela vil del Núcleo"}	
};


NECROSIS_STONE_RANK = {
	[1] = " (menor)",	-- Rank Minor
	[2] = " (inferior)",	-- Rank Lesser
	[3] = "",		-- Rank Intermediate, no name
	[4] = " (superior)",	-- Rank Greater
	[5] = " (sublime)"	-- Rank Major
};

NECROSIS_NIGHTFALL = {
	["BoltName"] = "Descarga",
	["ShadowTrance"] = "Trance de las Sombras"
};

NECROSIS_CREATE = {
	[1] = "Create Piedra de alma",
	[2] = "Create Piedra de salud",
	[3] = "Create Piedra de hechizo",
	[4] = "Create Piedra de fuego"
};

NECROSIS_PET_LOCAL_NAME = {
	[1] = "Diablillo",
	[2] = "Abisario",
	[3] = "Súcubo",
	[4] = "Manáfago",
	[5] = "Infernal",
	[6] = "Guardia apocalíptico"
};

NECROSIS_TRANSLATION = {
	["Cooldown"] = "Cooldown",
	["Hearth"] = "Piedra de hogar",
	["Rank"] = "Rank",
	["Invisible"] = "Detectar invisibilidad",
	["LesserInvisible"] = "Detectar invisibilidad inferior",
	["GreaterInvisible"] = "Detectar invisibilidad superior",
	["SoulLinkGain"] = "Ganas Enlace de alma.",
	["SacrificeGain"] = "Ganas Sacrificio.",
	["SummoningRitual"] = "Ritual de invocación"
};

end
