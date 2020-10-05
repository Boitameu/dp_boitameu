replaceitem entity @s armor.head diamond
kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}},sort=nearest,limit=1]
tag @s add tier_max
scoreboard players set * repare -1