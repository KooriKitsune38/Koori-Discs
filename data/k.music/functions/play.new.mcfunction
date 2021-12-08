#> k.music:play.new

tag @s remove .temp

# Scoreboard
scoreboard objectives add k.musicDisc dummy

# Retrieve ID
execute store result score .id k.musicDisc run data get block ~ ~ ~ RecordItem.tag.SongID
execute store result entity @s data.SongID int 1 run scoreboard players get .id k.musicDisc

# Sort IDS
function k.music:sort.ids

# Scoreboard
scoreboard objectives remove k.musicDisc