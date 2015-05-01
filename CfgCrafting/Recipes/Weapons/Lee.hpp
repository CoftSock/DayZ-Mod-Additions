class Blueprint_Lee : Recipe {
	displayName = $STR_CRAFT_NAME_Lee;
	descriptionShort = $STR_CRAFT_DESC_Lee;
	input[] = 
	{
		{"ItemPlank","CfgMagazines",1},
		{"equip_1inch_metal_pipe","CfgMagazines",1},
		{"equip_duct_tape","CfgMagazines",1},
		{"PartGeneric","CfgMagazines",1}
	};
	output[] = 
	{
		{"LeeEnfield","CfgWeapons",1}
	};
	required[] = 
	{
		{"ItemToolbox","CfgWeapons",1},
		{"ItemHatchet","CfgWeapons",1}
	};
};
