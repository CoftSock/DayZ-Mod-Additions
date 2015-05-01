class Blueprint_MRE : Recipe {
	displayName = $STR_ITEM_NAME_MRE;
	input[] = 
	{
		{"FoodCanBeef","CfgMagazines",2},
		{"emptyBloodBag","CfgMagazines",1}
	};
	output[] = 
	{
		{"FoodMRE","CfgMagazines",1}
	};
	required[] = 
	{
	};
};
