kill @s[type=item]
setblock ~ ~ ~ air

tag @a[distance=..30] add zombus
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["zombus"]}
execute store result score @e[type=area_effect_cloud,tag=zombus,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;2349047],FadeColors:[I;1279]}]}}}}
bossbar add zombus {"text":"Zombus","color":"#2299FF","bold":true}
bossbar set zombus color blue
bossbar set zombus players @a[distance=..50]
bossbar set zombus visible true
execute align xyz run summon zombie ~0.5 ~ ~0.5 {CustomName:'{"text":"Zombus","color":"#2299FF","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Tags:["boss","zombus"],DrownedConversionTime:-1,DeathLootTable:"boss_main:bosses/zombus",ArmorItems:[{id:"leather_boots",Count:1,tag:{Enchantments:[{id:"frost_walker",lvl:2},{id:"protection",lvl:1}],display:{color:24319},Unbreakable:1b}},{id:"leather_leggings",Count:1,tag:{display:{color:10526880},Enchantments:[{}],Unbreakable:1b}},{id:"leather_chestplate",Count:1,tag:{display:{color:955391},Enchantments:[{}],Unbreakable:1b}},{id:"ice",Count:1}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"lilac",Count:1},{id:"ice",Count:1}],HandDropChances:[1.0f,0.0f],Attributes:[{Name:"generic.max_health",Base:1777},{Name:"generic.movement_speed",Base:0.35},{Name:"generic.attack_knockback",Base:10},{Name:"generic.attack_damage",Base:10}],ActiveEffects:[{Id:7,Duration:40,Amplifier:3,ShowParticles:0b},{Id:8,Duration:99999999,Amplifier:3,ShowParticles:0b}]}
execute store result entity @e[type=zombie,tag=boss,tag=zombus,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl int 3 if entity @a[distance=..30]
execute as @e[type=zombie,tag=boss,tag=zombus,sort=nearest,limit=1] at @s store result bossbar zombus max run attribute @s generic.max_health get

tellraw @a [{"text":"Zombus\nFlofrost's Prodigy\n","color":"#2299FF"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=zombus]","color":"#FF33FF"}]