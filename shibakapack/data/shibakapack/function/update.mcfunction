# 1. Convertir en minutes (ticks ÷ 20 ÷ 60)
scoreboard players operation @s PlayMinutes = @s PlayTime
scoreboard players operation @s PlayMinutes /= #20TPS Constantes
scoreboard players operation @s PlayMinutes /= #60 Constantes

# 2. Convertir en heures (minutes ÷ 60)
scoreboard players operation @s PlayHours = @s PlayMinutes
scoreboard players operation @s PlayHours /= #60 Constantes

# 3. Minutes restantes (enlever les heures complètes)
scoreboard players operation @s PlayHoursTemp = @s PlayHours
scoreboard players operation @s PlayHoursTemp *= #60 Constantes
scoreboard players operation @s PlayMinutes -= @s PlayHoursTemp