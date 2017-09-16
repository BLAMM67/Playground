import mods.immersiveengineering.MetalPress;


// Make inksacs out of black dye and a fish since squids keep getting eaten
recipes.addShapeless(<minecraft:dye>, [<terraqueous:item_main:104>, <minecraft:fish>]);

// Turn iron doors back into ingots
furnace.addRecipe(<minecraft:iron_ingot> * 6, <minecraft:iron_door>);

// Turn the deathnote into paper
recipes.addShapeless(<minecraft:paper>, [<gravestone:death_info>]);

// Modifying the Box of Eternal Closure for a game
recipes.remove(<evilcraft:boxOfEternalClosure>);
val potion = <minecraft:potion>;
val weaknessPotion = potion.withTag({Potion:"minecraft:weakness"});
recipes.addShaped(<evilcraft:boxOfEternalClosure>,
 [[<evilcraft:darkGemCrushed>, <evilcraft:darkPowerGem>, <evilcraft:darkGemCrushed>],
  [weaknessPotion, <minecraft:ender_chest>, weaknessPotion],
  [<evilcraft:darkGemCrushed>, <evilcraft:darkPowerGem>, <evilcraft:darkGemCrushed>]]);

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
