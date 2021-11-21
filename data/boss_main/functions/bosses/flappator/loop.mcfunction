scoreboard players operation @s time = dummyvar_gametime time
scoreboard players operation @s time %= dummyvar_boss_flappator time

execute as @s[predicate=boss_main:bosses/flappator/hurt,nbt={HurtTime:9s}] run summon phantom ~ ~5 ~ {Health:5}
execute as @s[scores={time=0},predicate=boss_main:bosses/flappator/attack] run function boss_main:bosses/flappator/attacks/attacks

execute as @s[predicate=!boss_main:bosses/flappator/player_fell] run spreadplayers ~ ~ 1 20 false @a[predicate=boss_main:bosses/flappator/player_fell]

execute store result bossbar flappator value run data get entity @s Health