class Blueprint_Scope : Recipe {
	displayName = $STR_CRAFT_NAME_Scope;
	descriptionShort = $STR_CRAFT_DESC_Scope;
	input[] = 
	{
		{"Binocular","CfgWeapons",1},
		{"equip_duct_tape","CfgMagazines",1}
	};
	output[] = 
	{
		{"Attachment_SCOPED","CfgMagazines",1}
	};
	required[] = 
	{
		{"ItemToolbox","CfgWeapons",1}
	};
};
