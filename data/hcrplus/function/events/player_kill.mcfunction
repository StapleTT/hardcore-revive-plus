advancement revoke @s only hcrplus:player_kill

execute if score mnc_settings mnc_lifeSteal matches 1 unless score @s Lives = mnc_settings mnc_defaultLives run function hcrplus:events/lifesteal