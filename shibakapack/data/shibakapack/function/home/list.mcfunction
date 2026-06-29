execute store result storage shibakapack:homes temp.u1 int 1 run data get entity @s UUID[0]
execute store result storage shibakapack:homes temp.u2 int 1 run data get entity @s UUID[1]
execute store result storage shibakapack:homes temp.u3 int 1 run data get entity @s UUID[2]
execute store result storage shibakapack:homes temp.u4 int 1 run data get entity @s UUID[3]
scoreboard players set #list_slot listCounter 1
data modify storage shibakapack:homes temp.slot set value 1
function shibakapack:home/list_names with storage shibakapack:homes temp