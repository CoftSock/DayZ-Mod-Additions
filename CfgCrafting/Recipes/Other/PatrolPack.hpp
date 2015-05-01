class Blueprint_PatrolPack : Recipe {
	displayName = $STR_CRAFT_NAME_PatrolPack;
	descriptionShort = $STR_CRAFT_DESC_PatrolPack;
	input[] = 
	{
		{"ItemSandbag","CfgMagazines",1},
		{"equip_rope","CfgMagazines",1}

		
	};
	output[] = 
	{
		{"DZ_Patrol_Pack_EP1","CfgVehicles",1}
	};
	required[] = 
	{
		{"ItemKnife","CfgWeapons",1}
	};
}; 