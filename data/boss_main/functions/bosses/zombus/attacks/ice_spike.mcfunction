execute at @e[type=zombie,tag=zombus] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"boss_main:zombus/ice_spike",posX:-2,posY:0,posZ:-2}
execute at @e[type=zombie,tag=zombus] run setblock ~ ~1 ~ redstone_block
execute at @e[type=zombie,tag=zombus] run playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.1
execute at @e[type=zombie,tag=zombus] run particle block snow ~ ~3 ~ 1 2 1 0.1 100
execute at @e[type=zombie,tag=zombus] at @a[distance=..5] run summon arrow ~ ~2.5 ~ {Motion:[0.0,-1.0,0.0],damage:10,SoundEvent:"entity.zombie.attack_iron_door",CustomPotionEffects:[{Id:25,Amplifier:127,Duration:2,ShowParticles:0b}]}
execute as @e[type=zombie,tag=zombus] at @s run tp @s ~ ~6 ~