particle minecraft:enchant ~ ~1.5 ~ 0 0 0 0.5 1
tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[Table] Réparer ","color":"gray"},{"selector":"@s"},{"text":" ? (Vérifiez qu'il y a des particules d'enchantements !)","color":"gray"},{"text":"\n\n"},{"text":"[\u2714]","color":"green","clickEvent":{"action":"run_command","value":"/trigger repare set 1"}},{"text":" "},{"text":"[\u2716]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger repare set 0"}}]
execute if score @p repare matches 0 run playsound minecraft:block.anvil.destroy master @p
execute if score @p repare matches 0 run tp @s @p
execute if score @p repare matches 0 run scoreboard players set @a repare -1
#IRON ITEM
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_axe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_hoe"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_shovel"}}] Item.tag.Damage set value 0
#IRON ARMOR
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_helmet"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_leggings"}}] Item.tag.Damage set value 0
execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:turtle_helmet"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:crossbow"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:shield"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:fishing_rod"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:flint_and_steel"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run data modify entity @s[nbt={Item:{id:"minecraft:bow"}}] Item.tag.Damage set value 0

execute if score @p repare matches 1 run playsound minecraft:block.anvil.use master @p
execute if score @p repare matches 1 run playsound minecraft:block.enchantment_table.use master @p
execute if score @p repare matches 1 run data modify entity @e[type=armor_stand,tag=reparation,limit=1,sort=nearest] ArmorItems set value [{},{},{},{id:"minecraft:air"}]
execute if score @p repare matches 1 run tp @s @p
execute if score @p repare matches 1 run tellraw @p {"text":"[Table] Fait","color":"gray"}