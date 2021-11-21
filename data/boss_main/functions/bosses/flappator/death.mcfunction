bossbar remove flappator
summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;44799,255,3473546],FadeColors:[I;0]}]}}}}
tellraw @a [{"text":"Flappator\nThe Embodiment of Pain\n","color":"dark_blue"},{"text":"Has been defeated by: ","color":"white"},{"selector": "@a[tag=flappator]","color":"#FF33FF"}]
xp add @a[tag=flappator] 200
loot give @a[tag=flappator] loot boss_main:players/flappator

execute store result score @s time run scoreboard players get dummyvar_gametime time
scoreboard players operation @s time -= @e[type=area_effect_cloud,tag=flappator,sort=nearest,limit=1] time
scoreboard players operation dummyvar_math0 time = @s time
scoreboard players operation dummyvar_math0 time /= dummyvar_math_second time
scoreboard players operation dummyvar_math1 time = dummyvar_math0 time
scoreboard players operation dummyvar_math1 time /= dummyvar_math_minute time
scoreboard players operation dummyvar_math0 time %= dummyvar_math_minute time
tellraw @a [{"text":"In "},{"score":{"objective":"time","name":"dummyvar_math1"},"color":"#FF33FF"},{"text":":"},{"score":{"objective":"time","name":"dummyvar_math0"},"color":"#FF33FF"}]

kill @e[type=area_effect_cloud,tag=flappator,sort=nearest,limit=1]
tag @a[tag=flappator] remove flappator