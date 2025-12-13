tellraw @s ["\n",{"text":" Hardcore Revive+ ","color":"red"},{"text":"| ","color":"dark_gray"},{"text":"Debug","color":"gray"},"\n "]

tellraw @s ["",{"color":"gray","text":" "},{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Gives you a Soul Charm."}]},"text":"ⓘ"},{"color":"gray","text":" Give Soul Charm: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_debug_give_charm set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Click to activate"}]},"text":"Activate"},{"text":"\n "}]

tellraw @s ["",{"color":"gray","text":" "},{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Gives you a Life Jam."}]},"text":"ⓘ"},{"color":"gray","text":" Give Life Jam: "},{"click_event":{"action":"run_command","command":"/trigger hcrplus_debug_give_jam set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Click to activate"}]},"text":"Activate"},{"text":"\n "}]

tellraw @s [" ",{"click_event":{"action":"run_command","command":"/trigger _hcrplus_settings set 1"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Previous Page"}]},"text":"<-- Return"},{"color":"gray","text":"     - 1/1 -"},{"text":"\n "}]

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1