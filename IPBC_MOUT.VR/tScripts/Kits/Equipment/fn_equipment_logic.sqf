
#include "script_component.hpp";

/*
THIS IS PLACEHOLDER AND IS COMPLETELY NON FUNCTIONAL
*/

if ("rhsusf_main" in activatedAddons) then
{
	if ("ace_main" in activatedAddons) then
	{
		switch (_x in activateAddons) do
		{
			case "acre_main" {call FUNC(equipment_USFACEACRE)};
			case "tfar_main" {call FUNC(equipment_USFACETFAR)};
			default {call FUNC(equipment_USFACE)};
		};
	}; else {
		switch (_x in activateAddons) do
		{
			case "acre_main" {call FUNC(equipment_USFACRE)};
			case "tfar_main" {call FUNC(equipment_USFTFAR)};
			default {call FUNC(equipment_USF)};
		};
	};
}; else {
	if ("ace_main" in activatedAddons) then
	{
		switch (_x in activateAddons) do
		{
			case "acre_main" {call FUNC(equipment_VANACEACRE)};
			case "tfar_main" {call FUNC(equipment_VANACETFAR)};
			default {call FUNC(equipment_VANACE)};
		};
	}; else {
		switch (_x in activateAddons) do
		{
			case "acre_main" {call FUNC(equipment_VANACRE)};
			case "tfar_main" {call FUNC(equipment_VANTFAR)};
			default {call FUNC(equipment_VAN)};
		};
	};
};
