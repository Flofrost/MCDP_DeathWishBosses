scoreboard players operation @s time = dummyvar_gametime time
scoreboard players operation @s time %= dummyvar_boss_creeper-chan time

execute unless entity @a[distance=..50,tag=creeper-chan] run effect give @s instant_health 1 1 true

tp @e[type=area_effect_cloud,tag=creeper-chan] ~ ~ ~
execute store result score @e[type=area_effect_cloud,tag=creeper-chan,sort=nearest,limit=1] counter run data get entity @s Health
execute store result score @e[type=area_effect_cloud,tag=creeper-chan,sort=nearest,limit=1] math run data get entity @s

execute as @s[scores={time=0}] if predicate boss_main:bosses/creeper-chan/attacks run function boss_main:bosses/creeper-chan/attacks/tnt

execute as @s[nbt={Health:1024f}] run function boss_main:bosses/creeper-chan/attacks/explosion

execute as @s[scores={time=0}] run particle heart ~ ~1.8 ~ 0.2 0.01 0.2 0.01 1

execute store result bossbar creeper-chan value run data get entity @s Health