loot replace entity @s weapon.mainhand loot boss_main:ai/creeper-chan/attacks
playsound block.note_block.flute master @a ~ ~ ~ 2 1.2

execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] run summon tnt ^ ^ ^1 {Fuse:100}
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] store result score @s X run data get entity @s Pos[0] 1000
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] store result score @s Y run data get entity @s Pos[1] 1000
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] store result score @s Z run data get entity @s Pos[2] 1000
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] as @e[type=tnt,sort=nearest,limit=1] store result score @s X run data get entity @s Pos[0] 1000
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] as @e[type=tnt,sort=nearest,limit=1] store result score @s Y run data get entity @s Pos[1] 1000
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] as @e[type=tnt,sort=nearest,limit=1] store result score @s Z run data get entity @s Pos[2] 1000
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] store result entity @e[type=tnt,sort=nearest,limit=1] Motion[0] double -0.0013 run scoreboard players operation @s X -= @e[type=tnt,sort=nearest,limit=1] X
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] store result entity @e[type=tnt,sort=nearest,limit=1] Motion[1] double -0.0013 run scoreboard players operation @s Y -= @e[type=tnt,sort=nearest,limit=1] Y
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] store result entity @e[type=tnt,sort=nearest,limit=1] Motion[2] double -0.0013 run scoreboard players operation @s Z -= @e[type=tnt,sort=nearest,limit=1] Z
execute as @s[nbt={HandItems:[{id:"minecraft:tnt"}]}] run data modify entity @e[type=tnt,sort=nearest,limit=1] Air set value 200

execute as @s[nbt={HandItems:[{id:"minecraft:ender_pearl"}]}] at @p run spreadplayers ~ ~ 3 5 false @s

execute as @s[nbt={HandItems:[{id:"minecraft:potion"}]}] at @p run effect give @a slowness 5 2 true
