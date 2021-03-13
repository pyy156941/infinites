#loader contenttweaker
#priority 4

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;

var leatherBlock as Block = VanillaFactory.createBlock("leather_block", <blockmaterial:cloth>);
leatherBlock.lightOpacity = 3;
leatherBlock.lightValue = 0;
leatherBlock.blockHardness = 1.0;
leatherBlock.blockResistance = 5.0;
leatherBlock.toolClass = "axe";
leatherBlock.toolLevel = 0;
leatherBlock.blockSoundType = <soundtype:cloth>;
leatherBlock.slipperiness = 0.50;
leatherBlock.creativeTab = <creativetab:buildingBlocks>;
leatherBlock.register();

var dfb as Block = VanillaFactory.createBlock("dirty_fish_block", <blockmaterial:cloth>);
dfb.lightOpacity = 3;
dfb.lightValue = 0;
dfb.blockHardness = 0.8;
dfb.blockResistance = 1.5;
dfb.toolClass = "hoe";
dfb.toolLevel = 0;
dfb.blockSoundType = <soundtype:snow>;
dfb.slipperiness = 0.92;
dfb.creativeTab = <creativetab:decorations>;
dfb.register();

var dflb as Block = VanillaFactory.createBlock("dirty_fishs_leather_block", <blockmaterial:cloth>);
dflb.lightOpacity = 3;
dflb.lightValue = 0;
dflb.blockHardness = 16.0;
dflb.blockResistance = 32.0;
dflb.toolClass = "hoe";
dflb.toolLevel = 1;
dflb.blockSoundType = <soundtype:cloth>;
dflb.slipperiness = 0.84;
dflb.creativeTab = <creativetab:decorations>;
dflb.register();

var dfplb as Block = VanillaFactory.createBlock("dirty_fishs_premium_leather_block", <blockmaterial:cloth>);
dfplb.lightOpacity = 3;
dfplb.lightValue = 9;
dfplb.blockHardness = 120.0;
dfplb.blockResistance = 3600.0;
dfplb.toolClass = "pickaxe";
dfplb.toolLevel = 3;
dfplb.blockSoundType = <soundtype:metal>;
dfplb.slipperiness = 0.50;
dfplb.creativeTab = <creativetab:buildingBlocks>;
dfplb.register();