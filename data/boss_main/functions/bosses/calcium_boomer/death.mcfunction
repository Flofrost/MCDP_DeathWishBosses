bossbar remove calcium_boomer
summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320],FadeColors:[I;16777215]}]}}}}
tellraw @a [{"text":"Calcium Boomer\nThe Crazy Skeleton\n","color":"#FF2222"},{"text":"Has been defeated by: ","color":"white"},{"selector": "@a[tag=calcium_boomer]","color":"#FF33FF"}]
xp add @a[tag=calcium_boomer] 400
loot give @a[tag=calcium_boomer] loot boss_main:players/calcium_boomer

execute store result score @s time run scoreboard players get dummyvar_gametime time
scoreboard players operation @s time -= @e[type=area_effect_cloud,tag=calcium_boomer,sort=nearest,limit=1] time
scoreboard players operation dummyvar_math0 time = @s time
scoreboard players operation dummyvar_math0 time /= dummyvar_math_second time
scoreboard players operation dummyvar_math1 time = dummyvar_math0 time
scoreboard players operation dummyvar_math1 time /= dummyvar_math_minute time
scoreboard players operation dummyvar_math0 time %= dummyvar_math_minute time
tellraw @a [{"text":"In "},{"score":{"objective":"time","name":"dummyvar_math1"},"color":"#FF33FF"},{"text":":"},{"score":{"objective":"time","name":"dummyvar_math0"},"color":"#FF33FF"}]

kill @e[type=area_effect_cloud,tag=calcium_boomer]
tag @a[tag=calcium_boomer] remove calcium_boomer