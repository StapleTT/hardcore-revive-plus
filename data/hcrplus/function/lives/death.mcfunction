# Death detection and live removal
scoreboard players set @s deaths 0
scoreboard players remove @s Lives 1

# Set spectator if player runs out of lives
execute if score @s Lives matches 0 run gamemode spectator
execute if score @s Lives matches 0 if dimension minecraft:overworld run spawnpoint @s ~ ~ ~
execute if score @s Lives matches 0 if dimension minecraft:the_nether run spawnpoint @s ~ ~ ~

execute at @s[scores={Lives=1..}] run scoreboard players set @s respawn 1