--mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Missile_Shapes")
mount_vfs_texture_path  (current_mod_path.."/Missile_Textures")

local R_33 =   {
		category		= CAT_AIR_TO_AIR,
		name			= "R-33", -- Vympel R-33
		user_name		= _("R-33"),
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
        Escort 			= 1,
        Head_Type = 6,
		sigma = {10, 10, 10},
        M = 520.0,							--gross weight in kg
        H_max = 28000.0,					--Maximum altitude
        H_min = 10.0,						--minimum flight altitude
        Diam = 380.0,						--Case diameter in mm
        Cx_pil = 5,							--Cx as a suspension
        D_max = 40000.0,					--maximum launch range at low altitude
        D_min = 6000.0,						--the minimum launch range
        Head_Form = 1,
        Life_Time = 360.0,
        Nr_max = 12,						--Maximum Overload at turns
        v_min = 140.0,						--Minimum speed
        v_mid = 800.0,						--average speed
        Mach_max = 4.5,						--The maximum Mach number
        t_b = 0.1,							--the engine switching
        t_acc = 6.0,						--amount of accelerator time
        t_marsh = 25.0,						--While working in the marching mode
        Range_max = 120000.0,				--maximum launch range at the maximum height
        H_min_t = 25.0,						--the minimum height above the target terrain, m
        Fi_start = 0.3,
        Fi_rak = 3.14152,
        Fi_excort = 0.87,
        Fi_search = 0.1,
        OmViz_max = 0.35,
        warhead = simple_aa_warhead(47.0),
        exhaust = { 1, 1, 1, 1 },
        X_back = -1.948,
        Y_back = 0.0,
        Z_back = 0.0,
        Reflection = 0.079,
        KillDistance = 12.0,
		shape_table_data =
		{
			{
				name	 = "R-33",
				file	 = "R-33",
				life	 = 1,
				fire	 = { 0, 1},
				username = "R-33",
				index = WSTYPE_PLACEHOLDER,
			},
		},
		ModelData = {   58 ,  -- model params count
						1.1 ,   -- characteristic square (характеристическая площадь)
						
						-- параметры зависимости Сx
						0.07 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
						0.08 , -- Cx_k1 высота пика волнового кризиса
						0.02 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
						0.012, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
						2.5 , -- Cx_k4 крутизна спада за волновым кризисом 
						1.2 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))
						
						-- параметры зависимости Cy
						0.6 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
						0.3	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
						1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом  
						
						0.2 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
						0.0, --угловая скорость создаваймая моментом газовых рулей
						
					-- Engine data. Time, fuel flow, thrust.	
					--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
						-1.0,		-1.0,	5.0,  		15.0,		0.0,			0.0,		1.0e9,         -- time of stage, sec
						 0.0,		0.0,	20.0,		3.0,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
						 0.0,		0.0,	70000.0,	12000.0,	0.0,			0.0,		0.0,           -- thrust, newtons
					
						 1.0e9, -- таймер самоликвидации, сек
						 120.0, -- время работы энергосистемы, сек
						 0, -- абсолютная высота самоликвидации, м
						 2.5, -- время задержки включения управления (маневр отлета, безопасности), сек
						 80000.0, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
						 80000.0, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м 
						 0.15,  -- синус угла возвышения траектории набора горки
						 30.0, -- продольное ускорения взведения взрывателя
						 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
						 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
						 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
						 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
						 127600.0,
						 70000.0,
						 50000.0,
						 0.2, 
						 0.6,
						 1.4,
						-3.0,
						0.5,
					}, 
    }

declare_weapon(R_33)


declare_loadout({
	category		=	CAT_AIR_TO_AIR,
	CLSID			= 	"{R-33}",
	Picture	=	"r33.png",
	wsTypeOfWeapon	=	R_33.wsTypeOfWeapon,
	displayName	=	_("R-33"),
	attribute	=	{4,	4,	32,	WSTYPE_PLACEHOLDER},
	Count			=	1,
	Weight			=	490,
	Elements	=	
	{
		{
		
			ShapeName	=	"R-33CUS",
			Position	=	{0,	-0,	0}
		},
	}, -- end of Elements
})
