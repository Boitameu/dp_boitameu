replaceitem entity @s armor.head emerald
kill @e[type=item,nbt={Item:{id:"minecraft:emerald"}},sort=nearest,limit=1]
tag @s add tier_max
scoreboard players set * repare -1