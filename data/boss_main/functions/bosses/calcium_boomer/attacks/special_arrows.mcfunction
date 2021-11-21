tp @s @e[type=arrow,sort=nearest,limit=1]

execute unless entity @e[type=arrow,distance=..2,nbt={inGround:0b}] if entity @s[tag=firework] run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:128,Explosions:[{Type:1,Colors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320],FadeColors:[I;16777215]}]}}}}
execute unless entity @e[type=arrow,distance=..2,nbt={inGround:0b}] if entity @s[tag=tnt] run summon creeper ~ ~ ~ {Fuse:0,ignited:1}
execute unless entity @e[type=arrow,distance=..2,nbt={inGround:0b}] if entity @s[tag=fire_charge] run summon fireball ~ ~ ~ {power:[0.0,-1.0,0.0],ExplosionPower:1}

execute unless entity @e[type=arrow,distance=..2,nbt={inGround:0b}] run kill