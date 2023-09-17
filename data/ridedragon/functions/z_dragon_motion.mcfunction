# called as dragon_visible, at same

# Fireball cooldown handling
scoreboard players remove @s[scores={rd_fire_cooldown=1..}] rd_fire_cooldown 1

# Find all the parts of the flying stack and tag them as
# dragonvisible_selected, dragonhelper_selected, dragonseat_selected, dragonrider_selected

scoreboard players operation #rd_selected_id rd_id = @s rd_id
tag @s add dragonvisible_selected
execute as @e[type=marker,tag=dragonhelper,distance=..7] if score @s rd_id = #rd_selected_id rd_id run tag @s add dragonhelper_selected
execute as @e[type=horse,tag=dragonseat,distance=..7] if score @s rd_id = #rd_selected_id rd_id run tag @s add dragonseat_selected
tag @a[nbt={RootVehicle:{Entity:{Tags:["dragonseat_selected"]}}},distance=..7,limit=1] add dragonrider_selected

# Reset HurtTime to keep the knockback effect of the dragon disabled. It seems to be reset 
# by actual harming of the dragon, so set it back to -1.
data modify entity @s HurtTime set value -1

execute as @a[tag=dragonrider_selected,distance=..7,limit=1] run function ridedragon:z_player_motion
execute as @e[type=marker,tag=dragonhelper_selected,distance=..7,limit=1] unless entity @a[distance=..7,limit=1,tag=dragonrider_selected] run function ridedragon:z_no_player_motion

tag @s remove dragonvisible_selected
tag @a[distance=..7,tag=dragonrider_selected,limit=1] remove dragonrider_selected
tag @e[type=marker,distance=..7,tag=dragonhelper_selected,limit=1] remove dragonhelper_selected
tag @e[type=horse,distance=..7,tag=dragonseat_selected,limit=1] remove dragonseat_selected

