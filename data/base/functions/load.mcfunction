say loaded
scoreboard objectives add repare trigger
scoreboard objectives add life health
bossbar add base:slime_life {"text":"Life"}
bossbar set base:slime_life max 100
###/give @p bat_spawn_egg{EntityTag:{id:"minecraft:bat",NoAI:1b,Silent:1,Tags:["reparation"]}}