bossbar remove creeper-chan
summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:3,Flicker:1,Trail:0,Colors:[I;37408],FadeColors:[I;16722830]}]}}}}
tellraw @a [{"text":"Creeper-chan\nThe Ultimate Waifu\n","color":"green"},{"text":"Has been defeated by: ","color":"white"},{"selector": "@a[tag=creeper-chan]","color":"#FF33FF"}]
xp add @a[tag=creeper-chan] 1000
loot give @a[tag=creeper-chan] loot boss_main:players/creeper-chan

execute store result score @s time run scoreboard players get dummyvar_gametime time
scoreboard players operation @s time -= @e[type=area_effect_cloud,tag=creeper-chan,sort=nearest,limit=1] time
scoreboard players operation dummyvar_math0 time = @s time
scoreboard players operation dummyvar_math0 time /= dummyvar_math_second time
scoreboard players operation dummyvar_math1 time = dummyvar_math0 time
scoreboard players operation dummyvar_math1 time /= dummyvar_math_minute time
scoreboard players operation dummyvar_math0 time %= dummyvar_math_minute time
tellraw @a [{"text":"In "},{"score":{"objective":"time","name":"dummyvar_math1"},"color":"#FF33FF"},{"text":":"},{"score":{"objective":"time","name":"dummyvar_math0"},"color":"#FF33FF"}]

kill @e[type=area_effect_cloud,tag=creeper-chan]
tag @a[tag=creeper-chan] remove creeper-chan