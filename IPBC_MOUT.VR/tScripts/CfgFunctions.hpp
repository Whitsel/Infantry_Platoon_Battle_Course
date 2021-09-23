
class tScripts {

	class cameras {
		file = "tScripts\Cameras";
		class camera_Controller {};
		class camera_Helmet {};
		class camera_Static {};
	}

	class crates {
		file = "tScripts\Crates";
		class crate_Common {};
		class crate_Lock {};
		class crate_Leadership {};
		class crate_Infantry {};
		class crate_Weapons {};
		class crate_Mechanized {};
		class crate_Opfor {};
	};

	class rooms {
		file = "tScripts\Rooms";
		class roomInitSimple {};
		class roomController {};
		class roomClear {};
		class roomSpawnFloor {};
		class roomSpawnFurniture {};
		class roomSpawnAI {};
	};

	class kits {
		file = "tScripts\Kits";
		class bsquadLeader {};
		class bteamLeader {};
		class bautomaticRifleman {};
		class bgrenadier {};
		class brifleman {};
		class bcombatLifeSaver {};
		class bmedic {};
		class bmarksman {};
		class bMachineGunassistant {};
		class bmachineGunner {};
		class bmachinegunAmmoBearer {};
		class bantiTankGunner {};
		class bantiTankAmmoBearer {};
		class bcrewman {};
		class bRATELO {};
		class crangeMaster {};
		class oteamLeader {};
		class oautomaticRifleman {};
		class ogrenadier {};
		class orifleman {};
	};

	class equipment {
		file = "tScripts\Kits\Equipment";
		class equipment_logic { preInit = 1; };
		class equipment_VAN {};
		class equipment_VANACE {};
		class equipment_VANACRE {};
		class equipment_VANTFAR {};
		class equipment_VANACEACRE {};
		class equipment_VANACETFAR {};
		class equipment_USF {};
		class equipment_USFACE {};
		class equipment_USFACRE {};
		class equipment_USFTFAR {};
		class equipment_USFACEACRE {};
		class equipment_USFACETFAR {};
		class equipment_oVAN {};
		class equipment_oAFRF {};
	};

	class tools {
		file = "tScripts\Tools";
		class pauseEx {};
		class timeSkip {};
		class tools {};
		class 3DIcons {};
		class wallHacks {};
	};

	class utility {
		file = "tScripts\Utility";
		class addActionSpacer {};
		class intro {};
		class resources {};
		class setCargo {};
		class hudPreInit { preInit = 1; };
	};

	class vehicle {
		file = "tScripts\Vehicles";
		class vehicleInit {};
		class liftVehicle {};
	};

};