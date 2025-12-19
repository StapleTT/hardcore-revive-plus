# When a ghost is within 10 blocks and cooldown is 0, send actionbar and set cooldown to 200 ticks
execute as @a[scores={Lives=1..}] at @s if entity @a[distance=..10,scores={Lives=0},gamemode=spectator] if score @s hcrplus_ghostCooldown matches 0 run title @s actionbar [{"selector":"@a[distance=..10,scores={Lives=0},limit=1,sort=nearest]","color":"gold"},{"text":" is nearby!","color":"red"}]
execute as @a[scores={Lives=1..}] at @s if entity @a[distance=..10,scores={Lives=0},gamemode=spectator] if score @s hcrplus_ghostCooldown matches 0 run scoreboard players set @s hcrplus_ghostCooldown 200

# Tick down the cooldown for players with a cooldown > 0
execute as @a[scores={hcrplus_ghostCooldown=1..}] run scoreboard players remove @s hcrplus_ghostCooldown 1
