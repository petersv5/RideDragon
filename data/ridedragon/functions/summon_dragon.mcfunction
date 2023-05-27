summon minecraft:horse ~ ~1 ~ {NoAI:1b,Invulnerable:1b,Tags:["dragonseat"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"generic.knockback_resistance",Base:10000f}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Silent:1b}

summon minecraft:armor_stand ~ ~1 ~ {Tags:["dragonfacing"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Attributes:[{Name:"generic.knockback_resistance",Base:10000f}],CustomName:'["",{"text":"Ender Dragon","color":"dark_purple"}]',ShowParticles:0b}

# Set HurtTime to -1 to keep the knockback effect of the dragon disabled.
execute rotated ~-180 ~ run summon minecraft:ender_dragon ~ ~0.15 ~ {Tags:["dragonvisible"],Health:5,HurtTime:-1}
