class Blueprint_BearTrap : Recipe {
	displayName = $STR_CRAFT_NAME_BearTrap;
	descriptionShort = $STR_CRAFT_DESC_BearTrap;
	input[] = 
	{
		{"PartGeneric","CfgMagazines",1},
		{"equip_nails","CfgMagazines",1},
		{"equip_rope","CfgMagazines",1}
	};
	output[] = 
	{
		{"TrapBear","CfgMagazines",1}
	};
	required[] = 
	{
		{"ItemToolbox","CfgWeapons",1},
		{"ItemCrowbar","CfgWeapons",1}
	};
};
