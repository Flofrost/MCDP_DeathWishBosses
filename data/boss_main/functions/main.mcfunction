execute store result score dummyvar_gametime time run time query gametime

execute as @e[tag=boss] at @s run function boss_main:boss
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["boss_is_dead"]}}}] at @s run function boss_main:boss_death
execute as @e[type=item,nbt={Item:{id:"minecraft:creeper_head"}},predicate=boss_main:summoning] at @s if entity @a[distance=..30] run function boss_main:boss_summon

execute as @a[scores={boss_help=1..}] run function boss_help:main
execute as @a[nbt={Inventory:[{tag:{Tags:["boss_gear"]}}]}] at @s run function boss_gear:gears

execute unless entity @e[type=item,nbt={Item:{id:"minecraft:creeper_head"}},predicate=boss_main:summoning] run bossbar remove loading