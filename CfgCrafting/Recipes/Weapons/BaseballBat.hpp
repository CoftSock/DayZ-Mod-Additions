class Blueprint_BaseballBat : Recipe {
	displayName = $STR_CRAFT_NAME_BaseballBat;
	descriptionShort = $STR_CRAFT_DESC_BaseballBat;
	input[] = 
	{
		{"ItemPlank","CfgWeapons",1}
	};
	output[] = 
	{
		{"MeleeBaseBallBat","CfgWeapons",1}
	};
	required[] = 
	{
		{"ItemHatchet","CfgWeapons",1}
	};
};