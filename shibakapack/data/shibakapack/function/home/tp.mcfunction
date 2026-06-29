execute store result storage shibakapack:homes temp.u1 int 1 run data get entity @s UUID[0]
execute store result storage shibakapack:homes temp.u2 int 1 run data get entity @s UUID[1]
execute store result storage shibakapack:homes temp.u3 int 1 run data get entity @s UUID[2]
execute store result storage shibakapack:homes temp.u4 int 1 run data get entity @s UUID[3]
execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players get @s homeTpIndex
function shibakapack:home/tp_get with storage shibakapack:homes temp