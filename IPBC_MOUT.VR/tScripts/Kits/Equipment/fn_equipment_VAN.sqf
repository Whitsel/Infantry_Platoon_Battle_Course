
#include "script_component.hpp";

//Weapons
BLU_PRIMARY_RIFLE = "arifle_MX_Black_F";
BLU_PRIMARY_RIFLE_COMPACT = "arifle_MXC_Black_F";
BLU_PRIMARY_RIFLE_GRENADIER = "arifle_MX_GL_Black_F";
BLU_PRIMARY_RIFLE_AUTOMATIC = "arifle_MX_SW_Black_F";
BLU_PRIMARY_RIFLE_MARKSMAN = "arifle_MXM_Black_F";
BLU_PRIMARY_MACHINEGUN = "LMG_Mk200_black_F";

BLU_SECONDARY_PISTOL = "hgun_P07_blk_F";

BLU_LAUNCHER_LAT = "";
BLU_LAUNCHER_HAT = "launch_MRAWS_green_F";

//Weapon Attachments
BLU_OPTIC_RCO = "optic_hamr";
BLU_OPTIC_CCO = "optic_holosight_blk_f";
BLU_OPTIC_MGO = "optic_hamr";
BLU_OPTIC_MARK = "optic_MRCO";
BLU_OPTIC_SMG = "optic_aco";

BLU_RAIL_RIFLE_LASER = "acc_pointer_ir";
BLU_RAIL_MACHINEGUN_LASER = "acc_pointer_ir";
BLU_RAIL_FLASH = "acc_flashlight";

BLU_MUZZLE_FLASH = "ace_muzzle_mzls_h";
BLU_MUZZLE_SUPPRESSOR = "muzzle_snds_h";

BLU_UNDERBARREL_BIPOD = "bipod_01_f_blk";

//Magazines
BLU_MAGAZINES_RIFLE = "30Rnd_65x39_caseless_black_mag";
BLU_MAGAZINES_RIFLE_TRACER = "30Rnd_65x39_caseless_black_mag_Tracer";
BLU_MAGAZINES_RIFLE_AUTOMATIC = "100Rnd_65x39_caseless_black_mag";
BLU_MAGAZINES_MACHINEGUN = "200Rnd_65x39_cased_Box_Red";
BLU_MAGAZINES_GRENADIER_HE = "1Rnd_HE_Grenade_shell";
BLU_MAGAZINES_GRENADIER_SMOKE = "1Rnd_SmokeRed_Grenade_shell";
BLU_MAGAZINES_GRENADIER_FLARE = "UGL_FlareCIR_F";

BLUE_MAGAZINES_PISTOL = "16Rnd_9x21_Mag";

BLU_MAGAZINES_HAT_AT = "MRAWS_HEAT_F";
BLU_MAGAZINES_HAT_HE = "MRAWS_HE_F";

//Grenades
BLU_GRENADE_FRAG = "HandGrenade";
BLU_GRENADE_SMOKE = "SmokeShell";
BLU_GRENADE_SMOKE_BLUE = "SmokeShellBlue";
BLU_GRENADE_CHEMLIGHT_BLUE = "Chemlight_blue";
BLU_GRENADE_CHEMLIGHT_YELLOW = "Chemlight_yellow";
BLU_GRENADE_CHEMLIGHT_RED = "Chemlight_red";

//Kit
BLU_HELMET_LITE = "H_HelmetB";
BLU_HELMET_LEADER = "H_HelmetSpecB";

BLU_UNIFORM = "U_B_CombatUniform_mcam";

BLU_VEST_CREWMAN = "V_PlateCarrier2_rgr";
BLU_VEST_RIFLEMAN = "V_PlateCarrier2_rgr";
BLU_VEST_GRENADIER = "V_PlateCarrier2_rgr";
BLU_VEST_AUTOMATICRIFLEMAN = "V_PlateCarrier2_rgr";
BLU_VEST_MACHINEGUNNER = "V_PlateCarrier2_rgr";
BLU_VEST_MARKSMAN = "V_PlateCarrier2_rgr";
BLU_VEST_TEAMLEADER = "V_PlateCarrierSpec_rgr";
BLU_VEST_SQUADLEADER = "V_PlateCarrierSpec_rgr";

BLU_PACK_ASSAULTPACK = "B_AssaultPack_rgr";

BLU_NVG = "NVGoggles_INDEP";

BLU_RADIO = "ItemRadio";

//Contents
BLU_UNIFORM_CONTENTS_TROOPER = [["FirstAidKit",5]];
BLU_UNIFORM_CONTENTS_LEADER = [["FirstAidKit",5]];

if ("rhsusf_main" in activatedAddons) then {
	call FUNC(equipment_RHSUSAF)
};
