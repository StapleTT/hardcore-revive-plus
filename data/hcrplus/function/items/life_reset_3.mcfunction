scoreboard players set @s lifeReset 0

# Return totem of undying if life jam is disabled
execute if score mnc_settings mnc_lifeJam matches 0 run title @s actionbar ["Life Jam has been disabled!"]
execute if score mnc_settings mnc_lifeJam matches 0 run give @s totem_of_undying
execute if score mnc_settings mnc_defaultLives matches 1 run title @s actionbar ["Life Jam has been disabled!"]
execute if score mnc_settings mnc_defaultLives matches 1 run give @s totem_of_undying

execute unless score mnc_settings mnc_defaultLives matches 1 run tag @s add lifeJam
execute unless score mnc_settings mnc_lifeJam matches 0 run tag @s add lifeJam

# Check if player has max lives
execute as @s[scores={Lives=3..}] if score mnc_settings mnc_lifeJam matches 1 run give @s totem_of_undying
execute as @s[scores={Lives=3..}] if score mnc_settings mnc_lifeJam matches 1 run title @s actionbar "You have reached the maximum amount of lives!"
execute as @s[scores={Lives=3..}] if score mnc_settings mnc_lifeJam matches 1 run tag @s remove lifeJam
execute as @s[scores={Lives=..2}] if score mnc_settings mnc_lifeJam matches 1 run title @s actionbar "You have received another life!"
execute as @s[scores={Lives=..2}] if score mnc_settings mnc_lifeJam matches 1 run scoreboard players add @s Lives 1
execute unless score mnc_settings mnc_defaultLives matches 1 run effect give @s minecraft:absorption 480 1 false
execute unless score mnc_settings mnc_lifeJam matches 0 run effect give @s minecraft:absorption 480 1 false

execute as @a[tag=lifeJam] run execute as @s at @s run particle minecraft:heart ~ ~1 ~ 0.5 1 0.5 0.05 20 force @a
execute as @a[tag=lifeJam] run tag @s remove lifeJam