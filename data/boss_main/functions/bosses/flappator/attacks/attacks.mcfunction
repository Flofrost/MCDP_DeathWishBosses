playsound entity.phantom.death master @a ~ ~ ~ 10 0.8

execute store result score @s counter run loot spawn ~ -2 ~ loot boss_main:ai/flappator/attacks

execute if score @s counter matches 1..2 run schedule function boss_main:bosses/flappator/attacks/vex 30t
execute if score @s counter matches 3 run schedule function boss_main:bosses/flappator/attacks/levitation 10t