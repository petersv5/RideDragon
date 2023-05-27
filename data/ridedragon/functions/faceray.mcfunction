execute as @e[tag=dragonvisible] at @s run tp @e[tag=dragon,sort=nearest,distance=..5,nbt={Passengers:[{id:"minecraft:horse"}]},limit=1] ~ ~-.2 ~ ~-180 ~

execute as @e[tag=dragonseat] at @s run execute as @e[type=player,distance=..1.3,nbt={RootVehicle:{Entity:{Tags:["dragon"]}}}] at @s run execute if block ^ ^ ^.9 air positioned ^ ^ ^.9 run tp @e[tag=facing,sort=nearest,limit=1,distance=..5] ~ ~-1 ~ ~ ~

execute as @e[tag=facing] at @s run tp @e[tag=dragonvisible,sort=nearest,distance=..5,limit=1] ~ ~-1.5 ~ ~-180 ~




execute as @e[tag=dragonvisible] at @s run tp @e[tag=dragon,sort=nearest,distance=..5,nbt={Passengers:[{id:"minecraft:horse"}]},limit=1] ~ ~-.2 ~ ~-180 ~

execute as @e[tag=dragonseat] at @s run execute as @e[type=player,distance=..1.3,nbt={RootVehicle:{Entity:{Tags:["dragon"]}}}] at @s run execute if block ^ ^ ^.9 air positioned ^ ^ ^.9 run tp @e[tag=facing,sort=nearest,limit=1,distance=..5] ~ ~-1 ~ ~ ~

execute as @e[tag=facing] at @s run tp @e[tag=dragonvisible,sort=nearest,distance=..5,limit=1] ~ ~-1.5 ~ ~-180 ~
