particle minecraft:enchant ~ ~1.5 ~ 0 0 0 0.5 1
tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[Table] Réparer ","color":"gray"},{"selector":"@s"},{"text":" ? (Vérifiez qu'il y a des particules d'enchantements !)","color":"gray"},{"text":"\n\n"},{"text":"[\u2714]","color":"green","clickEvent":{"action":"run_command","value":"/trigger repare set 1"}},{"text":" "},{"text":"[\u2716]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger repare set 0"}}]
execute if score @p repare matches 0 run playsound minecraft:block.anvil.destroy master @p
execute if score @p repare matches 0 run tp @s @p
execute if score @p repare matches 0 run scoreboard players set @a repare -1
#DIAMS ITEM
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_axe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_hoe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_shovel"}}] Item.tag.Damage set value 0
#DIAMS ARMOR
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] Item.tag.Damage set value 0
#NETHERITE ITEM
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_axe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_pickaxe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_hoe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_shovel"}}] Item.tag.Damage set value 0
#NETHERITE ARMOR
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:elytra"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:trident"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run playsound minecraft:block.anvil.use master @p
execute if score @p repare matches 1 run playsound minecraft:block.enchantment_table.use master @p
execute if score @p repare matches 1 run summon firework_rocket ~ ~1 ~ {LifeTime:10,FireworksItem:{id:emerald,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1,Colors:[I;3887386,4312372],FadeColors:[I;2651799,4312372,15435844]}],Flight:1}}}}
execute if score @p repare matches 1 run data modify entity @e[type=armor_stand,tag=reparation,limit=1,sort=nearest] ArmorItems set value [{},{},{},{id:"minecraft:air"}]
execute if score @p repare matches 1 run tp @s @p
execute if score @p repare matches 1 run tellraw @p {"text":"[Table] Fait","color":"gray"}