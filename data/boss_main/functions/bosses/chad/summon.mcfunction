kill @s[type=item]
fill ~-1 ~-1 ~-1 ~1 ~-2 ~1 air replace iron_block

tag @a[distance=..30] add chad
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["chad"]}
execute store result score @e[type=area_effect_cloud,tag=chad,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16777215],FadeColors:[I;15639939]}]}}}}
bossbar add chad {"text":"Chad","color":"gray","bold":true}
bossbar set chad color white
bossbar set chad players @a[distance=..50]
bossbar set chad visible true
execute align xyz run summon iron_golem ~0.5 ~ ~0.5 {CustomName:'{"text":"Chad","color":"white","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Tags:["boss","chad"],DeathLootTable:"boss_main:bosses/chad",ArmorItems:[{id:"diamond_boots",Count:1,tag:{Enchantments:[{id:"protection",lvl:1}]}},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"poppy",Count:1},{id:"netherite_block",Count:1}],HandDropChances:[0.8f,0.005f],Attributes:[{Name:"generic.max_health",Base:400},{Name:"generic.movement_speed",Base:0.25},{Name:"generic.knockback_resistance",Base:1000},{Name:"generic.attack_damage",Base:4},{Name:"generic.follow_range",Base:10}],ActiveEffects:[{Id:6,Duration:40,Amplifier:1,ShowParticles:0b}]}
execute store result entity @e[type=iron_golem,tag=boss,tag=chad,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl byte 1 if entity @a[distance=..30]
execute store result bossbar chad max run attribute @e[type=iron_golem,tag=boss,tag=chad,sort=nearest,limit=1] generic.max_health get

tellraw @a [{"text":"Chad\nThe Metallic Muscles\n","color":"white"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=chad]","color":"#FF33FF"}]