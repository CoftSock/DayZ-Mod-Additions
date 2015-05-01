class Blueprint_TranqBolt : Recipe {
	displayName = $STR_CRAFT_NAME_TranqBolt;
	descriptionShort = $STR_CRAFT_DESC_TranqBolt;
	input[] = 
	{
		{"ItemPainkiller","CfgMagazines",2},
		{"WoodenArrow","CfgMagazines",1}
	};
	output[] = 
	{
		{"Tranquiliser_Bolt","CfgMagazines",1}
	};
	required[] = 
	{
		{"ItemKnife","CfgWeapons",1}
	};
}; 