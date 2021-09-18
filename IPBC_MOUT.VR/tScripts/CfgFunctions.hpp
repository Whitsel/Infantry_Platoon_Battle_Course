
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
		class camScreen {};
		class camHelmet {};
		class camStatic {};
	}

	class crates {
		file = "tScripts\Crates";
		class crateLeadership {};
		class crateInfantry {};
		class crateWeapons {};
		class crateMech {};
		class crateOpfor {};
	};

	class rooms {
		file = "tScripts\Rooms";
		class roomInit {};
		class roomSimple {};
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
		class crateLock {};
		class intro {};
		class resources {};
		class setCargo {};
	};

	class vehicle {
		file = "tScripts\Vehicles";
		class vehicleInit {};
		class liftVehicle {};
	};

};