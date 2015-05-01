class Blueprint_Matches : Recipe {
	displayName = $STR_CRAFT_NAME_Matches ;
	descriptionShort = $STR_CRAFT_DESC_Matches ;
	input[] = 
	{
		{"ItemTrashPaper","CfgMagazines",2},
		{"HandRoadFlare","CfgMagazines",1}
	};
	output[] = 
	{
		{"Item3Matchbox","CfgWeapons",1}
	};
	required[] = 
	{
		{"ItemKnife","CfgWeapons",1}
	};
}; 