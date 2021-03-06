class CfgCrafting {
	class Recipe {
		displayName = "Generic Recipe";
		input[] = {}; //Items consumed during crafting
		output[] = {}; //Items created from crafting
		required[] = {}; //Items needed for but not consumed during crafting
		failChance = 0;
	};
	//Completed
	//Weapons
	#include "Recipes\Weapons\NailedBaseballBat.hpp"
	#include "Recipes\Weapons\BaseBallBatBarbed.hpp"
	#include "Recipes\Weapons\Crossbow.hpp"

	//Not Ready
	/*
	#include "Recipes\Weapons\M9SD.hpp"
	#include "Recipes\Weapons\M4A1_AIM.hpp"
	#include "Recipes\Weapons\MAKAROVSD.hpp"
	#include "Recipes\Weapons\bizonSD.hpp"
	#include "Recipes\Weapons\SVD_CAMO.hpp"
	#include "Recipes\Weapons\M4A1_Aim_CAMO.hpp"
	#include "Recipes\Weapons\M4A1_HWS_GL_CAMO.hpp"
	#include "Recipes\Weapons\G36C_camo.hpp"
	#include "Recipes\Weapons\G36A_camo.hpp"
	#include "Recipes\Weapons\G36K_camo.hpp"
	#include "Recipes\Weapons\BaseballBat.hpp"
	#include "Recipes\Weapons\FishingRod.hpp"
	#include "Recipes\Weapons\hatchet.hpp"
	#include "Recipes\Weapons\Knife.hpp"
	#include "Recipes\Weapons\Lee.hpp"
	#include "Recipes\Weapons\Satchel.hpp"
	#include "Recipes\Weapons\SledgeHammer.hpp"
	#include "Recipes\Weapons\TranqBolt.hpp"
	*/

	//Medical
	#include "Recipes\Medical\Bandage.hpp"
	#include "Recipes\Medical\sepsisBandage.hpp"
	#include "Recipes\Medical\woodensplint.hpp"
	//ammo
	#include "Recipes\Ammo\WoodenArrow.hpp"
	//other
	#include "Recipes\Other\woodencrate.hpp"
	#include "Recipes\Other\nails.hpp"
	#include "Recipes\Other\BackPack.hpp"
	#include "Recipes\Other\Matches.hpp"
	#include "Recipes\Other\PatrolPack.hpp"
	#include "Recipes\Other\MRE.hpp"
	#include "Recipes\Other\Scope.hpp"
	//#include "Recipes\Other\woodenCraftTable.hpp"
	//Traps
	#include "Recipes\Traps\TrapBearTrapFlare.hpp"
	#include "Recipes\Traps\TrapBearTrapSmoke.hpp"
	#include "Recipes\Traps\TrapTripwireCans.hpp"
	#include "Recipes\Traps\TrapTripwireFlare.hpp"
	#include "Recipes\Traps\TrapTripwireGrenade.hpp"
	#include "Recipes\Traps\TrapTripwireSmoke.hpp"
    #include "Recipes\Traps\BearTrap.hpp"		
};