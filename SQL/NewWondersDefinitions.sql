----------------------------------------------------
-- Main file for all Wonders
-- Dec 9, 2017: Created, Infixo
-- Jan 6, 2020: Improved, adan_eslavo
--============================================--
-- Promotion Icons Atlas
--============================================--
INSERT INTO IconTextureAtlases	
			(Atlas,								IconSize,	Filename,						IconsPerRow,	IconsPerColumn) 
VALUES		('NEW_WONDERS_PROMO_ICON_ATLAS',	256,		'WonderPromotionIcons_256.dds',	'2',			'1'),
			('NEW_WONDERS_PROMO_ICON_ATLAS',	64,			'WonderPromotionIcons_64.dds',	'2',			'1'),
			('NEW_WONDERS_PROMO_ICON_ATLAS',	45,			'WonderPromotionIcons_45.dds',	'2',			'1'),
			('NEW_WONDERS_PROMO_ICON_ATLAS',	32,			'WonderPromotionIcons_32.dds',	'2',			'1'),
			('NEW_WONDERS_PROMO_ICON_ATLAS',	16,			'WonderPromotionIcons_16.dds',	'2',			'1');
--============================================--
-- HELP
--============================================--
-- Water - city must be built NEXT TO a COAST tile or LAKE tile (MinAreaSize=10 is Sea, MinAreaSize=1 is Lake)
-- River - city must be built NEXT TO a RIVER
-- FreshWater - city must be built next to a RIVER or adjacent to a LAKE or OASIS tile
-- Mountain - city must be built NEXT TO a MOUNTAIN tile
-- NearbyMountainRequired - city must be built WITHIN 2 TILES OF a MOUNTAIN tile, Mountain must be within cultural borders
-- Hill - city must be built ON a HILL tile
-- Flat - city MUST NOT be built ON a HILL tile
-- HolyCity
-- (VP) IsNoWater - restricts Fresh Water (River, Lake)
-- (VP) IsNoRiver
-- (VP) AnyWater - requires any type of water (Lake, Coast, River)
-- (VP) CapitalOnly
-- (VP) ResourceType - allows for Building to be unlocked by a specific resource being owned (can be strategic or luxury)
-- (VP) RequiresRail - rail connection
--============================================--
-- NEOLITHIC ERA
--============================================--
-- ALTAMIRA CAVE (NEW)
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_ALTAMIRA';
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_ALTAMIRA';
	UPDATE Buildings SET NearbyMountainRequired = 1 WHERE Type = 'BUILDING_ALTAMIRA';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,			ResourceType) 
	VALUES		('BUILDING_ALTAMIRA',	'RESOURCE_BISON'),
				('BUILDING_ALTAMIRA',	'RESOURCE_DEER');
	---------------------------------------------------------	
	UPDATE Buildings SET Defense = 500, GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT', GreatWorkCount = 1, EnhancedYieldTech = 'TECH_ARCHAEOLOGY' WHERE Type = 'BUILDING_ALTAMIRA';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_ALTAMIRA',	'YIELD_CULTURE',	1);

	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,			ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_ALTAMIRA',	'RESOURCE_BISON',	'YIELD_FOOD',		1),
				('BUILDING_ALTAMIRA',	'RESOURCE_DEER',	'YIELD_FOOD',		1),
				('BUILDING_ALTAMIRA',	'RESOURCE_BISON',	'YIELD_CULTURE',	1),
				('BUILDING_ALTAMIRA',	'RESOURCE_DEER',	'YIELD_CULTURE',	1);
				
	INSERT INTO Building_TechEnhancedYieldChanges
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_ALTAMIRA',	'YIELD_CULTURE',	3);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor) 
	VALUES		('BUILDING_ALTAMIRA',	'FLAVOR_CITY_DEFENSE',	10),
				('BUILDING_ALTAMIRA',	'FLAVOR_CULTURE',		50),
				('BUILDING_ALTAMIRA',	'FLAVOR_GROWTH',		30);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_ALTAMIRA',			'Altamira Cave'),
				('TXT_KEY_WONDER_ALTAMIRA_HELP',		'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Resource: [ICON_RES_BISON] [COLOR_CYAN]Bison[ENDCOLOR]/[ICON_RES_DEER] [COLOR_CYAN]Deer[ENDCOLOR].[NEWLINE][NEWLINE]Contains 1 slot for [ICON_GREAT_WORK] Great Work of Art or Artifact.[NEWLINE][NEWLINE]Nearby [ICON_RES_BISON] Bison: +1 [ICON_FOOD] Food and +1 [ICON_CULTURE] Culture.[NEWLINE]Nearby [ICON_RES_DEER] Deer: +1 [ICON_FOOD] Food and +1 [ICON_CULTURE] Culture.'),
				('TXT_KEY_WONDER_ALTAMIRA_HELP_CUT',	'Contains 1 slot for [ICON_GREAT_WORK] Great Work of Art or Artifact.[NEWLINE][NEWLINE]Nearby [ICON_RES_BISON] Bison: +1 [ICON_FOOD] Food and +1 [ICON_CULTURE] Culture.[NEWLINE]Nearby [ICON_RES_DEER] Deer: +1 [ICON_FOOD] Food and +1 [ICON_CULTURE] Culture.'),
				('TXT_KEY_WONDER_ALTAMIRA_QUOTE',		'[NEWLINE]"After Altamira everything seems decadent."[NEWLINE] - Pablo Picasso[NEWLINE]'),
				('TXT_KEY_WONDER_ALTAMIRA_PEDIA',		'Altamira Cave is approximately 1,000 m (3,280.84 ft) meters long and consists of a series of twisting passages and chambers. The main passage varies from two to six meters in height. The cave was formed through collapses following early karst phenomena in the calcareous rock of Mount Vispieres. Archaeological excavations in the cave floor found rich deposits of artifacts from the Upper Solutrean (c. 18,500 years ago) and Lower Magdalenian (between c. 16,590 and 14,000 years ago). Both periods belong to the Paleolithic or Old Stone Age. In the two millennia between these two occupations, the cave was evidently inhabited only by wild animals. Human occupants of the site were well-positioned to take advantage of the rich wildlife that grazed in the valleys of the surrounding mountains as well as the marine life available in nearby coastal areas. Around 13,000 years ago a rockfall sealed the cave''s entrance, preserving its contents until its eventual discovery, which occurred after a nearby tree fell and disturbed the fallen rocks. Human occupation was limited to the cave mouth, although paintings were created throughout the length of the cave. The artists used charcoal and ochre or hematite to create the images, often diluting these pigments to produce variations in intensity and creating an impression of chiaroscuro. They also exploited the natural contours of the cave walls to give their subjects a three-dimensional effect. The Polychrome Ceiling is the most impressive feature of the cave, depicting a herd of extinct steppe bison (Bison priscus) in different poses, two horses, a large doe, and possibly a wild boar. Dated to the Magdalenian occupation, these paintings include abstract shapes in addition to animal subjects. Solutrean paintings include images of horses and goats, as well as handprints that were created when artists placed their hands on the cave wall and blew pigment over them to leave a negative image. Numerous other caves in northern Spain contain Paleolithic art, but none is as complex or well-populated as Altamira.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GGANTIJA (NEW)
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE',	NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_GGANTIJA';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_GGANTIJA';
	UPDATE Buildings SET Hill = 1, NearbyTerrainRequired = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_GGANTIJA';
	
	-- + Farm(2) (lua)
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,		Yield)
	VALUES		('BUILDING_GGANTIJA',	'YIELD_FAITH',	2);

	INSERT INTO Building_ImprovementYieldChangesGlobal 
				(BuildingType,			ImprovementType,	YieldType,		Yield) 
	VALUES		('BUILDING_GGANTIJA',	'IMPROVEMENT_FARM',	'YIELD_FOOD',	1);

	INSERT INTO Building_InstantYield
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_GGANTIJA',	'YIELD_FOOD',	50);
	
	INSERT INTO Building_YieldFromYieldPercent
				(BuildingType,			YieldIn,		YieldOut,		Value) 
	VALUES		('BUILDING_GGANTIJA',	'YIELD_FAITH',	'YIELD_FOOD',	10);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors
				(BuildingType,			FlavorType,			Flavor)
	VALUES		('BUILDING_GGANTIJA',	'FLAVOR_RELIGION',	10),
				('BUILDING_GGANTIJA',	'FLAVOR_GROWTH',	60);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_GGANTIJA',			'Ggantija'),
				('TXT_KEY_WONDER_GGANTIJA_HELP',		'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]2 Farms[ENDCOLOR].[NEWLINE][NEWLINE]Grants 50 [ICON_FOOD] Food after construction. Converts 10% [ICON_PEACE] Faith produced by this City into [ICON_FOOD] Food. All Farms in the Empire receive +1 [ICON_FOOD] Food.'),
				('TXT_KEY_WONDER_GGANTIJA_HELP_CUT',	'Grants 50 [ICON_FOOD] Food after construction. Converts 10% [ICON_PEACE] Faith produced by this City into [ICON_FOOD] Food. All Farms in the Empire receive +1 [ICON_FOOD] Food.'),
				('TXT_KEY_WONDER_GGANTIJA_QUOTE',		'[NEWLINE]"We need to find God, and he cannot be found in noise and restlessness. God is the friend of silence. See how nature - trees, flowers, grass - grows in silence; see the stars, the moon and the sun, how they move in silence... We need silence to be able to touch souls."[NEWLINE] - Mother Teresa[NEWLINE]'),
				('TXT_KEY_WONDER_GGANTIJA_PEDIA',		'Ggantija (Giants'' Tower) is a megalithic temple complex in Malta on the Mediterranean island of Gozo. Its makers erected the two Ggantija temples during the Neolithic Age (c. 3600-2500 BC), which makes the buildings more than 5500 years old and the world''s second oldest manmade religious structures, after Gobekli Tepe. The temples were possibly the site of a Fertility cult - archeologists believe that the numerous figurines and statues found on site are connected with that cult.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GOEBEKLI TEPE (NEW)
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_GOEBEKLI_TEPE';
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_GOEBEKLI_TEPE';
	UPDATE Buildings SET NearbyMountainRequired = 1, IsNoWater = 1 WHERE Type = 'BUILDING_GOEBEKLI_TEPE';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_GOEBEKLI_TEPE',	'YIELD_CULTURE',	1),
				('BUILDING_GOEBEKLI_TEPE',	'YIELD_SCIENCE',	1),
				('BUILDING_GOEBEKLI_TEPE',	'YIELD_FAITH',		1);

	INSERT INTO Building_ResourceYieldChangesGlobal
				(BuildingType,				ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_GOEBEKLI_TEPE',	'RESOURCE_STONE',	'YIELD_SCIENCE',	1);

	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,				TerrainType,		YieldType,			Yield) 
	VALUES		('BUILDING_GOEBEKLI_TEPE',	'TERRAIN_MOUNTAIN', 'YIELD_FAITH',		1),
				('BUILDING_GOEBEKLI_TEPE',	'TERRAIN_MOUNTAIN', 'YIELD_SCIENCE',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,			Flavor) 
	VALUES		('BUILDING_GOEBEKLI_TEPE',	'FLAVOR_CULTURE',	10),
				('BUILDING_GOEBEKLI_TEPE',	'FLAVOR_SCIENCE',	40),
				('BUILDING_GOEBEKLI_TEPE',	'FLAVOR_RELIGION',	40);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_GOEBEKLI_TEPE',			'Goebekli Tepe'),
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP',		'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR].[NEWLINE][NEWLINE]+1 [ICON_RESEARCH] Science and +1 [ICON_PEACE] Faith from Mountains worked by this City.[NEWLINE][NEWLINE]All [ICON_RES_STONE] Stone: +1 [ICON_RESEARCH] Science.'),
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP_CUT',	'+1 [ICON_RESEARCH] Science and +1 [ICON_PEACE] Faith from Mountains worked by this City.[NEWLINE][NEWLINE]All [ICON_RES_STONE] Stone: +1 [ICON_RESEARCH] Science.'),
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_QUOTE',		'[NEWLINE]"Look up at the stars and not down at your feet. Try to make sense of what you see, and wonder about what makes the universe exist. Be curious."[NEWLINE] - Stephen Hawking[NEWLINE]'),
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_PEDIA',		'Göbekli Tepe is a religious site located in southern Turkey, near the Syrian border. It is the oldest known religious building on earth, dating to approximately 10000 BCE, during the Neolithic age of Human civilization, and predating all major civilizations and cities by several millenia. It was first observed during the 1960''s, when archeologists noted that the hill could not be natural due to the shape, yet dismissed it as a Byzantine burial ground. This belief persisted until 1994, and not excavated until a year later. The complex is similar in form to Stonehenge, with a round shape and large Monolithic stones. However, unlike Stonehenge, many of the pillars are carved with the figures of several animals, which are believed to have been sacred to the hunter-gatherers which constructed Göbekli Tepe.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MAJORVILLE MEDICINE WHEEL (NEW)
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_MAJORVILLE';
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_MAJORVILLE';
	UPDATE Buildings SET Hill = 1, NearbyTerrainRequired = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_MAJORVILLE';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_MAJORVILLE',	'YIELD_FAITH',		1),
				('BUILDING_MAJORVILLE',	'YIELD_SCIENCE',	1);
	
	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,			TerrainType,		YieldType,		Yield) 
	VALUES		('BUILDING_MAJORVILLE',	'TERRAIN_TUNDRA',	'YIELD_FAITH',	1);

	INSERT INTO Building_ImprovementYieldChangesGlobal 
				(BuildingType,			ImprovementType,	YieldType,		Yield) 
	VALUES		('BUILDING_MAJORVILLE',	'IMPROVEMENT_CAMP',	'YIELD_FOOD',	1);

	INSERT INTO Building_ResourceYieldChangesGlobal 
				(BuildingType,			ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_MAJORVILLE', 'RESOURCE_BISON',	'YIELD_CULTURE',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_MAJORVILLE',	'FLAVOR_SCIENCE',		10),
				('BUILDING_MAJORVILLE',	'FLAVOR_RELIGION',		30),
				('BUILDING_MAJORVILLE',	'FLAVOR_CULTURE',		30),
				('BUILDING_MAJORVILLE',	'FLAVOR_GROWTH',		30);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_MAJORVILLE',			'Majorville Medicine Wheel'),
				('TXT_KEY_WONDER_MAJORVILLE_HELP',		'Terrain: [COLOR_CYAN]Tundra[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR].[NEWLINE][NEWLINE]+1 [ICON_PEACE] Faith from Tundra tiles worked by this City. All Camps in the Empire receive +1 [ICON_FOOD] Food.[NEWLINE][NEWLINE]All [ICON_RES_BISON] Bison: +1 [ICON_CULTURE] Culture.'),
				('TXT_KEY_WONDER_MAJORVILLE_HELP_CUT',	'+1 [ICON_PEACE] Faith from Tundra tiles worked by this City. All Camps in the Empire receive +1 [ICON_FOOD] Food.[NEWLINE][NEWLINE]All [ICON_RES_BISON] Bison: +1 [ICON_CULTURE] Culture.'),
				('TXT_KEY_WONDER_MAJORVILLE_QUOTE',		'[NEWLINE]"When the Earth is sick, the animals will begin to disappear, when that happens, The Warriors of the Rainbow will come to save them."[NEWLINE] - Chief Seattle[NEWLINE]'),
				('TXT_KEY_WONDER_MAJORVILLE_PEDIA',		'The Majorville Medicine Wheel is an archaeological site of the Blackfeet nation dating to 3200 BCE. It is a round stone cairn connected to a cobble circle by 28 stone spokes. Traditionally, in certain Native American cultures, medicine wheels are metaphors for a variety of spiritual concepts. However, as it is believed that the Majorville Medicine Wheel was improved upon for successive generations, the precise meaning of the wheel may differ for each generation. Offerings found at the site included sweet grass, willow, cloth, tobacco, and iniskim stones ("buffalo calling stones").');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MOHENJO-DARO (NEW)
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_MOHENJO_DARO';
	UPDATE Buildings SET WonderSplashAnchor = 'C,B' WHERE Type = 'BUILDING_MOHENJO_DARO';
	UPDATE Buildings SET River = 1, NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_MOHENJO_DARO';
	---------------------------------------------------------	
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_WELL' WHERE Type = 'BUILDING_MOHENJO_DARO';
	
	INSERT INTO Building_YieldChanges
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_MOHENJO_DARO',	'YIELD_CULTURE',	2),
				('BUILDING_MOHENJO_DARO',	'YIELD_FAITH',		1),
				('BUILDING_MOHENJO_DARO',	'YIELD_FOOD',		1);

	INSERT INTO Building_RiverPlotYieldChanges
				(BuildingType,				YieldType,		Yield) 
	VALUES		('BUILDING_MOHENJO_DARO',	'YIELD_FOOD',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_MOHENJO_DARO',	'FLAVOR_CULTURE',		20),
				('BUILDING_MOHENJO_DARO',	'FLAVOR_RELIGION',		30),
				('BUILDING_MOHENJO_DARO',	'FLAVOR_GROWTH',		50);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_MOHENJO_DARO',			'Mohenjo-daro'),
				('TXT_KEY_WONDER_MOHENJO_DARO_HELP',		'Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Well in the City in which it is built. +1 [ICON_FOOD] Food from River tiles worked by this City.'),
				('TXT_KEY_WONDER_MOHENJO_DARO_HELP_CUT',	'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Well in the City in which it is built. +1 [ICON_FOOD] Food from River tiles worked by this City.'),
				('TXT_KEY_WONDER_MOHENJO_DARO_QUOTE',		'[NEWLINE]"A river is an ocean in a desert."[NEWLINE] - Matshona Dhliwayo[NEWLINE]'),
				('TXT_KEY_WONDER_MOHENJO_DARO_PEDIA',		'Built sometime around 2500 BC, Mohenjo-daro was one of the largest of the Harappan civilization’s settlements, center of a thriving culture that spanned northern India and Pakistan. While the Egyptians were building pyramids for their pharaohs and the Minoans were leaping over bulls for sport, the 40,000 (or so) citizens of Mohenjo-daro were building striking structures of fired and mortared brick: public baths, a central market with a public well, spacious homes, a great granary (with air ducts to dry the grain), the “Pillared Hall” for assemblies, and the “College Hall” (78 rooms thought to have been a residence for priests). Mohenjo-daro was the most advanced city of its time, with remarkably sophisticated civil engineering and urban planning. When the Harappan civilization went into a sudden – and as yet unexplained, although historians have lots of theories – decline around 1900 BC, Mohenjo-daro was gradually abandoned, to be lost until 1920 AD. (Adapted from Sid Meier''s Civilization 6)');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- SKARA BRAE (NEW)
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_SKARA_BRAE';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_SKARA_BRAE';
	UPDATE Buildings SET Flat = 1, Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_SKARA_BRAE';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType, ResourceType) 
	VALUES		('BUILDING_SKARA_BRAE', 'RESOURCE_FISH'),
				('BUILDING_SKARA_BRAE', 'RESOURCE_COW'),
				('BUILDING_SKARA_BRAE', 'RESOURCE_WHEAT'),
				('BUILDING_SKARA_BRAE', 'RESOURCE_SHEEP');
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_SKARA_BRAE', 'YIELD_PRODUCTION',	1),
				('BUILDING_SKARA_BRAE', 'YIELD_FOOD',		1);
	
	INSERT INTO Building_ResourceYieldChangesGlobal 
				(BuildingType,			ResourceType,		YieldType,		Yield) 
	VALUES		('BUILDING_SKARA_BRAE', 'RESOURCE_FISH',	'YIELD_FOOD',	1),
				('BUILDING_SKARA_BRAE', 'RESOURCE_COW',		'YIELD_FOOD',	1),
				('BUILDING_SKARA_BRAE', 'RESOURCE_WHEAT',	'YIELD_FOOD',	1),
				('BUILDING_SKARA_BRAE', 'RESOURCE_SHEEP',	'YIELD_FOOD',	1);
	
	INSERT INTO Building_ImprovementYieldChangesGlobal 
				(BuildingType,			ImprovementType,			YieldType,			Yield) 
	VALUES		('BUILDING_SKARA_BRAE',	'IMPROVEMENT_TRADING_POST',	'YIELD_PRODUCTION',	1),
				('BUILDING_SKARA_BRAE',	'IMPROVEMENT_TRADING_POST',	'YIELD_GOLD',		1);
---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,					Flavor) 
	VALUES		('BUILDING_SKARA_BRAE', 'FLAVOR_PRODUCTION',		20),
				('BUILDING_SKARA_BRAE', 'FLAVOR_GROWTH',			60),
				('BUILDING_SKARA_BRAE', 'FLAVOR_GOLD',				20),
				('BUILDING_SKARA_BRAE', 'FLAVOR_TILE_IMPROVEMENT',	20);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag, Text)
	VALUES		('TXT_KEY_BUILDING_SKARA_BRAE',			'Skara Brae'),
				('TXT_KEY_WONDER_SKARA_BRAE_HELP',		'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Resource: [ICON_RES_COW] [COLOR_CYAN]Cattle[ENDCOLOR], [ICON_RES_FISH] [COLOR_CYAN]Fish[ENDCOLOR], [ICON_RES_SHEEP] [COLOR_CYAN]Sheep[ENDCOLOR] or [ICON_RES_WHEAT] [COLOR_CYAN]Wheat[ENDCOLOR].[NEWLINE][NEWLINE]All Villages in the Empire receive +1 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold.[NEWLINE][NEWLINE]All [ICON_RES_COW] Cattle: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_FISH] Fish: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_SHEEP] Sheep: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_WHEAT] Wheat: +1 [ICON_FOOD] Food.'),
				('TXT_KEY_WONDER_SKARA_BRAE_HELP_CUT',  'All Villages in the Empire receive +1 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold.[NEWLINE][NEWLINE]All [ICON_RES_COW] Cattle: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_FISH] Fish: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_SHEEP] Sheep: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_WHEAT] Wheat: +1 [ICON_FOOD] Food.'),
				('TXT_KEY_WONDER_SKARA_BRAE_QUOTE',		'[NEWLINE]"No great thing is created suddenly."[NEWLINE] - Epictetus[NEWLINE]'),
				('TXT_KEY_WONDER_SKARA_BRAE_PEDIA',		'Skara Brae is a stone-built Neolithic settlement, located on the Bay of Skaill on the west coast of Mainland, the largest island in the Orkney archipelago of Scotland. It consists of eight clustered houses, and was occupied from roughly 3180 BC - 2500 BC.[NEWLINE][NEWLINE]Given the number of homes, it seems likely that no more than fifty people lived in Skara Brae at any given time. Apart from being makers and users of grooved ware, a distinctive style of pottery that appeared in northern Scotland not long before the establishment of the village, they were primarily pastorialists who raised cattle and sheep.');
--============================================--
-- ANCIENT ERA
--============================================--
-- KARNAK (NEW)
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_KARNAK';
	UPDATE Buildings SET Cost = 150, PrereqTech = 'TECH_POTTERY',	NumPoliciesNeeded = 0, MaxStartEra = 'ERA_CLASSICAL' WHERE Type = 'BUILDING_KARNAK';
	UPDATE Buildings SET NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_KARNAK';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,			FeatureType) 
	VALUES		('BUILDING_KARNAK',		'FEATURE_OASIS'),
				('BUILDING_KARNAK',		'FEATURE_FLOOD_PLAINS');
	---------------------------------------------------------	
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_MONUMENT', EnhancedYieldTech = 'TECH_ARCHAEOLOGY', TechEnhancedTourism = 4 WHERE Type = 'BUILDING_KARNAK';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,			Yield) 
	VALUES		('BUILDING_KARNAK', 'YIELD_FOOD',		1),
				('BUILDING_KARNAK', 'YIELD_FAITH',		1),
				('BUILDING_KARNAK', 'YIELD_CULTURE',	1);
	
	INSERT INTO Building_YieldPerXFeatureTimes100 
				(BuildingType,		FeatureType,			YieldType,				Yield) 
	VALUES		('BUILDING_KARNAK', 'FEATURE_FLOOD_PLAINS', 'YIELD_PRODUCTION',		50),
				('BUILDING_KARNAK', 'FEATURE_FLOOD_PLAINS', 'YIELD_FAITH',			50);

	INSERT INTO Building_FeatureYieldChanges 
				(BuildingType,		FeatureType,			YieldType,				Yield) 
	VALUES		('BUILDING_KARNAK', 'FEATURE_OASIS',		'YIELD_PRODUCTION',		1),
				('BUILDING_KARNAK', 'FEATURE_OASIS',		'YIELD_FAITH',			1);
	
	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,		BuildingClassType,			YieldType,			YieldChange) 
	VALUES		('BUILDING_KARNAK',	'BUILDINGCLASS_MONUMENT',	'YIELD_CULTURE',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,				Flavor) 
	VALUES		('BUILDING_KARNAK', 'FLAVOR_CULTURE',		40),
				('BUILDING_KARNAK', 'FLAVOR_RELIGION',		40),
				('BUILDING_KARNAK', 'FLAVOR_GROWTH',		40);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_KARNAK',			'Karnak'),
				('TXT_KEY_WONDER_KARNAK_HELP',		'Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Feature: [COLOR_CYAN]Flood Plains[ENDCOLOR]/[COLOR_CYAN]Oasis[ENDCOLOR].[NEWLINE][NEWLINE]Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monument in the City in which it is built and all Monuments in the Empire receive +1 [ICON_CULTURE] Culture. +1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith from each Oasis and every 2 Flood Plains worked by this City. +4 [ICON_TOURISM] Tourism with [COLOR_CYAN]Archeology[ENDCOLOR].'),
				('TXT_KEY_WONDER_KARNAK_HELP_CUT',  'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monument in the City in which it is built and all Monuments in the Empire receive +1 [ICON_CULTURE] Culture. +1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith from each Oasis and every 2 Flood Plains worked by this City. +4 [ICON_TOURISM] Tourism with [COLOR_CYAN]Archeology[ENDCOLOR].'),
				('TXT_KEY_WONDER_KARNAK_QUOTE',		'[NEWLINE]"I was sitting in the Temple of Karnak of the Nile, as the sun was going down, and I was all alone, and the great Hypostyle Hall was full of shadows and ghosts of the past, (...) and if you believe that, you''ll believe anything."[NEWLINE] - Wilbur A. Smith[NEWLINE]'),
				('TXT_KEY_WONDER_KARNAK_PEDIA',		'Karnak is a large temple complex located in Thebes (nowadays is Luxor). It was constructed during the reign of Ramesses II as a place of worship for many different gods and goddesses, instead of focusing on just one member of the Egyptian Pantheon.[NEWLINE][NEWLINE]  The complex is a vast open-air museum, and the second largest ancient religious site in the world (after the Angkor Wat in Cambodia). It is believed to be the second most visited historical site in Egypt, only the Giza Pyramids near Cairo receive more visits.[NEWLINE][NEWLINE]  One famous aspect of Karnak is the Hypostyle Hall in the Precinct of Amun-Re, a hall area of 50,000 sq ft (5,000 m2) with 134 massive columns arranged in 16 rows. 122 of these columns are 10 meters tall, and the other 12 are 21 meters tall with a diameter of over three meters.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- STONEHENGE
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_STONEHENGE';
	UPDATE Buildings SET NearbyTerrainRequired = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_STONEHENGE';
	UPDATE Buildings SET Flat = 1 WHERE Type = 'BUILDING_STONEHENGE';

	-- +Road(2) (lua)
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_BUILDING_STONEHENGE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_STONEHENGE_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Improvement: [COLOR_CYAN]Road[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_STONEHENGE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- NAZCA LINES (NEW)
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_NAZCA';
	UPDATE Buildings SET Cost = 150, PrereqTech = 'TECH_TRAPPING',	NumPoliciesNeeded = 0, MaxStartEra = 'ERA_CLASSICAL' WHERE Type = 'BUILDING_NAZCA';
	UPDATE Buildings SET Hill = 1, NearbyTerrainRequired = 'TERRAIN_PLAINS' WHERE Type = 'BUILDING_NAZCA';
	
	-- + Camp(1) (lua)
	---------------------------------------------------------	
	UPDATE Buildings SET EnhancedYieldTech = 'TECH_FLIGHT', TechEnhancedTourism = 4, SpecialistType = 'SPECIALIST_SCIENTIST', GreatPeopleRateChange = 1 WHERE Type = 'BUILDING_NAZCA';
	
	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,		TerrainType,		YieldType,		Yield) 
	VALUES		('BUILDING_NAZCA',	'TERRAIN_PLAINS',	'YIELD_FOOD',	2);
	
	INSERT INTO Building_PlotYieldChanges 
				(BuildingType,		PlotType,		YieldType,		Yield) 
	VALUES		('BUILDING_NAZCA',	'PLOT_HILLS',	'YIELD_FAITH',	1);
	
	INSERT INTO Building_ImprovementYieldChanges 
				(BuildingType,		ImprovementType,	YieldType,			Yield) 
	VALUES		('BUILDING_NAZCA',	'IMPROVEMENT_CAMP',	'YIELD_SCIENCE',	1);

	INSERT INTO Building_TechEnhancedYieldChanges
				(BuildingType,		YieldType,			Yield) 
	VALUES		('BUILDING_NAZCA', 'YIELD_SCIENCE',		4);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,			Flavor) 
	VALUES		('BUILDING_NAZCA',	'FLAVOR_GROWTH',	60),
				('BUILDING_NAZCA',	'FLAVOR_RELIGION',	60),
				('BUILDING_NAZCA',	'FLAVOR_SCIENCE',	10),
				('BUILDING_NAZCA',	'FLAVOR_CULTURE',	10);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_NAZCA',			'Nazca Lines'),
				('TXT_KEY_WONDER_NAZCA_HELP',		'Terrain: [COLOR_CYAN]Plains[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]Camp[ENDCOLOR].[NEWLINE][NEWLINE]+2 [ICON_FOOD] Food from nearby Plains, +1 [ICON_PEACE] Faith from nearby Hills and +1 [ICON_RESEARCH] Science from Camps worked by this City. +4 [ICON_RESEARCH] Science and +2 [ICON_TOURISM] Tourism with [COLOR_CYAN]Flight[ENDCOLOR].'),
				('TXT_KEY_WONDER_NAZCA_HELP_CUT',	'+2 [ICON_FOOD] Food from nearby Plains, +1 [ICON_PEACE] Faith from nearby Hills and +1 [ICON_RESEARCH] Science from Camps worked by this City. +4 [ICON_RESEARCH] Science and +2 [ICON_TOURISM] Tourism with [COLOR_CYAN]Flight[ENDCOLOR].'),
				('TXT_KEY_WONDER_NAZCA_QUOTE',		'[NEWLINE]"The true mystery of the world is the visible, not the invisible."[NEWLINE] - Oscar Wilde[NEWLINE]'),
				('TXT_KEY_WONDER_NAZCA_PEDIA',		'The Nazca Lines, located between the Peruvian towns of Nazca and Palpa, are a series of enormous Geoglyphs designed on a large plateau, spanning over 80 kilometres. The designs have long been a source of mystery for those who have gazed upon them. It is estimated that the lines were constructed by the Nazca culture, hense the name, between 450 and 600 CE. The level of complexity of design varies between designs. Some are simple lines hundreds of metres long, while others are incredibly complex patterns resembling a variety of zoological designs - Monkeys, Condors, Spiders and Orca (Killer whale) to name but a few.[NEWLINE][NEWLINE]  The Nazca Lines are particularily popular amongst circles which believe in the existance of extra-terrestrial life, which the Nazca culture mistook for their gods. They believe that the simpler, straight lines are in fact landing strips for interstellar crafts used by the extra-terrestrials to land, and that a humanoid figure represented in the patterns is one of the extraterrestrials. Modern science has had a range of theories, amongst which the lines serving a purpose similar to that of Stonehenge as an early form of an observatory / astronomical calendar. Other theories were that the geometric lines could indicate the flow of water, irrigation schemes, or be a part of rituals to "summon" water. However, to this day the exact purpose of the lines remains a mystery.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PYRAMIDS
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_PYRAMID';
	UPDATE Buildings SET River = 1, Flat = 1, ProhibitedCityTerrain = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_PYRAMID';
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_CHICHEN_ITZA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_CHICHEN_ITZA_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Tundra[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Snow[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_CHICHEN_ITZA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- WIELICZKA (NEW)
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_WIELICZKA';
	UPDATE Buildings SET Cost = 150, PrereqTech = 'TECH_MINING', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_CLASSICAL' WHERE Type = 'BUILDING_WIELICZKA';
	UPDATE Buildings SET Hill = 1 WHERE Type = 'BUILDING_WIELICZKA';
	
	-- + Mine(2) lua
	---------------------------------------------------------	
	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,			ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_WIELICZKA',	'RESOURCE_SALT',	'YIELD_PRODUCTION',	1),
				('BUILDING_WIELICZKA',	'RESOURCE_SALT',	'YIELD_GOLD',	1);
	
	INSERT INTO Building_ResourcePlotsToPlace
				(BuildingType,			ResourceType,		NumPlots) 
	VALUES		('BUILDING_WIELICZKA',	'RESOURCE_SALT',	2);

	INSERT INTO Building_GlobalYieldModifiers 
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_WIELICZKA',	'YIELD_FOOD',	5);
	
	INSERT INTO Building_ImprovementYieldChanges 
				(BuildingType,			ImprovementType,	YieldType,		Yield) 
	VALUES		('BUILDING_WIELICZKA',	'IMPROVEMENT_MINE',	'YIELD_FOOD',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor) 
	VALUES		('BUILDING_WIELICZKA',	'FLAVOR_GROWTH',		50),
				('BUILDING_WIELICZKA',	'FLAVOR_PRODUCTION',	10),
				('BUILDING_WIELICZKA',	'FLAVOR_GOLD',			20),
				('BUILDING_WIELICZKA',	'FLAVOR_HAPPINESS',		20);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_WIELICZKA',			'Wieliczka Salt Mine'),
				('TXT_KEY_WONDER_WIELICZKA_HELP',		'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]2 Mines[ENDCOLOR].[NEWLINE][NEWLINE]Wonder places 2 new [ICON_RES_SALT] Salt resources inside City range if possible. +5% [ICON_FOOD] Food in all Cities. +1 [ICON_FOOD] Food from Mines worked by this City.[NEWLINE][NEWLINE]Nearby [ICON_RES_SALT] Salt: +1 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold.'),
				('TXT_KEY_WONDER_WIELICZKA_HELP_CUT',	'Wonder places 2 new [ICON_RES_SALT] Salt resources inside City range if possible. +5% [ICON_FOOD] Food in all Cities. +1 [ICON_FOOD] Food from Mines worked by this City.[NEWLINE][NEWLINE]Nearby [ICON_RES_SALT] Salt: +1 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold.'),
				('TXT_KEY_WONDER_WIELICZKA_QUOTE',		'[NEWLINE]"You are the salt of the earth. But remember that salt is useful when in association, but useless in isolation."[NEWLINE] - Israelmore Ayivor[NEWLINE]'),
				('TXT_KEY_WONDER_WIELICZKA_PEDIA',		'The Wieliczka Salt Mine, in the town of Wieliczka, southern Poland, lies within the Kraków metropolitan area. Sodium chloride (table salt) was formerly produced there from the upwelling brine - and had been since Neolithic times. The Wieliczka salt mine, excavated from the 13th century, produced table salt continuously until 2007, as one of the world''s oldest operating salt mines.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PETRA
	UPDATE Buildings SET WonderSplashAnchor = 'C,T' WHERE Type = 'BUILDING_PETRA';
	UPDATE Buildings SET Mountain = 1, NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_PETRA';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------	
	UPDATE Language_en_US SET Text = Substr(Text, 42, 2000) WHERE Tag ='TXT_KEY_WONDER_PETRA_HELP';
	
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_PETRA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PETRA_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Desert[ENDCOLOR], [COLOR_CYAN]Mountain (near)[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PETRA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- TEMPLE OF ARTEMIS
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';
	UPDATE Buildings SET FreshWater = 1, ProhibitedCityTerrain = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';
	
	-- + Camp(1) (lua)
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Desert[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR]; Improvement: [COLOR_CYAN]Camp[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MAUSOLEUM OF HALICARNASSUS
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS';
	UPDATE Buildings SET Water = 1, MinAreaSize = 10, Hill = 1 WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS';
	
	-- + Quarry(1) (lua)
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,												Text) 
	SELECT		'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]Quarry[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- STATUE OF ZEUS
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_STATUE_ZEUS';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,				ResourceType) 
	VALUES		('BUILDING_STATUE_ZEUS',	'RESOURCE_MARBLE'),
				('BUILDING_STATUE_ZEUS',	'RESOURCE_STONE');
	
	-- + Afraid/Guarded/Hostile/War (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_STATUE_ZEUS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_STATUE_ZEUS_HELP';
				
	UPDATE Language_en_US SET Text = 'Resource: [ICON_RES_MARBLE] [COLOR_CYAN]Marble[ENDCOLOR]/[ICON_RES_STONE] [COLOR_CYAN]Stone[ENDCOLOR]; Other Player: [COLOR_CYAN]Guarded[ENDCOLOR]/[COLOR_CYAN]Afraid[ENDCOLOR]/[COLOR_CYAN]Hostile[ENDCOLOR]/[COLOR_CYAN]Warring[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_STATUE_ZEUS_HELP';
--============================================--
-- CLASSICAL ERA
--============================================--
-- GREAT LIGHTHOUSE
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_GREAT_LIGHTHOUSE';
	UPDATE Buildings SET Water = 1, MinAreaSize = 10, River = 1 WHERE Type = 'BUILDING_GREAT_LIGHTHOUSE';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,						ResourceType) 
	VALUES		('BUILDING_GREAT_LIGHTHOUSE',		'RESOURCE_STONE');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Resource: [ICON_RES_STONE] [COLOR_CYAN]Stone[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GREAT LIBRARY
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_GREAT_LIBRARY';
	UPDATE Buildings SET Hill = 1, Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_GREAT_LIBRARY';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_GREAT_LIBRARY',	'FEATURE_FOREST'),
				('BUILDING_GREAT_LIBRARY',	'FEATURE_JUNGLE');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_GREAT_LIBRARY_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIBRARY_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR]/[COLOR_CYAN]Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GREAT_LIBRARY_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- HANGING GARDENS
	UPDATE Buildings SET WonderSplashAnchor = 'C,T' WHERE Type = 'BUILDING_HANGING_GARDEN';
	UPDATE Buildings SET Flat = 1, FreshWater = 1 WHERE Type = 'BUILDING_HANGING_GARDEN';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_HANGING_GARDEN_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HANGING_GARDEN_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HANGING_GARDEN_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- FORUM ROMANUM
	UPDATE Buildings SET WonderSplashAnchor = 'L,T', PrereqTech = 'TECH_WRITING' WHERE Type = 'BUILDING_FORUM';
	UPDATE Buildings SET AnyWater = 1 WHERE Type = 'BUILDING_FORUM';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,		FeatureType) 
	VALUES		('BUILDING_FORUM',	'FEATURE_MARSH');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_BUILDING_FORUM_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_FORUM_HELP';
				
	UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]Water[ENDCOLOR], [COLOR_CYAN]Marsh[ENDCOLOR]; Policy: [COLOR_MAGENTA]-1[ENDCOLOR][NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_FORUM_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MALWIYA MINARET (NEW)
	UPDATE Buildings SET Cost = 200, PrereqTech = 'TECH_MATHEMATICS', NumPoliciesNeeded = 4, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_MALWIYA';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_MALWIYA';
	
	UPDATE Buildings SET Flat = 1 WHERE Type = 'BUILDING_MALWIYA';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,			BuildingClassType) 
	VALUES		('BUILDING_MALWIYA',	'BUILDINGCLASS_STONE_WORKS');
	---------------------------------------------------------
	UPDATE Buildings SET SpecialistType = 'SPECIALIST_ENGINEER', GreatPeopleRateChange = 2 WHERE Type = 'BUILDING_MALWIYA';

	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_MALWIYA',	'YIELD_FAITH',		3);

	INSERT INTO Building_ImprovementYieldChangesGlobal 
				(BuildingType,			ImprovementType,			YieldType,			Yield) 
	VALUES		('BUILDING_MALWIYA',	'IMPROVEMENT_MANUFACTORY',	'YIELD_FAITH',		3),
				('BUILDING_MALWIYA',	'IMPROVEMENT_QUARRY',		'YIELD_FAITH',		1),
				('BUILDING_MALWIYA',	'IMPROVEMENT_QUARRY',		'YIELD_PRODUCTION', 1);

	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,			BuildingClassType,				YieldType,			YieldChange) 
	VALUES		('BUILDING_MALWIYA',	'BUILDINGCLASS_STONE_WORKS',	'YIELD_PRODUCTION', 2);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,					Flavor) 
	VALUES		('BUILDING_MALWIYA',	'FLAVOR_GREAT_PEOPLE',		30),
				('BUILDING_MALWIYA',	'FLAVOR_PRODUCTION',		50),
				('BUILDING_MALWIYA',	'FLAVOR_RELIGION',			60),
				('BUILDING_MALWIYA',	'FLAVOR_TILE_IMPROVEMENT',	30);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_MALWIYA',			'Malwiya Minaret'),
				('TXT_KEY_WONDER_MALWIYA_HELP',			'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Building: [COLOR_CYAN]Stone Works[ENDCOLOR].[NEWLINE][NEWLINE]All Stone Works in the Empire receive +2 [ICON_PRODUCTION] Production, all Quarries +1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith and all Manufactories +3 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_MALWIYA_HELP_CUT',		'All Stone Works in the Empire receive +2 [ICON_PRODUCTION] Production, all Quarries +1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith and all Manufactories +3 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_MALWIYA_QUOTE',		'[NEWLINE]"Aim at heaven and you will get Earth... Aim at Earth and you will get neither."[NEWLINE] - C.S. Lewis[NEWLINE]'),
				('TXT_KEY_WONDER_MALWIYA_PEDIA',		'The Malwiya Minaret (also known as the Spiral Minaret) is part of the Great Mosque of Samarra, located in Samarra, Iraq. The complex was built over a period of four years, from 848 to 852 CE. The main mosque was completed one year before the Minaret. The complex was constructed during the reign of Al-Mutawakkil, an Abbasid Caliph. For a time it was the largest mosque in the world.[NEWLINE][NEWLINE]  The minaret (tower) was constructed of sandstone, and is unique among other minarets because of its ascending spiral conical design. 52 metres high and 33 metres wide at the base, the spiral contains stairs reaching to the top. The word "malwiya" translates as "twisted" or "snail shell".[NEWLINE][NEWLINE]  With the turbulence of the Iraq war, the Malwiya Minaret has been damaged by bomb blasts, one in 2005 and one in 2011, when it was attacked by Iraqi insurgents.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- TERRACOTA ARMY
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_TERRACOTTA_ARMY';
	UPDATE Buildings SET IsNoWater = 1 WHERE Type = 'BUILDING_TERRACOTTA_ARMY';
	
	-- + IsNoCoast (lua)
	-- + Mine/Quarry(1) (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP';
				
	UPDATE Language_en_US SET Text = 'Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR]; Improvement: [COLOR_CYAN]Mine[ENDCOLOR]/[COLOR_CYAN]Quarry[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- BUDDHAS OF BAMYAN (NEW)
	UPDATE Buildings SET Cost = 200, PrereqTech = 'TECH_CONSTRUCTION', NumPoliciesNeeded = 4, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_BAMYAN';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_BAMYAN';
	
	-- + Peace (lua)
	-- + Mountains(2) (lua)
	---------------------------------------------------------
	UPDATE Buildings SET ReligiousPressureModifier = 100, EnhancedYieldTech = 'TECH_ROCKETRY', DoFToVotes = 1 WHERE Type = 'BUILDING_BAMYAN';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,					Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_CULTURE',			1),
				('BUILDING_BAMYAN', 'YIELD_FAITH',				2);
	
	INSERT INTO Building_YieldPerFriend
				(BuildingType,		YieldType,		Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_FAITH',	2);
	
	INSERT INTO Building_YieldPerAlly
				(BuildingType,		YieldType,					Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_GOLDEN_AGE_POINTS',	3);

	INSERT INTO Building_TechEnhancedYieldChanges
				(BuildingType,		YieldType,					Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_CULTURE',			2),
				('BUILDING_BAMYAN', 'YIELD_GOLDEN_AGE_POINTS',	2);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,				Flavor) 
	VALUES		('BUILDING_BAMYAN', 'FLAVOR_CULTURE',		30),
				('BUILDING_BAMYAN', 'FLAVOR_RELIGION',		60),
				('BUILDING_BAMYAN', 'FLAVOR_HAPPINESS',		40);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text)
	VALUES		('TXT_KEY_BUILDING_BAMYAN',			'Buddhas of Bamyan'),
				('TXT_KEY_WONDER_BAMYAN_HELP',		'Terrain: [COLOR_CYAN]2 Mountains[ENDCOLOR]; Player: [COLOR_CYAN]at Peace[ENDCOLOR].[NEWLINE][NEWLINE]City generates +100% Religious Pressure. +2 [ICON_PEACE] per City-State Friend and +3 [ICON_GOLDEN_AGE] per City-State Ally. +1 [ICON_INFLUENCE] World Congress Vote for each 2 Declarations of Friendship.'),
				('TXT_KEY_WONDER_BAMYAN_HELP_CUT',  'City generates +100% Religious Pressure. +2 [ICON_PEACE] per City-State Friend and +3 [ICON_GOLDEN_AGE] per City-State Ally. +1 [ICON_INFLUENCE] World Congress Vote for each 2 Declarations of Friendship.'),
				('TXT_KEY_WONDER_BAMYAN_QUOTE',		'[NEWLINE]"The past is already gone, the future is not yet here. There''s only one moment for you to live."[NEWLINE] - Buddha[NEWLINE]'),
				('TXT_KEY_WONDER_BAMYAN_PEDIA',		'Deep in the Hindu Kush, in the Bamyan Valley, along the Silk Road, the Buddhas of Bamyan once towered over the region. Bamyan was a religious site from the 2nd century until the later half of the 7th century, and the Buddhas were constructed throughout that time. The Chinese Buddhist pilgrim Xuanzang visited in 630 CE, describing Bamyan as a flourishing Buddhist center "with more than ten monstaries and more than a thousand monks". In 2001, the Buddhas were destroyed by the Taliban, either in protest of international aid priorities or as part of Islamic religious iconoclasm, to both international and domestic condemnation. Since then, international efforts have been made to reconstruct the Buddhas. Furthermore, after the destruction of the Buddhas, caves containing art from the 5th through 9th centuries were discovered, as well as Xuanzang''s translation of the Pratityasamutpada Sutra that spelled out the basic belief of Buddhism: all things are transient.While the original Buddhas of Bamyan may be gone, their message and cultural significance will echo for all eternity.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GATE OF THE SUN (NEW)
	UPDATE Buildings SET Cost = 200, PrereqTech = 'TECH_CONSTRUCTION', NumPoliciesNeeded = 4, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_GATE_OF_SUN';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_GATE_OF_SUN';

	UPDATE Buildings SET FreshWater = 1, Water = 1, MinAreaSize = 1, NearbyMountainRequired = 1 WHERE Type = 'BUILDING_GATE_OF_SUN';
	---------------------------------------------------------
	UPDATE Buildings SET GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE', GreatWorkCount = 1 WHERE Type = 'BUILDING_GATE_OF_SUN';
	
	INSERT INTO Building_YieldModifiers
				(BuildingType,					YieldType,			Yield) 
	VALUES		('BUILDING_GATE_OF_SUN_DUMMY',	'YIELD_SCIENCE',	5);

	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_GATE_OF_SUN',	'YIELD_CULTURE',	1),
				('BUILDING_GATE_OF_SUN',	'YIELD_SCIENCE',	1);

	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,				TerrainType,		YieldType,			Yield) 
	VALUES		('BUILDING_GATE_OF_SUN',	'TERRAIN_MOUNTAIN',	'YIELD_CULTURE',	1);
	
	INSERT INTO Building_LakePlotYieldChanges 
				(BuildingType,				YieldType,			Yield)
	VALUES		('BUILDING_GATE_OF_SUN',	'YIELD_CULTURE',	1);	
	
	INSERT INTO Building_GoldenAgeYieldMod 
				(BuildingType,				YieldType,			Yield)
	VALUES		('BUILDING_GATE_OF_SUN',	'YIELD_SCIENCE',	5);	
	
	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,				BuildingClassType,		YieldType,			YieldChange) 
	VALUES		('BUILDING_GATE_OF_SUN',	'BUILDINGCLASS_WALLS',	'YIELD_SCIENCE',	1);

	-- + science_per_city_with_walls (lua)
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_GATE_OF_SUN',	'FLAVOR_CULTURE',		30),
				('BUILDING_GATE_OF_SUN',	'FLAVOR_SCIENCE',		60);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_GATE_OF_SUN',			'Gate of the Sun'),
				('TXT_KEY_WONDER_GATE_OF_SUN_HELP',			'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR].[NEWLINE][NEWLINE]All Walls in the Empire receive +1 [ICON_RESEARCH] Science. +1 [ICON_CULTURE] Culture from Mountains and Lakes worked by this City. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art. +5% [ICON_RESEARCH] Science produced by this City during [ICON_GOLDEN_AGE] Golden Age and +5% [ICON_RESEARCH] Science in Cities with Walls.'),
				('TXT_KEY_WONDER_GATE_OF_SUN_HELP_CUT',		'All Walls in the Empire receive +1 [ICON_RESEARCH] Science. +1 [ICON_CULTURE] Culture from Mountains and Lakes worked by this City. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art. +5% [ICON_RESEARCH] Science produced by this City during [ICON_GOLDEN_AGE] Golden Age and +5% [ICON_RESEARCH] Science in Cities with Walls.'),
				('TXT_KEY_WONDER_GATE_OF_SUN_QUOTE',		'[NEWLINE]"May the sun set on where my love dwells."[NEWLINE] - Bolivian proverb[NEWLINE]'),
				('TXT_KEY_WONDER_GATE_OF_SUN_PEDIA',		'The Gate of the Sun is a stone arch constructed by the ancient Tiwanaku culture of Bolivia, dated to between 500-950 CE. The lintel is carved with 48 squars surrounding a central figure. The central figure is a man with his head surrounded by 24 rays. Some believe that the Gate of the Sun possesses an astronomical or astrological significance, or may have served as a calendar. No one knows for sure.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PARTHENON
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_PARTHENON';
	UPDATE Buildings SET Hill = 1, IsNoWater = 1, ProhibitedCityTerrain = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_PARTHENON';
	---------------------------------------------------------
	UPDATE Language_en_US SET Text = Substr(Text, 1, 68)||Substr(Text, 175, 2000) WHERE Tag ='TXT_KEY_WONDER_PARTHENON_HELP';
	UPDATE Language_en_US SET Text = Text||' Starts with [ICON_GREAT_WORK] [COLOR_MAGENTA]Phidias Showing the Frieze of the Parthenon to his Friends[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_PARTHENON_HELP';

	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_PARTHENON_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PARTHENON_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Grassland[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Fresh Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PARTHENON_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- EL GHRIBA SYNAGOGUE (NEW)
	UPDATE Buildings SET Cost = 250, PrereqTech = 'TECH_DRAMA', NumPoliciesNeeded = 5, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_EL_GHRIBA';
	UPDATE Buildings SET WonderSplashAnchor = 'C,B' WHERE Type = 'BUILDING_EL_GHRIBA';

	UPDATE Buildings SET ProhibitedCityTerrain = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_EL_GHRIBA';
	---------------------------------------------------------
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_SYNAGOGUE', GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT', GreatWorkCount = 1, FreeGreatWork = 'GREAT_WORK_THE_ARK' WHERE Type = 'BUILDING_EL_GHRIBA';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_EL_GHRIBA',	'YIELD_CULTURE',	1),
				('BUILDING_EL_GHRIBA',	'YIELD_GOLD',		1),
				('BUILDING_EL_GHRIBA',	'YIELD_FAITH',		4);
	
	INSERT INTO Building_YieldFromFaithPurchase
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_EL_GHRIBA',	'YIELD_GOLD',		30);
	
	INSERT INTO GreatWorks
				(Type,					Description,					GreatWorkClassType,	Audio,							Image,									Quote) 
	VALUES		('GREAT_WORK_THE_ARK',	'TXT_KEY_GREAT_WORK_THE_ARK',	'GREAT_WORK_ART',	'AS2D_GREAT_ARTIST_ARTWORK',	'Great_Work_Ark_of_the_Covenant.dds',	'TXT_KEY_GREAT_WORK_THE_ARK_QUOTE');
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,			Flavor) 
	VALUES		('BUILDING_EL_GHRIBA',	'FLAVOR_CULTURE',	30),
				('BUILDING_EL_GHRIBA',	'FLAVOR_RELIGION',	50),
				('BUILDING_EL_GHRIBA',	'FLAVOR_GOLD',		30);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_EL_GHRIBA',			'El Ghriba Synagogue'),
				('TXT_KEY_WONDER_EL_GHRIBA_HELP',		'Special: [COLOR_CYAN]Holy City[ENDCOLOR]; Terrain: [COLOR_NEGATIVE_TEXT]Tundra[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Snow[ENDCOLOR].[NEWLINE][NEWLINE]Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Synagogue in the City in which it is built. Receive 30 [ICON_GOLD] Gold from each [ICON_PEACE] Faith Purchase. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [ICON_GREAT_WORK] [COLOR_MAGENTA]Ark of the Covenant[ENDCOLOR].'),
				('TXT_KEY_WONDER_EL_GHRIBA_HELP_CUT',	'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Synagogue in the City in which it is built. Receive 30 [ICON_GOLD] Gold from each [ICON_PEACE] Faith Purchase. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [ICON_GREAT_WORK] [COLOR_MAGENTA]Ark of the Covenant[ENDCOLOR].'),
				('TXT_KEY_WONDER_EL_GHRIBA_QUOTE',		'[NEWLINE]"Jesus was born a Jew, and he died a Jew. It never occurred to him to establish a new religion. He never crossed himself: he had no reason to. He never set one foot in a church. He went to synagogue."[NEWLINE] - Amos Oz[NEWLINE]'),
				('TXT_KEY_WONDER_EL_GHRIBA_PEDIA',		'El Ghriba Synagogue, located on the Tunisian island of Djerba, is the oldest synagogue in Tunisa and the center of the village''s holy life. According to legend, it was constructed with a door and a stone from the destruction of either Solomon''s Temple in 586 BCE or the Second Temple in 70 CE. Thus, it links the local Jewish community to the ancestral heart of Judaism and remains a pilgrimage site into the modern day.'),
				('TXT_KEY_GREAT_WORK_THE_ARK',			'Ark of the Covenant'),
				('TXT_KEY_GREAT_WORK_THE_ARK_QUOTE',	'[NEWLINE]"I had it in my heart to build a house of rest [NEWLINE]for the ark of the covenant of the Lord, [NEWLINE]and for the footstool of our God."[NEWLINE] - 1 Chronicles, 28:2[NEWLINE]');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ORACLE
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_ORACLE';
	UPDATE Buildings SET Hill = 1, NearbyMountainRequired = 1, ProhibitedCityTerrain = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_ORACLE';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_ORACLE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ORACLE_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Grassland[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ORACLE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ETCHMIADZIN CATHEDRAL (NEW)
	UPDATE Buildings SET Cost = 250, PrereqTech = 'TECH_PHILOSOPHY', NumPoliciesNeeded = 5, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_ETCHMIADZIN';
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_ETCHMIADZIN';

	UPDATE Buildings SET NearbyTerrainRequired = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_ETCHMIADZIN';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_ETCHMIADZIN',	'FEATURE_FOREST');
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------
	UPDATE Buildings SET GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT', GreatWorkCount = 1, FreeGreatWork = 'GREAT_WORK_HOLY_LANCE'  WHERE Type = 'BUILDING_ETCHMIADZIN';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,					Yield) 
	VALUES		('BUILDING_ETCHMIADZIN',	'YIELD_GOLDEN_AGE_POINTS',	2),
				('BUILDING_ETCHMIADZIN',	'YIELD_FAITH',				2);
	
	INSERT INTO Building_YieldFromYieldPercent
				(BuildingType,				YieldIn,		YieldOut,					Value) 
	VALUES		('BUILDING_ETCHMIADZIN',	'YIELD_FAITH',	'YIELD_CULTURE',			10),
				('BUILDING_ETCHMIADZIN',	'YIELD_FAITH',	'YIELD_GOLDEN_AGE_POINTS',	10);
	
	INSERT INTO Building_GreatWorkYieldChanges
				(BuildingType,				YieldType,		Yield) 
	VALUES		('BUILDING_ETCHMIADZIN',	'YIELD_FAITH',	1);
	
	INSERT INTO GreatWorks
				(Type,						Description,						GreatWorkClassType,	Audio,							Image,							Quote) 
	VALUES		('GREAT_WORK_HOLY_LANCE',	'TXT_KEY_GREAT_WORK_HOLY_LANCE',	'GREAT_WORK_ART',	'AS2D_GREAT_ARTIST_ARTWORK',	'Great_Work_Holy_Lance.dds',	'TXT_KEY_GREAT_WORK_HOLY_LANCE_QUOTE');
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,			Flavor) 
	VALUES		('BUILDING_ETCHMIADZIN',	'FLAVOR_CULTURE',	50),
				('BUILDING_ETCHMIADZIN',	'FLAVOR_RELIGION',	60),
				('BUILDING_ETCHMIADZIN',	'FLAVOR_HAPPINESS',	20);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_ETCHMIADZIN',		'Etchmiadzin Cathedral'),
				('TXT_KEY_WONDER_ETCHMIADZIN_HELP',		'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]Converts 10% of [ICON_PEACE] Faith produced by this City into [ICON_CULTURE] Culture and another 10% into [ICON_GOLDEN_AGE] Golden Age Points. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [ICON_GREAT_WORK] [COLOR_MAGENTA]Holy Lance[ENDCOLOR]. All [ICON_GREAT_WORK] Great Works in the Empire receive +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_ETCHMIADZIN_HELP_CUT',	'Converts 10% of [ICON_PEACE] Faith into [ICON_CULTURE] Culture and another 10% into [ICON_GOLDEN_AGE] Golden Age Points. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [ICON_GREAT_WORK] [COLOR_MAGENTA]Holy Lance[ENDCOLOR]. All [ICON_GREAT_WORK] Great Works in the Empire receive +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_ETCHMIADZIN_QUOTE',	'[NEWLINE]"The wound of a dagger heals, but that of the tongue, never."[NEWLINE] - Armenian proverb[NEWLINE]'),
				('TXT_KEY_WONDER_ETCHMIADZIN_PEDIA',	'Located in Vagharshapat, Armenia, Etchmiadzin Cathedral is often considered the oldest cathedral in the world. Following the adoption of Christianity as the Armenian state religion by King Tiridates III, tt was built between 301 and 303 CE by Saint Gregory the Illuminator over a pagan temple. Until the second half of the fifth century, Etchmiadzin was the seat of the supreme head of the Armenian Church.[NEWLINE]Etchmiadzin was the national and political center of the Armenian people for centuries, and is considered to be holy ground. It is crucial to the Armenian identity, and remains a popular pilgrimage site today. While Shah Abbas I of Persia plundered the cathedral in an attempt to diminish Armenian cultural identity, and the cathedral''s importance was diminished under the Soviet Union, it endured. In 2000, it was added to the list of UNESCO World Heritage Sites. Notably, the cathedral claims to house several relics, such as the Lance of Longingus, relics of the Twelve Apostles, and a fragment of Noah''s Ark.'),
				('TXT_KEY_GREAT_WORK_HOLY_LANCE',		'Holy Lance'),
				('TXT_KEY_GREAT_WORK_HOLY_LANCE_QUOTE',	'[NEWLINE]One of the soldiers pierced his side [NEWLINE]with a lance, and immediately [NEWLINE]there came out blood and water.[NEWLINE] - John, 19:34[NEWLINE]');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ANGKOR WAT
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_ANGKOR_WAT';
	UPDATE Buildings SET Flat = 1, FreshWater = 1, Water = 1, MinAreaSize = 1 WHERE Type = 'BUILDING_ANGKOR_WAT';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_ANGKOR_WAT',		'FEATURE_JUNGLE');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_ANGKOR_WAT_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ANGKOR_WAT_HELP';
				
	UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR], [COLOR_CYAN]Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ANGKOR_WAT_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GREAT WALL
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_GREAT_WALL';
	UPDATE Buildings SET Hill = 1, River = 1 WHERE Type = 'BUILDING_GREAT_WALL';
	
	-- + Deceptive/Hostile/War (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_GREAT_WALL_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_WALL_HELP';
				
	UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Other Player: [COLOR_CYAN]Deceptive[ENDCOLOR]/[COLOR_CYAN]Hostile[ENDCOLOR]/[COLOR_CYAN]Warring[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GREAT_WALL_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- CHAND BAORI (NEW)
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_CHAND_BAORI';
	UPDATE Buildings SET Cost = 250, PrereqTech = 'TECH_ENGINEERING', NumPoliciesNeeded = 5, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_CHAND_BAORI';
	
	UPDATE Buildings SET IsNoWater = 1, NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_CHAND_BAORI';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,				BuildingClassType) 
	VALUES		('BUILDING_CHAND_BAORI',	'BUILDINGCLASS_WELL');
	---------------------------------------------------------
	UPDATE Buildings SET NoUnhappfromXSpecialists = 3, GreatPeopleRateModifier = 10, FreeGreatPeople = 1 WHERE Type = 'BUILDING_CHAND_BAORI';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_CHAND_BAORI',	'YIELD_FOOD',		2),
				('BUILDING_CHAND_BAORI',	'YIELD_GOLD',		1),
				('BUILDING_CHAND_BAORI',	'YIELD_CULTURE',	2);
	
	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,				TerrainType,		YieldType,		Yield) 
	VALUES		('BUILDING_CHAND_BAORI',	'TERRAIN_DESERT',	'YIELD_FOOD',	1);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_CHAND_BAORI',	'FLAVOR_GROWTH',		40),
				('BUILDING_CHAND_BAORI',	'FLAVOR_CULTURE',		20),
				('BUILDING_CHAND_BAORI',	'FLAVOR_GREAT_PEOPLE',	30),
				('BUILDING_CHAND_BAORI',	'FLAVOR_HAPPINESS',		20),
				('BUILDING_CHAND_BAORI',	'FLAVOR_GOLD',			10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_CHAND_BAORI',		'Chand Baori'),
				('TXT_KEY_WONDER_CHAND_BAORI_HELP',		'Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Fresh Water[ENDCOLOR]; Building: [COLOR_CYAN]Well[ENDCOLOR].[NEWLINE][NEWLINE]Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_PEOPLE] Great Person of your choice. +10% generation of [ICON_GREAT_PEOPLE] Great People in this City. +1 [ICON_FOOD] Food from Desert tiles in this City. 3 Specialists in the City no longer generates [ICON_HAPPINESS_3] Unhappiness from Urbanization.'),
				('TXT_KEY_WONDER_CHAND_BAORI_HELP_CUT',	'Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_PEOPLE] Great Person of your choice. +10% generation of [ICON_GREAT_PEOPLE] Great People in this City. +1 [ICON_FOOD] Food from Desert tiles in this City. 3 Specialists in the City no longer generates [ICON_HAPPINESS_3] Unhappiness from Urbanization.'),
				('TXT_KEY_WONDER_CHAND_BAORI_QUOTE',	'[NEWLINE]"When the well''s dry, we know the worth of water."[NEWLINE] - Benjamin Franklin[NEWLINE]'),
				('TXT_KEY_WONDER_CHAND_BAORI_PEDIA',	'Built over a thousand years ago, Chand Baori is a stepwell located in the Abhaneri village of Rajasthan, India. Stepwells are unique to the Indian subcontinent, and are wells with steps leading down to the water. They were one of many developments to deal with the seasonal availability of water. [NEWLINE]Chand Baori is quite possibly the largest of the stepwells, and may be the most visually spectacular. It is a four-sided structure, with a temple to Harshat Mata, goddess of joy, at one face. In the modern era, Chand Baori has been included in several Bollywood films, though stepwells have fallen out of favor with the arrival of running water.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- COLOSSUS
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_COLOSSUS';
	UPDATE Buildings SET Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_COLOSSUS';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,			ResourceType) 
	VALUES		('BUILDING_COLOSSUS',	'RESOURCE_IRON'),
				('BUILDING_COLOSSUS',	'RESOURCE_COPPER');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_COLOSSUS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_COLOSSUS_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Resource: [ICON_RES_IRON] [COLOR_CYAN]Iron[ENDCOLOR]/[ICON_RES_COPPER] [COLOR_CYAN]Copper[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_COLOSSUS_HELP';
--============================================--
-- MEDIEVAL ERA
--============================================--
-- UNIVERSITY OF SANKORE
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE';
	UPDATE Buildings SET NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,				BuildingClassType) 
	VALUES		('BUILDING_MOSQUE_OF_DJENNE',	'BUILDINGCLASS_LIBRARY');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Building: [COLOR_CYAN]Library[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PROPHET'S MOSQUE (NEW)
	UPDATE Buildings SET Cost = 400, PrereqTech = 'TECH_WRITING', NumPoliciesNeeded = 7, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_NABAWI';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_NABAWI';
	
	UPDATE Buildings SET IsNoWater = 1 WHERE Type = 'BUILDING_NABAWI';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_MOSQUE', GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE', GreatWorkCount = 2, ThemingBonusHelp = 'TXT_KEY_THEMING_BONUS_NABAWI_HELP' WHERE Type = 'BUILDING_NABAWI';

	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,			Yield)
	VALUES		('BUILDING_NABAWI', 'YIELD_CULTURE',	2),
				('BUILDING_NABAWI', 'YIELD_FAITH',		5);

	INSERT INTO Building_SpecificGreatPersonRateModifier
				(BuildingType,		SpecialistType,			Modifier)
	VALUES		('BUILDING_NABAWI', 'SPECIALIST_WRITER',	20);

	INSERT INTO Building_GlobalYieldModifiers
				(BuildingType,		YieldType,		Yield)
	VALUES		('BUILDING_NABAWI', 'YIELD_FAITH',	10);

	INSERT INTO Building_ThemingBonuses
				(BuildingType,		Description,					Bonus,	RequiresOwner,	AIPriority)
	VALUES		('BUILDING_NABAWI', 'TXT_KEY_THEMING_BONUS_NABAWI', 8,		1,				5);

	INSERT INTO Building_ThemingYieldBonus
				(BuildingType,		YieldType,					Yield)
	VALUES		('BUILDING_NABAWI', 'YIELD_GOLDEN_AGE_POINTS',	4),
				('BUILDING_NABAWI', 'YIELD_FAITH',				4);
	---------------------------------------------------------
	INSERT INTO Building_Flavors
				(BuildingType,		FlavorType,				Flavor)
	VALUES		('BUILDING_NABAWI', 'FLAVOR_CULTURE',		30),
				('BUILDING_NABAWI', 'FLAVOR_RELIGION',		70),
				('BUILDING_NABAWI', 'FLAVOR_GREAT_PEOPLE',	20);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text)
	VALUES		('TXT_KEY_BUILDING_NABAWI',				'Prophet''s Mosque'),
				('TXT_KEY_WONDER_NABAWI_HELP',			'Special: [COLOR_CYAN]Holy City[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR].[NEWLINE][NEWLINE]Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Mosque in the City in which it is built. All Cities generate +10% [ICON_PEACE] Faith. Has 2 slot for [ICON_GREAT_WORK] Great Works of Writing that provide +4 [ICON_PEACE] Faith and [ICON_GOLDEN_AGE] Golden Age Points if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR]. +20% generation of [ICON_GREAT_WRITER] Great Writers in this City.'),
				('TXT_KEY_WONDER_NABAWI_HELP_CUT',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Mosque in the City in which it is built. All Cities generate +10% [ICON_PEACE] Faith. Has 2 slot for [ICON_GREAT_WORK] Great Works of Writing that provide +4 [ICON_PEACE] Faith and [ICON_GOLDEN_AGE] Golden Age Points if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR]. +20% generation of [ICON_GREAT_WRITER] Great Writers in this City.'),
				('TXT_KEY_WONDER_NABAWI_QUOTE',			'[NEWLINE]"When you see a person who has been given more than you in money and beauty, look to those, who have been given less."[NEWLINE] - Prophet Muhammad[NEWLINE]'),
				('TXT_KEY_WONDER_NABAWI_PEDIA',			'Al-Masjid al-Nabawi, often called the Prophet''s Mosque, is a mosque situated in the city of Medina. As the final resting place of the Islamic prophet Muhammad, it is considered the second holiest site in Islam by Muslims (the first being the Masjid al-Haram in Mecca) and is one of the largest mosques in the World. The mosque is under the control of the Custodian of the Two Holy Mosques. It is the second mosque built in history.[NEWLINE][NEWLINE]  One of the most notable features of the site is the Green Dome over the center of the mosque, where the tomb of Muhammad is located. It is not exactly known when the green dome was constructed but manuscripts dating to the early 12th century describe the dome. It is known as the Dome of the Prophet or the Green Dome. Subsequent Islamic rulers greatly expanded and decorated it. Early Muslim leaders Abu Bakr and Umar are buried in an adjacent area in the mosque.[NEWLINE][NEWLINE]  The site was originally Muhammad''s house; he settled there after his Hijra to Medina, later building a mosque on the grounds. He himself shared in the heavy work of construction. The original mosque was an open-air building. The basic plan of the building has been adopted in the building of other mosques throughout the world.'),
				('TXT_KEY_THEMING_BONUS_NABAWI',		'Islamic calligraphy works'),
				('TXT_KEY_THEMING_BONUS_NABAWI_HELP',	'To maximize your bonus, make sure both Great Works are filled with Writings created by you.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- HAGIA SOPHIA
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_HAGIA_SOPHIA';
	UPDATE Buildings SET Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_HAGIA_SOPHIA';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_HAGIA_SOPHIA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HAGIA_SOPHIA_HELP';
				
	UPDATE Language_en_US SET Text = 'Special: [COLOR_CYAN]Holy City[ENDCOLOR]: Terrain: [COLOR_CYAN]Coast[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HAGIA_SOPHIA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- BOROBUDUR
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_BOROBUDUR';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,			FeatureType) 
	VALUES		('BUILDING_BOROBUDUR',	'FEATURE_JUNGLE');
	---------------------------------------------------------
	UPDATE Language_en_US SET Text = Substr(Text, 31, 2000) WHERE Tag ='TXT_KEY_WONDER_BOROBUDUR_HELP';

	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_BOROBUDUR_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BOROBUDUR_HELP';
				
	UPDATE Language_en_US SET Text = 'Special: [COLOR_CYAN]Holy City[ENDCOLOR]; Feature: [COLOR_CYAN]Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BOROBUDUR_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- LAVAUX (NEW)
	UPDATE Buildings SET Cost = 400, PrereqTech = 'TECH_THEOLOGY', NumPoliciesNeeded = 7, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_LAVAUX';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_LAVAUX';
	
	UPDATE Buildings SET Hill = 1, FreshWater = 1, Water = 1, MinAreaSize = 1, NearbyTerrainRequired = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_LAVAUX';
	---------------------------------------------------------
	UPDATE Buildings SET EmpireNeedsModifierGlobal = -10 WHERE Type = 'BUILDING_LAVAUX';

	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,		Yield)
	VALUES		('BUILDING_LAVAUX', 'YIELD_FOOD',	2),
				('BUILDING_LAVAUX', 'YIELD_GOLD',	1);

	INSERT INTO Building_LakePlotYieldChanges 
				(BuildingType,		YieldType,		Yield)
	VALUES		('BUILDING_LAVAUX',	'YIELD_FOOD',	1);	
	
	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,		ResourceType,		YieldType,		Yield) 
	VALUES		('BUILDING_LAVAUX',	'RESOURCE_WINE',	'YIELD_FOOD',	1),
				('BUILDING_LAVAUX',	'RESOURCE_WINE',	'YIELD_GOLD',	1),
				('BUILDING_LAVAUX',	'RESOURCE_WINE',	'YIELD_FAITH',	1);

	INSERT INTO Building_ResourcePlotsToPlace
				(BuildingType,		ResourceType,		NumPlots) 
	VALUES		('BUILDING_LAVAUX',	'RESOURCE_WINE',	2);
	---------------------------------------------------------
	INSERT INTO Building_Flavors
				(BuildingType,		FlavorType,				Flavor)
	VALUES		('BUILDING_LAVAUX', 'FLAVOR_GROWTH',		50),
				('BUILDING_LAVAUX', 'FLAVOR_GOLD',			40),
				('BUILDING_LAVAUX', 'FLAVOR_HAPPINESS',		60),
				('BUILDING_LAVAUX', 'FLAVOR_RELIGION',		10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text)
	VALUES		('TXT_KEY_BUILDING_LAVAUX',				'Lavaux'),
				('TXT_KEY_WONDER_LAVAUX_HELP',			'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR].[NEWLINE][NEWLINE]Wonder places 2 new [ICON_RES_WINE] Wine resources inside City range if possible. Empire [ICON_HAPPINESS_3] Needs Modifier is reduced by 10% in all Cities. +1 [ICON_FOOD] Food from Lakes worked by this City.[NEWLINE][NEWLINE]Nearby [ICON_RES_WINE] Wine: +1 [ICON_FOOD] Food, +1 [ICON_GOLD] Gold and +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_LAVAUX_HELP_CUT',		'Wonder places 2 new [ICON_RES_WINE] Wine resources inside City range if possible. Empire [ICON_HAPPINESS_3] Needs Modifier is reduced by 10% in all Cities. +1 [ICON_FOOD] Food from Lakes worked by this City.[NEWLINE][NEWLINE]Nearby [ICON_RES_WINE] Wine: +1 [ICON_FOOD] Food, +1 [ICON_GOLD] Gold and +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_LAVAUX_QUOTE',			'[NEWLINE]"A bottle of wine contains more philosophy than all the books in the world".[NEWLINE] - Louis Pasteur[NEWLINE]'),
				('TXT_KEY_WONDER_LAVAUX_PEDIA',			'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ALHAMBRA
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_ALHAMBRA';
	UPDATE Buildings SET Hill = 1 WHERE Type = 'BUILDING_ALHAMBRA';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,			FeatureType) 
	VALUES		('BUILDING_ALHAMBRA',	'FEATURE_FOREST');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_ALHAMBRA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ALHAMBRA_HELP';
				
	UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ALHAMBRA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- WARTBURG (NEW)
	UPDATE Buildings SET Cost = 400, PrereqTech = 'TECH_CHIVALRY', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_WARTBURG';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_WARTBURG';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,			FeatureType) 
	VALUES		('BUILDING_WARTBURG',	'FEATURE_FOREST');
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,			BuildingClassType) 
	VALUES		('BUILDING_WARTBURG',	'BUILDINGCLASS_WRITERS_GUILD');
	---------------------------------------------------------
	UPDATE Buildings SET Defense = 1000, SpecialistType = 'SPECIALIST_WRITER', GreatPeopleRateChange = 2, GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE', GreatWorkCount = 3, ThemingBonusHelp = 'TXT_KEY_THEMING_BONUS_WARTBURG_HELP' WHERE Type = 'BUILDING_WARTBURG';

	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,					Yield) 
	VALUES		('BUILDING_WARTBURG',	'YIELD_CULTURE',			1),
				('BUILDING_WARTBURG',	'YIELD_GOLDEN_AGE_POINTS',	1);
	
	INSERT INTO Building_SpecificGreatPersonRateModifier 
				(BuildingType,			SpecialistType,			Modifier)
	VALUES		('BUILDING_WARTBURG',	'SPECIALIST_WRITER',	30);

	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,			BuildingClassType,				YieldType,		YieldChange) 
	VALUES		('BUILDING_WARTBURG',	'BUILDINGCLASS_WRITERS_GUILD',	'YIELD_FAITH',	1);

	INSERT INTO Building_ThemingBonuses 
				(BuildingType,			Description,						Bonus,	RequiresOwner,	AIPriority)
	VALUES		('BUILDING_WARTBURG',	'TXT_KEY_THEMING_BONUS_WARTBURG',	8,		1,				5);

	INSERT INTO Building_DomainFreeExperiencePerGreatWork
				(BuildingType,			DomainType,		Experience)
	VALUES		('BUILDING_WARTBURG',	'DOMAIN_LAND',	10);

	INSERT INTO Building_ThemingYieldBonus 
				(BuildingType,			YieldType,					Yield) 
	VALUES		('BUILDING_WARTBURG',	'YIELD_CULTURE',			3),
				('BUILDING_WARTBURG',	'YIELD_FAITH',				3),
				('BUILDING_WARTBURG',	'YIELD_GOLDEN_AGE_POINTS',	3);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_WARTBURG',	'FLAVOR_CULTURE',		30),
				('BUILDING_WARTBURG',	'FLAVOR_GREAT_PEOPLE',	60),
				('BUILDING_WARTBURG',	'FLAVOR_RELIGION',		30);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text)
	VALUES		('TXT_KEY_BUILDING_WARTBURG',				'Wartburg'),
				('TXT_KEY_WONDER_WARTBURG_HELP',			'Feature: [COLOR_CYAN]Forest[ENDCOLOR]; Building: [COLOR_CYAN]Writer''s Guild[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Progress[ENDCOLOR] Branch. +30% generation of [ICON_GREAT_WRITER] Great Writers in Empire. Has 3 slots for [ICON_GREAT_WORK] Great Works of Literature. +3 [ICON_CULTURE] Culture and +3 [ICON_PEACE] Faith and 3 [ICON_GOLDEN_AGE] Golden Age Points if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR]. 10 XP per each [ICON_GREAT_WORK] Great Work for Land units trained in this City. All Writer''s Guilds in the Empire receive +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_WARTBURG_HELP_CUT',		'+30% generation of [ICON_GREAT_WRITER] Great Writers in Empire. Has 3 slots for [ICON_GREAT_WORK] Great Works of Art. +3 [ICON_CULTURE] Culture and +3 [ICON_PEACE] Faith and 3 [ICON_GOLDEN_AGE] Golden Age Points if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR]. 10 XP per each [ICON_GREAT_WORK] Great Work for Land units trained in this City. All Writer''s Guilds in the Empire receive +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_WARTBURG_QUOTE',			'[NEWLINE]"In nature we never see anything isolated, but everything in connection with something else which is before it, beside it, under it and over it."[NEWLINE] - Johann Wolfgang von Goethe[NEWLINE]'),
				('TXT_KEY_WONDER_WARTBURG_PEDIA',			'Wartburg Castle was built in 1067 by Ludwig der Springer to secure his traditional territories. From 1172 to 1211, it was an important princely court in the Holy Roman Empire and a support for poets, thus becoming the setting of the legendary Sangerkrieg. Following his excommunication, Martin Luther stayed at Wartburg when he translated the New Testament from ancient Greek into German.[NEWLINE]For centuries, Wartburg has been a place of pilgrimage for its significance in German and Christian history. In the modern day, Wartburg remains a popular tourist attraction. It often stages the opera Tannhauser. While the castle still contains original structures from the 12th through 15th centuries, much of the interior dates back only to the 19th century, transformed under communist rule in the time of the GDR.'),
				('TXT_KEY_THEMING_BONUS_WARTBURG',			'Literature that inspired whole nations'),
				('TXT_KEY_THEMING_BONUS_WARTBURG_HELP',		'To maximize your bonus, make sure all the Great Work Slots are all filled with literature created by you.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MACHU PICCHU
	UPDATE Buildings SET WonderSplashAnchor = 'L,T' WHERE Type = 'BUILDING_MACHU_PICHU';
	UPDATE Buildings SET Hill = 1, NearbyMountainRequired = 0 WHERE Type = 'BUILDING_MACHU_PICHU';
	
	-- + Mountains(2) (lua)
	---------------------------------------------------------
	UPDATE Language_en_US SET Text = Substr(Text, 80, 2000) WHERE Tag ='TXT_KEY_WONDER_MACHU_PICHU_HELP';

	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_MACHU_PICHU_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]2 Mountains[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MACHU_PICHU_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GREAT ZIMBABWE (NEW)
	UPDATE Buildings SET Cost = 400, PrereqTech = 'TECH_PHYSICS', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_GREAT_ZIMBABWE';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_GREAT_ZIMBABWE';
	
	-- + IsNoCoast (lua)
	-- + Mine/Camp(3) (lua)
	---------------------------------------------------------
	UPDATE Buildings SET Defense = 1000, GlobalPlotBuyCostModifier = -30, NumTradeRouteBonus = 1 WHERE Type = 'BUILDING_GREAT_ZIMBABWE';

	INSERT INTO Building_YieldChanges 
				(BuildingType,						YieldType,					Yield)
	VALUES		('BUILDING_GREAT_ZIMBABWE',			'YIELD_FAITH',				1),
				('BUILDING_GREAT_ZIMBABWE',			'YIELD_GOLD',				1),
				('BUILDING_GREAT_ZIMBABWE',			'YIELD_CULTURE',			1),
				('BUILDING_GREAT_ZIMBABWE_DUMMY',	'YIELD_GOLDEN_AGE_POINTS',	2);
	
	INSERT INTO Building_DomainFreeExperiencesGlobal
				(BuildingType,						DomainType,		Experience)
	VALUES		('BUILDING_GREAT_ZIMBABWE_DUMMY',	'DOMAIN_LAND',	2),
				('BUILDING_GREAT_ZIMBABWE_DUMMY',	'DOMAIN_AIR',	2),
				('BUILDING_GREAT_ZIMBABWE_DUMMY',	'DOMAIN_SEA',	2);
	---------------------------------------------------------
	INSERT INTO Building_Flavors
				(BuildingType,				FlavorType,				Flavor)
	VALUES		('BUILDING_GREAT_ZIMBABWE',	'FLAVOR_GOLD',			50),
				('BUILDING_GREAT_ZIMBABWE',	'FLAVOR_RELIGION',		10),
				('BUILDING_GREAT_ZIMBABWE',	'FLAVOR_CULTURE',		10),
				('BUILDING_GREAT_ZIMBABWE',	'FLAVOR_EXPANSION',		40);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_GREAT_ZIMBABWE',			'Great Zimbabwe'),
				('TXT_KEY_WONDER_GREAT_ZIMBABWE_HELP',		'Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Improvement: [COLOR_CYAN]3 (Mines + Camps)[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Authority[ENDCOLOR] Branch. Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. [ICON_GOLD] Gold cost of aquiring new tiles reduced by 30% in all Cities. +2 [ICON_GOLDEN_AGE] Golden Age Points in this City and 10 XP to units constructed in all Cities for each active [ICON_INTERNATIONAL_TRADE] Trade Route.'),
				('TXT_KEY_WONDER_GREAT_ZIMBABWE_HELP_CUT',	'Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. [ICON_GOLD] Gold cost of aquiring new tiles reduced by 30% in all Cities. +2 [ICON_GOLDEN_AGE] Golden Age Points in this City and 10 XP to units constructed in all Cities for each active [ICON_INTERNATIONAL_TRADE] Trade Route.'),
				('TXT_KEY_WONDER_GREAT_ZIMBABWE_QUOTE',		'[NEWLINE]"God is good, but never dance with a lion."[NEWLINE] - Zimbabwean proverb[NEWLINE]'),
				('TXT_KEY_WONDER_GREAT_ZIMBABWE_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- FALUN MINE (NEW)
	UPDATE Buildings SET Cost = 400, PrereqTech = 'TECH_STEEL', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_FALUN';
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_FALUN';
	
	-- + Mine(4) (lua)
	---------------------------------------------------------
	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,					Yield)
	VALUES		('BUILDING_FALUN',	'YIELD_PRODUCTION',			1),
				('BUILDING_FALUN',	'YIELD_GOLDEN_AGE_POINTS',	1);

	INSERT INTO Building_ResourceYieldChanges
				(BuildingType,		ResourceType,		YieldType,					Yield) 
	VALUES		('BUILDING_FALUN',	'RESOURCE_COPPER',	'YIELD_GOLDEN_AGE_POINTS',	1),
				('BUILDING_FALUN',	'RESOURCE_COPPER',	'YIELD_GOLD',				1);

	INSERT INTO Building_ImprovementYieldChanges
				(BuildingType,		ImprovementType,	YieldType,		Yield) 
	VALUES		('BUILDING_FALUN',	'IMPROVEMENT_MINE',	'YIELD_GOLD',	1);

	INSERT INTO Building_ResourcePlotsToPlace
				(BuildingType,		ResourceType,		NumPlots) 
	VALUES		('BUILDING_FALUN',	'RESOURCE_COPPER',	2);
	
	INSERT INTO Building_FreeUnits 
				(BuildingType,		UnitType,				NumUnits) 
	VALUES		('BUILDING_FALUN',	'UNIT_GREAT_GENERAL',	1);
	
	INSERT INTO Building_GreatPersonProgressFromConstruction
				(BuildingType,		GreatPersonType,		EraType,			Value) 
	VALUES		('BUILDING_FALUN',	'GREATPERSON_ENGINEER',	'ERA_MEDIEVAL',		100),
				('BUILDING_FALUN',	'GREATPERSON_ENGINEER',	'ERA_RENAISSANCE',	100);
	---------------------------------------------------------
	INSERT INTO Building_Flavors
				(BuildingType,		FlavorType,				Flavor)
	VALUES		('BUILDING_FALUN',	'FLAVOR_GOLD',			40),
				('BUILDING_FALUN',	'FLAVOR_PRODUCTION',	10),
				('BUILDING_FALUN',	'FLAVOR_HAPPINESS',		50),
				('BUILDING_FALUN',	'FLAVOR_GREAT_PEOPLE',	40);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_FALUN',			'Falun Mine'),
				('TXT_KEY_WONDER_FALUN_HELP',		'Improvement: [COLOR_CYAN]4 Mines[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Progress[ENDCOLOR] Branch. Wonder places 2 new [ICON_RES_COPPER] Copper resources inside City range if possible. +1 [ICON_GOLD] Gold from Mines worked by this City. Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_GENERAL] Great General and +100 [ICON_GREAT_ENGINEER] Great Engineers Progress on construction during Medieval or Renaissance Era.[NEWLINE][NEWLINE]Nearby [ICON_RES_COPPER] Copper: +1 [ICON_GOLD] and +1 [ICON_GOLDEN_AGE] Golden Age Point.'),
				('TXT_KEY_WONDER_FALUN_HELP_CUT',	'Wonder places 2 new [ICON_RES_COPPER] Copper resources inside City range if possible. +1 [ICON_GOLD] Gold from Mines worked by this City. Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_GENERAL] Great General and +100 [ICON_GREAT_ENGINEER] Great Engineers Progress on construction during Medieval or Renaissance Era.[NEWLINE][NEWLINE]Nearby [ICON_RES_COPPER] Copper: +1 [ICON_GOLD] and +1 [ICON_GOLDEN_AGE] Golden Age Point.'),
				('TXT_KEY_WONDER_FALUN_QUOTE',		'[NEWLINE]"Mining is like a search-and-destroy mission."[NEWLINE] - Stewart Udall[NEWLINE]'),
				('TXT_KEY_WONDER_FALUN_PEDIA',		'Operating in Falun, Sweden from the tenth century to 1992, Falun Mine produced as much as two thirds of Europe''s copper needs and helped fund many of Sweden''s wars in the 17th century. The operation of the mine granted Sweden a virtual monopoly on copper through the 17th century, funding the various wars of Sweden during its great power era, though the output of the mine was a pittance by modern standards. In 1992, commercial mining ceased as the mine was no longer economically viable. In 2001, Falun Mine was selected as a UNESCO World Heritage site.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- FORGE OF DAMASCUS (NEW)
	UPDATE Buildings SET Cost = 400, PrereqTech = 'TECH_STEEL', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_DAMASCUS';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_DAMASCUS';
	
	UPDATE Buildings SET FreshWater = 1 WHERE Type = 'BUILDING_DAMASCUS';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,			ResourceType) 
	VALUES		('BUILDING_DAMASCUS',	'RESOURCE_IRON');
	
	-- + LumberMill(1) (lua)
	---------------------------------------------------------
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_FORGE', FreePromotion = 'PROMOTION_DAMASCUS', SpecialistType = 'SPECIALIST_SCIENTIST', GreatPeopleRateChange = 1, EnhancedYieldTech = 'TECH_METALLURGY' WHERE Type = 'BUILDING_DAMASCUS';

	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield)
	VALUES		('BUILDING_DAMASCUS',	'YIELD_PRODUCTION',	2),
				('BUILDING_DAMASCUS',	'YIELD_SCIENCE',	2);

	INSERT INTO Building_TechEnhancedYieldChanges
				(BuildingType,			YieldType,			Yield)
	VALUES		('BUILDING_DAMASCUS',	'YIELD_PRODUCTION', 3);

	INSERT INTO Building_ResourceYieldChangesGlobal
				(BuildingType,			ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_DAMASCUS',	'RESOURCE_IRON',	'YIELD_PRODUCTION', 1),
				('BUILDING_DAMASCUS',	'RESOURCE_IRON',	'YIELD_SCIENCE',	1);

	INSERT INTO UnitPromotions 
				(Type,					Description,					Help,								Sound,				CannotBeChosen, LostWithUpgrade,	AttackMod,	PortraitIndex,	IconAtlas,						PediaType,		PediaEntry) 
	VALUES		('PROMOTION_DAMASCUS',	'TXT_KEY_PROMOTION_DAMASCUS',	'TXT_KEY_PROMOTION_DAMASCUS_HELP',	'AS2D_IF_LEVELUP',	1,				1,					20,			0,				'NEW_WONDERS_PROMO_ICON_ATLAS',	'PEDIA_SHARED', 'TXT_KEY_PROMOTION_DAMASCUS');

	INSERT INTO UnitPromotions_UnitCombats
				(PromotionType,			UnitCombatType)
	VALUES		('PROMOTION_DAMASCUS',	'UNITCOMBAT_MELEE'),
				('PROMOTION_DAMASCUS',	'UNITCOMBAT_MOUNTED');
	---------------------------------------------------------
	INSERT INTO Building_Flavors
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_DAMASCUS',	'FLAVOR_DEFENSE',		10),
				('BUILDING_DAMASCUS',	'FLAVOR_OFFENSE',		40),
				('BUILDING_DAMASCUS',	'FLAVOR_PRODUCTION',	50),
				('BUILDING_DAMASCUS',	'FLAVOR_SCIENCE',		30);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_DAMASCUS',			'Forge of Damascus'),
				('TXT_KEY_WONDER_DAMASCUS_HELP',		'Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR]; Resource: [ICON_RES_IRON] [COLOR_CYAN]Iron[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Authority[ENDCOLOR] Branch. +3 [ICON_PRODUCTION] Production with [COLOR_CYAN]Metallurgy[ENDCOLOR]. Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Forge in the City in which it is built. All Melee and Mounted Units in the Empire get [COLOR_POSITIVE_TEXT]Damascus Steel[ENDCOLOR] promotion (+20% [ICON_STRENGTH] Combat Strength).[NEWLINE][NEWLINE]All [ICON_RES_IRON] Iron: +1 [ICON_PRODUCTION] Production and +1 [ICON_RESEARCH] Science.'),
				('TXT_KEY_WONDER_DAMASCUS_HELP_CUT',	'+3 [ICON_PRODUCTION] Production with [COLOR_CYAN]Metallurgy[ENDCOLOR]. Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Forge in the City in which it is built. All Melee and Mounted Units in the Empire get [COLOR_POSITIVE_TEXT]Damascus Steel[ENDCOLOR] promotion (+20% [ICON_STRENGTH] Combat Strength).[NEWLINE][NEWLINE]All [ICON_RES_IRON] Iron: +1 [ICON_PRODUCTION] Production and +1 [ICON_RESEARCH] Science.'),
				('TXT_KEY_WONDER_DAMASCUS_QUOTE',		'[NEWLINE]"The reputation and history of Damascus steel has given rise to many legends, such as the ability to cut through a rifle barrel or to cut a hair falling across the blade. The manufacturing technique has yet to be reverse engineered, even in modern times."[NEWLINE] - from legends about Damascus Steel[NEWLINE]'),
				('TXT_KEY_WONDER_DAMASCUS_PEDIA',		'Damascus steel was a type of steel used for manufacturing sword blades in the Near East made with wootz steel. These swords are characterized by distinctive patterns of banding and mottling reminiscent of flowing water. Such blades were reputed to be tough, resistant to shattering and capable of being honed to a sharp, resilient edge.[NEWLINE][NEWLINE]  The reputation and history of Damascus steel has given rise to many legends, such as the ability to cut through a rifle barrel or to cut a hair falling across the blade. Although many types of modern steel outperform ancient Damascus alloys, chemical reactions in the production process made the blades extraordinary for their time, as Damascus steel was superplastic and very hard at the same time.'),
				('TXT_KEY_PROMOTION_DAMASCUS',			'Damascus Steel'),
				('TXT_KEY_PROMOTION_DAMASCUS_HELP',		'+20% [ICON_STRENGTH] Combat Strength');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- FORBIDDEN PALACE
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_FORBIDDEN_PALACE';
	UPDATE Buildings SET Capital = 1 WHERE Type = 'BUILDING_FORBIDDEN_PALACE';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,					BuildingClassType) 
	VALUES		('BUILDING_FORBIDDEN_PALACE',	'BUILDINGCLASS_WALLS');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP';
				
	UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_GOLD]Capital[ENDCOLOR]; Building: [COLOR_CYAN]Walls[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- CATHEDRAL OF ST. BASIL
	UPDATE Buildings SET WonderSplashAnchor = 'C,C', WonderSplashImage = 'Wonder_Kremlin_splash.dds' WHERE Type = 'BUILDING_KREMLIN';
	UPDATE Buildings SET ProhibitedCityTerrain = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_KREMLIN';
	---------------------------------------------------------
	UPDATE Language_en_US SET Text = 'St. Basil''s Cathedral' WHERE Tag ='TXT_KEY_WONDER_KREMLIN';
	UPDATE Language_en_US SET Text = Substr(Text, 31, 2000) WHERE Tag ='TXT_KEY_WONDER_KREMLIN_HELP';

	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_KREMLIN_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KREMLIN_HELP';
				
	UPDATE Language_en_US SET Text = 'Special: [COLOR_CYAN]Holy City[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_KREMLIN_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GOLDEN DAGON PAGODA (NEW)
	UPDATE Buildings SET Cost = 500, PrereqTech = 'TECH_GUILDS', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_SHWEDAGON';
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_SHWEDAGON';
	
	UPDATE Buildings SET Hill = 1, FreshWater = 1 WHERE Type = 'BUILDING_SHWEDAGON';
	---------------------------------------------------------
	UPDATE Buildings SET GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT', GreatWorkCount = 4, ThemingBonusHelp = 'TXT_KEY_THEMING_BONUS_SHWEDAGON_HELP', SpecialistType = 'SPECIALIST_ARTIST', GreatPeopleRateChange = 1 WHERE Type = 'BUILDING_SHWEDAGON';

	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_SHWEDAGON',	'YIELD_GOLD',		2),
				('BUILDING_SHWEDAGON',	'YIELD_CULTURE',	2);
	
	INSERT INTO Building_SpecificGreatPersonRateModifier 
				(BuildingType,			SpecialistType,			Modifier)
	VALUES		('BUILDING_SHWEDAGON',	'SPECIALIST_ARTIST',	33);

	INSERT INTO Building_SpecialistYieldChanges
				(BuildingType,			SpecialistType,			YieldType,			Yield) 
	VALUES		('BUILDING_SHWEDAGON',	'SPECIALIST_ARTIST',	'YIELD_FAITH',		2);

	INSERT INTO Building_ThemingBonuses 
				(BuildingType,			Description,						Bonus,	MustBeArtifact,	RequiresOwner,	AIPriority)
	VALUES		('BUILDING_SHWEDAGON',	'TXT_KEY_THEMING_BONUS_SHWEDAGON',	16,		1,				1,				5);

	INSERT INTO Building_GreatWorkYieldChanges
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_SHWEDAGON',	'YIELD_GOLD',	1);
	
	INSERT INTO Building_ThemingYieldBonus 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_SHWEDAGON',	'YIELD_CULTURE',	3),
				('BUILDING_SHWEDAGON',	'YIELD_FAITH',		3),
				('BUILDING_SHWEDAGON',	'YIELD_GOLD',		3),
				('BUILDING_SHWEDAGON',	'YIELD_TOURISM',	3);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_SHWEDAGON',	'FLAVOR_CULTURE',		50),
				('BUILDING_SHWEDAGON',	'FLAVOR_GREAT_PEOPLE',	40),
				('BUILDING_SHWEDAGON',	'FLAVOR_GOLD',			20),
				('BUILDING_SHWEDAGON',	'FLAVOR_RELIGION',		40);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text)
	VALUES		('TXT_KEY_BUILDING_SHWEDAGON',				'Golden Dagon Pagoda'),
				('TXT_KEY_WONDER_SHWEDAGON_HELP',			'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Tradition[ENDCOLOR] Branch. +33% generation of [ICON_GREAT_ARTIST] Great Artists in Empire. +2 [ICON_PEACE] Faith from Artists. Has 4 slots for [ICON_GREAT_WORK] Great Works of Art. +3 [ICON_GOLD] Gold, [ICON_CULTURE] Culture, [ICON_PEACE] Faith and [ICON_TOURISM] Tourism if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR].'),
				('TXT_KEY_WONDER_SHWEDAGON_HELP_CUT',		'+33% generation of [ICON_GREAT_ARTIST] Great Artists in Empire. +2 [ICON_PEACE] Faith from Artists. Has 4 slots for [ICON_GREAT_WORK] Great Works of Art. +3 [ICON_GOLD] Gold, [ICON_CULTURE] Culture, [ICON_PEACE] Faith and [ICON_TOURISM] Tourism if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR].'),
				('TXT_KEY_WONDER_SHWEDAGON_QUOTE',			'[NEWLINE]"There was a tumult among men and spirits, the blind beheld objects, the deaf heard sounds. The earth quaked, lightning flashed, gems rained down until they were knee deep, and all trees of the Himalayas, though not in season, bore blossoms and fruit."[NEWLINE] - King Okkalapa[NEWLINE]'),
				('TXT_KEY_WONDER_SHWEDAGON_PEDIA',			'Shwedagon Paya (also known as Shwedagon Pagoda or the Great Dragon Pagoda) is a large Buddhist stupa located in the Burmese city of Rangoon. It is 99 metres tall in it''s current state, and is coated with gold donated by the Burmese populus to maintain the Stupa. It is not known when the gold was put in place, although the stupa itself is said to date back over 2,500 years. Each sucessive dynasty has built upon the Stupa, until it reached the current height of 99 metres during reconstruction following an earthquake in 1768. Shwedagon Paya also features a crown of 5,448 diamonds and 2317 Rubies.'),
				('TXT_KEY_THEMING_BONUS_SHWEDAGON',			'Relics of the four previous Buddhas of the present kalpa'),
				('TXT_KEY_THEMING_BONUS_SHWEDAGON_HELP',	'To maximize your bonus, make sure all the Great Work Slots are all filled with Artifacts created by you.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MONT SAINT-MICHEL (NEW)
	UPDATE Buildings SET Cost = 500, PrereqTech = 'TECH_GUILDS', NumPoliciesNeeded = 8, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_MICHEL';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_MICHEL';
	
	-- + OneTileCity (lua)
	---------------------------------------------------------
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_MONASTERY', ExtraCityHitPoints = 200, Defense = 1000, EnhancedYieldTech = 'TECH_ELECTRICITY', TechEnhancedTourism = 3 WHERE Type = 'BUILDING_MICHEL';

	INSERT INTO Building_TechEnhancedYieldChanges
				(BuildingType,		YieldType,		Yield) 
	VALUES		('BUILDING_MICHEL',	'YIELD_GOLD',	3);

	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,					Yield) 
	VALUES		('BUILDING_MICHEL',	'YIELD_GOLD',				2),
				('BUILDING_MICHEL',	'YIELD_GOLDEN_AGE_POINTS',	2);
	
	INSERT INTO Building_YieldChangesPerPop 
				(BuildingType,		YieldType,		Yield) 
	VALUES		('BUILDING_MICHEL', 'YIELD_FAITH',	40);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,				Flavor) 
	VALUES		('BUILDING_MICHEL', 'FLAVOR_GOLD',			40),
				('BUILDING_MICHEL', 'FLAVOR_HAPPINESS',		20),
				('BUILDING_MICHEL', 'FLAVOR_RELIGION',		30),
				('BUILDING_MICHEL', 'FLAVOR_CITY_DEFENSE',	10),
				('BUILDING_MICHEL', 'FLAVOR_CULTURE',		10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_MICHEL',			'Mont Saint-Michel'),
				('TXT_KEY_WONDER_MICHEL_HELP',		'Terrain: [COLOR_CYAN]single-tile Island[ENDCOLOR].[NEWLINE][NEWLINE]Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monastery in the City in which it is built. Greatly increase [ICON_STRENGTH] Combat Strength and Hit Points of this City. +3 [ICON_GOLD] Gold and +3 [ICON_TOURISM] Tourism with [COLOR_CYAN]Electricity[ENDCOLOR].'),
				('TXT_KEY_WONDER_MICHEL_HELP_CUT',  'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monastery in the City in which it is built. Greatly increase [ICON_STRENGTH] Combat Strength and Hit Points of this City. +3 [ICON_GOLD] Gold and +3 [ICON_TOURISM] Tourism with [COLOR_CYAN]Electricity[ENDCOLOR].'),
				('TXT_KEY_WONDER_MICHEL_QUOTE',		'[NEWLINE]"Church and State, Soul and Body, God and Man, are all one at Mont Saint Michel, and the business of all is to fight, each in his own way, or to stand guard for each other."[NEWLINE] - Henry Adams[NEWLINE]'),
				('TXT_KEY_WONDER_MICHEL_PEDIA',		'Perched on a rocky islet in the midst of vast sandbanks exposed to powerful tides between Normandy and Brittany stand the "Wonder of the West", a Gothic-style Benedictine abbey dedicated to the archangel St Michael, and the village that grew up in the shadow of its great walls. Built between the 11th and 16th centuries, the abbey is a technical and artistic tour de force, having had to adapt to the problems posed by this unique natural site.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ITSUKUSHIMA SHRINE (NEW)
	UPDATE Buildings SET Cost = 500, PrereqTech = 'TECH_COMPASS', NumPoliciesNeeded = 8, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_ITSUKUSHIMA';
	UPDATE Buildings SET WonderSplashAnchor = 'R,C' WHERE Type = 'BUILDING_ITSUKUSHIMA';
	
	UPDATE Buildings SET Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_ITSUKUSHIMA';

	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,				ResourceType) 
	VALUES		('BUILDING_ITSUKUSHIMA',	'RESOURCE_CORAL'),
				('BUILDING_ITSUKUSHIMA',	'RESOURCE_CRAB'),
				('BUILDING_ITSUKUSHIMA',	'RESOURCE_PEARLS'),
				('BUILDING_ITSUKUSHIMA',	'RESOURCE_WHALE');
	---------------------------------------------------------
	UPDATE Buildings SET GlobalPlotCultureCostModifier = -50 WHERE Type = 'BUILDING_ITSUKUSHIMA_DUMMY';

	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield)
	VALUES		('BUILDING_ITSUKUSHIMA',	'YIELD_CULTURE',	2);

	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,				ResourceType,		YieldType,		Yield) 
	VALUES		('BUILDING_ITSUKUSHIMA',	'RESOURCE_CORAL',	'YIELD_FAITH',	2),
				('BUILDING_ITSUKUSHIMA',	'RESOURCE_CRAB',	'YIELD_FAITH',	2),
				('BUILDING_ITSUKUSHIMA',	'RESOURCE_PEARLS',	'YIELD_FAITH',	2),
				('BUILDING_ITSUKUSHIMA',	'RESOURCE_WHALE',	'YIELD_FAITH',	2);

	INSERT INTO Building_ImprovementYieldChangesGlobal 
				(BuildingType,				ImprovementType,				YieldType,		Yield) 
	VALUES		('BUILDING_ITSUKUSHIMA',	'IMPROVEMENT_FISHING_BOATS',	'YIELD_CULTURE',	1);

	INSERT INTO Building_SeaPlotYieldChanges 
				(BuildingType,				YieldType,		Yield) 
	VALUES		('BUILDING_ITSUKUSHIMA',	'YIELD_FAITH',	1);
	
	INSERT INTO Building_FeatureYieldChanges
				(BuildingType,					FeatureType,		YieldType,			Yield) 
	VALUES		('BUILDING_ITSUKUSHIMA_DUMMY',	'FEATURE_ATOLL',	'YIELD_CULTURE',	1),
				('BUILDING_ITSUKUSHIMA_DUMMY',	'FEATURE_ATOLL',	'YIELD_FOOD',		1),
				('BUILDING_ITSUKUSHIMA_DUMMY',	'FEATURE_ATOLL',	'YIELD_FAITH',		1);

	-- + increased_border_growth_in_coastal_cities (lua)
	-- + boost_in_coastal_cities_to_atolls (lua)
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,					Flavor) 
	VALUES		('BUILDING_ITSUKUSHIMA',	'FLAVOR_CULTURE',			60),
				('BUILDING_ITSUKUSHIMA',	'FLAVOR_RELIGION',			60),
				('BUILDING_ITSUKUSHIMA',	'FLAVOR_TILE_IMPROVEMENT',	20),
				('BUILDING_ITSUKUSHIMA',	'FLAVOR_EXPANSION',			10),
				('BUILDING_ITSUKUSHIMA',	'FLAVOR_GROWTH',			10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_ITSUKUSHIMA',		'Itsukushima Shrine'),
				('TXT_KEY_WONDER_ITSUKUSHIMA_HELP',		'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Resource: [ICON_RES_CORAL] [COLOR_CYAN]Coral[ENDCOLOR]/[ICON_RES_CRAB] [COLOR_CYAN]Crab[ENDCOLOR]/[ICON_RES_PEARLS] [COLOR_CYAN]Pearls[ENDCOLOR]/[ICON_RES_WHALE] [COLOR_CYAN]Whales[ENDCOLOR].[NEWLINE][NEWLINE]+1 [ICON_FOOD] Food, +1 [ICON_CULTURE] Culture and +1 [ICON_PEACE] Faith to Atolls and [ICON_CULTURE] Culture cost of aquiring new tiles reduced by 50% in coastal Cities. +1 [ICON_PEACE] Faith from Sea tiles. All Fishing Boats in the Empire receive +1 [ICON_CULTURE] Culture.[NEWLINE][NEWLINE]Nearby [ICON_RES_CORAL] Coral: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_CRAB] Crab: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_PEARLS] Pearls: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_WHALE] Whales: +2 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_ITSUKUSHIMA_HELP_CUT', '+1 [ICON_FOOD] Food, +1 [ICON_CULTURE] Culture and +1 [ICON_PEACE] Faith to Atolls and [ICON_CULTURE] Culture cost of aquiring new tiles reduced by 50% in coastal Cities. +1 [ICON_PEACE] Faith from Sea tiles. All Fishing Boats in the Empire receive +1 [ICON_CULTURE] Culture.[NEWLINE][NEWLINE]Nearby [ICON_RES_CORAL] Coral: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_CRAB] Crab: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_PEARLS] Pearls: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_WHALE] Whales: +2 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_ITSUKUSHIMA_QUOTE',	'[NEWLINE]"Faith is not the clinging to a shrine but an endless pilgrimage of the heart."[NEWLINE] - Abraham Joshua Heschel[NEWLINE]'),
				('TXT_KEY_WONDER_ITSUKUSHIMA_PEDIA',	'Itsukushima shrine is one of the most iconic Shinto shrines in Japan. It is world renowned for it''s iconic "Floating" torii gate, which pilgrims had to steer their boat through before they could enter the shrine''s grounds. It is located on the island of Itsukushima, at the western end of Japan''s "inland sea". There has been a shrine at the location since approximately 628 CE, when one was constructed under the reign of Empresss Suiko. The current design, however, dates from 1168, when the shrine was constructed with funds provided by the warlord Taiya no Kiyomori.[NEWLINE][NEWLINE]  The shrine, and it''s floating Torii, are one of the "Three Views of Japan", along with the sandbar at Amanohashidate, and Matsushima bay. These have been designated as the most beautiful scenes of Japan, and are frequented by tourists.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- QALHAT (NEW)
	UPDATE Buildings SET Cost = 500, PrereqTech = 'TECH_COMPASS', NumPoliciesNeeded = 8, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_QALHAT';
	UPDATE Buildings SET WonderSplashAnchor = 'R,C' WHERE Type = 'BUILDING_QALHAT';
	
	UPDATE Buildings SET Hill = 1, Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_QALHAT';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,		ResourceType) 
	VALUES		('BUILDING_QALHAT',	'RESOURCE_HORSE');
	---------------------------------------------------------
	UPDATE Buildings SET NumTradeRouteBonus = 1, TradeRouteSeaGoldBonus = 100, TradeRouteSeaDistanceModifier = 100 WHERE Type = 'BUILDING_QALHAT';

	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield)
	VALUES		('BUILDING_QALHAT',			'YIELD_GOLD',		3),
				('BUILDING_QALHAT_DUMMY',	'YIELD_CULTURE',	2);

	INSERT INTO Building_ResourceYieldChanges
				(BuildingType,		ResourceType,		YieldType,		Yield) 
	VALUES		('BUILDING_QALHAT',	'RESOURCE_HORSE',	'YIELD_GOLD',	2);

	INSERT INTO Building_UnitCombatProductionModifiers 	
				(BuildingType,		UnitCombatType,		Modifier) 
	VALUES		('BUILDING_QALHAT', 'UNITCOMBAT_CARGO',	50);

	-- + culture_for_each_sea_trade_route_to_other_major_civ (lua)
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,					Flavor) 
	VALUES		('BUILDING_QALHAT',	'FLAVOR_CULTURE',			30),
				('BUILDING_QALHAT',	'FLAVOR_GOLD',				50),
				('BUILDING_QALHAT',	'FLAVOR_I_SEA_TRADE_ROUTE',	60),
				('BUILDING_QALHAT',	'FLAVOR_PRODUCTION',		10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_QALHAT',			'Qalhat'),
				('TXT_KEY_WONDER_QALHAT_HELP',		'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Resource: [ICON_RES_HORSE] [COLOR_CYAN]Horses[ENDCOLOR].[NEWLINE][NEWLINE]Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. Sea [ICON_INTERNATIONAL_TRADE] Trade Routes gain +100% range and +1 [ICON_GOLD] Gold. +50% [ICON_PRODUCTION] Production of Cargo Ships. +2 [ICON_CULTURE] Culture for each [ICON_INTERNATIONAL_TRADE] Sea Trade Route from or to other major Player.[NEWLINE][NEWLINE]Nearby [ICON_RES_HORSE] Horses: +2 [ICON_GOLD].'),
				('TXT_KEY_WONDER_QALHAT_HELP_CUT',	'Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. Sea [ICON_INTERNATIONAL_TRADE] Trade Routes gain +100% range and +1 [ICON_GOLD] Gold. +50% [ICON_PRODUCTION] Production of Cargo Ships. +2 [ICON_CULTURE] Culture for each [ICON_INTERNATIONAL_TRADE] Sea Trade Route from or to other major Player.[NEWLINE][NEWLINE]Nearby [ICON_RES_HORSE] Horses: +2 [ICON_GOLD].'),
				('TXT_KEY_WONDER_QALHAT_QUOTE',		'[NEWLINE]"The haven is very large and good, and is frequented by numerous ships with goods from India, and from this city the spices and other merchandize are distributed among the cities and towns of the interior. They also export many good Arab horses from this to India."[NEWLINE] - Marco Polo[NEWLINE]'),
				('TXT_KEY_WONDER_QALHAT_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- NOTRE DAME
	UPDATE Buildings SET NumPoliciesNeeded = 0 WHERE Type = 'BUILDING_NOTRE_DAME';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_NOTRE_DAME';
	UPDATE Buildings SET River = 1, Flat = 1 WHERE Type = 'BUILDING_NOTRE_DAME';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_BUILDING_NOTRE_DAME_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_NOTRE_DAME_HELP';
				
	UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Improvement: [COLOR_CYAN]Lumber Mill[ENDCOLOR].[NEWLINE][NEWLINE]'||'Requires completion of [COLOR_MAGENTA]Tradition[ENDCOLOR] Branch. '||Text WHERE Tag ='TXT_KEY_BUILDING_NOTRE_DAME_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- KRAK DES CHEVALIERS (NEW)
	UPDATE Buildings SET Cost = 500, PrereqTech = 'TECH_MACHINERY', NumPoliciesNeeded = 8, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_CHEVALIERS';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_CHEVALIERS';
	
	UPDATE Buildings SET Hill = 1, IsNoWater = 1 WHERE Type = 'BUILDING_CHEVALIERS';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------
	UPDATE Buildings SET Defense = 3000, CitySupplyFlat = 1, FoodKept = 10 WHERE Type = 'BUILDING_CHEVALIERS';
	UPDATE Buildings SET Defense = 500, CitySupplyFlat = 1 WHERE Type = 'BUILDING_CHEVALIERS_DUMMY';

	INSERT INTO Building_YieldChanges 
				(BuildingType,					YieldType,			Yield)
	VALUES		('BUILDING_CHEVALIERS',			'YIELD_FOOD',		1),
				('BUILDING_CHEVALIERS',			'YIELD_PRODUCTION', 1),
				('BUILDING_CHEVALIERS',			'YIELD_FAITH',		1),
				('BUILDING_CHEVALIERS_DUMMY',	'YIELD_FAITH',		1);

	INSERT INTO Building_UnitCombatProductionModifiers 	
				(BuildingType,			UnitCombatType,			Modifier) 
	VALUES		('BUILDING_CHEVALIERS', 'UNITCOMBAT_MOUNTED',	20),
				('BUILDING_CHEVALIERS', 'UNITCOMBAT_SIEGE',		20);

	INSERT INTO Building_FreeUnits 
				(BuildingType,			UnitType,				NumUnits)
	VALUES		('BUILDING_CHEVALIERS', 'UNIT_GREAT_GENERAL',	1);

	-- + bonuses_in_non-coastal_cities (lua)
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_CHEVALIERS', 'FLAVOR_CITY_DEFENSE',	60),
				('BUILDING_CHEVALIERS', 'FLAVOR_OFFENSE',		30),
				('BUILDING_CHEVALIERS', 'FLAVOR_RELIGION',		20),
				('BUILDING_CHEVALIERS', 'FLAVOR_PRODUCTION',	20),
				('BUILDING_CHEVALIERS', 'FLAVOR_GROWTH',		10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text)
	VALUES		('TXT_KEY_BUILDING_CHEVALIERS',			'Krak des Chevaliers'),
				('TXT_KEY_WONDER_CHEVALIERS_HELP',		'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR].[NEWLINE][NEWLINE]Greatly increase [ICON_STRENGTH] Combat Strength and +20% [ICON_PRODUCTION] Production of Mounted and Siege Units in this City. Carries over 10% of [ICON_FOOD] Food after [ICON_CITIZEN] City Growth. +1 [ICON_WAR] Military Unit Supply Cap. All other [COLOR_POSITIVE_TEXT]non-coastal[ENDCOLOR] Cities receive +1 [ICON_PEACE] Faith, +5 [ICON_STRENGTH] City Defense and +1 [ICON_WAR] Military Unit Supply Cap.'),
				('TXT_KEY_WONDER_CHEVALIERS_HELP_CUT',	'Greatly increase [ICON_STRENGTH] Combat Strength and +20% [ICON_PRODUCTION] Production of Mounted and Siege Units in this City. Carries over 10% of [ICON_FOOD] Food after [ICON_CITIZEN] City Growth. +1 [ICON_WAR] Military Unit Supply Cap. All other [COLOR_POSITIVE_TEXT]non-coastal[ENDCOLOR] Cities receive +1 [ICON_PEACE] Faith, +5 [ICON_STRENGTH] City Defense and +1 [ICON_WAR] Military Unit Supply Cap.'),
				('TXT_KEY_WONDER_CHEVALIERS_QUOTE',		'[NEWLINE]"I have long since been aware that your king is a man of the greatest honor and bravery, but he is imprudent."[NEWLINE] - Saladin to Richard I the Lionheart[NEWLINE]'),
				('TXT_KEY_WONDER_CHEVALIERS_PEDIA',		'Krak des Chevaliers, also Crac des Chevaliers, is a Crusader castle in Syria and one of the most important preserved medieval castles in the world. The site was first inhabited in the 11th century by a settlement of Kurds; as a result it was known as Hisn al Akrad, meaning the "Castle of the Kurds". In 1142 it was given by Raymond II, Count of Tripoli, to the Knights Hospitaller. It remained in their possession until it fell in 1271. It became known as Crac de l''Ospital; the name Krak des Chevaliers was coined in the 19th century.');
--============================================--
-- RENAISSANCE ERA
--============================================--
-- AIT BENHADDOU (NEW)
	UPDATE Buildings SET Cost = 800, PrereqTech = 'TECH_BANKING', NumPoliciesNeeded = 10, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_BENHADDOU';
	UPDATE Buildings SET WonderSplashAnchor = 'L,T' WHERE Type = 'BUILDING_BENHADDOU';
	
	UPDATE Buildings SET Hill = 1, IsNoWater = 1, NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_BENHADDOU';

	-- + IsNoCoast (lua)
	---------------------------------------------------------
	UPDATE Buildings SET NumTradeRouteBonus = 1, EnhancedYieldTech = 'TECH_RADIO', TechEnhancedTourism = 4 WHERE Type = 'BUILDING_BENHADDOU';

	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield)
	VALUES		('BUILDING_BENHADDOU',		'YIELD_FOOD',		2),
				('BUILDING_BENHADDOU',		'YIELD_GOLD',		2),
				('BUILDING_BENHADDOU',		'YIELD_CULTURE',	2);

	INSERT INTO Building_RiverPlotYieldChanges
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_BENHADDOU',	'YIELD_FOOD',	1);
	
	INSERT INTO Building_ImprovementYieldChanges
				(BuildingType,			ImprovementType,			YieldType,			Yield) 
	VALUES		('BUILDING_BENHADDOU',	'IMPROVEMENT_TRADING_POST',	'YIELD_TOURISM',	3);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_BENHADDOU',	'FLAVOR_CULTURE',		60),
				('BUILDING_BENHADDOU',	'FLAVOR_GROWTH',		30),
				('BUILDING_BENHADDOU',	'FLAVOR_GOLD',			30);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_BENHADDOU',			'Ait Benhaddou'),
				('TXT_KEY_WONDER_BENHADDOU_HELP',		'Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR].[NEWLINE][NEWLINE]Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. +1 [ICON_FOOD] Food from River tiles woked by this City. Nearby Villages receive +3 [ICON_TOURISM] Tourism. +4 [ICON_TOURISM] Tourism with [COLOR_CYAN]Radio[ENDCOLOR].'),
				('TXT_KEY_WONDER_BENHADDOU_HELP_CUT',	'Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. +1 [ICON_FOOD] Food from River tiles woked by this City. Nearby Villages receive +3 [ICON_TOURISM] Tourism. +4 [ICON_TOURISM] Tourism with [COLOR_CYAN]Radio[ENDCOLOR].'),
				('TXT_KEY_WONDER_BENHADDOU_QUOTE',		'[NEWLINE]"Are you not entertained?"[NEWLINE] - Maximus Decimus Meridius[NEWLINE]'),
				('TXT_KEY_WONDER_BENHADDOU_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- KILWA KISIWANI (NEW)
	UPDATE Buildings SET Cost = 800, PrereqTech = 'TECH_BANKING', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_KILWA_KISIWANI';
	UPDATE Buildings SET WonderSplashAnchor = 'C,B' WHERE Type = 'BUILDING_KILWA_KISIWANI';
	
	UPDATE Buildings SET Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_KILWA_KISIWANI';

	-- + Mine/Camp(3) (lua)
	---------------------------------------------------------
	UPDATE Buildings SET NumTradeRouteBonus = 2 WHERE Type = 'BUILDING_KILWA_KISIWANI';

	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield)
	VALUES		('BUILDING_KILWA_KISIWANI',	'YIELD_GOLD',		2);

	INSERT INTO Building_ResourceQuantity
				(BuildingType,				ResourceType,			Quantity) 
	VALUES		('BUILDING_KILWA_KISIWANI',	'RESOURCE_PORCELAIN',	1),
				('BUILDING_KILWA_KISIWANI',	'RESOURCE_JEWELRY',		1);

	INSERT INTO Building_ResourceYieldChanges	(BuildingType,						ResourceType,		YieldType,		Yield) 
	SELECT DISTINCT								'BUILDING_KILWA_KISIWANI_DUMMY',	Type,				'YIELD_GOLD',	1
	FROM Resources WHERE ResourceUsage = 2;

	INSERT INTO Building_ResourceYieldChanges	(BuildingType,						ResourceType,		YieldType,			Yield) 
	SELECT DISTINCT								'BUILDING_KILWA_KISIWANI_DUMMY',	Type,				'YIELD_PRODUCTION',	1
	FROM Resources WHERE ResourceUsage = 1;
	-- +production_gold_to_local_luxuries_strategics (lua)
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor)
	VALUES		('BUILDING_KILWA_KISIWANI',	'FLAVOR_GOLD',			60),
				('BUILDING_KILWA_KISIWANI',	'FLAVOR_PRODUCTION',	20),
				('BUILDING_KILWA_KISIWANI',	'FLAVOR_HAPPINESS',		40);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_KILWA_KISIWANI',			'Kilwa Kisiwani'),
				('TXT_KEY_WONDER_KILWA_KISIWANI_HELP',		'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Improvement: [COLOR_CYAN]3 (Mines + Camps)[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Statecraft[ENDCOLOR] Branch. Receive 1 copy of [ICON_RES_PORCELAIN] Porcelain and [ICON_RES_JEWELRY] Jewelry. Gain 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slots. +1 [ICON_PRODUCTION] Production from Strategic and +1 [ICON_GOLD] Gold from Luxury resources worked by this City.'),
				('TXT_KEY_WONDER_KILWA_KISIWANI_HELP_CUT',	'Receive 1 copy of [ICON_RES_PORCELAIN] Porcelain and [ICON_RES_JEWELRY] Jewelry. Gain 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slots. +1 [ICON_PRODUCTION] Production from Strategic and +1 [ICON_GOLD] Gold from Luxury resources worked by this City.'),
				('TXT_KEY_WONDER_KILWA_KISIWANI_QUOTE',		'[NEWLINE]"Kilwa is one of the most beautifully built cities in the world. The houses there are entirely made of wood, their rooftops out of rope grass, and it rains with great vigour."[NEWLINE] - Ibn Battuta[NEWLINE]'),
				('TXT_KEY_WONDER_KILWA_KISIWANI_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GLOBE THETER
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_GLOBE_THEATER';
	UPDATE Buildings SET River = 1 WHERE Type = 'BUILDING_GLOBE_THEATER';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,				BuildingClassType) 
	VALUES		('BUILDING_GLOBE_THEATER',	'BUILDINGCLASS_BATH'),
				('BUILDING_GLOBE_THEATER',	'BUILDINGCLASS_AMPHITHEATER');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_GLOBE_THEATER_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GLOBE_THEATER_HELP';
				
	UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR]; Building: [COLOR_CYAN]Amphitheater[ENDCOLOR], [COLOR_CYAN]Baths[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GLOBE_THEATER_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ST. PETER'S BASILICA (NEW)
	UPDATE Buildings SET Cost = 800, PrereqTech = 'TECH_PRINTING_PRESS', NumPoliciesNeeded = 10, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_ST_PETERS';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_ST_PETERS';
	
	UPDATE Buildings SET Flat = 1 WHERE Type = 'BUILDING_ST_PETERS';
	---------------------------------------------------------
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_CATHEDRAL', ExtraLeagueVotes = 1 WHERE Type = 'BUILDING_ST_PETERS';

	INSERT INTO Building_YieldChanges 
				(BuildingType,					YieldType,			Yield)
	VALUES		('BUILDING_ST_PETERS',			'YIELD_FAITH',		4),
				('BUILDING_ST_PETERS',			'YIELD_CULTURE',	1);

	INSERT INTO Building_FreeUnits 
				(BuildingType,			UnitType,				NumUnits)
	VALUES		('BUILDING_ST_PETERS', 'UNIT_INQUISITOR',		3);

	INSERT INTO Building_BuildingClassHappiness (BuildingType,			BuildingClassType,	Happiness)
	SELECT DISTINCT								'BUILDING_ST_PETERS',	BuildingClass,		1
	FROM Buildings WHERE Cost = -1 and FaithCost > 0 AND WonderSplashImage IS NULL;
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_ST_PETERS',	'FLAVOR_RELIGION',		60),
				('BUILDING_ST_PETERS',	'FLAVOR_PRODUCTION',	20),
				('BUILDING_ST_PETERS',	'FLAVOR_HAPPINESS',		40),
				('BUILDING_ST_PETERS',	'FLAVOR_DIPLOMACY',		10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_ST_PETERS',			'St. Peter''s Basilica'),
				('TXT_KEY_WONDER_ST_PETERS_HELP',		'Special: [COLOR_CYAN]Holy City[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR][NEWLINE][NEWLINE]Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Cathedral and 3 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Inquisitors in the City in which it is built. +1 [ICON_HAPPINESS_1] Happiness from all unique Religious buildings. Receive 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_DOPLOMAT] World Congress Delegate.'),
				('TXT_KEY_WONDER_ST_PETERS_HELP_CUT',	'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Cathedral and 3 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Inquisitors. +1 [ICON_HAPPINESS_1] Happiness from all unique Religious buildings. Receive 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_DOPLOMAT] World Congress Delegate.'),
				('TXT_KEY_WONDER_ST_PETERS_QUOTE',		'[NEWLINE]"A rock pile ceases to be a rock pile the moment a single man contemplates it, bearing within him the image of a cathedral."[NEWLINE] - Antoine de Saint-Exupery[NEWLINE]'),
				('TXT_KEY_WONDER_ST_PETERS_PEDIA',		'Basilica Papale di San Pietro in Vaticano, better known as St. Peter''s Basilica, is a late Renaissance church in Vatican City, with the largest interior of any Christian church in the world. The supposed burial site of the apostle Peter in 64 AD, some years later a shrine was constructed there. Replacing the shrine, construction of "old" St. Peter''s was begun by the Emperor Constantine between 319 and 333 AD.[NEWLINE][NEWLINE]  Having fallen into serious disrepair over the centuries, Pope Julius II in 1505 determined to demolish the old church and replace it with a monumental structure, a construction project that spanned the next 120 years under a succession of popes and architects. To finance the colossal project, a number of popes authorized the wholesale selling of indulgences, a practice that led in part to Martin Luther''s protestant movement.[NEWLINE][NEWLINE]  With work by some of the Renaissance''s leading figures - Michelangelo, Raphael, Bramante, Bernini and others - the church now stands as one of the great treasures of Western civilization.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- CHICHEN ITZA
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_CHICHEN_ITZA';
	UPDATE Buildings SET Flat = 1, NearbyTerrainRequired = 'TERRAIN_PLAINS' WHERE Type = 'BUILDING_CHICHEN_ITZA';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_CHICHEN_ITZA',	'FEATURE_FOREST');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_TAJ_MAHAL_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TAJ_MAHAL_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Plains[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_TAJ_MAHAL_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GOLDEN PAVILION (NEW)
	UPDATE Buildings SET Cost = 800, PrereqTech = 'TECH_ASTRONOMY', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_KINKAKU_JI';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_KINKAKU_JI';
	
	UPDATE Buildings SET FreshWater = 1 WHERE Type = 'BUILDING_KINKAKU_JI';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_KINKAKU_JI',		'FEATURE_FOREST'),
				('BUILDING_KINKAKU_JI',		'FEATURE_JUNGLE');
	---------------------------------------------------------
	UPDATE Buildings SET GreatWorkSlotType = 'GREAT_WORK_SLOT_LITERATURE', GreatWorkCount = 1 WHERE Type = 'BUILDING_KINKAKU_JI';

	INSERT INTO Building_YieldChanges 
				(BuildingType,					YieldType,			Yield)
	VALUES		('BUILDING_KINKAKU_JI',			'YIELD_FAITH',		2),
				('BUILDING_KINKAKU_JI',			'YIELD_CULTURE',	2);

	INSERT INTO Building_LakePlotYieldChanges 
				(BuildingType,			YieldType,			Yield)
	VALUES		('BUILDING_KINKAKU_JI',	'YIELD_CULTURE',	1),
				('BUILDING_KINKAKU_JI',	'YIELD_FAITH',		1),
				('BUILDING_KINKAKU_JI',	'YIELD_FOOD',		1);
	
	INSERT INTO Building_FeatureYieldChanges
				(BuildingType,			FeatureType,			YieldType,				Yield) 
	VALUES		('BUILDING_KINKAKU_JI',	'FEATURE_FOREST',		'YIELD_CULTURE',		1),
				('BUILDING_KINKAKU_JI',	'FEATURE_FOREST',		'YIELD_FAITH',			1),
				('BUILDING_KINKAKU_JI',	'FEATURE_FOREST',		'YIELD_FOOD',			1),
				('BUILDING_KINKAKU_JI',	'FEATURE_JUNGLE',		'YIELD_CULTURE',		1),
				('BUILDING_KINKAKU_JI',	'FEATURE_JUNGLE',		'YIELD_FAITH',			1),
				('BUILDING_KINKAKU_JI',	'FEATURE_JUNGLE',		'YIELD_FOOD',			1);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_KINKAKU_JI',	'FLAVOR_RELIGION',		50),
				('BUILDING_KINKAKU_JI',	'FLAVOR_CULTURE',		50),
				('BUILDING_KINKAKU_JI',	'FLAVOR_GROWTH',		30);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_KINKAKU_JI',			'Golden Pavilion'),
				('TXT_KEY_WONDER_KINKAKU_JI_HELP',		'Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR], [COLOR_CYAN]Forest[ENDCOLOR]/[COLOR_CYAN]Jungle[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Fealty[ENDCOLOR] Branch. Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Pagoda in the City in which it is built. +1 [ICON_FOOD] Food, +1 [ICON_PEACE] Faith and +1 [ICON_CULTURE] Culture from each Lake, Forest and Jungle tile worked by the City. Has 1 slot for [ICON_GREAT_WORK] Great Works of Literature.'),
				('TXT_KEY_WONDER_KINKAKU_JI_HELP_CUT',	'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Pagoda. +1 [ICON_FOOD] Food, +1 [ICON_PEACE] Faith and +1 [ICON_CULTURE] Culture from each Lake, Forest and Jungle tile worked by the City. Has 1 slot for [ICON_GREAT_WORK] Great Works of Literature.'),
				('TXT_KEY_WONDER_KINKAKU_JI_QUOTE',		'[NEWLINE]"A book holds a house of Gold."[NEWLINE] - Chinese Proverb[NEWLINE]'),
				('TXT_KEY_WONDER_KINKAKU_JI_PEDIA',		'Kinkaku-ji (literally "Temple of the Golden Pavilion") is a Buddhist temple in Kyoto, Japan. it was originally built as a villa at an unknown date, however was bought in 1397 by Shogun Ashikaga Yoshimitsu, who converted the villa into the Kinkaku-ji complex. Upon his death, it was converted to a Zen temple by his son.[NEWLINE][NEWLINE]  In July 1950 it was burnt down by a Monk with a mental illness, causing a massive renovation project to be undertaken. The renovations took five years, completed in 1955. The exterior of the upper two floors were covered in pure gold leave, giving the name "Golden Pavilion", however it is unclear wether the gold leaf was present in the pre-1950''s version.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- HIMEJI CASTLE
	UPDATE Buildings SET WonderSplashAnchor = 'C,T' WHERE Type = 'BUILDING_HIMEJI_CASTLE';
	UPDATE Buildings SET Hill = 1, Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_HIMEJI_CASTLE';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_HIMEJI_CASTLE',	'FEATURE_FOREST');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_HIMEJI_CASTLE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HIMEJI_CASTLE_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HIMEJI_CASTLE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- OLD BRIDGE (NEW)
	UPDATE Buildings SET Cost = 800, PrereqTech = 'TECH_GUNPOWDER', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_OLD_BRIDGE';
	UPDATE Buildings SET WonderSplashAnchor = 'L,C' WHERE Type = 'BUILDING_OLD_BRIDGE';
	
	UPDATE Buildings SET River = 1, Hill = 1 WHERE Type = 'BUILDING_OLD_BRIDGE';

	-- + Peace (lua)
	---------------------------------------------------------
	UPDATE Buildings SET Happiness = 1, SpecialistType = 'SPECIALIST_CIVIL_SERVANT', GreatPeopleRateChange = 2, ExtraLeagueVotes = 2 WHERE Type = 'BUILDING_OLD_BRIDGE';

	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield)
	VALUES		('BUILDING_OLD_BRIDGE',	'YIELD_CULTURE',	1);
	
	INSERT INTO Building_FreeUnits 
				(BuildingType,				UnitType,				NumUnits)
	VALUES		('BUILDING_OLD_BRIDGE',		'UNIT_GREAT_DIPLOMAT',	1);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_OLD_BRIDGE',	'FLAVOR_CULTURE',		10),
				('BUILDING_OLD_BRIDGE',	'FLAVOR_GREAT_PEOPLE',	30),
				('BUILDING_OLD_BRIDGE',	'FLAVOR_DIPLOMACY',		60),
				('BUILDING_OLD_BRIDGE',	'FLAVOR_HAPPINESS',		30);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_OLD_BRIDGE',			'Old Bridge in Mostar'),
				('TXT_KEY_WONDER_OLD_BRIDGE_HELP',		'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Player: [COLOR_CYAN]at Peace[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Statecraft[ENDCOLOR] Branch. Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_DIPLOMAT] Great Diplomat and 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_DOPLOMAT] World Congress Delegates.'),
				('TXT_KEY_WONDER_OLD_BRIDGE_HELP_CUT',	'Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_DIPLOMAT] Great Diplomat and 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_DOPLOMAT] World Congress Delegates.'),
				('TXT_KEY_WONDER_OLD_BRIDGE_QUOTE',		'[NEWLINE]"A refugee is someone who survived and who can create the future."[NEWLINE] - Amela Koluder[NEWLINE]'),
				('TXT_KEY_WONDER_OLD_BRIDGE_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- LEANING TOWER OF PISA
	UPDATE Buildings SET WonderSplashAnchor = 'L,T' WHERE Type = 'BUILDING_LEANING_TOWER';
	UPDATE Buildings SET Flat = 1, AnyWater = 1 WHERE Type = 'BUILDING_LEANING_TOWER';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_LEANING_TOWER',	'FEATURE_MARSH');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_LEANING_TOWER_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_LEANING_TOWER_HELP';
				
	UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Water[ENDCOLOR], [COLOR_CYAN]Marsh[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_LEANING_TOWER_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MEENAKSHI TEMPLE (NEW)
	UPDATE Buildings SET Cost = 800, PrereqTech = 'TECH_CHEMISTRY', NumPoliciesNeeded = 10, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_MEENAKSHI';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_MEENAKSHI';
	
	UPDATE Buildings SET FreshWater = 1 WHERE Type = 'BUILDING_MEENAKSHI';
	---------------------------------------------------------
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_MANDIR' WHERE Type = 'BUILDING_MEENAKSHI';

	INSERT INTO Building_YieldChanges 
				(BuildingType,					YieldType,			Yield)
	VALUES		('BUILDING_MEENAKSHI',			'YIELD_FOOD',		4),
				('BUILDING_MEENAKSHI',			'YIELD_CULTURE',	2);

	INSERT INTO Building_YieldChangesPerPopInEmpire
				(BuildingType,			YieldType,			Yield)
	VALUES		('BUILDING_MEENAKSHI',	'YIELD_FAITH',		25);

	INSERT INTO Building_LakePlotYieldChanges 
				(BuildingType,			YieldType,			Yield)
	VALUES		('BUILDING_MEENAKSHI',	'YIELD_FAITH',	1);	
	
	INSERT INTO Building_RiverPlotYieldChanges
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_MEENAKSHI',	'YIELD_FAITH',	1);
	
	INSERT INTO Building_YieldFromFaithPurchase
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_MEENAKSHI',	'YIELD_FOOD',	20);
	
	INSERT INTO Building_GreatWorkYieldChanges
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_MEENAKSHI',	'YIELD_FOOD',	1);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_MEENAKSHI',	'FLAVOR_GROWTH',		60),
				('BUILDING_MEENAKSHI',	'FLAVOR_RELIGION',		60),
				('BUILDING_MEENAKSHI',	'FLAVOR_CULTURE',		10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_MEENAKSHI',			'Meenakshi Temple'),
				('TXT_KEY_WONDER_MEENAKSHI_HELP',		'Special: [COLOR_CYAN]Holy City[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR][NEWLINE][NEWLINE]Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Mandir in the City in which it is built. Receive 20 [ICON_FOOD] Food from each [ICON_PEACE] Faith Purchase. All [ICON_GREAT_WORK] Great Works in the Empire receive +1 [ICON_FOOD] Food. +1 [ICON_PEACE] Faith from Lake and River tiles worked by this City.'),
				('TXT_KEY_WONDER_MEENAKSHI_HELP_CUT',	'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Mandir in the City in which it is built. Receive 20 [ICON_FOOD] Food from each [ICON_PEACE] Faith Purchase. All [ICON_GREAT_WORK] Great Works in the Empire receive +1 [ICON_FOOD] Food. +1 [ICON_PEACE] Faith from Lake and River tiles worked by this City.'),
				('TXT_KEY_WONDER_MEENAKSHI_QUOTE',		'[NEWLINE]"We greet you, Devi Meenakshi, she who shines like a thousand-million suns, adorned with bracelets and garlands... She who is auspicious, she who embodies existence. I always bow to you, whose compassion is an ocean."[NEWLINE] - Adi Shankara[NEWLINE]'),
				('TXT_KEY_WONDER_MEENAKSHI_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PORCELAIN TOWER
	UPDATE Buildings SET WonderSplashAnchor = 'L,T' WHERE Type = 'BUILDING_PORCELAIN_TOWER';
	UPDATE Buildings SET River = 1 WHERE Type = 'BUILDING_PORCELAIN_TOWER';
	
	-- + CS_Ally(2) (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_PORCELAIN_TOWER_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PORCELAIN_TOWER_HELP';
				
	UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR]; Player: [COLOR_CYAN]2 CS Allies[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PORCELAIN_TOWER_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- TAJ MAHAL
	UPDATE Buildings SET WonderSplashImage = 'Wonder_Taj_Mahal_splash.dds' WHERE Type = 'BUILDING_TAJ_MAHAL';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_TAJ_MAHAL';
	UPDATE Buildings SET Flat = 1, River = 1 WHERE Type = 'BUILDING_TAJ_MAHAL';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_PYRAMIDS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PYRAMIDS_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PYRAMIDS_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- UFFIZI
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_UFFIZI';
	UPDATE Buildings SET River = 1 WHERE Type = 'BUILDING_UFFIZI';

	-- + GW_of_Art(2) (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_UFFIZI_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_UFFIZI_HELP';
				
	UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR]; Great Works: [COLOR_CYAN]2 [ICON_GREAT_WORK] GW of Art[ENDCOLOR].[NEWLINE][NEWLINE]'||'Requires completion of [COLOR_MAGENTA]Artistry[ENDCOLOR] Branch. '||Text WHERE Tag ='TXT_KEY_WONDER_UFFIZI_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PETERHOF (NEW)
	UPDATE Buildings SET Cost = 900, PrereqTech = 'TECH_ECONOMICS', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_PETERHOF';
	UPDATE Buildings SET WonderSplashAnchor = 'L,T' WHERE Type = 'BUILDING_PETERHOF';
	
	UPDATE Buildings SET Flat = 1, Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_PETERHOF';
	---------------------------------------------------------
	UPDATE Buildings SET WLTKDTurns = 20, GreatPeopleRateModifier = 10 WHERE Type = 'BUILDING_PETERHOF';

	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,					Yield)
	VALUES		('BUILDING_PETERHOF',	'YIELD_GOLDEN_AGE_POINTS',	6);

	INSERT INTO Building_WLTKDYieldMod
				(BuildingType,			YieldType,					Yield)
	VALUES		('BUILDING_PETERHOF',	'YIELD_GOLDEN_AGE_POINTS',	15),
				('BUILDING_PETERHOF',	'YIELD_GOLD',				15),
				('BUILDING_PETERHOF',	'YIELD_PRODUCTION',			15);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_PETERHOF',	'FLAVOR_GOLD',			40),
				('BUILDING_PETERHOF',	'FLAVOR_PRODUCTION',	40),
				('BUILDING_PETERHOF',	'FLAVOR_HAPPINESS',		40),
				('BUILDING_PETERHOF',	'FLAVOR_GREAT_PEOPLE',	20);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_PETERHOF',			'Peterhof'),
				('TXT_KEY_WONDER_PETERHOF_HELP',		'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Imperialism[ENDCOLOR] Branch. +10% generation of [ICON_GREAT_PEOPLE] Great People in this City. Starts 20 turn of [ICON_HAPPINESS_1] WLTKD in this City. +15% [ICON_PRODUCTION] Production, [ICON_GOLD] Gold and [ICON_GOLDEN_AGE] Golden Age Points during [ICON_HAPPINESS_1] WLTKD.'),
				('TXT_KEY_WONDER_PETERHOF_HELP_CUT',	'+10% generation of [ICON_GREAT_PEOPLE] Great People in this City. Starts 20 turn of [ICON_HAPPINESS_1] WLTKD in this City. +15% [ICON_PRODUCTION] Production, [ICON_GOLD] Gold and [ICON_GOLDEN_AGE] Golden Age Points during [ICON_HAPPINESS_1] WLTKD.'),
				('TXT_KEY_WONDER_PETERHOF_QUOTE',		'[NEWLINE]"It is my great desire to reform my subjects, and yet I am ashamed to confess that I am unable to reform myself."[NEWLINE] - Peter The Great[NEWLINE]'),
				('TXT_KEY_WONDER_PETERHOF_PEDIA',		'The Peterhof Palace is a series of palaces and gardens located in Saint Petersburg, Russia, laid out on the orders of Peter the Great. These Palaces and gardens are sometimes referred as the "Russian Versailles". The palace-ensemble along with the city centre is recognised as a UNESCO World Heritage Site.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- BAKKEN (NEW)
	UPDATE Buildings SET Cost = 900, PrereqTech = 'TECH_ECONOMICS', NumPoliciesNeeded = 10, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_BAKKEN';
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_BAKKEN';
	
	UPDATE Buildings SET Hill = 1 WHERE Type = 'BUILDING_BAKKEN';
	---------------------------------------------------------
	UPDATE Buildings SET Happiness = 3, WLTKDTurns = 10 WHERE Type = 'BUILDING_BAKKEN';

	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,			Yield)
	VALUES		('BUILDING_BAKKEN',	'YIELD_GOLD',		2),
				('BUILDING_BAKKEN',	'YIELD_CULTURE',	1),
				('BUILDING_BAKKEN',	'YIELD_TOURISM',	3);
	
	INSERT INTO Building_WLTKDYieldMod
				(BuildingType,			YieldType,			Yield)
	VALUES		('BUILDING_BAKKEN',		'YIELD_TOURISM',	33);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,				Flavor)
	VALUES		('BUILDING_BAKKEN',	'FLAVOR_CULTURE',		10),
				('BUILDING_BAKKEN',	'FLAVOR_HAPPINESS',		80),
				('BUILDING_BAKKEN',	'FLAVOR_GOLD',			20);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_BAKKEN',			'Bakken'),
				('TXT_KEY_WONDER_BAKKEN_HELP',		'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Player: [COLOR_CYAN]Happiness > 80%[ENDCOLOR].[NEWLINE][NEWLINE]Starts 10 turn of [ICON_HAPPINESS_1] WLTKD in this City. +33% [ICON_TOURISM] Tourism during [ICON_HAPPINESS_1] WLTKD.'),
				('TXT_KEY_WONDER_BAKKEN_HELP_CUT',	'Starts 10 turn of [ICON_HAPPINESS_1] WLTKD in this City. +33% [ICON_TOURISM] Tourism during [ICON_HAPPINESS_1] WLTKD.'),
				('TXT_KEY_WONDER_BAKKEN_QUOTE',		'[NEWLINE]"Amusement is appealing because we don''t have to think. It spares us the fear and anxiety that might otherwise prey on our thoughts."[NEWLINE] - John Ortberg[NEWLINE]'),
				('TXT_KEY_WONDER_BAKKEN_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- SISTINE CHAPEL
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_SISTINE_CHAPEL';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,				BuildingClassType) 
	VALUES		('BUILDING_SISTINE_CHAPEL',	'BUILDINGCLASS_ARTISTS_GUILD');
	
	-- + Founded_Religion (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_SISTINE_CHAPEL_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_SISTINE_CHAPEL_HELP';
				
	UPDATE Language_en_US SET Text = 'Building: [COLOR_CYAN]Artist''s Guild[ENDCOLOR]; Player: [COLOR_CYAN]Founded Religion[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_SISTINE_CHAPEL_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- SUMMER PALACE
	UPDATE Buildings SET WonderSplashAnchor = 'C,T' WHERE Type = 'BUILDING_SUMMER_PALACE';
	UPDATE Buildings SET Water = 1, MinAreaSize = 1, Hill = 1 WHERE Type = 'BUILDING_SUMMER_PALACE';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_SUMMER_PALACE',	'FEATURE_FOREST');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_BUILDING_SUMMER_PALACE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_SUMMER_PALACE_HELP';
				
	UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR], [COLOR_CYAN]Lake[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_SUMMER_PALACE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- HOUSE OF TRADE OF THE INDIES (NEW)
	UPDATE Buildings SET Cost = 900, PrereqTech = 'TECH_NAVIGATION', NumPoliciesNeeded = 10, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_HOUSE_OF_TRADE';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_HOUSE_OF_TRADE';
	
	UPDATE Buildings SET Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_HOUSE_OF_TRADE';

	-- + CSAlly(2) (lua)
	---------------------------------------------------------
	UPDATE Buildings SET NumTradeRouteBonus = 2, SpecialistType = 'SPECIALIST_MERCHANT', GreatPeopleRateChange = 2 WHERE Type = 'BUILDING_HOUSE_OF_TRADE';

	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,		Yield)
	VALUES		('BUILDING_HOUSE_OF_TRADE',	'YIELD_GOLD',	3);
	
	INSERT INTO Building_FreeUnits 
				(BuildingType,					UnitType,				NumUnits)
	VALUES		('BUILDING_HOUSE_OF_TRADE',		'UNIT_GREAT_ADMIRAL',	1);
	
	INSERT INTO Building_UnitCombatProductionModifiers 	
				(BuildingType,				UnitCombatType,				Modifier) 
	VALUES		('BUILDING_HOUSE_OF_TRADE',	'UNITCOMBAT_NAVALMELEE',	10),
				('BUILDING_HOUSE_OF_TRADE',	'UNITCOMBAT_NAVALRANGED',	10),
				('BUILDING_HOUSE_OF_TRADE',	'UNITCOMBAT_SUBMARINE',		10),
				('BUILDING_HOUSE_OF_TRADE',	'UNITCOMBAT_CARRIER',		10),
				('BUILDING_HOUSE_OF_TRADE',	'UNITCOMBAT_CARGO',			10);	
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor)
	VALUES		('BUILDING_HOUSE_OF_TRADE',	'FLAVOR_GOLD',			60),
				('BUILDING_HOUSE_OF_TRADE',	'FLAVOR_GREAT_PEOPLE',	30),
				('BUILDING_HOUSE_OF_TRADE',	'FLAVOR_NAVAL',			20),
				('BUILDING_HOUSE_OF_TRADE',	'FLAVOR_PRODUCTION',	10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_HOUSE_OF_TRADE',			'House of Trade of the Indies'),
				('TXT_KEY_WONDER_HOUSE_OF_TRADE_HELP',		'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Player: [COLOR_CYAN]2 CS Allies[ENDCOLOR].[NEWLINE][NEWLINE]Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_DIPLOMAT] Great Admiral. Gain 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slots. +10% [ICON_PRODUCTION] Production towards Naval Military Units and Cargo Ships.'),
				('TXT_KEY_WONDER_HOUSE_OF_TRADE_HELP_CUT',	'Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_DIPLOMAT] Great Admiral. Gain 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slots. +10% [ICON_PRODUCTION] Production towards Naval Military Units and Cargo Ships.'),
				('TXT_KEY_WONDER_HOUSE_OF_TRADE_QUOTE',		'[NEWLINE]"All other lands found on the western side of the boundary shall belong to the King and Queen of Castille - and their successors."[NEWLINE] - Treaty of Tordesillas[NEWLINE]'),
				('TXT_KEY_WONDER_HOUSE_OF_TRADE_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- SOLOVIETSKY MONASTERY (NEW)
	UPDATE Buildings SET Cost = 900, PrereqTech = 'TECH_NAVIGATION', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_INDUSTRIAL' WHERE Type = 'BUILDING_SOLOVIETSKY';
	UPDATE Buildings SET WonderSplashAnchor = 'R,T' WHERE Type = 'BUILDING_SOLOVIETSKY';
	
	UPDATE Buildings SET Water = 1, MinAreaSize = 10, NearbyTerrainRequired = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_SOLOVIETSKY';
	---------------------------------------------------------
	UPDATE Buildings SET ExtraCityHitPoints = 50, Defense = 1000, CitySupplyFlat = 1 WHERE Type = 'BUILDING_SOLOVIETSKY';

	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,					Yield)
	VALUES		('BUILDING_SOLOVIETSKY',	'YIELD_PRODUCTION',			1),
				('BUILDING_SOLOVIETSKY',	'YIELD_GOLDEN_AGE_POINTS',	1),
				('BUILDING_SOLOVIETSKY',	'YIELD_FAITH',				1);

	INSERT INTO Building_TerrainYieldChanges
				(BuildingType,				TerrainType,			YieldType,				Yield) 
	VALUES		('BUILDING_SOLOVIETSKY',	'TERRAIN_TUNDRA',		'YIELD_PRODUCTION',		1),
				('BUILDING_SOLOVIETSKY',	'TERRAIN_TUNDRA',		'YIELD_FAITH',			1);

	INSERT INTO Building_UnitCombatProductionModifiers 	
				(BuildingType,				UnitCombatType,				Modifier) 
	VALUES		('BUILDING_SOLOVIETSKY',	'UNITCOMBAT_NAVALMELEE',	15),
				('BUILDING_SOLOVIETSKY',	'UNITCOMBAT_NAVALRANGED',	15),
				('BUILDING_SOLOVIETSKY',	'UNITCOMBAT_SUBMARINE',		15),
				('BUILDING_SOLOVIETSKY',	'UNITCOMBAT_CARRIER',		15);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,					Flavor)
	VALUES		('BUILDING_SOLOVIETSKY',	'FLAVOR_PRODUCTION',	60),
				('BUILDING_SOLOVIETSKY',	'FLAVOR_RELIGION',		30),
				('BUILDING_SOLOVIETSKY',	'FLAVOR_OFFENSE',		10),
				('BUILDING_SOLOVIETSKY',	'FLAVOR_CITY_DEFENSE',	30),
				('BUILDING_SOLOVIETSKY',	'FLAVOR_NAVAL',			30);				
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_SOLOVIETSKY',			'Solovietsky Monastery'),
				('TXT_KEY_WONDER_SOLOVIETSKY_HELP',			'Terrain: [COLOR_CYAN]Tundra[ENDCOLOR], [COLOR_CYAN]Coast[ENDCOLOR].[NEWLINE][NEWLINE]Requires completion of [COLOR_MAGENTA]Fealty[ENDCOLOR] Branch. +1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith from Tundra tiles worked by this City. Greatly increase [ICON_STRENGTH] Combat Strength and Hit Points of this City. +1 [ICON_WAR] Military Unit Supply Cap. +15% [ICON_PRODUCTION] Production towards Naval Military Units.'),
				('TXT_KEY_WONDER_SOLOVIETSKY_HELP_CUT',		'+1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith from Tundra tiles worked by this City. Greatly increase [ICON_STRENGTH] Combat Strength and Hit Points of this City. +1 [ICON_WAR] Military Unit Supply Cap. +15% [ICON_PRODUCTION] Production towards Naval Military Units.'),
				('TXT_KEY_WONDER_SOLOVIETSKY_QUOTE',		'[NEWLINE]"Everything is defeated before love."[NEWLINE] - Elder Thaddeus of Vitovnica[NEWLINE]'),
				('TXT_KEY_WONDER_SOLOVIETSKY_PEDIA',		'The Solovetsky Monastery is a fortified monastery located on the Solovetsky Islands in the White Sea in northern Russia. It was one of the largest Christian citadels in northern Russia before it was converted into a Soviet prison and labor camp in 1926-39, and served as a prototype for the camps of the Gulag system. The monastery has experienced several major changes and military sieges. Its most important structures date from the 16th century, when Filip Kolychev was its hegumen (comparable to an abbot).');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- RED FORT
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_RED_FORT';
	UPDATE Buildings SET River = 1 WHERE Type = 'BUILDING_RED_FORT';
	
	-- + IsNoCoast (lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_RED_FORT_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_RED_FORT_HELP';
				
	UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_RED_FORT_HELP';
--============================================--
-- RELIGIOUS WONDERS (MUST BE BUILT IN HOLY CITY)
--============================================--
-- El Ghriba				- Judaism			- Late Classical
-- Hagia Sophia				- Orthodox/Islam	- Early Medieval
-- Borobudur				- Buddhism			- Early Medieval
-- Al Masjid an-Nabawi		- Islam				- Early Medieval
-- Cathedral of St. Basil	- Orthodox			- Late Medieval
-- St Peter's Basilica		- Catholic			- Early Renaissance
-- Meenakshi Temple			- Hindu				- Early Renaissance
---------------------------------------------------------
UPDATE Buildings SET HolyCity = 1, MutuallyExclusiveGroup = 260 WHERE Type IN
('BUILDING_EL_GHRIBA', 'BUILDING_NABAWI', 'BUILDING_HAGIA_SOPHIA', 'BUILDING_BOROBUDUR', 'BUILDING_KREMLIN', 'BUILDING_ST_PETERS', 'BUILDING_MEENAKSHI');
--============================================--
-- POLICY FINISHERS
--============================================--
-- MutuallyExclusiveGroup indicator works only on the city level, so you cannot build a Wonder in the city where the other exists
-- but you can build it in another city. To achieve true 'mutually exclusive' situation we need a dummy building that will be placed
-- in all your cities and block the construction of the 2nd Wonder.
---------------------------------------------------------
UPDATE Buildings SET MutuallyExclusiveGroup = 261, PolicyType = 'POLICY_TRADITION_FINISHER' 	WHERE Type IN ('BUILDING_MOSQUE_OF_DJENNE',		'BUILDING_NOTRE_DAME',			'BUILDING_SHWEDAGON');
UPDATE Buildings SET MutuallyExclusiveGroup = 262, PolicyType = 'POLICY_LIBERTY_FINISHER' 		WHERE Type IN ('BUILDING_FORBIDDEN_PALACE',		'BUILDING_WARTBURG',			'BUILDING_FALUN');
UPDATE Buildings SET MutuallyExclusiveGroup = 263, PolicyType = 'POLICY_HONOR_FINISHER' 		WHERE Type IN ('BUILDING_ALHAMBRA',				'BUILDING_DAMASCUS',			'BUILDING_GREAT_ZIMBABWE');
UPDATE Buildings SET MutuallyExclusiveGroup = 264, PolicyType = 'POLICY_PIETY_FINISHER' 		WHERE Type IN ('BUILDING_RED_FORT',				'BUILDING_KINKAKU_JI',			'BUILDING_SOLOVIETSKY');
UPDATE Buildings SET MutuallyExclusiveGroup = 265, PolicyType = 'POLICY_PATRONAGE_FINISHER'		WHERE Type IN ('BUILDING_BIG_BEN', 				'BUILDING_KILWA_KISIWANI',		'BUILDING_OLD_BRIDGE');
UPDATE Buildings SET MutuallyExclusiveGroup = 266, PolicyType = 'POLICY_AESTHETICS_FINISHER'	WHERE Type IN ('BUILDING_LOUVRE', 				'BUILDING_UFFIZI'/*,				'BUILDING_MUSEUM_ISLAND'*/);
UPDATE Buildings SET MutuallyExclusiveGroup = 267, PolicyType = 'POLICY_COMMERCE_FINISHER' 		WHERE Type IN ('BUILDING_BROADWAY'/*, 			'BUILDING_RUHR_VALLEY',			'BUILDING_BANFF'*/);
UPDATE Buildings SET MutuallyExclusiveGroup = 268, PolicyType = 'POLICY_EXPLORATION_FINISHER'	WHERE Type IN ('BUILDING_PENTAGON', 			'BUILDING_PETERHOF'/*,			'BUILDING_THULE'*/);
UPDATE Buildings SET MutuallyExclusiveGroup = 269, PolicyType = 'POLICY_RATIONALISM_FINISHER'	WHERE Type IN ('BUILDING_BLETCHLEY_PARK'/*,		'BUILDING_KEW_GARDEN',				'BUILDING_ARECIBO'*/);


UPDATE Language_en_US SET Text = REPLACE(Text, 'building the [COLOR_POSITIVE_TEXT]University of Sankore[ENDCOLOR].', 	'Wonders: [COLOR_CYAN]University of Sankore[ENDCOLOR], [COLOR_CYAN]Golden Dagon Pagoda[ENDCOLOR] and [COLOR_CYAN]Notre Dame[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 	WHERE Tag = 'TXT_KEY_POLICY_BRANCH_TRADITION_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building the [COLOR_POSITIVE_TEXT]Forbidden Palace[ENDCOLOR].', 		'Wonders: [COLOR_CYAN]Forbidden Palace[ENDCOLOR], [COLOR_CYAN]Wartburg[ENDCOLOR] and [COLOR_CYAN]Falun Mine[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 					WHERE Tag = 'TXT_KEY_POLICY_BRANCH_LIBERTY_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building [COLOR_POSITIVE_TEXT]Alhambra[ENDCOLOR].', 					'Wonders: [COLOR_CYAN]Alhambra[ENDCOLOR], [COLOR_CYAN]Forge of Damascus[ENDCOLOR] and [COLOR_CYAN]Great Zimbabwe[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 				WHERE Tag = 'TXT_KEY_POLICY_BRANCH_HONOR_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building the [COLOR_POSITIVE_TEXT]Red Fort[ENDCOLOR].', 				'Wonders: [COLOR_CYAN]Red Fort[ENDCOLOR], [COLOR_CYAN]Golden Pavilion[ENDCOLOR] and [COLOR_CYAN]Solovietsky Monastery[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 		WHERE Tag = 'TXT_KEY_POLICY_BRANCH_PIETY_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building the [COLOR_POSITIVE_TEXT]Palace of Westminster[ENDCOLOR].', 	'Wonders: [COLOR_CYAN]Palace of Westminster[ENDCOLOR], [COLOR_CYAN]Kilwa Kisiwani[ENDCOLOR] and [COLOR_CYAN]Old Bridge[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 		WHERE Tag = 'TXT_KEY_POLICY_BRANCH_PATRONAGE_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building the [COLOR_POSITIVE_TEXT]Louvre[ENDCOLOR].', 					'Wonders: [COLOR_CYAN]Louvre[ENDCOLOR], [COLOR_CYAN]Uffizi[ENDCOLOR] and [COLOR_CYAN]Museum Island[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 							WHERE Tag = 'TXT_KEY_POLICY_BRANCH_AESTHETICS_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building [COLOR_POSITIVE_TEXT]Broadway[ENDCOLOR].', 					'Wonders: [COLOR_CYAN]Broadway[ENDCOLOR], [COLOR_CYAN]Ruhr Valley[ENDCOLOR] and [COLOR_CYAN]Banff Spring Hotel[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 			WHERE Tag = 'TXT_KEY_POLICY_BRANCH_COMMERCE_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building the [COLOR_POSITIVE_TEXT]Pentagon[ENDCOLOR].', 				'Wonders: [COLOR_CYAN]Pentagon[ENDCOLOR], [COLOR_CYAN]Peterhof Palace[ENDCOLOR] and [COLOR_CYAN]Thule Air Base[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 				WHERE Tag = 'TXT_KEY_POLICY_BRANCH_EXPLORATION_HELP';
UPDATE Language_en_US SET Text = REPLACE(Text, 'building [COLOR_POSITIVE_TEXT]Bletchley Park[ENDCOLOR].', 				'Wonders: [COLOR_CYAN]Bletchley Park[ENDCOLOR], [COLOR_CYAN]Kew Garden[ENDCOLOR] and [COLOR_CYAN]Arecibo Observatory[ENDCOLOR] (only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built in Empire).') 			WHERE Tag = 'TXT_KEY_POLICY_BRANCH_RATIONALISM_HELP';
--============================================--
-- VP FIXES
--============================================--
--============================================--
-- FREE ART HELP TEXTS
--============================================--
UPDATE Language_en_US SET Text = Substr(Text, 59, 2000) WHERE Tag ='TXT_KEY_BUILDING_WHITE_TOWER_HELP';
UPDATE Language_en_US SET Text = 'Starts with [ICON_GREAT_WORK] [COLOR_MAGENTA]The Crown Jewels[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_WHITE_TOWER_HELP';
UPDATE Language_en_US SET Text = Substr(Text, 1, 276)||'starts with [ICON_GREAT_WORK] [COLOR_MAGENTA]Flood Tablet[ENDCOLOR] '||Substr(Text, 360, 2000) WHERE Tag ='TXT_KEY_BUILDING_ROYAL_LIBRARY_HELP';
--============================================--
-- Hide all INACTIVE Wonders - override any previous settings
-- Warning! They will still be visible in Civilopedia!
--============================================--
UPDATE Buildings
SET Cost = -1, FaithCost = -1, PrereqTech = NULL, GreatWorkCount = -1
WHERE Type IN (SELECT 'BUILDING_'||WType FROM VPWEConfig WHERE WActive = 0);
--------------------------------------------------------------
--------------------------------------------------------------
