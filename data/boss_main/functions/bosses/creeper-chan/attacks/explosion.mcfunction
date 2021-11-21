tellraw @a ["",{"text":"<"},{"text":"Creeper-chan","color":"green","bold":true},{"text":">"},{"text":" Explosion!"}]
bossbar remove creeper-chan
kill @e[type=area_effect_cloud,tag=creeper-chan]
effect clear @s
data modify entity @s Fuse set value 0
data modify entity @s ignited set value 1
summon fireball ~ ~-1 ~ {power:[0.0,-1.0,0.0],ExplosionPower:50}
tag @a[tag=creeper-chan] remove creeper-chan