#> k.music:start.juke

# Stop raycast
scoreboard players set .ray k.jukeRay 1000

# Stop Sound
tag @s add k.stopSound
schedule function k.music:stop.sound 2t append

# Summon Marker
execute unless entity @e[type=marker,tag=k.jukeMarker,distance=..1] run summon marker ~ ~ ~ {Tags:[k.jukeMarker,.temp],data:{SongID:0}}

# Music disc ID
tag @s add .temp
execute as @e[type=marker,distance=..2,tag=.temp] at @s run function k.music:play.new
tag @s remove .temp