#priority 3

recipes.addShaped(<contenttweaker:leather_block>, 
	[[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], 
	[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], 
	[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
recipes.addShapeless(<contenttweaker:dirty_fish>, 
	[<ore:fish>, <minecraft:dirt>]);
recipes.addShaped(<contenttweaker:dirty_fish_block>, 
	[[<contenttweaker:dirty_fish>, <contenttweaker:dirty_fish>],
	[<contenttweaker:dirty_fish>, <contenttweaker:dirty_fish>]]);
recipes.addShapeless(<contenttweaker:dirty_fishs_leather_block>, 
	[<contenttweaker:dirty_fish_block>, <contenttweaker:leather_block>]);

recipes.addShaped(<contenttweaker:dirty_fishs_premium_leather_block>, 
	[[<contenttweaker:dirty_fishs_leather_block>, <minecraft:nether_star>, <contenttweaker:dirty_fishs_leather_block>], 
	[<minecraft:dragon_egg>, <minecraft:dragon_breath>, <minecraft:dragon_breath>], 
	[<contenttweaker:dirty_fishs_leather_block>, <minecraft:nether_star>, <contenttweaker:dirty_fishs_leather_block>]]);