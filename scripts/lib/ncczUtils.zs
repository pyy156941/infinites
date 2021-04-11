#priority 1211

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.liquid.ILiquidDefinition;
import mods.tconstruct.Melting;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Fuel;
import mods.ctutils.utils.Math;

zenClass ncczLib
{
	zenConstructor()
	{
		funcTimes = 0;
	}
	var funcTimes as int = 0;

	//Change Crafting table Recipe ShapeD
	function CCRSD(name as string, Am as int, iout as IItemStack, iin as IIngredient[][]) as int 
	{
		var Rn = name;
		recipes.remove(iout.withAmount(1), true);
		recipes.addShaped(Rn, iout.withAmount(Am), iin);
		this.funcTimes += 1;
		return 0;
	}

	//Change Crafting table Recipe ShapeD Mirrored
	function CCRSDM(name as string, Am as int, iout as IItemStack, iin as IIngredient[][]) as int 
	{
		var Rn = name;
		recipes.remove(iout.withAmount(1), true);
		recipes.addShapedMirrored(Rn, iout.withAmount(Am), iin);
		this.funcTimes += 1;
		return 0;
	}

	//Change Crafting table Recipe ShapeLess
	function CCRSL(name as string, Am as int, iout as IItemStack, iin as IIngredient[]) as int 
	{
		var Rn = name;
		recipes.remove(iout.withAmount(1), true);
		recipes.addShapeless(Rn, iout.withAmount(Am), iin);
		this.funcTimes += 1;
		return 0;
	}

	//ReMove All in Craftingtable
	function RMAC(iin as IItemStack[]) as int
	{
		for iter in iin
		{
			recipes.remove(iter);
		}
		this.funcTimes += 1;
		return 0;
	}

	//ReMove All in Furnace
	function RMAF(iin as IItemStack[]) as int
	{
		for iter in iin
		{
			furnace.remove(iter);
			furnace.setFuel(iter, 0);
		}
		this.funcTimes += 1;
		return 0;
	}

	//ReMove All in All
	function RMAA(iin as IItemStack[]) as int
	{
		for iter in iin
		{
			recipes.remove(iter);
			furnace.remove(iter);
			furnace.setFuel(iter, 0);
			
		}
		this.funcTimes += 2;
		return 0;
	}	

	//Get Definition of Fluid
	function GDF(iin as ILiquidStack) as ILiquidDefinition
	{
		val def = iin.definition;
		this.funcTimes += 1;
		return def;
	}

	//Change Smelting temPerature
	function CSP(imd as IItemStack ,iin as ILiquidStack, iing as IIngredient, newTemp as int) as int
	{
		Melting.removeRecipe(iin, imd);
		Melting.addRecipe(iin, iing, newTemp);
		this.funcTimes += 1;
		return 0;
	}

	//Add Smeltery Fuel
	function ASF(iin as ILiquidStack, durat as int, temp as int) as int
	{
		val def = GDF(iin);
		def.temperature = temp;
		Fuel.registerFuel(iin, durat);
	}

	
}