execute if entity @s[tag=!hcrplus_openedsettings] run function hcrplus:settings/settings_message
execute if entity @s[tag=hcrplus_openedsettings] run function hcrplus:settings/menus/main

execute if entity @s[tag=!hcrplus_openedsettings] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1

tag @s add hcrplus_openedsettings
tag @s add hcrplus_operator