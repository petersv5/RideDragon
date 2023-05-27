execute as @p run function ridedragon:faceray

execute as @e[tag=facing] at @s positioned ~ ~-.1 ~ if block ~ ~-1.5 ~ air run tp @s ~ ~-.001 ~

execute as @e[tag=dragonseat] at @s unless entity @e[tag=dragonvisible,distance=..3,limit=1] run kill @s
execute as @e[tag=facing] at @s unless entity @e[tag=dragonvisible,distance=..3,limit=1] run kill @s
execute as @e[tag=dragonpos] at @s unless entity @e[tag=dragonvisible,distance=..3,limit=1] run kill @s
execute as @e[tag=dragon] at @s unless entity @e[tag=dragonvisible,distance=..3,limit=1] run kill @s
