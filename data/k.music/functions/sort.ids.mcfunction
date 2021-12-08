#> k.music:sort.ids

# IDS
#> 1
title @a[tag=.temp] actionbar {"text":"Now Playing: Minecraft - Spoopy Sounds","italic": false}
execute if entity @s[tag=!k.stopSound] if score .id k.musicDisc matches 1 run playsound ambient.cave record @a ~ ~ ~ 1 1
execute if entity @s[tag=k.stopSound] if score .id k.musicDisc matches 1 run stopsound @a[distance=..20] record ambient.cave
#> 2
#title @a[tag=.temp] actionbar {"text":"Now Playing: Author - Song","italic": false}
#execute if entity @s[tag=!k.stopSound] if score .id k.musicDisc matches 2 run playsound 
#execute if entity @s[tag=k.stopSound] if score .id k.musicDisc matches 2 run stopsound @a[distance=..20] record 