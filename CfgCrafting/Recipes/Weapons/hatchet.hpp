class Blueprint_Hatchet : Recipe {
	displayName = $STR_CRAFT_NAME_Hatchet;
	descriptionShort = $STR_CRAFT_DESC_Hatchet;
	input[] = 
	{
		{"ItemStone","CfgMagazines",1},
		{"equip_rope","CfgMagazines",1}
	};
	output[] = 
	{
		{"ItemHatchet","CfgWeapons",1}
	};
	required[] = 
	{
		{"MeleeBaseBallBat","CfgWeapons",1}
	};
}; 