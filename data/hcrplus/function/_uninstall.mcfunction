gamemode survival @a[scores={Lives=..0}]
execute as @a[scores={Lives=..0}] run tp @s ~ ~ ~
execute as @a[scores={Lives=..0}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a
execute as @a[scores={Lives=..0}] at @s run particle minecraft:soul ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a

execute as @a[scores={Lives=..0}] run title @s actionbar {"text":"You have been revived!", "color":"white"}

scoreboard objectives remove deaths
scoreboard objectives remove Lives
scoreboard objectives remove lifeReset
scoreboard objectives remove health
scoreboard objectives remove respawn
scoreboard objectives remove reviveTimer

scoreboard objectives remove mnc_lifeJam
scoreboard objectives remove mnc_nameColors
scoreboard objectives remove mnc_tablist
scoreboard objectives remove mnc_soulCharmDebuffs
scoreboard objectives remove mnc_revival
scoreboard objectives remove mnc_possession
scoreboard objectives remove mnc_defaultLives
scoreboard objectives remove mnc_reviveLifeCount
scoreboard objectives remove mnc_migrated
scoreboard objectives remove mncDefaults
scoreboard objectives remove mnc_openedSettings
scoreboard objectives remove mnc_lifeSteal
scoreboard objectives remove mnc_autoRevive
scoreboard objectives remove reviveTimer
scoreboard objectives remove minute
scoreboard objectives remove second
scoreboard objectives remove mnc_announceRevive

scoreboard objectives remove dummy_1200
scoreboard objectives remove dummy_20

scoreboard objectives remove _hcrplus_settings

scoreboard objectives remove hcrplus_lives_page1
scoreboard objectives remove hcrplus_lives_page2
scoreboard objectives remove hcrplus_lives_page3
scoreboard objectives remove hcrplus_lives_ar_on
scoreboard objectives remove hcrplus_lives_ar_off
scoreboard objectives remove hcrplus_lives_ls_on
scoreboard objectives remove hcrplus_lives_ls_off
scoreboard objectives remove hcrplus_lives_lives_1
scoreboard objectives remove hcrplus_lives_lives_3
scoreboard objectives remove hcrplus_lives_lives_5
scoreboard objectives remove hcrplus_lives_nc_on
scoreboard objectives remove hcrplus_lives_nc_off
scoreboard objectives remove hcrplus_lives_ps_on
scoreboard objectives remove hcrplus_lives_ps_off
scoreboard objectives remove hcrplus_lives_rv_1
scoreboard objectives remove hcrplus_lives_rv_half
scoreboard objectives remove hcrplus_lives_rv_max
scoreboard objectives remove hcrplus_lives_tab_on
scoreboard objectives remove hcrplus_lives_tab_off

scoreboard objectives remove hcrplus_items_page1
scoreboard objectives remove hcrplus_items_page2
scoreboard objectives remove hcrplus_items_announce_revive_on
scoreboard objectives remove hcrplus_items_announce_revive_off
scoreboard objectives remove hcrplus_items_charm_debuffs_on
scoreboard objectives remove hcrplus_items_charm_debuffs_off
scoreboard objectives remove hcrplus_items_lifejam_on
scoreboard objectives remove hcrplus_items_lifejam_off
scoreboard objectives remove hcrplus_items_charm_on
scoreboard objectives remove hcrplus_items_charm_off

scoreboard objectives remove hcrplus_presets_page1
scoreboard objectives remove hcrplus_presets_page1_casual
scoreboard objectives remove hcrplus_presets_page1_default
scoreboard objectives remove hcrplus_presets_page1_lifesteal
scoreboard objectives remove hcrplus_presets_casual
scoreboard objectives remove hcrplus_presets_default
scoreboard objectives remove hcrplus_presets_lifesteal

scoreboard objectives remove hcrplus_debug_page1
scoreboard objectives remove hcrplus_debug_give_charm
scoreboard objectives remove hcrplus_debug_give_jam

team remove 0
team remove 1
team remove 2
team remove 3
team remove 4
team remove 5

tag @a remove nHrCheck
tag @a remove autoRevive
tag @a remove Possessed
tag @a remove mncHealthFix
tag @a remove hcrplus_openedsettings
tag @a remove hcrplus_operator
tag @a remove lifeJam
tag @a remove Revive

tellraw @s ["\n ",{"text":"Hardcore Revive+ ","color":"red"},"has been uninstalled!\n ",{"text":"To complete removal, delete the data pack from your 'datapacks' folder, or delete the mod from your 'mods' folder.","color":"yellow"},"\n\n "]