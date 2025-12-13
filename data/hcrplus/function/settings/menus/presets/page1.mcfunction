tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Presets","color":"gray"},"\n "]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":["3 lives, Life Jams enabled, Soul Charms disabled, Auto Revive on."]},"text":"ⓘ"},{"color":"gray","text":" Friendly Casual: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_presets_casual set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Click to activate"}]},"text":"Activate"},{"text":"\n "}]

tellraw @s [" ",{"color":"gray","hover_event":{"action":"show_text","value":["3 Lives, no Life Jam. Lives are only regained via killing other players or using a Soul Charm."]},"text":"ⓘ"},{"color":"gray","text":" Lifesteal: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_presets_lifesteal set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Click to activate"}]},"text":"Activate"},{"text":"\n "}]

tellraw @s ["",{"color":"gray","text":" "},{"color":"gray","hover_event":{"action":"show_text","value":["Resets Hardcore Revive+ to the default settings. 1 Life, Soul Charms enabled, Auto Revive off."]},"text":"ⓘ"},{"color":"gray","text":" Reset to Defaults: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_presets_default set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Click to activate"}]},"text":"Activate"},{"text":"\n "}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Previous Page"}]},"text":"<-- Return"},{"color":"gray","text":"     - 1/1 -"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1