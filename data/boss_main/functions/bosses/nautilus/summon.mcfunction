kill @s[type=item]
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air

tag @a[distance=..30] add nautilus
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["nautilus"]}
execute store result score @e[type=area_effect_cloud,tag=nautilus,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;55807],FadeColors:[I;4607]}]}}}}
bossbar add nautilus {"text":"Nautilus","color":"aqua","bold":true}
bossbar set nautilus color white
bossbar set nautilus players @a[distance=..50]
bossbar set nautilus visible true
execute align xyz run summon drowned ~0.5 ~ ~0.5 {CustomName:'{"text":"Nautilus","color":"aqua","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Tags:["boss","nautilus"],DeathLootTable:"boss_main:bosses/nautilus",ArmorItems:[{},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"trident",Count:1,tag:{Enchantments:[{}]}},{id:"trident",Count:1,tag:{Enchantments:[{}]}}],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.max_health",Base:300},{Name:"generic.movement_speed",Base:0.4},{Name:"generic.attack_damage",Base:5}],ActiveEffects:[{Id:7,Duration:40,Amplifier:1,ShowParticles:0b}]}
execute store result entity @e[type=drowned,tag=boss,tag=nautilus,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl byte 1 if entity @a[distance=..30]
execute store result bossbar nautilus max run attribute @e[type=drowned,tag=boss,tag=nautilus,sort=nearest,limit=1] generic.max_health get

tellraw @a [{"text":"Nautilus\nThe Fork Dual Weilder\n","color":"aqua"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=nautilus]","color":"#FF33FF"}]