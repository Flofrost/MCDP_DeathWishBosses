kill @s[type=item]
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace coal_block

tag @a[distance=..30] add karbonoa
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["karbonoa"]}
execute store result score @e[type=area_effect_cloud,tag=karbonoa,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;0],FadeColors:[I;31087]}]}}}}
bossbar add karbonoa {"text":"Karbonoa","color":"gray","bold":true}
bossbar set karbonoa color white
bossbar set karbonoa players @a[distance=..50]
bossbar set karbonoa visible true
execute align xyz run summon drowned ~0.5 ~ ~0.5 {CustomName:'{"text":"Karbonoa","color":"gray","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Tags:["boss","karbonoa"],DeathLootTable:"boss_main:bosses/karbonoa",ArmorItems:[{id:"diamond_boots",Count:1,tag:{Enchantments:[{id:"protection",lvl:1}]}},{id:"diamond_leggings",Count:1,tag:{Enchantments:[{}]}},{id:"diamond_chestplate",Count:1,tag:{Enchantments:[{}]}},{id:"diamond_helmet",Count:1,tag:{Enchantments:[{}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"diamond",Count:1},{id:"coal_block",Count:10}],HandDropChances:[0.4f,0.1f],Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.movement_speed",Base:0.2},{Name:"generic.knockback_resistance",Base:1000},{Name:"generic.attack_damage",Base:5}],ActiveEffects:[{Id:7,Duration:40,Amplifier:1,ShowParticles:0b}]}
execute store result entity @e[type=drowned,tag=boss,tag=karbonoa,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl byte 1 if entity @a[distance=..30]
execute store result bossbar karbonoa max run attribute @e[type=drowned,tag=boss,tag=karbonoa,sort=nearest,limit=1] generic.max_health get

tellraw @a [{"text":"Karbonoa\nThe Carbon Defender\n","color":"gray"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=karbonoa]","color":"#FF33FF"}]