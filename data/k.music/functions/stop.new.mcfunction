#> k.music:stop.new

# Scoreboard
scoreboard objectives add k.musicDisc dummy

# Retrieve ID
execute store result score .id k.musicDisc run data get entity @s data.SongID

# Sort IDS
function k.music:sort.ids

# Scoreboard
scoreboard objectives remove k.musicDisc