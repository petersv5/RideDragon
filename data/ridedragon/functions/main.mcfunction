execute as @e[tag=dragonfacing] at @s if block ~ ~-1.2 ~ air run tp @s ~ ~-0.1 ~
execute as @e[tag=dragonfacing] at @s unless block ~ ~-1.2 ~ air run tp @s ~ ~0.1 ~

execute as @p[nbt={RootVehicle:{Entity:{Tags:["dragonseat"]}}}] at @s positioned ^ ^ ^0.2 run execute positioned ~ ~-0.85 ~ if block ~ ~-1.3 ~ air run tp @e[tag=dragonfacing,sort=nearest,distance=..3,limit=1] ~ ~ ~ ~ ~
execute as @p[nbt={RootVehicle:{Entity:{Tags:["dragonseat"]}}},nbt={SelectedItem:{id:"minecraft:end_crystal"}}] at @s positioned ^ ^ ^1.0 run execute positioned ~ ~-0.85 ~ if block ~ ~-1.3 ~ air run tp @e[tag=dragonfacing,sort=nearest,distance=..3,limit=1] ~ ~ ~ ~ ~

execute as @e[tag=dragonfacing] at @s run tp @e[tag=dragonseat,limit=1,sort=nearest,distance=..3] ~ ~ ~ ~ ~


execute as @e[tag=dragonseat] at @s if entity @p[distance=..3,nbt={RootVehicle:{Entity:{Tags:["dragonseat"]}}}] rotated ~ 0 positioned ^ ^ ^-2.6 run execute rotated as @s run tp @e[tag=dragonvisible,limit=1,sort=nearest,distance=..4] ~ ~-0.7 ~ ~-180 ~
execute as @e[tag=dragonseat] at @s if entity @p[distance=..3,nbt={RootVehicle:{Entity:{Tags:["dragonseat"]}},SelectedItem:{id:"minecraft:end_crystal"}}] positioned ^ ^ ^-2.7 run execute rotated as @s run tp @e[tag=dragonvisible,limit=1,sort=nearest,distance=..4] ~ ~-0.7 ~ ~-180 ~

#execute as @e[tag=dragonseat] at @s if entity @p[distance=..3,nbt={RootVehicle:{Entity:{Tags:["dragonseat"]}},SelectedItem:{id:"minecraft:end_crystal"}}] positioned ^ ^ ^-0.6 run execute rotated ~ 0 positioned ^ ^ ^-2.0 run execute rotated as @s run tp @e[tag=dragonvisible,limit=1,sort=nearest,distance=..4] ~ ~-0.7 ~ ~-180 ~

execute as @e[tag=dragonseat] at @s unless entity @p[distance=..3,nbt={RootVehicle:{Entity:{Tags:["dragonseat"]}}}] rotated ~ 0 positioned ^ ^ ^-3.5 run execute rotated as @s run tp @e[tag=dragonvisible,limit=1,sort=nearest,distance=..4] ~ ~-1.0 ~ ~-180 ~


execute as @e[tag=dragonvisible] at @s unless entity @e[tag=dragonseat,distance=..4,limit=1] run kill @s
execute as @e[tag=dragonvisible] at @s unless entity @e[tag=dragonfacing,distance=..4,limit=1] run kill @s
execute as @e[tag=dragonseat] at @s unless entity @e[tag=dragonvisible,distance=..4,limit=1] run kill @s
execute as @e[tag=dragonfacing] at @s unless entity @e[tag=dragonvisible,distance=..4,limit=1] run kill @s

execute as @a[scores={rd_summon=1..}] at @s run function ridedragon:rd_summon_trigger
execute as @a[scores={rd_vanish=1..}] at @s run function ridedragon:rd_vanish_trigger

