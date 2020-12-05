// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "CUP_NVG_PVS14" } else { "" }
#define BINOCULAR_ITEM		"ACE_Vector"
#define JTAC_ITEM 			"CUP_SOFLAM"

#define SIGHT 					["CUP_optic_TrijiconRx01_od","CUP_optic_CompM2_low_coyote","CUP_optic_HoloDesert","CUP_optic_ACOG_TA01NSN_Coyote_PIP"]
#define ASSIGNED_ITEMS			"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define ASSIGNED_ITEMS_DELTA	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM
#define ASSIGNED_ITEMS_JTAC 	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, JTAC_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define TAC_BEARD ["CUP_G_Tan_Scarf_Shades_Beard_Blonde","CUP_G_White_Scarf_Shades_Beard_Blonde","CUP_G_Beard_Shades_Black","CUP_G_ESS_KHK_Scarf_Tan_Beard","CUP_G_ESS_BLK_Scarf_White_Beard_Blonde","CUP_G_ESS_BLK_Scarf_Grn_Beard","CUP_G_ESS_KHK_Scarf_Tan_GPS_Beard_Blonde"]
#define TAC_UNI ["CUP_I_B_PARA_Unit_6","CUP_I_B_PARA_Unit_7","CUP_I_B_PARA_Unit_2"]

#define us_w_r ["CUP_arifle_M4A1_black","CUP_arifle_M4A1","CUP_arifle_M4A3_black","CUP_arifle_M4A3_desert"]
#define us_a_r ["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag"]

#define us_w_gr ["CUP_arifle_M4A1_GL_carryhandle_desert","CUP_arifle_M4A1_BUIS_desert_GL","CUP_arifle_M4A1_BUIS_GL"]
#define us_a_gr ["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag"]

kit_delta_pl = [
	["<EQUIPEMENT >>  ",TAC_UNI,"CUP_V_B_Delta_2","tf_rt1523g","TRYK_H_PASGT_TAN",TAC_BEARD],
	["<PRIMARY WEAPON >>  ",us_w_r,us_a_r,["CUP_muzzle_snds_M16_desert","CUP_acc_ANPEQ_2_desert",SIGHT,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_f","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["SmokeShellGreen",1],["Chemlight_green",1],["HandGrenade",3],["PRIMARY MAG",8],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_delta_ftl = [
	["<EQUIPEMENT >>  ","CUP_I_B_PARA_Unit_2","CUP_V_B_Delta_2","CUP_B_Kombat_Olive","TRYK_H_PASGT_TAN",TAC_BEARD],
	["<PRIMARY WEAPON >>  ",us_w_gr,us_a_gr,["CUP_muzzle_snds_M16_desert","","CUP_optic_RCO_desert",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_f","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["SmokeShellGreen",1],["Chemlight_green",1],["HandGrenade",3],["HANDGUN MAG",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_M203",16]]]
];
kit_delta_sl = [
	["<EQUIPEMENT >>  ",TAC_UNI,"CUP_V_B_Delta_2","tf_rt1523g","TRYK_H_PASGT_TAN",TAC_BEARD],
	["<PRIMARY WEAPON >>  ",us_w_r,us_a_r,["CUP_muzzle_snds_M16_desert","CUP_acc_ANPEQ_2_desert",SIGHT,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_f","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["SmokeShellGreen",1],["Chemlight_green",1],["HandGrenade",3],["PRIMARY MAG",8],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_delta_ar = [
	["<EQUIPEMENT >>  ",TAC_UNI,"CUP_V_B_Delta_2","CUP_B_Kombat_Olive","TRYK_H_PASGT_TAN",TAC_BEARD],
	["<PRIMARY WEAPON >>  ","CUP_lmg_Mk48_des","CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",["","CUP_acc_ANPEQ_2_desert","CUP_optic_HoloDesert",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_f","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_DELTA],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",3],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];
kit_delta_gr = [
	["<EQUIPEMENT >>  ",TAC_UNI,"CUP_V_B_Delta_1","CUP_B_Kombat_Olive","TRYK_H_PASGT_TAN",TAC_BEARD],
	["<PRIMARY WEAPON >>  ",us_w_gr,us_a_gr,["CUP_muzzle_snds_M16_desert","CUP_acc_ANPEQ_2_desert",SIGHT,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_f","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_DELTA],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",3],["CUP_1Rnd_HE_M203",9],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5],["DemoCharge_Remote_Mag",2]]]
];
kit_delta_r = [
	["<EQUIPEMENT >>  ",TAC_UNI,"CUP_V_B_Delta_1","CUP_B_Kombat_Olive","TRYK_H_PASGT_TAN",TAC_BEARD],
	["<PRIMARY WEAPON >>  ",us_w_r,us_a_r,["CUP_muzzle_snds_M16_desert","CUP_acc_ANPEQ_2_desert",SIGHT,""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_f","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_DELTA],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["HandGrenade",3],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["DemoCharge_Remote_Mag",2]]]
];
kit_delta_jtac = [
	["<EQUIPEMENT >>  ","CUP_I_B_PARA_Unit_6","CUP_V_B_Delta_2","tf_rt1523g","TRYK_H_PASGT_TAN",TAC_BEARD],
	["<PRIMARY WEAPON >>  ",us_w_r,us_a_r,["CUP_muzzle_snds_M16_desert","CUP_acc_ANPEQ_2_desert",SIGHT,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_f","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS_JTAC],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["SmokeShellGreen",1],["Chemlight_green",1],["HandGrenade",3],["PRIMARY MAG",8],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_us_pilot = [
	["<EQUIPEMENT >>  ","CUP_U_B_USArmy_PilotOverall","CUP_V_B_PilotVest","","CUP_H_SPH4_khaki",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",6],["HandGrenade",3],["SmokeShellRed",1],["SmokeShellBlue",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
cargo_kit_us = [
	[["rhs_weap_m72a7",3],["CUP_launch_MAAWS",1]],
	[["CUP_12Rnd_45ACP_mk23",20],["CUP_30Rnd_556x45_Stanag",30],["HandGrenade",15],["Chemlight_green",15],["SmokeShellGreen",15],["SmokeShell",15],["CUP_1Rnd_HE_M203",30],["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",15],["CUP_MAAWS_HEAT_M",2]],
	[["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",15],["ACE_tourniquet",4],["ACE_quikclot",10],["ACE_CableTie",10]],
	[]
];

#define INS_WEP ["CUP_arifle_G3A3_ris","CUP_arifle_FNFAL5060","CUP_srifle_LeeEnfield","CUP_arifle_M16A1","CUP_arifle_TYPE_56_2_Early","CUP_SKS"]
#define INS_MAG ["CUP_20Rnd_762x51_G3","CUP_20Rnd_762x51_FNFAL_M","CUP_10x_303_M","CUP_20Rnd_556x45_Stanag","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_10Rnd_762x39_SKS_M"]
#define INS_MG_WEP ["CUP_lmg_PKM","CUP_lmg_UK59","CUP_arifle_RPK74"]
#define INS_MG_MAG ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M","CUP_50Rnd_UK59_762x54R_Tracer","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M"]
#define INS_UNI ["CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_08","CUP_O_TKI_Khet_Partug_06"]
#define INS_VEST ["CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_06","CUP_V_I_Carrier_Belt"]
#define INS_HEADGEAR ["CUP_H_TKI_Pakol_2_04","CUP_H_TKI_Pakol_2_01","CUP_H_TKI_SkullCap_03","CUP_H_TKI_Lungee_Open_04"]


kit_ins_random = [
	"kit_ins_fighter"
	,"kit_ins_mg"
	,"kit_ins_fighter"
	,"kit_ins_ar"
	,"kit_ins_at"
	,"kit_ins_lat"
	,"kit_ins_fighter"
	,"kit_ins_lat"
	,"kit_ins_at"
	,"kit_ins_gr"
]; 
kit_ins_fighter = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST ,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_mg = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ",INS_MG_WEP,INS_MG_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_ar = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_at = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"rhs_sidor",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];
kit_ins_gr = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",3],["CUP_1Rnd_HE_GP25_M",9]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_lat = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_aa = [
	["<EQUIPEMENT >>  ","CUP_O_TKI_Khet_Partug_08","CUP_V_OI_TKI_Jacket4_04","","CUP_H_TKI_SkullCap_03","CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","CUP_SKS","CUP_10Rnd_762x39_SKS_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_FIM92Stinger_Loaded","CUP_Stinger_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];

#define CIV_UNI ["CUP_O_TKI_Khet_Jeans_01","CUP_O_TKI_Khet_Jeans_02","CUP_O_TKI_Khet_Jeans_04","CUP_O_TKI_Khet_Partug_08","CUP_O_TKI_Khet_Partug_05"]
#define CIV_HEAD ["CUP_H_TKI_Pakol_1_01","CUP_H_TKI_Pakol_1_05","CUP_H_TKI_SkullCap_03"]
kit_civ = [
	["<EQUIPEMENT >>  ",CIV_UNI,"","",CIV_HEAD,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","tf_microdagr","tf_anprc152_1"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
