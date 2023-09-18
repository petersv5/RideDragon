#
# Description:	Display admin options in chat
# Called by:	Player
# Entity @s:	Player
#
tellraw @s [{"text":"Rideable Dragons - Admin Options","color":"yellow","bold":"true"}]
tellraw @s [{"text":"Get book from help: ","color":"aqua"},{"storage":"ridedragon:settings", "nbt":"rd_admin.book_help", "color":"green", "clickEvent":{"action":"run_command", "value":"/function ridedragon:z_admin/book_from_help_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"Survival players can summon dragons: ","color":"aqua"},{"storage":"ridedragon:settings", "nbt":"rd_admin.can_summon", "color":"green", "clickEvent":{"action":"run_command", "value":"/function ridedragon:z_admin/can_summon_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"Summon without the ","color":"aqua"},{"text":"Book of Dragons","color":"light_purple"},{"text":": ","color":"aqua"},{"storage":"ridedragon:settings", "nbt":"rd_admin.summon_without_book", "color":"green", "clickEvent":{"action":"run_command", "value":"/function ridedragon:z_admin/summon_without_book_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"Players can fire dragon fireballs: ","color":"aqua"},{"storage":"ridedragon:settings", "nbt":"rd_admin.can_fire", "color":"green", "clickEvent":{"action":"run_command", "value":"/function ridedragon:z_admin/can_fire_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"Vanish all tame tragons", "color":"red", "clickEvent":{"action":"run_command", "value":"/function ridedragon:z_admin/vanish_all"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to vanish all loaded tame dragons", "color":"red"}}}]
tellraw @s [{"text":"--------------------------","color":"yellow","bold":"true"}]
