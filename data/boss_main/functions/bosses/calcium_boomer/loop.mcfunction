scoreboard players operation @s time = dummyvar_gametime time
scoreboard players operation @s time %= dummyvar_boss_calcium_boomer time

execute as @s[scores={time=0}] if predicate boss_main:bosses/calcium_boomer/new_arrow run loot replace entity @s weapon.offhand loot boss_main:ai/calcium_boomer/arrows
execute as @s[scores={time=0}] if predicate boss_main:bosses/calcium_boomer/new_weapon run loot replace entity @s weapon.mainhand loot boss_main:ai/calcium_boomer/bows

execute as @s[nbt={HandItems:[{tag:{punch:1}}]}] run particle cloud ~ ~1 ~ 0.1 0.3 0.1 0.05 1
execute as @s[nbt={HandItems:[{tag:{flame:1}}]}] run particle flame ~ ~1 ~ 0.1 0.3 0.1 0.05 1
execute as @s[nbt={HandItems:[{tag:{power:1}}]}] run particle enchanted_hit ~ ~1 ~ 0.1 0.3 0.1 0.05 3
 execute as @s[nbt={HandItems:[{id:"minecraft:milk_bucket"}]}] run effect give @s speed 1 1 true
execute as @s[nbt={HandItems:[{id:"minecraft:milk_bucket"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run effect give @s instant_damage 1 0 true 
execute as @s[nbt={HandItems:[{id:"minecraft:firework_rocket"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run summon area_effect_cloud ~ ~1 ~ {Duration:200,Tags:["special_arrow","firework"]}
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run summon area_effect_cloud ~ ~1 ~ {Duration:200,Tags:["special_arrow","tnt"]}
execute as @s[nbt={HandItems:[{id:"minecraft:fire_charge"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run summon area_effect_cloud ~ ~1 ~ {Duration:200,Tags:["special_arrow","fire_charge"]}
execute as @s[nbt={HandItems:[{id:"minecraft:ender_pearl"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run summon ender_pearl
execute as @s[nbt={HandItems:[{id:"minecraft:ender_pearl"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run data modify entity @e[type=ender_pearl,sort=nearest,limit=1] Motion set from entity @e[type=arrow,sort=nearest,limit=1] Motion
execute as @s[nbt={HandItems:[{id:"minecraft:ender_pearl"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run data modify entity @e[type=ender_pearl,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @s[nbt={HandItems:[{id:"minecraft:ender_pearl"}]}] if entity @e[type=arrow,distance=..2,nbt={life:0s}] run kill @e[type=arrow,sort=nearest,limit=1]
execute as @e[type=area_effect_cloud,tag=special_arrow] at @s run function boss_main:bosses/calcium_boomer/attacks/special_arrows

execute store result bossbar calcium_boomer value run data get entity @s Health