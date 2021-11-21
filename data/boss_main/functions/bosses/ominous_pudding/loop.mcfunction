scoreboard players operation @s time = dummyvar_gametime time
scoreboard players operation @s time %= dummyvar_boss_ominous_pudding time

execute as @s[scores={time=0}] if predicate boss_main:bosses/ominous_pudding/attacks run function boss_main:bosses/ominous_pudding/attacks/attacks

execute if entity @p[distance=..10] facing entity @p eyes run tp @s ^ ^ ^0.11 facing entity @p
execute if entity @p[distance=10..] facing entity @p eyes run tp @s ^ ^ ^0.22 facing entity @p
effect give @a[distance=..3] poison 1 10 true

execute store result bossbar ominous_pudding value run data get entity @s Health