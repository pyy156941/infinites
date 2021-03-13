#loader contenttweaker
#priority 4

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var mle as Fluid = VanillaFactory.createFluid("molten_leather", 0xCD6839);
mle.temperature = 478;
mle.viscosity = 1445;
mle.density = 1525;
mle.luminosity = 1;
mle.stillLocation = "base:fluids/molten";
mle.flowingLocation = "base:fluids/molten_flow";
mle.material = <blockmaterial:water>;
mle.register();