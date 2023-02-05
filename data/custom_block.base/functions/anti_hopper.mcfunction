#> custom_block.base:anti_hopper
#@public

## ホッパー付きトロッコ対策のつもり……→できてない
# execute align xyz positioned ~ ~-1 ~ as @e[type=hopper_minecart,dx=0] run data modify entity @s Enabled set value 0b

## ホッパー付きトロッコ対策: コンテナ内のアイテムを吸っちゃダメ！ドロップしたアイテムも吸っちゃダメ！
execute align xyz as @e[type=hopper_minecart,dy=-2] at @s run function custom_block.base:ban_hopper_minecart

## ホッパー対策
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] run data modify block ~ ~ ~ TransferCooldown set value 2
