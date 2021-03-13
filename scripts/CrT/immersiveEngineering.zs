//coke oven
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, 
	[[<minecraft:clay_ball>, <ore:sandstone>, <minecraft:clay_ball>], 
	[<ore:sandstone>, <ore:blockCharcoal>, <ore:sandstone>], 
	[<minecraft:clay_ball>, <ore:sandstone>, <minecraft:clay_ball>]]);
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);
//crude blast furnace
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, 
	[[<minecraft:brick>, <minecraft:nether_brick>, <minecraft:brick>], 
	[<minecraft:nether_brick>, <minecraft:clay>, <minecraft:nether_brick>], 
	[<minecraft:brick>, <minecraft:nether_brick>, <minecraft:brick>]]);