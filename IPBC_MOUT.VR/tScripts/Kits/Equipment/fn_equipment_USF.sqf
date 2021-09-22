
#include "script_component.hpp";

//Weapons
BLU_PRIMARY_RIFLE = "rhs_weap_m4a1";
BLU_PRIMARY_RIFLE_LEADER = [
	BLU_PRIMARY_RIFLE,
	"",
	BLU_RAIL_RIFLE_LASER,
	BLU_OPTIC_RCO,
	[BLU_MAGAZINES_RIFLE_TRACER,30],
	[],
	""
];
BLU_PRIMARY_RIFLE_COMPACT = "rhs_weap_m4a1";
BLU_PRIMARY_RIFLE_GRENADIER = "rhs_weap_m4a1_m320";
BLU_PRIMARY_RIFLE_AUTOMATIC = "rhs_weap_m249_light_S";
BLU_PRIMARY_RIFLE_MARKSMAN = "rhs_weap_sr25_ec";
BLU_PRIMARY_MACHINEGUN = "rhs_weap_m240B";
BLU_PRIMARY_SUBMACHINEGUN = "SMG_02_F";

BLU_SECONDARY_PISTOL = "rhsusf_weap_m9";

BLU_LAUNCHER_LAT = "rhs_weap_M136_hp";
BLU_LAUNCHER_HAT = "rhs_weap_maaws";

//Weapon Attachments
BLU_OPTIC_RCO = "rhsusf_acc_acog";
BLU_OPTIC_CCO = "rhsusf_acc_eotech_xps3";
BLU_OPTIC_MGO = "rhsusf_acc_elcan";
BLU_OPTIC_MARK = "rhsusf_acc_su230a";
BLU_OPTIC_SMG = "optic_aco";

BLU_RAIL_RIFLE_LASER = "rhsusf_acc_anpeq15_top";
BLU_RAIL_MACHINEGUN_LASER = "rhsusf_acc_anpeq15side";
BLU_RAIL_FLASH = "rhsusf_acc_m952v";

BLU_MUZZLE_RIFLE_FLASH = "rhsusf_acc_sf3p556";
BLU_MUZZLE_MACHINEGUN_FLASH = "rhsusf_acc_ardec_m240";
BLU_MUZZLE_SUPPRESSOR = "rhsusf_acc_nt4_black";

BLU_UNDERBARREL_BIPOD = "rhsusf_acc_harris_bipod";

//Magazines
BLU_MAGAZINES_RIFLE = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
BLU_MAGAZINES_RIFLE_TRACER = "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";
BLU_MAGAZINES_RIFLE_AUTOMATIC = "rhsusf_200Rnd_556x45_mixed_soft_pouch";
BLU_MAGAZINES_MACHINEGUN = "rhsusf_100Rnd_762x51_m62_tracer";
BLU_MAGAZINES_GRENADIER_HE = "rhs_mag_M441_HE";
BLU_MAGAZINES_GRENADIER_SMOKE = "rhs_mag_m713_Red";
BLU_MAGAZINES_GRENADIER_FLARE = "rhs_mag_M664_red_cluster";

BLUE_MAGAZINES_PISTOL = "rhsusf_mag_15Rnd_9x19_JHP";

BLU_MAGAZINES_HAT_AT = "rhs_mag_maaws_HEAT";
BLU_MAGAZINES_HAT_HE = "rhs_mag_maaws_HE";

//Grenades
BLU_GRENADE_FRAG = "HandGrenade";
BLU_GRENADE_SMOKE = "SmokeShell";
BLU_GRENADE_SMOKE_BLUE = "SmokeShellBlue";
BLU_GRENADE_CHEM_BLUE = "Chemlight_blue";
BLU_GRENADE_CHEM_YELLOW = "Chemlight_yellow";
BLU_GRENADE_CHEM_RED = "Chemlight_red";
BLU_GRENADE_IR = "B_IR_Grenade";

//Uniforms
BLU_HELMET_TROOPER = "rhsusf_opscore_mc_cover";
BLU_HELMET_LEADER = "rhsusf_opscore_mc_cover_pelt_nsw";

BLU_UNIFORM = "rhs_uniform_g3_mc";
BLU_UNIFORM_CONTENTS_TROOPER = [["FirstAidKit",5]];
BLU_UNIFORM_CONTENTS_LEADER = [["FirstAidKit",5]];

//Vests
BLU_VEST_SQUADLEADER = "rhsusf_spcs_ocp_squadleader";
BLU_VEST_CONTENTS_SQUADLEADER = [[BLU_MAGAZINES_RIFLE_TRACER,7,30],[BLU_GRENADE_FRAG,2,1],[BLU_GRENADE_SMOKE,4,1]];

BLU_VEST_TEAMLEADER = "rhsusf_spcs_ocp_teamleader";
BLU_VEST_CONTENTS_TEAMLEADER = [[BLU_MAGAZINES_RIFLE_TRACER,7,30],[BLU_GRENADE_FRAG,2,1],[BLU_GRENADE_SMOKE,4,1]];

BLU_VEST_AUTOMATICRIFLEMAN = "rhsusf_spcs_ocp_saw";
BLU_VEST_CONTENTS_AUTOMATICRIFLEMAN = [[BLU_MAGAZINES_RIFLE_AUTOMATIC,2,200],[BLU_GRENADE_FRAG,2,1],[BLU_GRENADE_SMOKE,4,1]];

BLU_VEST_GRENADIER = "rhsusf_spcs_ocp_grenadier";
BLU_VEST_CONTENTS_GRENADIER = [[BLU_MAGAZINES_RIFLE,7,30],[BLU_GRENADE_FRAG,2,1],[BLU_GRENADE_SMOKE,4,1],[BLU_MAGAZINES_GRENADIER_HE,3,1],[BLU_MAGAZINES_GRENADIER_SMOKE,2,1],[BLU_MAGAZINES_GRENADIER_FLARE,2,1]];

BLU_VEST_RIFLEMAN = "rhsusf_spcs_ocp_rifleman";
BLU_VEST_CONTENTS_RIFLEMAN = [[BLU_MAGAZINES_RIFLE,7,30],[BLU_GRENADE_FRAG,2,1],[BLU_GRENADE_SMOKE,4,1]];

BLU_VEST_CREWMAN = "rhsusf_spcs_ocp_crewman";
BLU_VEST_CONTENTS_RIFLEMAN = [[BLU_MAGAZINES_RIFLE,7,30],[BLU_GRENADE_FRAG,2,1],[BLU_GRENADE_SMOKE,4,1]];

BLU_VEST_MACHINEGUNNER = "rhsusf_spcs_ocp_machinegunner";

BLU_VEST_MARKSMAN = "rhsusf_spcs_ocp_sniper";

//Packs
BLU_PACK_ASSAULTPACK = "rhsusf_falconii_mc";
BLU_PACK_TACTICALPACK = "rhsusf_assault_eagleaiii_ocp";
BLU_PACK_KITBAG = "B_Kitbag_mcamo";
BLU_PACK_CARRYALL = "B_Carryall_mcamo";

//Items
BLU_NVG = "rhsusf_ANPVS_15";
BLU_RADIO = "ItemRadio";
BLU_GPS = "ItemGPS";
BLU_BINO = "rhsusf_bino_m24";
