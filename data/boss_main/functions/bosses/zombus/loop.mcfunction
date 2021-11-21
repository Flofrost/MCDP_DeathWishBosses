scoreboard players operation @s time = dummyvar_gametime time
scoreboard players operation @s time %= dummyvar_boss_zombus time

execute as @s[scores={time=0}] if predicate boss_main:bosses/zombus/attacks run function boss_main:bosses/zombus/attacks/attacks
execute as @s[nbt={ActiveEffects:[{Id:1b}]}] at @a[distance=..1.5] run summon arrow ~ ~2.5 ~ {Motion:[0.0,-1.0,0.0],damage:20,SoundEvent:"entity.zombie.attack_iron_door",CustomPotionEffects:[{Id:25,Amplifier:70,Duration:2,ShowParticles:0b}]}

execute store result bossbar zombus value run data get entity @s Health