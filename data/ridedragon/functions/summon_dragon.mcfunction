summon minecraft:armor_stand ~ ~ ~ {Tags:["facing"],Invulnerable:1b,NoGravity:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["dragonpos"],Invulnerable:1b,NoGravity:1b,Invisible:1b}

summon minecraft:armor_stand ~ ~1 ~ {NoGravity:1b,Attributes:[{Name:"generic.knockback_resistance",Base:1000f}],Tags:["dragon"],Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:horse",Attributes:[{Name:"generic.knockback_resistance",Base:1000f}],SaddleItem:{id:saddle,Count:1},ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:["dragonseat"],DeathLootTable:"minecraft:empty",Silent:1,Invulnerable:1,Tame:1,CustomName:'["",{"text":"Ender Dragon","color":"dark_purple"}]'}]}

summon minecraft:ender_dragon ~ ~ ~ {Tags:["dragonvisible"],Health:5}
