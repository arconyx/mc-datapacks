summon bee ~ ~1 ~ {Tags: ["attack_bee"], AngerTime: 1800}
data modify entity @e[type=bee,tag=attack_bee,sort=nearest,limit=1] AngryAt set from entity @s UUID
