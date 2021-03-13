#loader contenttweaker
#priority 4

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;

var squirrel as ItemFood = VanillaFactory.createItemFood("grilled_squirrel", 15);
squirrel.saturation = 1.2;
squirrel.alwaysEdible = true;
squirrel.creativeTab = <creativetab:food>;
squirrel.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(1200, 2));
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(1800, 2));
        player.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(1200, 2));
    }
};
squirrel.register();

var difi as ItemFood = VanillaFactory.createItemFood("dirty_fish", 3);
difi.saturation = 0.15;
difi.alwaysEdible = true;
difi.creativeTab = <creativetab:food>;
difi.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(400, 2));
    }
};
difi.register();