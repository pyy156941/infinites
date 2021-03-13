import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
#priority 3

//goodbye rail to iron/gold
Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);

Melting.addRecipe(<liquid:molten_leather> * 144, <minecraft:leather>);
Melting.addRecipe(<liquid:molten_leather> * 1296，<contentweaker:leather_block>);
Melting.addRecipe(<liquid:molten_leather> * 720, <minecraft:leather_helmet>);
Melting.addRecipe(<liquid:molten_leather> * 1152, <minecraft:leather_chestplate>);
Melting.addRecipe(<liquid:molten_leather> * 1008, <minecraft:leather_leggings>);
Melting.addRecipe(<liquid:molten_leather> * 576, <minecraft:leather_boots>);

Casting.addTableRecipe(<contenttweaker:dirty_fish>, <ore:fish>, <liquid:dirt>, 144, true, 40);
Casting.addTableRecipe(<contenttweaker:dirty_fishs_leather_block>, <contenttweaker:dirty_fish_block>, <liquid:molten_leather>, 1296, true, 180);

Casting.addBasinRecipe(<contenttweaker:leather_block>, null, <liquid:molten_leather>, 1296, true, 180);
