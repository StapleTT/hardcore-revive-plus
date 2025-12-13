scoreboard players set @s lifeReset 0

# Return totem of undying if life jam is disabled
execute if score mnc_settings mnc_lifeJam matches 0 run title @s actionbar ["Life Jam has been disabled!"]
execute if score mnc_settings mnc_lifeJam matches 0 run give @s totem_of_undying
execute if score mnc_settings mnc_defaultLives matches 1 run title @s actionbar ["Life Jam has been disabled!"]
execute if score mnc_settings mnc_defaultLives matches 1 run give @s totem_of_undying