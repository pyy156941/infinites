#loader contenttweaker
#priority 2725

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.SoundEvent;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.IBlockAction;
import mods.contenttweaker.BlockState;
import crafttweaker.data.IData;
import mods.ctutils.utils.Math;

zenClass ncczCotlib
{
	zenConstructor()
	{
		this.thingTimes = 0;
		this.funcTimes = 0;
	}

	var thingTimes as int = 0;
	var funcTimes as int = 0;

	//Register New Fluid (no sound)
	function RNF(name as string, color as string, density as int, isGaseous as bool, luminosity as int, temperature as int, viscosity as int, doVaporize as bool, isMolten as bool) as Fluid
	{
		print("Registering " + name + " (fluid)");
		var fluide = VanillaFactory.createFluid(name, Color.fromHex(color));
		fluide.density = density;
		fluide.gaseous = isGaseous;
		fluide.luminosity = luminosity;
		fluide.temperature = temperature;
		fluide.viscosity = viscosity;
		fluide.vaporize = doVaporize;
		if (isMolten)
		{
			fluide.material = <blockmaterial:lava>;
			fluide.stillLocation = "base:fluids/molten";
			fluide.flowingLocation = "base:fluids/molten_flowing";
		}
		else
		{
			fluide.material = <blockmaterial:water>;
			fluide.stillLocation = "base:fluids/liquid";
			fluide.flowingLocation = "base:fluids/liquid_flow";
		}
		fluide.register();
		print("Registered " + name + " (fluid)");
		this.thingTimes += 1;
		this.funcTimes += 1;
		return fluide;
	}

	//Register New Block (No axisAlignedBB, dropHandler, onBlockBreak, onBlockPlace, onRandomTick, onUpdateTick, passable)
	function RNB(name as string, doBeaconBase as bool, hardness as float, layer as string, material as BlockMaterial, resistance as float, soundtype as SoundType, creaTab as CreativeTab, spawnable as bool, EBRT as string, fullBlock as bool, gravity as bool, light as int, slipperiness as float, toolC as string, toolL as int, translucent as bool, wither as bool) as Block
	{
		print("Registering " + name + " (block)");
		var blocke = VanillaFactory.createBlock(name, material);
		blocke.beaconBase = doBeaconBase;
		blocke.blockHardness = hardness;
		blocke.blockLayer = layer;
		blocke.blockMaterial = material;
		blocke.blockResistance = resistance;
		blocke.blockSoundType = soundtype;
		blocke.creativeTab = creaTab;
		blocke.entitySpawnable = spawnable;
		blocke.enumBlockRenderType = EBRT;
		blocke.fullBlock = fullBlock;
		blocke.gravity = gravity;
		if (fullBlock) 
		{
			blocke.lightOpacity = 255;
		}
		else
		{
			blocke.lightOpacity = 0;
		}
		blocke.lightValue = light;
		blocke.slipperiness = slipperiness;
		blocke.toolClass = toolC;
		blocke.toolLevel = toolL;
		blocke.translucent = translucent;
		blocke.witherProof = wither;
		blocke.register();
		print("Registered " + name + " (block)");
		this.thingTimes += 1;
		this.funcTimes += 1;
		return blocke;
	}

	//Register New Item
	function RNI(name as string, beaconator as bool, creaTab as CreativeTab, glowing as bool, maxD as int, maxSZ as int, rarity as string, toolC as string, toolL as int) as Item
	{
		print("Registering " + name + " (item)");
		var iteme = VanillaFactory.createItem(name);
		iteme.beaconPayment = beaconator;
		iteme.creativeTab = creaTab;
		iteme.glowing = glowing;
		iteme.maxDamage = maxD;
		iteme.maxStackSize = maxSZ;
		iteme.rarity = rarity;
		iteme.toolClass = toolC;
		iteme.toolLevel = toolL;
		iteme.register();
		print("Registered" + name + " (item)");
		this.thingTimes += 1;
		this.funcTimes += 1;
		return iteme;
	}

	//Register New Edible-thing
	function RNE(name as string, heal as int, alwaysEdible as bool, wolf as bool, saturation as float) as ItemFood
	{
		print("Registering " + name + " (food)");
		var foode = VanillaFactory.createItemFood(name, heal);
		foode.alwaysEdible = alwayEdible;
		foode.wolfFood = wolf;
		foode.saturation = saturation;
		print("Registered " + name + " (food)");
		this.thingTimes += 1;
		this.funcTimes += 1;
		return foode;
	}
}