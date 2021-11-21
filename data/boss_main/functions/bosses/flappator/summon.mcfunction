kill @s[type=item]
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace end_stone
setblock ~ ~-1 ~ air

tag @a[distance=..30] add flappator
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["flappator"]}
execute store result score @e[type=area_effect_cloud,tag=flappator,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~10 ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;44799,255,3473546],FadeColors:[I;0]}]}}}}
bossbar add flappator {"text":"Flappator","color":"dark_blue","bold":true}
bossbar set flappator color purple
bossbar set flappator players @a[distance=..50]
bossbar set flappator visible true
execute align xyz run summon phantom ~0.5 ~10 ~0.5 {CustomName:'{"text":"Flappator","color":"dark_blue","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Size:15,Tags:["boss","flappator"],DeathLootTable:"boss_main:bosses/flappator",ArmorItems:[{id:"diamond_boots",Count:1,tag:{Enchantments:[{id:"protection",lvl:1}]}},{},{},{id:"stone_button",Count:1}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{},{}],HandDropChances:[0.4f,0.1f],Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.movement_speed",Base:0.2},{Name:"generic.knockback_resistance",Base:0},{Name:"generic.attack_damage",Base:0.1}],ActiveEffects:[{Id:7,Duration:40,Amplifier:2,ShowParticles:0b}]}
execute store result entity @e[type=phantom,tag=boss,tag=flappator,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl byte 3 if entity @a[distance=..30]
execute store result bossbar flappator max run attribute @e[type=phantom,tag=boss,tag=flappator,sort=nearest,limit=1] generic.max_health get

tellraw @a [{"text":"Flappator\nThe Embodiment of Pain\n","color":"dark_blue"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=flappator]","color":"#FF33FF"}]