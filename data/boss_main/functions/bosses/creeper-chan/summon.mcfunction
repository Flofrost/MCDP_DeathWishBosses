kill @s[type=item]
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace lime_bed
execute if block ~ ~-1 ~ tnt run setblock ~ ~-1 ~ air

tag @a[distance=..30] add creeper-chan
summon area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["creeper-chan"]}
execute store result score @e[type=area_effect_cloud,tag=creeper-chan,sort=nearest,limit=1] time run scoreboard players get dummyvar_gametime time

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:3,Flicker:1,Trail:0,Colors:[I;37408],FadeColors:[I;16722830]}]}}}}
bossbar add creeper-chan {"text":"Creeper-chan","color":"green","bold":true}
bossbar set creeper-chan color pink
bossbar set creeper-chan players @a[distance=..50]
bossbar set creeper-chan visible true
execute align xyz run summon creeper ~0.5 ~ ~0.5 {CustomName:'{"text":"Creeper-chan","color":"green","bold":true}',CustomNameVisible:1,PersistenceRequired:1,Tags:["boss","creeper-chan"],DeathLootTable:"boss_main:bosses/creeper-chan",ExplosionRadius:5,ArmorItems:[{id:"leather_boots",Count:1,tag:{Enchantments:[{id:"protection",lvl:1},{id:"blast_protection",lvl:15}],Unbreakable:1b}},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"tnt",Count:1},{}],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.max_health",Base:1024},{Name:"generic.movement_speed",Base:0.45},{Name:"generic.attack_knockback",Base:10},{Name:"generic.attack_damage",Base:10}],ActiveEffects:[{Id:6,Duration:25,Amplifier:3,ShowParticles:0b},{Id:10,Duration:99999999,Amplifier:1,ShowParticles:0b}]}
execute store result entity @e[type=creeper,tag=boss,tag=creeper-chan,sort=nearest,limit=1] ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl int 1 if entity @a[distance=..30]
execute as @e[type=creeper,tag=boss,tag=creeper-chan,sort=nearest,limit=1] at @s store result bossbar creeper-chan max run attribute @s generic.max_health get

function boss_main:bosses/creeper-chan/attacks/reloop

tellraw @a [{"text":"Creeper-chan\nThe Ultimate Waifu\n","color":"green"},{"text":"Has been summoned by: ","color":"white"},{"selector": "@a[tag=creeper-chan]","color":"#FF33FF"}]