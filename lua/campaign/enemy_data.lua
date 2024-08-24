
-- The rules for enemy recruitlist are as follows:
-- each side Has a 'faction' (here: group) a leader from that faction and maybe a leader from another faction.
-- the enemy side can then recruit all units from its faction and from all it's leaders, that why having
-- unit {recruit= that are already contained in {recruit= is not redundant.
local enemy_army = {}
enemy_army.group = {
	{
		id = "northerners",
		recruit = {"Orcish Grunt","Orcish Archer","Wolf Rider","Orcish Assassin","Troll Whelp"},
		recall = {
			level2 = {"Orcish Ruler","Orcish Slayer","Orcish Crossbowman","Troll Rocklobber","Troll","Orcish Warrior","Goblin Pillager","Goblin Knight","Orcish Crossbowman","Troll","Orcish Warrior","Troll Hero", "Sky Goblin", "Goblin Warbanner"},
			level3 = {"Orcish Warlord","Troll Warrior","Orcish Slurbow","Orcish Sovereign","Direwolf Rider","Orcish Warlord","Troll Warrior","Orcish Slurbow","Great Troll","Direwolf Rider", "Goblin Ravager", "Orcish Nightblade loti", "Troll Boulderlobber"},
			level4 = {"Orcish Warmonger","Siege Troll","Orcish Strafer","Werewolf Rider","Orcish Warmonger","Siege Troll","Orcish Strafer","Werewolf Rider", "Orcish Emperor LotI"},
		},
		commander = {
			level1 = {"Orcish Leader","Orcish Grunt","Orcish Archer","Orcish Assassin", "Naga Guard"},
			level2 = {"Orcish Ruler","Troll Hero","Orcish Slayer","Orcish Crossbowman","Troll Rocklobber","Troll","Orcish Warrior", "Goblin Warbanner", "Troll Shaman", "Naga Shield Guard"},
			level3 = {"Orcish Warlord","Troll Warrior","Orcish Slurbow","Orcish Sovereign","Great Troll", "Orcish Nightblade loti", "Naga High Guard", "Troll Boulderlobber"},
		},
		leader = {
			{
				level2 = "Orcish Warrior",
				level3 = "Orcish Warlord",
				level4 = "Orcish Warmonger",
				recruit = {"Orcish Grunt","Orcish Archer","Wolf Rider","Orcish Assassin"},
			},
			{
				level2 = "Troll",
				level3 = "Troll Warrior",
				level4 = "Siege Troll",
				recruit = {"Orcish Grunt","Orcish Archer","Orcish Assassin","Troll Whelp"},
			},
			{
				level2 = "Troll Hero",
				level3 = "Great Troll",
				level4 = "Garguntuan Troll LotI",
				recruit = {"Naga Guard","Orcish Archer","Orcish Assassin","Troll Whelp"},
			},
			{
				level2 = "Troll Rocklobber",
				level3 = "Troll Boulderlobber",
				recruit = {"Orcish Grunt","Orcish Assassin","Wolf Rider","Troll Whelp"},
			},
			{
				level2 = "Orcish Crossbowman",
				level3 = "Orcish Slurbow",
				level4 = "Orcish Strafer",
				recruit = {"Orcish Grunt","Orcish Archer","Wolf Rider","Orcish Assassin"},
			},
			{
				level2 = "Orcish Slayer",
				level3 = "Orcish Nightblade loti",
				recruit = {"Orcish Grunt","Orcish Archer","Wolf Rider","Orcish Assassin","Naga Fighter"},
			},
			{
				level2 = "Goblin Knight",
				level3 = "Direwolf Rider",
				level4 = "Werewolf Rider",
				recruit = {"Goblin Spearman","Orcish Leader","Wolf Rider","Orcish Archer","Troll Whelp"},
			},
			{
				level2 = "Orcish Ruler",
				level3 = "Orcish Sovereign",
				level4 = "Orcish Emperor LotI",
				recruit = {"Orcish Grunt","Orcish Leader","Wolf Rider","Orcish Archer"},
			},
		}
	},
	{
		id = "loyalists",
		recruit = {"Spearman","Bowman","Cavalryman","Fencer","Mage"},
		recall = {
			level2 = {"White Mage","Red Mage","Duelist","Longbowman","Shock Trooper","Pikeman","Swordsman","Lieutenant","Dragoon","Knight","Javelineer","Pikeman","Swordsman","Longbowman", "Sword Mage"},
			level3 = {"General","Halberdier","Royal Guard","Silver Mage","Iron Mauler","Master Bowman","Master at Arms","Arch Mage","Mage of Light","Paladin","Grand Knight","Cavalier","General","Halberdier","Royal Guard","Iron Mauler","Master Bowman","Master at Arms", "Knight of Magic", "Pilum Master"},
			level4 = {"Warlock","Swordmaster","Grand Marshal","Scythemaster","Duelist Wizard", "Destroyer", "Champion Bowman", "Champion","Great Mage","Prophet","Celestial Messenger", "Shadowalker", "Chaos Rider"},
		},
		commander = {
			level1 = {"Sergeant","Spearman","Bowman","Mage","Fencer","Heavy Infantryman"},
			level2 = {"White Mage","Red Mage","Duelist","Longbowman","Shock Trooper","Pikeman","Swordsman","Lieutenant","Javelineer", "Sword Mage"},
			level3 = {"General","Halberdier","Royal Guard","Silver Mage","Iron Mauler","Master Bowman","Master at Arms","Arch Mage","Mage of Light", "Knight of Magic", "Pilum Master"},
		},
		leader = {
			{
				level2 = "Lieutenant",
				level3 = "General",
				level4 = "Grand Marshal",
				level5 = "Duke",
				recruit = {"Spearman","Bowman","Cavalryman","Fencer","Mage"},
			},
			{
				level2 = "Swordsman",
				level3 = "Royal Guard",
				level4 = "Swordmaster",
				level5 = "Dragon Rider",
				recruit = {"Spearman","Bowman","Cavalryman","Heavy Infantryman","Mage"},
			},
			{
				level2 = "Pikeman",
				level3 = "Halberdier",
				level4 = "Scythemaster",
				level5 = "The Prince",
				recruit = {"Spearman","Bowman","Cavalryman","Horseman","Mage"},
			},
			{
				level2 = "Javelineer",
				level3 = "Pilum Master",
				level4 = "Duelist Wizard",
				recruit = {"Spearman","Bowman","Horseman","Fencer","Mage"},
			},
			{
				level2 = "Shock Trooper",
				level3 = "Iron Mauler",
				level4 = "Destroyer",
				recruit = {"Spearman","Mage","Cavalryman","Heavy Infantryman"},
			},
			{
				level2 = "Longbowman",
				level3 = "Master Bowman",
				level4 = "Champion Bowman",
				recruit = {"Spearman","Bowman","Cavalryman","Horseman","Heavy Infantryman"},
			},
			{
				level2 = "Duelist",
				level3 = "Master at Arms",
				level4 = "Champion",
				recruit = {"Spearman","Bowman","Cavalryman","Fencer","Mage"},
			},
			{
				level2 = "Red Mage",
				level3 = "Arch Mage",
				level4 = "Great Mage",
				level5 = "Elder Mage LotI",
				recruit = {"Spearman","Bowman","Mage","Cavalryman","Heavy Infantryman"},
			},
			{
				level2 = "White Mage",
				level3 = "Mage of Light",
				level4 = "Celestial Messenger",
				recruit = {"Spearman","Heavy Infantryman","Cavalryman","Mage","Bowman"},
			},
		}
	},
	{
		id = "elves",
		recruit = {"Elvish Fighter","Elvish Archer","Elvish Shaman","Elvish Scout","Wose"},
		recall = {
			level2 = {"Elder Wose","Elvish Sorceress","Elvish Druid","Elvish Marksman","Elvish Ranger","Elvish Hero","Elvish Captain","Elvish Rider","Elder Wose","Elvish Hero","Elder Wose","Elvish Sorceress","Red Mage","Elvish Marksman","Elvish Ranger","Elvish Hero","Elvish Captain","Elvish Rider","Elvish Ranger","Elvish Hero", "Wose Shaman"},
			level3 = {"Elvish Marshal","Elvish Champion","Elvish Avenger","Elvish Sharpshooter","Elvish Shyde","Elvish Enchantress","Ancient Wose","Elvish Outrider","Ancient Wose","Elvish Champion","Elvish Marshal","Elvish Champion","Elvish Avenger","Elvish Sharpshooter","Arch Mage","Elvish Enchantress","Ancient Wose","Elvish Outrider","Elvish Avenger","Elvish Champion"},
			level4 = {"Elvish Warlord","Elvish Juggernaut","Elvish Juggernaut","Elvish Nightprowler","Elvish Assassin","Faerie Incarnation","Elvish Sylph LotI","Arch Wose LotI","Elvish Gryphon Rider", "Elvish Gryphon Rider"},
		},
		commander = {
			level1 = {"Elvish Shaman","Elvish Fighter","Elvish Archer","Wose"},
			level2 = {"Elder Wose","Elvish Sorceress","Elvish Druid","Elvish Marksman","Elvish Ranger","Elvish Hero","Elvish Captain","Elvish Lord", "Wose Shaman"},
			level3 = {"Elvish Marshal","Elvish Champion","Elvish Avenger","Elvish Sharpshooter","Elvish Shyde","Elvish Enchantress","Ancient Wose","Arch Mage","Elvish High Lord"},
		},
		leader = {
			{
				level2 = "Elvish Captain",
				level3 = "Elvish Marshal",
				level4 = "Elvish Warlord",
				recruit = {"Elvish Fighter","Elvish Archer","Elvish Shaman","Elvish Scout"},
			},
			{
				level2 = "Elvish Hero",
				level3 = "Elvish Champion",
				level4 = "Elvish Juggernaut",
				recruit = {"Elvish Fighter","Elvish Archer","Elvish Shaman","Elvish Scout"},
			},
			{
				level2 = "Elvish Ranger",
				level3 = "Elvish Avenger",
				level4 = "Elvish Nightprowler",
				recruit = {"Elvish Fighter","Elvish Archer","Wose","Elvish Scout"},
			},
			{
				level2 = "Elvish Marksman",
				level3 = "Elvish Sharpshooter",
				level4 = "Elvish Assassin",
				recruit = {"Elvish Fighter","Elvish Archer","Mage","Elvish Scout"},
			},
			{
				level2 = "Elvish Druid",
				level3 = "Elvish Shyde",
				level4 = "Faerie Incarnation",
				recruit = {"Elvish Fighter","Elvish Archer","Elvish Shaman","Wose"},
			},
			{
				level2 = "Elvish Sorceress",
				level3 = "Elvish Enchantress",
				level4 = "Elvish Sylph LotI",
				recruit = {"Elvish Fighter","Elvish Archer","Elvish Shaman","Elvish Scout","Mage"},
			},
			{
				level2 = "Elder Wose",
				level3 = "Ancient Wose",
				level4 = "Arch Wose LotI",
				level5 = "Elvish Sprite",
				recruit = {"Elvish Shaman","Elvish Fighter","Mage","Wose"},
			},
		}
	},
	{
		id = "knalgans",
		recruit = {"Dwarvish Fighter","Dwarvish Thunderer","Thief","Footpad","Poacher"},
		recall = {
			level2 = {"Dwarvish Stalwart","Dwarvish Thunderguard","Dwarvish Steelclad","Rogue","Trapper","Gryphon Master","Bandit","Outlaw","Dwarvish Stalwart","Dwarvish Thunderguard","Dwarvish Steelclad","Dwarvish Berserker"},
			level3 = {"Dwarvish Lord","Dwarvish Dragonguard","Dwarvish Sentinel","Assassin","Huntsman","Fugitive","Highwayman","Dwarvish Lord","Dwarvish Dragonguard","Dwarvish Sentinel", "Dwarvish Battlerager", "Gryphon Knight LotI"},
			level4 = {"Dwarvish Hero", "Dwarvish Technocrat", "Dwarvish Protector", "Exterminator", "Predator", "Blackguard", "Shadow Prince", "Forester", "Dwarvish Technocrat", "Dwarvish Protector"},
		},
		commander = {
			level1 = {"Dwarvish Thunderer","Dwarvish Fighter","Dwarvish Guardsman","Dwarvish Scout","Thief","Poacher"},
			level2 = {"Dwarvish Stalwart","Dwarvish Thunderguard","Dwarvish Steelclad","Dwarvish Pathfinder","Rogue","Trapper", "Dwarvish Runesmith"},
			level3 = {"Dwarvish Lord","Dwarvish Dragonguard","Dwarvish Sentinel","Assassin","Huntsman","Highwayman","Dwarvish Explorer", "Dwarvish Runemaster"},
		},
		leader = {
			{
				level2 = "Dwarvish Steelclad",
				level3 = "Dwarvish Lord",
				level4 = "Dwarvish Hero",
				recruit = {"Dwarvish Fighter","Dwarvish Thunderer","Dwarvish Ulfserker","Dwarvish Guardsman"},
			},
			{
				level2 = "Dwarvish Thunderguard",
				level3 = "Dwarvish Dragonguard",
				level4 = "Dwarvish Technocrat",
				recruit = {"Dwarvish Fighter","Dwarvish Thunderer","Gryphon Rider","Poacher"},
			},
			{
				level2 = "Dwarvish Stalwart",
				level3 = "Dwarvish Sentinel",
				level4 = "Dwarvish Protector",
				recruit = {"Footpad","Dwarvish Thunderer","Gryphon Rider","Dwarvish Guardsman"},
			},
			{
				level2 = "Rogue",
				level3 = "Assassin",
				level4 = "Exterminator",
				recruit = {"Thug","Thief","Footpad","Dwarvish Ulfserker","Gryphon Rider"},
			},
			{
				level2 = "Trapper",
				level3 = "Huntsman",
				level4 = "Predator",
				recruit = {"Thug","Thief","Poacher","Dwarvish Fighter","Dwarvish Thunderer"},
			},
			{
				level2 = "Bandit",
				level3 = "Highwayman",
				level4 = "Blackguard",
				recruit = {"Thug","Thief","Dwarvish Thunderer","Dwarvish Ulfserker","Dwarvish Fighter"},
			},
			{
				level2 = "Dwarvish Runesmith",
				level3 = "Dwarvish Runemaster",
				level4 = "Dwarvish Arcanister",
				recruit = {"Dwarvish Fighter","Dwarvish Thunderer","Dwarvish Ulfserker","Thug"},
			},
		}
	},
	{
		id = "drakes",
		recruit = {"Drake Fighter","Drake Clasher","Drake Glider","Drake Burner","Saurian Augur"},
		recall = {
			level2 = {"Drake Arbiter","Drake Thrasher","Drake Warrior","Fire Drake","Drake Flare","Saurian Oracle","Saurian Soothsayer","Saurian Ambusher","Drake Warrior","Drake Thrasher","Sky Drake", "Fire Wraith","Saurian Spearthrower"},
			level3 = {"Drake Flameheart","Inferno Drake","Drake Blademaster","Drake Blademaster","Drake Enforcer","Drake Warden","Saurian Flanker","Saurian Flanker","Hurricane Drake", "Ice Spirit","Saurian Seer","Saurian Prophet","Saurian Javelineer"},
			level4 = {"Armageddon Drake LotI","Saurian Spearmaster LotI","Maelstrom Drake LotI","Drake Kensai LotI", "Ice Wraith", "Drake Keeper LotI", "Drake Firestorm LotI", "Drake Conqueror LotI", "Saurian Javelinmaster LotI", "Saurian Visionnaire LotI", "Saurian Witchdoctor LotI"}
		},
		commander = {
			level1 = {"Drake Burner","Drake Fighter","Drake Clasher","Saurian Augur","Saurian Skirmisher"},
			level2 = {"Drake Arbiter","Drake Thrasher","Drake Warrior","Fire Drake","Drake Flare","Saurian Ambusher","Saurian Oracle","Saurian Spearthrower"},
			level3 = {"Drake Flameheart","Inferno Drake","Drake Blademaster","Drake Enforcer","Drake Warden","Saurian Flanker","Saurian Seer","Saurian Prophet","Saurian Javelineer"},
		},
		leader = {
			{
				level2 = "Drake Flare",
				level3 = "Drake Flameheart",
				level4 = "Drake Firestorm LotI",
				recruit = {"Drake Fighter","Drake Clasher","Drake Glider","Drake Burner"},
			},
			{
				level2 = "Fire Drake",
				level3 = "Inferno Drake",
				level4 = "Armageddon Drake LotI",
				level5 = "Fire Dragon loti",
				recruit = {"Drake Fighter","Saurian Augur","Drake Glider","Drake Burner"},
			},
			{
				level2 = "Drake Warrior",
				level3 = "Drake Blademaster",
				level4 = "Drake Kensai LotI",
				recruit = {"Drake Fighter","Saurian Skirmisher","Drake Glider","Drake Burner"},
			},
			{
				level2 = "Drake Thrasher",
				level3 = "Drake Enforcer",
				level4 = "Drake Conqueror LotI",
				recruit = {"Drake Fighter","Drake Clasher","Saurian Skirmisher","Drake Burner"},
			},
			{
				level2 = "Drake Arbiter",
				level3 = "Drake Warden",
				level4 = "Drake Keeper LotI",
				recruit = {"Saurian Skirmisher","Drake Clasher","Drake Glider","Drake Burner"},
			},
			{
				level2 = "Saurian Ambusher",
				level3 = "Saurian Flanker",
				level4 = "Saurian Spearmaster LotI",
				recruit = {"Saurian Skirmisher","Saurian Augur","Drake Clasher","Drake Burner"},
			},
			{
				level2 = "Saurian Soothsayer",
				level3 = "Saurian Seer",
				level4 = "Saurian Witchdoctor LotI",
				recruit = {"Saurian Skirmisher","Saurian Augur","Drake Glider","Drake Fighter"},
			},
			{
				level2 = "Saurian Oracle",
				level3 = "Saurian Prophet",
				level4 = "Saurian Visionnaire LotI",
				recruit = {"Saurian Skirmisher","Saurian Augur","Drake Burner","Drake Fighter"},
			},
		}
	},
	{
		id = "undead",
		recruit = {"Skeleton","Skeleton Archer","Ghost","Ghoul","Dark Adept"},
		recall = {
			level2 = {"Revenant","Deathblade","Bone Shooter","Dark Sorcerer","Necrophage","Wraith","Shadow","Revenant","Bone Shooter","Dark Sorcerer","Necrophage","Chocobone", "Monstrosity", "Death Squire", "Bone Knight"},
			level3 = {"Draug","Death Knight","Necromancer","Lich","Ghast","Banebow","Spectre","Nightgaunt","Draug","Ghast","Banebow", "Zombie Rider", "Phantom", "Grim Knight"},
			level4 = {"Deathlord","Infernal Knight","Soul Shooter","09 Ancient Lich","Abomination","Demilich", "Lich King", "Dark Shade", "Reaper", "Skeletal Dragon LotI"},
		},
		commander = {
			level1 = {"Dark Adept","Skeleton Archer","Skeleton","Ghoul", "Mist", "Skeleton Rider"},
			level2 = {"Revenant","Deathblade","Bone Shooter","Dark Sorcerer","Necrophage", "Monstrosity", "Will_o_Wisp", "Death Squire", "Bone Knight"},
			level3 = {"Draug","Death Knight","Necromancer","Lich","Ghast","Banebow", "Phantom"},
		},
		leader = {
			{
				level2 = "Revenant",
				level3 = "Draug",
				level4 = "Deathlord",
				recruit = {"Skeleton","Skeleton Archer","Ghost","Ghoul"},
			},
			{
				level2 = "Monstrosity",
				level3 = "Phantom",
				level4 = "Demilich",
				recruit = {"Skeleton","Soulless","Ghost","Dark Adept"},
			},
			{
				level2 = "Deathblade",
				level3 = "Grim Knight",
				level4 = "Lich King",
				recruit = {"Skeleton","Skeleton Archer","Skeleton Rider","Ghoul"},
			},
			{
				level2 = "Death Squire",
				level3 = "Death Knight",
				level4 = "Infernal Knight",
				level5 = "Argan_lich",
				recruit = {"Skeleton","Skeleton Archer","Dark Adept","Ghoul"},
			},
			{
				level2 = "Bone Shooter",
				level3 = "Banebow",
				level4 = "Soul Shooter",
				recruit = {"Skeleton","Skeleton Archer","Ghost","Ghoul"},
			},
			{
				level2 = "Dark Sorcerer",
				level3 = "Lich",
				level4 = "09 Ancient Lich",
				recruit = {"Skeleton Archer","Dark Adept","Ghoul","Vampire Bat"},
			},
			{
				level2 = "Necrophage",
				level3 = "Ghast",
				level4 = "Abomination",
				recruit = {"Skeleton","Dark Adept","Ghoul","Ghost"},
			},
		}
	},
	{
		id = "dunefolk",
		recruit = {"Dune Soldier","Dune Burner","Dune Rider","Dune Skirmisher","Dune Rover","Naga Dirkfang"},
		recall = {
			level2 = {"Dune Captain","Dune Strider","Dune Scorcher","Dune Alchemist","Dune Falconer","Dune Swordsman","Dune Horse Archer","Dune Sunderer","Dune Scorcher","Dune Apothecary","Dune Swordsman","Dune Spearguard", "Jinn"},
			level3 = {"Dune Blademaster","Dune Sky Hunter","Dune Firetrooper","Dune Warmaster","Dune Cataphract","Dune Blademaster","Dune Luminary","Dune Firetrooper","Dune Spearmaster","Dune Cataphract", "Wild Wyvern"},
			level4 = {"Dune Paragon","Wyvern Rider"}
		},
		commander = {
			level1 = {"Dune Soldier","Dune Soldier","Dune Burner","Dune Skirmisher"},
			level2 = {"Dune Captain","Dune Spearguard","Dune Strider","Dune Scorcher","Dune Alchemist","Dune Apothecary","Dune Swordsman", "Jinn", "Naga Ophidian","Naga Ringcaster"},
			level3 = {"Dune Blademaster","Dune Luminary","Dune Firetrooper","Dune Warmaster","Dune Spearmaster", "Naga Sicarius","Naga Zephyr"},
		},
		leader = {
			{
				level2 = "Dune Swordsman",
				level3 = "Dune Blademaster",
				level4 = "Dune Paragon",
				recruit = {"Dune Soldier","Dune Burner","Dune Rider","Dune Skirmisher"},
			},
			{
				level2 = "Dune Apothecary",
				level3 = "Dune Luminary",
				recruit = {"Dune Soldier","Dune Burner","Dune Skirmisher","Dune Herbalist"},
			},
			{
				level2 = "Dune Alchemist",
				level3 = "Dune Spearmaster",
				level4 = "Black Army Pikeman",
				recruit = {"Dune Soldier","Dune Skirmisher","Dune Rider","Dune Herbalist"},
			},
			{
				level2 = "Dune Scorcher",
				level3 = "Dune Firetrooper",
				level4 = "Black Army Mage",
				recruit = {"Dune Soldier","Dune Burner","Dune Rider","Dune Skirmisher"},
			},
			{
				level2 = "Dune Strider",
				level3 = "Dune Harrier",
				recruit = {"Dune Soldier","Dune Burner","Dune Rider","Dune Skirmisher","Naga Dirkfang"},
			},
			{
				level2 = "Dune Raider",
				level3 = "Dune Marauder",
				level4 = "Wyvern Rider",
				recruit = {"Dune Skirmisher","Dune Soldier","Dune Rider","Dune Burner","Dune Herbalist"},
			},
			{
				level2 = "Dune Captain",
				level3 = "Dune Warmaster",
				level4 = "Black Army Swordsman",
				recruit = {"Dune Soldier","Dune Rover","Dune Rider","Dune Burner"},
			},
			{
				level2 = "Dune Falconer",
				level3 = "Dune Sky Hunter",
				level4 = "Black Army Bowman",
				recruit = {"Dune Soldier","Elder Falcon","Dune Rider","Dune Burner"},
			},
		}
	},
}
enemy_army.factions_available = {}
-- each faction can be picked up to 4 times along campaign
for i = 1, #enemy_army.group do
	for j = 1, 4 do
		table.insert(enemy_army.factions_available, i)
	end
end
-- each faction pick any faction as ally just 1 time
for i = 1, #enemy_army.group do
	local ally = {}
	enemy_army.group[i].allies_available = ally
	for j = 1, #enemy_army.group do
		if j ~= i then
			table.insert(ally, j)
		end
	end
end

return enemy_army
