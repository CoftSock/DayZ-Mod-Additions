class Blueprint_SledgeHammer : Recipe {
	displayName = $STR_CRAFT_NAME_SledgeHammer;
	descriptionShort = $STR_CRAFT_DESC_SledgeHammer;
	input[] = 
	{
		{"ItemStone","CfgMagazines",1},
		{"equip_duct_tape","CfgMagazines",1},
		{"equip_string","CfgMagazines",1}
	};
	output[] = 
	{
		{"ItemSledgeHammer","CfgWeapons",1}
	};
	required[] = 
	{
		{"ItemToolbox","CfgWeapons",1},
		{"MeleeBaseBallBat","CfgWeapons",1}
	};
};
