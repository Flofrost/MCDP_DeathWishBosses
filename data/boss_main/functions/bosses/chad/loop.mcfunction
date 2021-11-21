data modify entity @s AngryAt set from entity @p UUID
execute if predicate boss_main:bosses/chad/yeet run effect give @a[distance=..3.5,nbt={HurtTime:9s}] levitation 1 20 true
execute store result bossbar chad value run data get entity @s Health