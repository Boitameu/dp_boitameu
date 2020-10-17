execute as @e[type=bat,tag=reparation] at @s run function base:structure
execute as @e[type=bat,tag=guardian_crystal] at @s run function base:guardian
execute as @e[type=bat,tag=trapped_chest] at @s run function base:trapped_chest


execute as @e[type=end_crystal,tag=guardian] at @s run tp @e[type=guardian,tag=guardian,sort=nearest,distance=0..5] ~ ~0.5 ~


effect give @e[type=guardian,tag=guardian] invisibility 1000000 255 true
effect give @e[type=slime,tag=guardian] invisibility 1000000 255 true
effect give @e[type=slime,nbt={Size:1}] invisibility 1000000 255 true
effect give @e[type=slime,nbt={Size:0}] invisibility 1000000 255 true


execute as @e[type=minecraft:experience_bottle] at @s run xp add @p 5
kill @e[type=minecraft:experience_bottle]
kill @e[type=minecraft:experience_orb]


execute as @e[type=slime,nbt={Size:4}] store result bossbar base:slime_life value run scoreboard players get @s life
execute as @e[type=slime,nbt={Size:1},limit=1] run kill @e[sort=nearest,limit=1,type=guardian,tag=guardian]
execute as @e[type=slime,nbt={Size:1}] run say ah1
execute as @e[type=slime,nbt={Size:1}] run schedule function base:guardian2 30s

kill @e[type=slime,nbt={Size:1}]
kill @e[type=slime,nbt={Size:0}]


execute as @e[type=armor_stand,tag=trapped_chest] at @s run particle minecraft:dolphin ~ ~ ~ 0.5 0.5 0.5 1.5 1 normal
execute as @e[type=armor_stand,tag=trapped_chest] at @s if block ~ ~ ~ air run kill @s

execute as @e[type=end_crystal,tag=guardian] at @s run execute as @a[distance=0..4.2,gamemode=!spectator,gamemode=!creative] run tp @e[type=slime,tag=guardian] ~ ~10 ~
execute as @e[type=end_crystal,tag=guardian] at @s run execute as @a[distance=0..4.2,gamemode=!spectator,gamemode=!creative] run summon creeper ~ ~1 ~ {CustomName:"\"Guardian Crystal\"",CustomNameVisible:1,ignited:1,ExplosionRadius:6,Fuse:0}
scoreboard players enable @a repare


execute as @e[type=item_frame,tag=reparation] at @s positioned ~ ~-1 ~ run particle minecraft:flamme ~ ~ ~ 0.5 0.5 0.5 1.5 1 normal
execute as @e[type=armor_stand,tag=reparation] at @s if block ~ ~-0.5 ~-0.3 air run kill @s
execute as @e[type=item_frame,tag=reparation] at @s if block ~ ~-1 ~ air run kill @s

execute as @e[type=armor_stand,tag=reparation,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b}]}] at @s if entity @e[type=item,sort=nearest,limit=1,distance=0..0.6,nbt={Item:{id:"minecraft:diamond"}}] run function base:diams
execute as @e[type=armor_stand,tag=reparation,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b}]}] at @s if entity @e[type=item,sort=nearest,limit=1,distance=0..0.6,nbt={Item:{id:"minecraft:iron_ingot"}}] run function base:iron
execute as @e[type=armor_stand,tag=reparation,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b}]}] at @s if entity @e[type=item,sort=nearest,limit=1,distance=0..0.6,nbt={Item:{id:"minecraft:gold_ingot"}}] run function base:gold
execute as @e[type=armor_stand,tag=reparation,nbt=!{ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b}]},nbt=!{ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b}]}] at @s if entity @e[type=item,sort=nearest,limit=1,distance=0..0.6,nbt={Item:{id:"minecraft:emerald"}}] run function base:emerald


execute at @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]},type=armor_stand,tag=reparation] positioned ~ ~0.8 ~-0.1 run particle minecraft:ash
execute as @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b}]},type=armor_stand,tag=reparation] at @s positioned ~ ~0.3 ~ run execute as @e[type=item,distance=0..0.5] run function base:reparation/diams


execute at @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b}]},type=armor_stand,tag=reparation] positioned ~ ~0.8 ~-0.1 run particle minecraft:ash
execute as @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1b}]},type=armor_stand,tag=reparation] at @s positioned ~ ~0.3 ~ run execute as @e[type=item,distance=0..0.5] run function base:reparation/iron


execute at @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b}]},type=armor_stand,tag=reparation] positioned ~ ~0.8 ~-0.1 run particle minecraft:ash
execute as @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1b}]},type=armor_stand,tag=reparation] at @s positioned ~ ~0.3 ~ run execute as @e[type=item,distance=0..0.5] run function base:reparation/gold


execute at @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]},type=armor_stand,tag=reparation] positioned ~ ~0.8 ~-0.1 run particle minecraft:ash
execute as @e[nbt={ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b}]},type=armor_stand,tag=reparation] at @s positioned ~ ~0.3 ~ run execute as @e[type=item,distance=0..0.5] run function base:reparation/emerald


execute as @a[scores={spell_use=1},nbt={SelectedItem:{id:"minecraft:blaze_powder",tag:{Spell:1}}}] at @s run summon minecraft:fireball ~ ~1.4 ~
execute as @e[type=fireball] at @s if entity @a[scores={spell_use=1},nbt={SelectedItem:{id:"minecraft:blaze_powder",tag:{Spell:1}}},sort=nearest,limit=1,distance=5..6] run kill @s
execute as @a[scores={spell_use=1}] run scoreboard players set @s spell_use 0