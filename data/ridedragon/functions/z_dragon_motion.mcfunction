# called as dragon_visible, at same

tag @e[type=armor_stand,tag=dragonfacing,sort=nearest,distance=..5,limit=1] add dragonfacing_selected
tag @e[type=horse,tag=dragonseat,sort=nearest,distance=..5,limit=1] add dragonseat_selected
tag @a[nbt={RootVehicle:{Entity:{Tags:["dragonseat"]}}},sort=nearest,distance=..5,limit=1] add dragonrider_selected

# Reset HurtTime to keep the knockback effect of the dragon disabled. It seems to be reset 
# by actual harming of the dragon, so set it back to -1.
data modify entity @s HurtTime set value -1

execute as @a[distance=..6,tag=dragonrider_selected,limit=1] run function ridedragon:z_player_motion
execute as @e[type=armor_stand,distance=..6,tag=dragonfacing_selected,limit=1] unless entity @a[distance=..6,limit=1,tag=dragonrider_selected] run function ridedragon:z_no_player_motion

tag @a[distance=..6,tag=dragonrider_selected,limit=1] remove dragonrider_selected
tag @e[type=armor_stand,distance=..6,tag=dragonfacing_selected,limit=1] remove dragonfacing_selected
tag @e[type=horse,distance=..6,tag=dragonseat_selected,limit=1] remove dragonseat_selected

