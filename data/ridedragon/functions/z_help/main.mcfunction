#
# Description:	Display main help options
# Called by:	ridedragon:z_help_trigger
# Entity @s:	Player
#
tellraw @s [{"text":"Rideable Dragons - Help","color":"yellow","bold":"true"},{"text":"\nDragons can be summoned via the ","color":"aqua","bold":"false"},{"text":"Book of Dragons","color":"light_purple","bold":"false"},{"text":"\nSummoned dragons are mounted by clicking on their necks with an empty hand\nGet the book by:","color":"aqua","bold":"false"}]
execute if data storage ridedragon:settings rd_admin{book_help:"Enabled"} run tellraw @s [{"text":" - Clicking ","color":"aqua"},{"text":"here","color":"green","clickEvent":{"action":"run_command","value":"/trigger rd_help set 10"}}]
tellraw @s [{"text":"Credits","color":"green","clickEvent":{"action":"run_command","value":"/trigger rd_help set 11"}}]
tellraw @s [{"text":"--------------------------","color":"yellow","bold":"true"}]
