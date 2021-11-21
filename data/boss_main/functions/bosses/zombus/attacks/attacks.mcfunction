execute as @s[nbt={HandItems:[{id:"minecraft:ice"}]}] run schedule function boss_main:bosses/zombus/attacks/cold_snap 1s
execute as @s[nbt={HandItems:[{id:"minecraft:snowball"}]}] run schedule function boss_main:bosses/zombus/attacks/ice_spike 1s
execute as @s[nbt={HandItems:[{id:"minecraft:potion"}]}] run schedule function boss_main:bosses/zombus/attacks/charge 1s
playsound entity.zombie.death master @a ~ ~ ~ 1 1.2
particle block ice ~ ~1.6 ~ 0.5 0.5 0.5 0.1 10

loot replace entity @s weapon.offhand loot boss_main:ai/zombus/attacks