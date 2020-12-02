
/* *********** This array defines detailed properties of zones ************************** */
[
	"vehicle_hold" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["CUP_I_Hilux_DSHKM_IND_G_F", "Vehicle Road Hold", ""]
				,["O_Soldier_F", [0,"Gunner"], "kit_ins_random"]
				,["O_Soldier_F", [0,"Driver"], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"patrol_village" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

,
[
	"patrol_high" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			6, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
		,
		[
			2, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_aa"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"civil" /* Zone Name */
	,"CIVILIAN",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["CUP_C_TK_Man_04", [], "kit_civ"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["CUP_C_TK_Man_04", ["indoors"], "kit_civ"]
				,["CUP_C_TK_Man_04", ["indoors"], "kit_civ"]
				,["CUP_C_TK_Man_04", ["indoors"], "kit_civ"]
				,["CUP_C_TK_Man_04", ["indoors"], "kit_civ"]
				,["CUP_C_TK_Man_04", ["indoors"], "kit_civ"]
				,["CUP_C_TK_Man_04", ["indoors"], "kit_civ"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"reinf" /* Zone Name */
	,"EAST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["FULL","SAFE","YELLOW","WEDGE"]
	 /* (OPTIONAL) Activation condition */
	,{ [reinf_TRG, "", "> 3"] call dzn_fnc_ccPlayers  }
]
