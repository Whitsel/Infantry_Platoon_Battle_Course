
#include "script_component.hpp";

if ("rhsusf_main" in activatedAddons) then
{
	if ("ace_main" in activatedAddons) then
	{
		switch (true) do
		{
			case ("acre_sys_radio" in activatedAddons) : {call FUNC(equipment_USFACEACRE)};
			case ("tfar_core" in activatedAddons) : {call FUNC(equipment_USFACETFAR)};
			default {call FUNC(equipment_USFACE)};
		};
	} else {
		switch (true) do
		{
			case ("acre_sys_radio" in activatedAddons) : {call FUNC(equipment_USFACRE)};
			case ("tfar_core" in activatedAddons) : {call FUNC(equipment_USFTFAR)};
			default {call FUNC(equipment_USF)};
		};
	};
} else {
	if ("ace_main" in activatedAddons) then
	{
		switch (true) do
		{
			case ("acre_sys_radio" in activatedAddons) : {call FUNC(equipment_VANACEACRE)};
			case ("tfar_core" in activatedAddons) : {call FUNC(equipment_VANACETFAR)};
			default {call FUNC(equipment_VANACE)};
		};
	} else {
		switch (true) do
		{
			case ("acre_sys_radio" in activatedAddons) : {call FUNC(equipment_VANACRE)};
			case ("tfar_core" in activatedAddons) : {call FUNC(equipment_VANTFAR)};
			default {call FUNC(equipment_VAN)};
		};
	};
};

if ("rhs_main" in activatedAddons) then {
	call FUNC(equipment_oAFRF)
} else {
	call FUNC(equipment_oVAN)
};
