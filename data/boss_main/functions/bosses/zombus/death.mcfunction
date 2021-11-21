bossbar remove zombus
summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;2349047],FadeColors:[I;1279]}]}}}}
tellraw @a [{"text":"Zombus\nFlofrost's Prodigy\n","color":"#2299FF"},{"text":"Has been defeated by: ","color":"white"},{"selector": "@a[tag=zombus]","color":"#FF33FF"}]
xp add @a[tag=zombus] 7777

execute store result score @s time run scoreboard players get dummyvar_gametime time
scoreboard players operation @s time -= @e[type=area_effect_cloud,tag=zombus,sort=nearest,limit=1] time
scoreboard players operation dummyvar_math0 time = @s time
scoreboard players operation dummyvar_math0 time /= dummyvar_math_second time
scoreboard players operation dummyvar_math1 time = dummyvar_math0 time
scoreboard players operation dummyvar_math1 time /= dummyvar_math_minute time
scoreboard players operation dummyvar_math0 time %= dummyvar_math_minute time
tellraw @a [{"text":"In "},{"score":{"objective":"time","name":"dummyvar_math1"},"color":"#FF33FF"},{"text":":"},{"score":{"objective":"time","name":"dummyvar_math0"},"color":"#FF33FF"}]

kill @e[type=area_effect_cloud,tag=zombus]
tag @a[tag=zombus] remove zombus