class Blueprint_Knife : Recipe {
	displayName = $STR_CRAFT_NAME_Knife;
	descriptionShort = $STR_CRAFT_DESC_Knife;
	input[] = 
	{
		{"ItemStone","CfgMagazines",1},

		
	};
	output[] = 
	{
		{"ItemKnife","CfgWeapons",1}
	};
	required[] = 
	{
		{"ItemPickAxe","CfgWeapons",1}
	};
}; 