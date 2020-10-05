replaceitem entity @s armor.head gold_ingot
kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},sort=nearest,limit=1]
tag @s add tier_max
scoreboard players set * repare -1