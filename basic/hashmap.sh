#!/bin/bash

declare -A CapitalCities=(
	["Ibaraki"]="Mito"
	["Tochigi"]="Utsunomiya"
	["Gunnma"]="Maebashi"
	["Saitama"]="Saitama"
	["Chiba"]="Chiba"
	["Tokyo"]="Shinjuku"
	["Kanagawa"]="Yokohama"
)

echo $CapitalCities[*]

