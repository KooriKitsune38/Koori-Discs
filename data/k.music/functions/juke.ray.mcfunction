#> k.music:juke.ray

# Revoke Advancement
advancement revoke @s only k.music:used.disc

# Add 1
scoreboard players add .ray k.jukeRay 1

# At jukebox
execute align xyz positioned ~.5 ~.5 ~.5 if block ^ ^ ^ jukebox run function k.music:start.juke

# Repeat
execute unless score .ray k.jukeRay matches 1000.. positioned ^ ^ ^.1 run function k.music:juke.ray