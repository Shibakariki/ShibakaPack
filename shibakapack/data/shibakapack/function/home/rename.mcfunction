execute store result storage shibakapack:homes temp.u1 int 1 run data get entity @s UUID[0]
execute store result storage shibakapack:homes temp.u2 int 1 run data get entity @s UUID[1]
execute store result storage shibakapack:homes temp.u3 int 1 run data get entity @s UUID[2]
execute store result storage shibakapack:homes temp.u4 int 1 run data get entity @s UUID[3]
execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players operation @s homeRenamePending = @s homeRenameConfirm
data modify storage shibakapack:homes temp.name set from entity @s SelectedItem.components."minecraft:custom_name"
item replace entity @s weapon.mainhand with air
xp add @s 1 levels
function shibakapack:home/rename_exec with storage shibakapack:homes temp