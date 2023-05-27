#
# Description:	Display admin options in chat
# Called by:	Player
# Entity @s:	Player
#
tellraw @s [{"text":"Rideable Dragons - Admin Options","color":"yellow","bold":"true"}]
tellraw @s [{"text":"Get book from help: ","color":"aqua"},{"storage":"ridedragon:settings", "nbt":"rd_admin.book_help", "color":"green", "clickEvent":{"action":"run_command", "value":"/function ridedragon:z_admin/book_from_help_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"--------------------------","color":"yellow","bold":"true"}]
