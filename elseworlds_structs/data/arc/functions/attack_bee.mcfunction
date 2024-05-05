advancement revoke @s only arc:attack_bee_trigger
execute on attacker run summon bee ~ ~1 ~ {Tags: ["attack_bee"], AngerTime: 1800}
execute on attacker run data modify entity @e[type=bee,tag=attack_bee,sort=nearest,limit=1] AngryAt set from entity @s UUID
