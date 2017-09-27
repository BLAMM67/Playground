import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;
import mods.tconstruct.Smeltery;
import mods.vanilla.HarvestLevel;


// Make inksacs out of black dye and a fish since squids keep getting eaten
recipes.addShapeless(<minecraft:dye>, [<terraqueous:item_main:104>, <minecraft:fish>]);

// Turn iron doors back into ingots
furnace.addRecipe(<minecraft:iron_ingot> * 6, <minecraft:iron_door>);

// Turn the deathnote into paper
recipes.addShapeless(<minecraft:paper>, [<gravestone:death_info>]);

// Turn the Armor book into book
recipes.addShapeless(<minecraft:book>, [<modifiable_armor:Modifiable Armor Book>]);

// Making spaghetti
MetalPress.addRecipe(<tconstruct:spaghetti>, <ore:cropWheat>, <immersiveengineering:mold:2>, 500, 16);

// Add recipe for reliquary items
// Rib Bone
furnace.addRecipe(<xreliquary:mob_ingredient>, <minecraft:bone_block>);
// Eye of the Storm
recipes.addShaped(<xreliquary:mob_ingredient:8>,
 [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
  [<ore:ingotGold>, <xreliquary:mob_ingredient:3>, <ore:ingotGold>],
  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
// Slime pearl
furnace.addRecipe(<xreliquary:mob_ingredient:4>, <ore:blockSlime>);
// Nebulous heart
recipes.addShaped(<xreliquary:mob_ingredient:11>,
 [[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>],
  [<minecraft:ender_pearl>, <xreliquary:mob_ingredient:6>, <minecraft:ender_pearl>],
  [<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>]]);

// Cook NetherEx netherrack
furnace.addRecipe(<minecraft:netherbrick>, <nex:netherrack>);
furnace.addRecipe(<minecraft:netherbrick>, <nex:netherrack:1>);
furnace.addRecipe(<minecraft:netherbrick>, <nex:netherrack:2>);

//Increase harvest level of nether randomite to cobalt
HarvestLevel.set(<randomore:BlockRandomiteOreNether>, "pickaxe", 4);

// Let's make a use for the vanilla tools
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_axe>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_hoe>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_pickaxe>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_shovel>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_sword>.anyDamage(), 1000);

Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_axe>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_hoe>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_pickaxe>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_shovel>.anyDamage(), 1000);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_sword>.anyDamage(), 1000);

// Need a recipe for the Modifiable Armor springs
recipes.addShaped(<modifiable_armor:Spring>,
 [[<ore:ingotIron>, <ore:ingotIron>, null],
  [null, <ore:ingotIron>, <ore:ingotIron>],
  [<ore:ingotIron>, <ore:ingotIron>, null]]);

// Integerate tin with the smeltery
Smeltery.addMelting(<liquid:tin> * 288, <ore:oreTin>, 1000);
Smeltery.addMelting(<liquid:tin> * 144, <ore:ingotTin>, 1000);
Smeltery.addMelting(<liquid:tin> * 1296, <ore:blockTin>, 1000);
Casting.addBasinRecipe(<chisel:blockTin>, <liquid:tin> * 1296, null, false, 100);
Casting.addTableRecipe(<projectred-core:resource_item:101>, <liquid:tin> * 144, <tconstruct:cast_custom>, false, 40);
