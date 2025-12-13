recipe take @s hcrplus:soul_charm

advancement revoke @s only hcrplus:soul_charm

# Soul Charm debuffs
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 if score mnc_settings mnc_revival matches 1 run effect give @s minecraft:poison 2 0 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 if score mnc_settings mnc_revival matches 1 run effect give @s minecraft:slowness 300 2 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 if score mnc_settings mnc_revival matches 1 run effect give @s minecraft:weakness 300 2 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 if score mnc_settings mnc_revival matches 1 run effect give @s minecraft:hunger 300 1 true

# Return items if soul charm is disabled
execute if score mnc_settings mnc_revival matches 0 run clear @s ghast_tear[enchantments={"minecraft:vanishing_curse":1}] 1
execute if score mnc_settings mnc_revival matches 0 run title @s actionbar ["Soul Charms have been disabled!"]
execute if score mnc_settings mnc_revival matches 0 run give @s totem_of_undying
execute if score mnc_settings mnc_revival matches 0 run give @s redstone_block 4
execute if score mnc_settings mnc_revival matches 0 run give @s copper_block 2
execute if score mnc_settings mnc_revival matches 0 run give @s bone_block 2

execute if score mnc_settings mnc_revival matches 1 run advancement grant @s only hcrplus:craft_soul_charm