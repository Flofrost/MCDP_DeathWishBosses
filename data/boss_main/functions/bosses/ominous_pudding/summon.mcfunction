kill @s[type=item]
fill ~-1 ~ ~-1 ~1 ~ ~1 air

tag @a[distance=..30] add ominous_pudding
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["ominous_pudding"]}
execute store result score @e[type=area_effect_cloud,tag=ominous_pudding,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;65344],FadeColors:[I;15662848,45336,8454348,16711680]}]}}}}
bossbar add ominous_pudding {"text":"Ominous Pudding","color":"#55FF55","bold":true}
bossbar set ominous_pudding color green
bossbar set ominous_pudding players @a[distance=..50]
bossbar set ominous_pudding visible true
execute align xyz run summon slime ~0.5 ~ ~0.5 {CustomName:'{"text":"Ominous Pudding","color":"#55FF55","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Tags:["boss","ominous_pudding"],Size:0,NoAI:1,DeathLootTable:"boss_main:bosses/ominous_pudding",ArmorItems:[{id:"leather_boots",Count:1,tag:{Enchantments:[{id:"protection",lvl:1}],Unbreakable:1b}},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{},{}],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.max_health",Base:500}],ActiveEffects:[{Id:6,Duration:40,Amplifier:2,ShowParticles:0b},{Id:11,Amplifier:10,Duration:20,ShowParticles:0b}]}
execute store result entity @e[type=slime,tag=boss,tag=ominous_pudding,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl int 3 if entity @a[distance=..30]
execute as @e[type=slime,tag=boss,tag=ominous_pudding,sort=nearest,limit=1] at @s store result bossbar ominous_pudding max run attribute @s generic.max_health get

tellraw @a [{"text":"Ominous Pudding\nSERN's Deadly Threat\n","color":"#55FF55"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=ominous_pudding]","color":"#FF33FF"}]