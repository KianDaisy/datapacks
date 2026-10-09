# Spawn all mobs for the current run based on Dread tier
# Called at run start from run/start.mcfunction

as @a at @s run function deck:monster/wave_spawn

tellraw @a [{text:"[Deckrun] ",color:"blue"},{text:"Initial mob wave spawned",color:"gray"}]

