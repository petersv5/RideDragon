# Executed as dragonfacing, no position

execute as @s at @s if block ~ ~-1.2 ~ air run tp @s ~ ~-0.1 ~
execute as @s at @s unless block ~ ~-1.2 ~ air run tp @s ~ ~0.1 ~

execute as @s at @s run tp @e[type=horse,distance=..6,tag=dragonseat_selected,limit=1] ~ ~ ~ ~ ~

execute as @e[distance=..6,tag=dragonseat_selected,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-3.5 rotated as @s run tp @e[tag=dragonvisible,limit=1,sort=nearest,distance=..4] ~ ~-1.0 ~ ~-180 ~
