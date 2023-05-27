# Executed as dragonrider, no position

# Low speed default
execute as @s at @s positioned ^ ^ ^0.2 positioned ~ ~-0.85 ~ if block ~ ~-1.3 ~ air run tp @e[type=armor_stand,distance=..6,tag=dragonfacing_selected,limit=1] ~ ~ ~ ~ ~

# High speed when holding the book
execute if entity @s[nbt={SelectedItem:{tag:{DragonBook:1}}}] at @s positioned ^ ^ ^1.0 positioned ~ ~-0.85 ~ if block ~ ~-1.3 ~ air run tp @e[type=armor_stand,distance=..6,tag=dragonfacing_selected,limit=1] ~ ~ ~ ~ ~

#Move the dragonseat (horse) to the facing marker
execute as @e[type=armor_stand,distance=..6,tag=dragonfacing_selected,limit=1] at @s run tp @e[type=horse,distance=..6,tag=dragonseat_selected,limit=1] ~ ~ ~ ~ ~


# Move the dragon to the correct offset relative to the player/dragonseat depending on the low/high speed
execute as @e[type=horse,distance=..6,tag=dragonseat_selected,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-2.6 rotated as @s run tp @e[type=ender_dragon,tag=dragonvisible,limit=1,sort=nearest,distance=..4] ~ ~-0.7 ~ ~-180 ~
execute if entity @s[nbt={SelectedItem:{tag:{DragonBook:1}}}] as @e[type=horse,distance=..6,tag=dragonseat_selected,limit=1] at @s positioned ^ ^ ^-2.7 rotated as @s run tp @e[type=ender_dragon,tag=dragonvisible,limit=1,sort=nearest,distance=..4] ~ ~-0.7 ~ ~-180 ~


