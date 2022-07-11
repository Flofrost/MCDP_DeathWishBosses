execute unless score @s counter matches 201.. run scoreboard players add @s counter 1
execute if score @s counter matches 1 run bossbar add loading {"text":""}
execute if score @s counter matches 1 run bossbar set loading color pink
execute if score @s counter matches 1 run bossbar set loading max 200
execute if score @s counter matches 1 run bossbar set loading style notched_10
bossbar set loading players @a[distance=..50]
bossbar set loading name [{"selector":"@a[distance=..30]"},{"text":" will take part in the boss.","color":"#FF33FF"}]
execute store result bossbar loading value run scoreboard players get @s counter
particle portal ~ ~ ~ 0 0 0 1 5

execute as @s[scores={counter=200}] if predicate boss_main:zombus unless entity @e[type=zombie,tag=zombus] run function boss_main:bosses/zombus/summon
execute as @s[scores={counter=200}] if predicate boss_main:karbonoa unless entity @e[type=wither_skeleton,tag=karbonoa] run function boss_main:bosses/karbonoa/summon
execute as @s[scores={counter=200}] if predicate boss_main:calcium_boomer unless entity @e[type=skeleton,tag=calcium_boomer] run function boss_main:bosses/calcium_boomer/summon
execute as @s[scores={counter=200}] if predicate boss_main:ominous_pudding unless entity @e[type=slime,tag=ominous_pussing] run function boss_main:bosses/ominous_pudding/summon
execute as @s[scores={counter=200}] if predicate boss_main:chad unless entity @e[type=iron_golem,tag=chad] run function boss_main:bosses/chad/summon
execute as @s[scores={counter=200}] if predicate boss_main:creeper-chan unless entity @e[type=creeper,tag=creeper-chan] run function boss_main:bosses/creeper-chan/summon
execute as @s[scores={counter=200}] if predicate boss_main:flappator unless entity @e[type=phantom,tag=flappator] run function boss_main:bosses/flappator/summon
execute as @s[scores={counter=200}] if predicate boss_main:nautilus unless entity @e[type=phantom,tag=nautilus] run function boss_main:bosses/nautilus/summon

execute as @s[scores={counter=201}] run title @a[distance=..30] actionbar [{"text":"Summon Failed!","color":"#FF1111"}]
execute as @s[scores={counter=200..}] run bossbar remove loading