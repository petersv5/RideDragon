execute if entity @s[nbt={Inventory:[{tag:{DragonBook:1}}]}] run function ridedragon:summon_dragon

#
# Reset player's trigger score and re-enable
#
scoreboard players set @s rd_summon 0
scoreboard players enable @s rd_summon

