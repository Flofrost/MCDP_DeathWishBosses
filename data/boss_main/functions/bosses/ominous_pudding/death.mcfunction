bossbar remove ominous_pudding
summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;65344],FadeColors:[I;15662848,45336,8454348,16711680]}]}}}}
tellraw @a [{"text":"Ominous Pudding\nSERN's Deadly Threat\n","color":"#55FF55"},{"text":"Has been defeated by: ","color":"white"},{"selector": "@a[tag=ominous_pudding]","color":"#FF33FF"}]
xp add @a[tag=ominous_pudding] 100
loot give @a[tag=ominous_pudding] loot boss_main:players/ominous_pudding

execute store result score @s time run scoreboard players get dummyvar_gametime time
scoreboard players operation @s time -= @e[type=area_effect_cloud,tag=ominous_pudding,sort=nearest,limit=1] time
scoreboard players operation dummyvar_math0 time = @s time
scoreboard players operation dummyvar_math0 time /= dummyvar_math_second time
scoreboard players operation dummyvar_math1 time = dummyvar_math0 time
scoreboard players operation dummyvar_math1 time /= dummyvar_math_minute time
scoreboard players operation dummyvar_math0 time %= dummyvar_math_minute time
tellraw @a [{"text":"In "},{"score":{"objective":"time","name":"dummyvar_math1"},"color":"#FF33FF"},{"text":":"},{"score":{"objective":"time","name":"dummyvar_math0"},"color":"#FF33FF"}]

kill @e[type=area_effect_cloud,tag=ominous_pudding]
tag @a[tag=ominous_pudding] remove ominous_pudding