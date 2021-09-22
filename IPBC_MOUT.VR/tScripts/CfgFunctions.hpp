
class init {
	tag = "init";
	class functions
	{
		file = "tScripts\Utility";
		class hudPreInit { preInit = 1; };
	};
};

class tScripts {

	class cameras {
		file = "tScripts\Cameras";
		class camera_Controller {};
		class camera_Helmet {};
		class camera_Static {};
	}

	class crates {
		file = "tScripts\Crates";
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
		class bteamLeader {};
		class bautomaticRifleman {};
		class bgrenadier {};
		class brifleman {};
		class bmedic {};
		class bmarksman {};
		class bassistantMachineGunner {};
		class bmachineGunner {};
		class bmachinegunAmmoBearer {};
		class bantiTankGunner {};
		class bantiTankAmmoBearer {};
		class bcrewman {};
		class crangeMaster {};
		class oteamLeader {};
		class oautomaticRifleman {};
		class ogrenadier {};
		class orifleman {};
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