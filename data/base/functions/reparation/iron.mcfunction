particle minecraft:enchant ~ ~1.5 ~ 0 0 0 0.5 1
tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[Table] Réparer ","color":"gray"},{"selector":"@s"},{"text":" ? (Vérifiez qu'il y a des particules d'enchantements !)","color":"gray"},{"text":"\n\n"},{"text":"[\u2714]","color":"green","clickEvent":{"action":"run_command","value":"/trigger repare set 1"}},{"text":" "},{"text":"[\u2716]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger repare set 0"}}]
execute if score @p repare matches 0 run playsound minecraft:block.anvil.destroy master @p
execute if score @p repare matches 0 run tp @s @p
execute if score @p repare matches 0 run scoreboard players set @a repare -1
#GOLD ITEM
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:golden_axe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:golden_hoe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:golden_shovel"}}] Item.tag.Damage set value 0
#WOOD ITEM
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:wooden_sword"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:wooden_axe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:wooden_hoe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:wooden_shovel"}}] Item.tag.Damage set value 0
#LEATHER ARMOR
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:leather_helmet"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:leather_leggings"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:leather_boots"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run playsound minecraft:block.anvil.use master @p
execute if score @p repare matches 1 run playsound minecraft:block.enchantment_table.use master @p
execute if score @p repare matches 1 run data modify entity @e[type=armor_stand,tag=reparation,limit=1,sort=nearest] ArmorItems set value [{},{},{},{id:"minecraft:air"}]
execute if score @p repare matches 1 run tp @s @p
execute if score @p repare matches 1 run tellraw @p {"text":"[Table] Fait","color":"gray"}