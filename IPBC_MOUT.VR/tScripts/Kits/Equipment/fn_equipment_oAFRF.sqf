
#include "script_component.hpp";

//Weapons
OPF_PRIMARY_RIFLE = "arifle_MX_Black_F";
OPF_PRIMARY_RIFLE_COMPACT = "arifle_MXC_Black_F";
OPF_PRIMARY_RIFLE_GRENADIER = "arifle_MX_GL_Black_F";
OPF_PRIMARY_RIFLE_AUTOMATIC = "arifle_MX_SW_Black_F";
OPF_PRIMARY_RIFLE_MARKSMAN = "arifle_MXM_Black_F";
OPF_PRIMARY_MACHINEGUN = "LMG_Mk200_black_F";

OPF_SECONDARY_PISTOL = "hgun_P07_blk_F";

OPF_LAUNCHER_LAT = "";
OPF_LAUNCHER_HAT = "launch_MRAWS_green_F";

//Weapon Attachments
OPF_OPTIC_RCO = "optic_hamr";
OPF_OPTIC_CCO = "optic_holosight_blk_f";
OPF_OPTIC_MGO = "optic_hamr";
OPF_OPTIC_MARK = "optic_MRCO";
OPF_OPTIC_SMG = "optic_aco";

OPF_RAIL_RIFLE_LASER = "acc_pointer_ir";
OPF_RAIL_MACHINEGUN_LASER = "acc_pointer_ir";
OPF_RAIL_FLASH = "acc_flashlight";

OPF_MUZZLE_FLASH = "ace_muzzle_mzls_h";
OPF_MUZZLE_SUPPRESSOR = "muzzle_snds_h";

OPF_UNDERBARREL_BIPOD = "bipod_01_f_blk";

//Magazines
OPF_MAGAZINES_RIFLE = "30Rnd_65x39_caseless_black_mag";
OPF_MAGAZINES_RIFLE_TRACER = "30Rnd_65x39_caseless_black_mag_Tracer";
OPF_MAGAZINES_RIFLE_AUTOMATIC = "100Rnd_65x39_caseless_black_mag";
OPF_MAGAZINES_MACHINEGUN = "200Rnd_65x39_cased_Box_Red";
OPF_MAGAZINES_GRENADIER_HE = "1Rnd_HE_Grenade_shell";
OPF_MAGAZINES_GRENADIER_SMOKE = "1Rnd_SmokeRed_Grenade_shell";
OPF_MAGAZINES_GRENADIER_FLARE = "UGL_FlareCIR_F";

OPFE_MAGAZINES_PISTOL = "16Rnd_9x21_Mag";

OPF_MAGAZINES_HAT_AT = "MRAWS_HEAT_F";
OPF_MAGAZINES_HAT_HE = "MRAWS_HE_F";

//Grenades
OPF_GRENADE_FRAG = "HandGrenade";
OPF_GRENADE_SMOKE = "SmokeShell";
OPF_GRENADE_SMOKE_OPFE = "SmokeShellOPFe";
OPF_GRENADE_CHEMLIGHT_OPFE = "Chemlight_OPFe";
OPF_GRENADE_CHEMLIGHT_YELLOW = "Chemlight_yellow";
OPF_GRENADE_CHEMLIGHT_RED = "Chemlight_red";

//Kit
OPF_HELMET_LITE = "H_HelmetB";
OPF_HELMET_LEADER = "H_HelmetSpecB";

OPF_UNIFORM = "U_B_CombatUniform_mcam";

OPF_VEST_CREWMAN = "V_PlateCarrier2_rgr";
OPF_VEST_RIFLEMAN = "V_PlateCarrier2_rgr";
OPF_VEST_GRENADIER = "V_PlateCarrier2_rgr";
OPF_VEST_AUTOMATICRIFLEMAN = "V_PlateCarrier2_rgr";
OPF_VEST_MACHINEGUNNER = "V_PlateCarrier2_rgr";
OPF_VEST_MARKSMAN = "V_PlateCarrier2_rgr";
OPF_VEST_TEAMLEADER = "V_PlateCarrierSpec_rgr";
OPF_VEST_SQUADLEADER = "V_PlateCarrierSpec_rgr";

OPF_PACK_ASSAULTPACK = "B_AssaultPack_rgr";

OPF_NVG = "NVGoggles_INDEP";

OPF_RADIO = "ItemRadio";

//Contents
OPF_UNIFORM_CONTENTS_TROOPER = [["FirstAidKit",5]];
OPF_UNIFORM_CONTENTS_LEADER = [["FirstAidKit",5]];

if ("rhsusf_main" in activatedAddons) then {
	call FUNC(equipment_RHSUSAF)
};
