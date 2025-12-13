# Countdown
execute as @a[tag=autoRevive,scores={reviveTimer=1..}] run scoreboard players remove @s reviveTimer 1

# Convert to minutes and seconds (only if timer > 0)
execute as @a[tag=autoRevive,scores={reviveTimer=1..}] run scoreboard players operation @s minute = @s reviveTimer
execute as @a[tag=autoRevive,scores={reviveTimer=1..}] run scoreboard players operation @s second = @s reviveTimer

# Calculate minutes: reviveTimer / 1200
execute as @a[tag=autoRevive,scores={reviveTimer=1..}] run scoreboard players operation @s minute /= mnc_settings dummy_1200

# Calculate seconds: (reviveTimer % 1200) / 20
execute as @a[tag=autoRevive,scores={reviveTimer=1..}] run scoreboard players operation @s second %= mnc_settings dummy_1200
execute as @a[tag=autoRevive,scores={reviveTimer=1..}] run scoreboard players operation @s second /= mnc_settings dummy_20

# Show action bar
execute as @a[tag=autoRevive,scores={reviveTimer=1..}] run title @s actionbar {"text":"Reviving in: ","color":"gray","extra":[{"score":{"name":"@s","objective":"minute"},"color":"white"},{"text":"m ","color":"white"},{"score":{"name":"@s","objective":"second"},"color":"white"},{"text":"s","color":"white"}]}

execute as @a[tag=autoRevive,scores={reviveTimer=0}] run function hcrplus:events/auto_revive