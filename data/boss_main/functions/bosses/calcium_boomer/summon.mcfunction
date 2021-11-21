execute as @s[type=item] run fill ~-1 ~-1 ~-1 ~1 ~-2 ~1 air
kill @s[type=item]

tag @a[distance=..30] add calcium_boomer
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["calcium_boomer"]}
execute store result score @e[type=area_effect_cloud,tag=calcium_boomer,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320],FadeColors:[I;16777215]}]}}}}
bossbar add calcium_boomer {"text":"Calcium Boomer","color":"#FF2222","bold":true}
bossbar set calcium_boomer color yellow
bossbar set calcium_boomer players @a[distance=..50]
bossbar set calcium_boomer visible true
execute align xyz run summon skeleton ~0.5 ~ ~0.5 {CustomName:'{"text":"Calcium Boomer","color":"#FF2222","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Tags:["boss","calcium_boomer"],DeathLootTable:"boss_main:bosses/calcium_boomer",ArmorItems:[{id:"leather_boots",Count:1,tag:{Enchantments:[{id:"protection",lvl:1}]}},{},{id:"leather_chestplate",Count:1,tag:{Enchantments:[{}]}},{id:"stone_button",Count:1}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"bow",Count:1,tag:{Enchantments:[{id:"punch",lvl:10}],punch:1}},{id:"milk_bucket",Count:1}],HandDropChances:[0.4f,0.0f],Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.movement_speed",Base:0.4},{Name:"generic.knockback_resistance",Base:0},{Name:"generic.attack_damage",Base:5}],ActiveEffects:[{Id:7,Duration:40,Amplifier:2,ShowParticles:0b},{Id:8,Duration:99999999,Amplifier:2,ShowParticles:0b}]}
execute store result entity @e[type=skeleton,tag=boss,tag=calcium_boomer,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl byte 1 if entity @a[distance=..30]
execute as @e[type=skeleton,tag=boss,tag=calcium_boomer,sort=nearest,limit=1] at @s store result bossbar calcium_boomer max run attribute @s generic.max_health get

tellraw @a [{"text":"Calcium Boomer\nThe Crasy skeleton\n","color":"#FF2222"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=calcium_boomer]","color":"#FF33FF"}]