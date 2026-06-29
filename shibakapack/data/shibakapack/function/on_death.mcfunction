scoreboard players add @s Deaths 1
# Death message (english ver.)
# tellraw @a [{"selector":"@s","color":"gold","italic":true},{"text":" is dead! ","color":"white"},{"text":"CHEH !","color":"red","bold":true},{"text":" (","color":"white"},{"score":{"name":"@s","objective":"Deaths"},"color":"red"},{"text":" deaths in total)","color":"white"}]
# Death message (french ver.)
tellraw @a [{"selector":"@s","color":"gold","italic":true},{"text":" est mort ! ","color":"white"},{"text":"CHEH !","color":"red","bold":true},{"text":" (","color":"white"},{"score":{"name":"@s","objective":"Deaths"},"color":"red"},{"text":" morts au total)","color":"white"}]