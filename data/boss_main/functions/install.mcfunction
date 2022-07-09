scoreboard objectives add counter dummy
scoreboard objectives add time dummy
scoreboard objectives add math dummy
scoreboard objectives add boss_help trigger
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

scoreboard players enable @a boss_help

scoreboard players set dummyvar_math_second time 20
scoreboard players set dummyvar_math_minute time 60
scoreboard players set dummyvar_boss_zombus time 60
scoreboard players set dummyvar_boss_calcium_boomer time 100
scoreboard players set dummyvar_boss_ominous_pudding time 20
scoreboard players set dummyvar_boss_creeper-chan time 7
scoreboard players set dummyvar_boss_flappator time 140

tellraw @a [{"text":"Thanks for using "},{"text":"Death Wish Bosses","color":"#FF33FF","bold":true},{"text":" Datapack by "},{"text":"Flofrost","color":"#2299FF","bold":true},{"text":"!\nHave fun :) "},{"text":"This is a developpement branch, bugs are expected. ","color": "red"},{"text":"Help","color":"green","hoverEvent":{"action":"show_text","contents":"Click here for Help."},"clickEvent":{"action":"run_command","value":"/trigger boss_help"}}]