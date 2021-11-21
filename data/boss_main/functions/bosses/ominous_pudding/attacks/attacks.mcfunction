execute store result entity @s Size byte 1 run scoreboard players add @s counter 1
particle item_slime ~ ~ ~ 1 1 1 0.1 20
playsound entity.slime.jump master @a ~ ~ ~ 1 1
scoreboard players set @s[scores={counter=7}] counter -1
execute as @s[scores={counter=0}] run playsound entity.generic.explode master @a ~ ~ ~ 2 0.3
execute as @s[scores={counter=0}] run particle explosion_emitter

execute store result score @s[scores={counter=0}] math run loot spawn 0 -100 0 loot boss_main:ai/ominous_pudding/attacks
execute as @s[scores={counter=0,math=1..2}] run function boss_main:bosses/ominous_pudding/attacks/slime
execute as @s[scores={counter=0,math=3..4}] run function boss_main:bosses/ominous_pudding/attacks/magma
execute as @s[scores={counter=0,math=5}] run function boss_main:bosses/ominous_pudding/attacks/slowness
execute as @s[scores={counter=0,math=6}] run function boss_main:bosses/ominous_pudding/attacks/poison
execute as @s[scores={counter=0,math=7}] run function boss_main:bosses/ominous_pudding/attacks/blindness
execute as @s[scores={counter=0,math=8}] run function boss_main:bosses/ominous_pudding/attacks/damage