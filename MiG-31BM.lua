--mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/Avionics")
mount_vfs_texture_path  (current_mod_path.."/Textures/MiG-31BM")
mount_vfs_texture_path  (current_mod_path.."/Textures/Textures_Cockpit_MiG-31BM.zip")
mount_vfs_model_path    (current_mod_path.."/Cockpit/Resources/Model/Shape")
mount_vfs_texture_path  (current_mod_path.."/Cockpit/Resources/Model/Textures/Cockpit_MiG-31BM-CPT-TEXTURES")
mount_vfs_texture_path  (current_mod_path.."/Textures")

dofile(current_mod_path.."/Views.lua")



MiG_31BM =  {
        
	Name 				=   'MiG-31BM',
	DisplayName			= _('MiG-31BM'),
	Cannon = "yes",
	HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',
	
	Picture 			= "MiG-31BM.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "MiG-31BM",
	
	shape_table_data 	= 
	{
		{
			file  	 	= 'MiG-31BM';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    		= 'MiG-31BM-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'MiG-31BM';
			index    	=  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "MiG-31BM-oblomok";
			file  = "MiG-31BM-oblomok";
			fire  = { 240, 2};
		},

	},
	mapclasskey 		= "P0091000024",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, Su_27,
        "Multirole fighters", "Refuelable",},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
		M_empty	=	21820,
		M_nominal	=	35000,
		M_max	=	46200,
		M_fuel_max	=	15500,
		H_max	=	21000,
		average_fuel_consumption	=	0.0816,
		CAS_min	=	68,
		V_opt	=	280,
		V_take_off	=	72,
		V_land	=	72,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.728,	-2.4,	2.204},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{6.133,	-2.496,	0},
		AOA_take_off	=	0.18,
		stores_number	=	6,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	930,
		V_max_h	=	1860,
		tanker_type	=	4,
		wing_area	=	61.6,
		wing_span	=	13.46,
		thrust_sum_max	=	20900, 
		thrust_sum_ab	=	34172,
		Vy_max	=	250,
		length	=	22.7,
		height	=	6.15,
		flaps_maneuver	=	1,
		Mach_max	=	2.83,
		range	=	2400,
		crew_size	=	2,
		RCS	=	10,
		Ny_max_e	=	5,
		detection_range_max	=	320,
		IR_emission_coeff	=	3.0,
		IR_emission_coeff_ab	=	6.0,
		engines_count	=	2,
		wing_tip_pos = 	{-5.108,	0.035,	6.52},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-8.533,	0.045,	-0.729},
				elevation	=	0,
				diameter	=	1.242,
				exhaust_length_ab	=	13.497,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-8.533,	0.045,	0.729},
				elevation	=	0,
				diameter	=	1.242,
				exhaust_length_ab	=	13.497,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3,
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	30,
				pos = 	{7.249,	0.9,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	31,
				pos = 	{5.598,	0.9,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	4,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{7.8658,	1.05078,	-0.7762},--9.709,	1.305,	-0.866
		fires_pos = 
		{
			[1] = 	{-2.351,	-0.696,	0},
			[2] = 	{-0.681,	0.749,	1.649},
			[3] = 	{-0.681,	0.749,	-1.649},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-7.828,	0.051,	0.73},
			[9] = 	{-7.828,	0.051,	-0.73},
			[10] = 	{-2.84,	0.549,	2.6},
			[11] = 	{-2.84,	0.549,	-2.6},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	-0.422},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	0.422},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "15245",
        MaxHeight = "18500",
        MaxSpeed = "2300",
        MaxTakeOffWeight = "41200",
        Picture = "MiG-31BM.png",
        Rate = "50",
        Shape = "MiG-31BM",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
			[2] = 
            {
				Name = "AircraftCarrier With Tramplin",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories
        WingSpan = "14.7",
        WorldID = MiG_31BM,

       -- Countermeasures
SingleChargeTotal = 0,
CMDS_Incrementation = 0,
ChaffDefault = 0, -- PPR-26
ChaffChargeSize = 1,
FlareDefault = 0, -- PPI-26
FlareChargeSize = 1,
CMDS_Edit = false,
	
        CanopyGeometry = {
            azimuth = {-145.0, 145.0},
            elevation = {-50.0, 90.0}
        },
		
		ammo_type ={ _("CM Combat Mix"),
                     _("HEI High Explosive Incendiary"),
                     _("TP Target Practice"),
                   },

Sensors = {
RADAR = "BRLS-8B",
IRST = "8TP",
RWR = "Abstract RWR"
},
Countermeasures = {
ECM = "Gardenia"
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},
	mapclasskey = "P0091000024",

Guns = {gun_mount("GSh_23_6", { count = 260 },{muzzle_pos = {-0.125, -0.458, 1.75}}),
},


	Pylons =     {
		--[[ TODO: uncomment when  fuel tanks will be available 
		pylon(1, 0, -3.418590, 0.059660, -4.687541,
            {
				connector = "Point Zero 01",use_full_connector_position=true,
            },
            {
				{ CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, -- R73
				{ CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" }, -- R77
            }
        ),
		--]]
		
        pylon(1, 0, -1.972119, -0.160566, -3.470583,
            {
				connector = "Point Zero 02",use_full_connector_position=true,
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" }, -- R40R
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" }, -- R40T
                { CLSID = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}" },
				{ CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, -- R73
				{ CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" }, -- R77
            }
        ),
         pylon(2, 1,  -2.400118, -0.945056, -0.473283,
            {
				connector = "Point Zero 03",use_full_connector_position=true,
            },
            {
                { CLSID = "{R-33}" },
            }
        ),
        pylon(3, 1, 1.966954, -0.751732, -0.473283,
            {
				connector = "Point Zero 04",use_full_connector_position=true,
            },
            {
                { CLSID = "{R-33}" },
            }
        ),
        pylon(4, 1, -2.400118, -0.945056, 0.472034,
            {
				connector = "Point Zero 05",use_full_connector_position=true,
            },
            {
                { CLSID = "{R-33}" },
            }
        ),
		pylon(5, 1, 1.966954, -0.751732, 0.472034,
            {
				connector = "Point Zero 06",use_full_connector_position=true,
            },
            {
				{ CLSID = "{R-33}" },
            }
        ),
		pylon(6, 0, -1.972119, -0.160567, 3.470499,
            {
 				connector = "Point Zero 07",use_full_connector_position=true,
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" }, -- R40R
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" }, -- R40T
                { CLSID = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}" },
				{ CLSID = "{CBC29BFE-3D24-4C64-B81D-941239D12249}" }, -- R73
				{ CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" }, -- R77
            }
        ),
		--[[ TODO: uncomment when  fuel tanks will be available
		pylon(8, 0, -3.418590, 0.059659, 4.688020,
            {
				connector = "Point Zero 08",use_full_connector_position=true,
            },
            {
				{ CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, -- R73
				{ CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}" }, -- R77
            }
        ),
		--]]
    },
	
	Tasks = {
--      aircraft_task(CAP),
--     	aircraft_task(Escort),
    	aircraft_task(FighterSweep),
		aircraft_task(Intercept),
--		aircraft_task(Reconnaissance),
    	aircraft_task(GroundAttack),
     	aircraft_task(CAS),
        aircraft_task(AFAC),
	    aircraft_task(RunwayAttack),
    	aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(FighterSweep),

	SFM_Data = {
	aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.016,
			cx_flap	=	0.025,
			cy_flap	=	0.2,
			cx_brk	=	0.025,
			table_data = 
			{
				[1] = 	{0,	0.025,	0.07,	0.155,	0.13,	0.5,	30,	1.2},
				[2] = 	{0.2,	0.025,	0.07,	0.155,	0.13,	1.5,	30,	1.2},
				[3] = 	{0.4,	0.025,	0.07,	0.155,	0.13,	2.5,	30,	1.2},
				[4] = 	{0.6,	0.025,	0.073,	0.155,	0.13,	3.5,	30,	1.2},
				[5] = 	{0.7,	0.025,	0.076,	0.155,	0.13,	3.5,	28.666666666667,	1.18},
				[6] = 	{0.8,	0.025,	0.079,	0.155,	0.13,	3.5,	27.333333333333,	1.16},
				[7] = 	{0.9,	0.0275,	0.083,	0.172,	0.13,	3.5,	26,	1.14},
				[8] = 	{1,	0.035,	0.085,	0.183,	0.15,	3.5,	24.666666666667,	1.12},
				[9] = 	{1.05,	0.0375,	0.0855,	0.199,	0.15,	3.5,	24,	1.11},
				[10] = 	{1.1,	0.04,	0.086,	0.215,	0.15,	3.15,	18,	1.1},
				[11] = 	{1.2,	0.041,	0.083,	0.2325,	0.25,	2.45,	17,	1.05},
				[12] = 	{1.3,	0.04,	0.077,	0.25,	0.35,	1.75,	16,	1},
				[13] = 	{1.5,	0.038,	0.062,	0.29,	0.35,	1.5,	13,	0.9},
				[14] = 	{1.7,	0.036066666666667,	0.051333333333333,	0.342,	0.210004,	0.9,	12,	0.7},
				[15] = 	{1.8,	0.0351,	0.046,	0.368,	0.140006,	0.86,	11.4,	0.64},
				[16] = 	{2,	0.033,	0.039,	0.42,	1.0000000000066e-005,	0.78,	10.2,	0.52},
				[17] = 	{2.2,	0.032,	0.034,	0.458,	1e-005,	0.7,	9,	0.4},
				[18] = 	{2.5,	0.028,	0.033,	0.515,	1e-005,	0.7,	9,	0.4},
				[19] = 	{3,	0.025,	0.033,	0.61,	1e-005,	0.7,	9,	0.4},
				[20] = 	{3.9,	0.025,	0.033,	0.61,	1e-005,	0.7,	9,	0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			typeng	=	1,
			hMaxEng	=	19,
			dcx_eng	=	0.0144,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6500,
			dpdh_f	=	18500,
			table_data = 
			{
				[1] = 	{0,	240000,	303800},
				[2] = 	{0.2,	213000,	305000},
				[3] = 	{0.4,	190000,	300000},
				[4] = 	{0.6,	170000,	302000},
				[5] = 	{0.7,	160000,	310000},
				[6] = 	{0.8,	147000,	317000},
				[7] = 	{0.9,	135000,	325000},
				[8] = 	{1,	124000,	337000},
				[9] = 	{1.1,	115000,	343000},
				[10] = 	{1.2,	112000,	350000},
				[11] = 	{1.3,	107000,	357000},
				[12] = 	{1.5,	92000,	374000},
				[13] = 	{1.8,	78000,	406000},
				[14] = 	{2,	56000,	432000},
				[15] = 	{2.2,	52000,	450000},
				[16] = 	{2.515,	43000,	440000},
				[17] = 	{3,	25000,	432000},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
				["FIN_L_TOP"] 			 = {critical_damage = 10, args = {244},deps_cells = {"RUDDER_L"}},
				["RUDDER_L"] 			 = {critical_damage = 5 , args = {248}},
				["FIN_R_TOP"] 			 = {critical_damage = 10, args = {241},deps_cells = {"RUDDER_R"}},
				["RUDDER_R"] 			 = {critical_damage = 5 , args = {247}},
				["ELEVATOR_R_IN"]		 = {critical_damage = 5 , args = {237}},
				["ELEVATOR_L_IN"]		 = {critical_damage = 5 , args = {239}},

				["ENGINE_L"]			 = {critical_damage = 10 , args = {167},droppable = false},
				["ENGINE_R"]			 = {critical_damage = 10 , args = {169},droppable = false},
				["FUSELAGE_LEFT_SIDE"]   = {critical_damage = 5 , args = {154,299},droppable = false},
				["FUSELAGE_RIGHT_SIDE"]  = {critical_damage = 5 , args = {153,303},droppable = false},
				["FUSELAGE_BOTTOM"]  	 = {critical_damage = 5 , args = {152}	   ,droppable = false},

				["NOSE_CENTER"]  	 	 = {critical_damage = 5 , args = {146},droppable = false},
				["NOSE_BOTTOM"]  	 	 = {critical_damage = 5 , args = {148},droppable = false},
				["CABIN_LEFT_SIDE"]  	 = {critical_damage = 5 , args = {150 , 298},droppable = false},
				["CABIN_RIGHT_SIDE"]  	 = {critical_damage = 5 , args = {149 , 301 , 302},droppable = false},
				["COCKPIT"]  	 		 = {critical_damage = 5 , args = {65},droppable = false},

				["WING_R_CENTER"]  	= {critical_damage = 10, args = {214},deps_cells = {"ELERON_R"}},
				["WING_R_IN"]  	 	= {critical_damage = 10, args = {215},deps_cells = {"FLAP_R_IN"},droppable = false},
				["ELERON_R"]  	 	= {critical_damage = 5 , args = {216},droppable = false},
				["FLAP_R_IN"]  	 	= {critical_damage = 5 , args = {217},droppable = false},
				["WING_L_CENTER"]  	= {critical_damage = 10, args = {224},deps_cells = {"ELERON_L"}},
				["WING_L_IN"]  	 	= {critical_damage = 10, args = {225},deps_cells = {"FLAP_L_IN"},droppable = false},
				["ELERON_L"]  	 	= {critical_damage = 5 , args = {226},droppable = false},
				["FLAP_L_IN"]  	 	= {critical_damage = 5 , args = {227},droppable = false},
	},
	
	DamageParts = 
	{  
		[1] = "MIG-31-OBLOMOK-WING-R", -- wing R
		[2] = "MIG-31-OBLOMOK-WING-L",
		--[3] = "MiG-31-oblomok-noise", -- nose
		--[4] = "MiG-31-oblomok-tail-r", -- tail
		--[5] = "MiG-31-oblomok-tail-l", -- tail
	},
	
	lights_data = {
	typename = "collection",
	lights = {
    [1] = { typename = "collection",
						lights = {-- Left Anticollision Light
								  {typename = "natostrobelight",
								   connector = "WHITE_BEACON L",
								   argument_1 = 195,
								   period = 1.2,
								   phase_shift = 0
								  },
								  -- Right Anticollision Light
								  {typename = "natostrobelight",
								   connector = "WHITE_BEACON R",
								   argument_1 = 196,
								   period = 1.2,
								   phase_shift = 0
								  },
								  -- Tail Anticollision Light
								  {typename = "natostrobelight",
								   connector = "BANO_0_BACK",
								   argument_1 = 192,
								   period = 1.2,
								   phase_shift = 0
								  }
								 }
									  },
	[2] = { typename = "collection",
							lights = {-- Landing light
									  {typename = "spotlight",
									   connector = "MAIN_SPOT_PTR_02",
									   argument = 209,
									   dir_correction = {elevation = math.rad(-1)}
									  },
									  {-- Landing/Taxi light
									   typename = "spotlight",
									   connector = "MAIN_SPOT_PTR_01",
									   argument = 208,
									   dir_correction = {elevation = math.rad(3)}
									  }
									 }
						},
    [3]	= {	typename = "collection",
								lights = {-- Left Position Light (red)
								{typename = "omnilight",
								 connector = "BANO_1",
								 color = {0.99, 0.11, 0.3},
								 pos_correction  = {0.1, 0, -0.2},
								 argument  = 190
								},
								 -- Right Position Light (green)
								{typename = "omnilight",
								connector = "BANO_2",
								color = {0, 0.894, 0.6},
								pos_correction = {0.1, 0, 0.2},
								argument  = 191
								},
								-- Tail Position Light (white)
								{typename = "omnilight",
								connector = "BANO_0",
								color = {1, 1, 1},
								pos_correction  = {0, 0, 0},
								argument  = 192
								}}
							},
--[4] = { typename = "collection", -- white strobe upper
--	lights = {
--				{typename = "natostrobelight",connector = "WHITE_TOP",argument_1 = 999,period = 1.0,color = {0.8, 0.8, 1.0},phase_shift = 0.0},
--				{typename = "natostrobelight",connector = "WHITE_TOP",argument_1 = 998,period = 1.0,color = {0.8, 0.8, 1.0},phase_shift = 0.5},
--			 }
--		},
	[5]	= {typename = "collection",
			lights = {
						{typename = "collection",
						lights = {{
								-- Right Nacelle Floodlight
								typename = "spotlight",
								position  = {0.5, 1.2, 0},
								color = {1.0, 1.0, 1.0},
								intensity_max = 0.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(150), elevation = math.rad(5)},
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {
								-- Left Nacelle Floodlight
								typename = "spotlight",
								position  = {0.5, 1.2, 0},
								color = {1.0, 1.0, 1.0},
								intensity_max = 0.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(-150), elevation = math.rad(5)},
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {typename  = "argumentlight", argument = 212},
						},
					},
					{typename = "collection",
						lights = {{
								-- Left Nose Floodlight
								typename  = "spotlight",
								position  = {0, -0.3, -5.80},
								color = {1.0, 1.0, 1.0},
								intensity_max = 0.0, angle_max = 0.45,
								direction = {azimuth = math.rad(45)},
								argument = 211,
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {
								-- Right Nose Floodlight
								typename = "spotlight",
								position  = {0, -0.3, 5.80},
								color = {1.0, 1.0, 1.0},
								intensity_max = 0.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(-45)},
								argument = 210,
								dont_change_color = false,
								angle_change_rate = 0
							   }
						}
					},
					-- UARRSI light
					{
						typename = "omnilight", position  = {6.5, 0.4, 0}, color = {6, 6, 2}
					}
				  },
			}
		}
	},
	Countries = {"Russia","Abkhazia"},	
}

add_aircraft(MiG_31BM)
