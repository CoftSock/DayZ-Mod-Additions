class Blueprint_FishingRod : Recipe {
	displayName = $STR_CRAFT_NAME_FishingRod;
	descriptionShort = $STR_CRAFT_DESC_FishingRod;
	input[] = 
	{
		{"ItemPlank","CfgMagazines",1},
		{"equip_string","CfgMagazines",2},
	    {"equip_duct_tape","CfgMagazines",1},
		{"PartGeneric","CfgMagazines",1}
		
	};
	output[] = 
	{
		{"MeleeFishingPole","CfgWeapons",1}
	};
	required[] = 
	{
		{"ItemToolbox","CfgWeapons",1}
	};
}; 