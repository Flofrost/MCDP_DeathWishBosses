execute at @e[type=zombie,tag=zombus] as @a[distance=..4] at @s run data merge entity @s {NoAI:1}
execute at @e[type=zombie,tag=zombus] as @a[distance=..4] at @s run effect give @s slowness 3 255 true
execute at @e[type=zombie,tag=zombus] as @a[distance=..4] at @s run effect give @s jump_boost 3 128 true
execute at @e[type=zombie,tag=zombus] as @a[distance=..4] at @s run effect give @s wither 3 3 true
execute at @e[type=zombie,tag=zombus] as @a[distance=..4] at @s run effect give @s blindness 3 1 true
execute at @e[type=zombie,tag=zombus] as @a[distance=..4] at @s run summon falling_block ~ ~ ~ {NoGravity:1,Time:540,BlockState:{Name:"ice"},DropItem:0}
execute at @e[type=zombie,tag=zombus] as @a[distance=..4] at @s run summon falling_block ~ ~1 ~ {NoGravity:1,Time:540,BlockState:{Name:"ice"},DropItem:0}

execute at @e[type=zombie,tag=zombus] run particle poof ~ ~1.61 ~ 0 0 0 1 100
execute at @e[type=zombie,tag=zombus] run playsound entity.puffer_fish.death master @a ~ ~ ~ 1 2
execute at @e[type=zombie,tag=zombus] run playsound entity.puffer_fish.death master @a ~ ~ ~ 1 1.5
execute at @e[type=zombie,tag=zombus] run playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.33 0.5
execute at @e[type=zombie,tag=zombus] run playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.33 0.3
execute at @e[type=zombie,tag=zombus] run playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.33 0.1