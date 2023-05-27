scoreboard players operation #rd_selected_id rd_id = @e[type=minecraft:ender_dragon,tag=dragonvisible,distance=..10,sort=nearest,limit=1] rd_id
execute as @e[type=minecraft:ender_dragon,tag=dragonvisible,distance=..10] if score @s rd_id = #rd_selected_id rd_id run kill @s
execute as @e[type=minecraft:horse,tag=dragonseat,distance=..17] if score @s rd_id = #rd_selected_id rd_id run kill @s
execute as @e[type=minecraft:marker,tag=dragonhelper,distance=..17] if score @s rd_id = #rd_selected_id rd_id run kill @s
