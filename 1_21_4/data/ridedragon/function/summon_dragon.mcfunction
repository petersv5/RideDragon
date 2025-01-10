# Step the global counter. It is used as a pseudo-uuid that can be stored in the entity data.
scoreboard players add #rd_global_cnt rd_id 1

summon minecraft:horse ~ ~1 ~ {NoAI:1b,Invulnerable:1b,Tags:["dragonseat","dragon_temp"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"generic.knockback_resistance",Base:10000f}],active_effects:[{id:invisibility,amplifier:0,duration:2147483647,show_particles:0b}],Silent:1b}
scoreboard players operation @e[type=minecraft:horse,tag=dragon_temp,distance=..2,limit=1] rd_id = #rd_global_cnt rd_id
tag @e[type=minecraft:horse,tag=dragon_temp,distance=..2,limit=1] remove dragon_temp

#summon minecraft:armor_stand ~ ~1 ~ {Tags:["dragonhelper","dragon_temp"],NoGravity:1b,Invisible:0b,Invulnerable:1b,Attributes:[{Name:"generic.knockback_resistance",Base:10000f}],CustomName:'["",{"text":"Ender Dragon","color":"dark_purple"}]',ShowParticles:0b}
summon minecraft:marker ~ ~1 ~ {Tags:["dragonhelper","dragon_temp"]}
scoreboard players operation @e[type=minecraft:marker,tag=dragon_temp,distance=..2,limit=1] rd_id = #rd_global_cnt rd_id
tag @e[type=minecraft:marker,tag=dragon_temp,distance=..2,limit=1] remove dragon_temp

# Set HurtTime to -1 to keep the knockback effect of the dragon disabled.
summon minecraft:ender_dragon ~ ~0.15 ~ {Tags:["dragonvisible","dragon_temp"],Health:5,HurtTime:-1}
data modify entity @e[tag=dragon_temp,limit=1] Health set from storage ridedragon:settings rd_admin.dragon_health
scoreboard players operation @e[type=minecraft:ender_dragon,tag=dragon_temp,distance=..2,limit=1] rd_id = #rd_global_cnt rd_id
scoreboard players set @e[tag=dragon_temp,limit=1] rd_fire_cooldown 0
execute if data storage ridedragon:settings rd_admin{summon_silent:"Silent"} run data modify entity @e[type=minecraft:ender_dragon,tag=dragon_temp,distance=..2,limit=1] Silent set value 1b
tag @e[type=minecraft:ender_dragon,tag=dragon_temp,distance=..2,limit=1] remove dragon_temp

return 1
