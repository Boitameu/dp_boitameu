execute as @e[type=end_crystal,tag=guardian] at @s if entity @e[distance=0..1,type=!guardian] run summon guardian ~ ~ ~ {Invulnerable:true,Silent:true,Tags:[guardian]}
say ah