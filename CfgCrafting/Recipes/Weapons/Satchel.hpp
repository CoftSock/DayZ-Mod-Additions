class Blueprint_Satchel : Recipe {
	displayName = $STR_CRAFT_NAME_Satchel;
	descriptionShort = $STR_CRAFT_DESC_Satchel;
	input[] = 
	{
		{"equip_pvc_box","CfgMagazines",1},
		{"equip_nails","CfgMagazines",1},
		{"equip_scrapelectronics","CfgMagazines",1},
        {{"HandGrenade_West","CfgMagazines",2},
			{"HandGrenade_East","CfgMagazines",2}}
		
	};
	output[] = 
	{
		{"PipeBomb","CfgMagazines",1}
	};
	required[] = 
	{
		{"ItemToolbox","CfgWeapons",1}
	};
};
