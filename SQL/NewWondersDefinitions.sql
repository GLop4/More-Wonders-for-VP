----------------------------------------------------
-- Main file for all Wonders
-- Dec 9, 2017: Created, Infixo
-- Jan 6, 2020: Improved, adan_eslavo
--============================================--
-- Promotion Icons Atlas
--============================================--
INSERT INTO IconTextureAtlases	(Atlas,				IconSize,	Filename,			IconsPerRow,	IconsPerColumn) 
VALUES							('vpwe_promoAtlas', 256,		'WE_PI_256.dds',	'2',			'1'),
								('vpwe_promoAtlas', 064,		'WE_PI_064.dds',	'2',			'1'),
								('vpwe_promoAtlas', 045,		'WE_PI_045.dds',	'2',			'1'),
								('vpwe_promoAtlas', 032,		'WE_PI_032.dds',	'2',			'1'),
								('vpwe_promoAtlas', 016,		'WE_PI_016.dds',	'2',			'1');
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
-- (VP) IsNoWater - very strict, forbids ALL Water types: River, Lake and Coast
-- (VP) IsNoRiver
-- (VP) CapitalOnly
-- (VP) ResourceType - Allows for Building to be unlocked by a specific resource being owned (can be strategic or luxury)
-- (VP) RequiresRail - rail connection
--============================================--
-- NEOLITHIC ERA
--============================================--
-- ALTAMIRA CAVE (NEW) - culture, culture from bison and deer, slot for art, defense;
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE',	NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_ALTAMIRA';
	UPDATE Buildings SET NearbyMountainRequired = 1 WHERE Type = 'BUILDING_ALTAMIRA';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,			ResourceType) 
	VALUES		('BUILDING_ALTAMIRA',	'RESOURCE_BISON'),
				('BUILDING_ALTAMIRA',	'RESOURCE_DEER');
	---------------------------------------------------------	
	UPDATE Buildings SET Defense = 500, GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT', GreatWorkCount = 1 WHERE Type = 'BUILDING_ALTAMIRA';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_ALTAMIRA',	'YIELD_CULTURE',	1);

	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,			ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_ALTAMIRA',	'RESOURCE_BISON',	'YIELD_CULTURE',	1),
				('BUILDING_ALTAMIRA',	'RESOURCE_DEER',	'YIELD_CULTURE',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor) 
	VALUES		('BUILDING_ALTAMIRA',	'FLAVOR_CITY_DEFENSE',	10),
				('BUILDING_ALTAMIRA',	'FLAVOR_CULTURE',		60);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_ALTAMIRA',			'Altamira Caves'),
				('TXT_KEY_WONDER_ALTAMIRA_HELP',		'Contains 1 slot for [ICON_GREAT_WORK] Great Work of Art or an Artifact.[NEWLINE][NEWLINE]Nearby [ICON_RES_BISON] Bison: +1 [ICON_CULTURE] Culture.[NEWLINE]Nearby [ICON_RES_DEER] Deer: +1 [ICON_CULTURE] Culture.[NEWLINE][NEWLINE]City must have a [COLOR_CYAN]Mountain[ENDCOLOR] and improved [ICON_RES_BISON] Bison or [ICON_RES_DEER] Deer nearby.'),
				('TXT_KEY_WONDER_ALTAMIRA_HELP_CUT',	'Contains 1 slot for [ICON_GREAT_WORK] Great Work of Art or an Artifact.[NEWLINE][NEWLINE]Nearby [ICON_RES_BISON] Bison: +1 [ICON_CULTURE] Culture.[NEWLINE]Nearby [ICON_RES_DEER] Deer: +1 [ICON_CULTURE] Culture.'),
				('TXT_KEY_WONDER_ALTAMIRA_QUOTE',		'[NEWLINE]"After Altamira everything seems decadent". [NEWLINE]- Pablo Picasso'),
				('TXT_KEY_WONDER_ALTAMIRA_PEDIA',		'The cave is approximately 1,000 m (3,280.84 ft) meters long and consists of a series of twisting passages and chambers. The main passage varies from two to six meters in height. The cave was formed through collapses following early karst phenomena in the calcareous rock of Mount Vispieres. Archaeological excavations in the cave floor found rich deposits of artifacts from the Upper Solutrean (c. 18,500 years ago) and Lower Magdalenian (between c. 16,590 and 14,000 years ago). Both periods belong to the Paleolithic or Old Stone Age. In the two millennia between these two occupations, the cave was evidently inhabited only by wild animals. Human occupants of the site were well-positioned to take advantage of the rich wildlife that grazed in the valleys of the surrounding mountains as well as the marine life available in nearby coastal areas. Around 13,000 years ago a rockfall sealed the cave''s entrance, preserving its contents until its eventual discovery, which occurred after a nearby tree fell and disturbed the fallen rocks. Human occupation was limited to the cave mouth, although paintings were created throughout the length of the cave. The artists used charcoal and ochre or hematite to create the images, often diluting these pigments to produce variations in intensity and creating an impression of chiaroscuro. They also exploited the natural contours of the cave walls to give their subjects a three-dimensional effect. The Polychrome Ceiling is the most impressive feature of the cave, depicting a herd of extinct steppe bison (Bison priscus) in different poses, two horses, a large doe, and possibly a wild boar. Dated to the Magdalenian occupation, these paintings include abstract shapes in addition to animal subjects. Solutrean paintings include images of horses and goats, as well as handprints that were created when artists placed their hands on the cave wall and blew pigment over them to leave a negative image. Numerous other caves in northern Spain contain Paleolithic art, but none is as complex or well-populated as Altamira.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GGANTIJA (NEW) - faith, global food, instant food;
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE',	NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_GGANTIJA';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_GGANTIJA';
	UPDATE Buildings SET Hill = 1, NearbyTerrainRequired = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_GGANTIJA';
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,		Yield)
	VALUES		('BUILDING_GGANTIJA',	'YIELD_FAITH',	2);

	INSERT INTO Building_GlobalYieldModifiers
				(BuildingType,			YieldType,		Yield)
	VALUES		('BUILDING_GGANTIJA',	'YIELD_FOOD',	5);

	INSERT INTO Building_InstantYield
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_GGANTIJA',	'YIELD_FOOD',	50);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors
				(BuildingType,			FlavorType,			Flavor)
	VALUES		('BUILDING_GGANTIJA',	'FLAVOR_RELIGION',	10),
				('BUILDING_GGANTIJA',	'FLAVOR_GROWTH',	50);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_GGANTIJA',			'Ggantija'),
				('TXT_KEY_WONDER_GGANTIJA_HELP',		'Grants 25 [ICON_FOOD] Food after construction. +5% [ICON_FOOD] Food in your Empire.[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Grassland[ENDCOLOR] and on a [COLOR_CYAN]Hill[ENDCOLOR].'),
				('TXT_KEY_WONDER_GGANTIJA_HELP_CUT',	'Grants 25 [ICON_FOOD] Food after construction. +5% [ICON_FOOD] Food in your Empire.'),
				('TXT_KEY_WONDER_GGANTIJA_QUOTE',		'[NEWLINE]"Growth is the only evidence of life."[NEWLINE] - John Henry Newman[NEWLINE]'),
				('TXT_KEY_WONDER_GGANTIJA_PEDIA',		'Ggantija (Giants'' Tower) is a megalithic temple complex in Malta on the Mediterranean island of Gozo. Its makers erected the two Ggantija temples during the Neolithic Age (c. 3600-2500 BC), which makes the buildings more than 5500 years old and the world''s second oldest manmade religious structures, after Gobekli Tepe. The temples were possibly the site of a Fertility cult - archeologists believe that the numerous figurines and statues found on site are connected with that cult.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GOEBEKLI TEPE (NEW) - faith, culture, science, faith from mountains, science from marble and stone;
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_GOEBEKLI_TEPE';
	UPDATE Buildings SET NearbyMountainRequired = 1, River = 1 WHERE Type = 'BUILDING_GOEBEKLI_TEPE';
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_GOEBEKLI_TEPE',	'YIELD_CULTURE',	1),
				('BUILDING_GOEBEKLI_TEPE',	'YIELD_SCIENCE',	1),
				('BUILDING_GOEBEKLI_TEPE',	'YIELD_FAITH',		1);

	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,				ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_GOEBEKLI_TEPE',	'RESOURCE_MARBLE',	'YIELD_SCIENCE',	1),
				('BUILDING_GOEBEKLI_TEPE',	'RESOURCE_STONE',	'YIELD_SCIENCE',	1);

	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,				TerrainType,		YieldType,		Yield) 
	VALUES		('BUILDING_GOEBEKLI_TEPE',	'TERRAIN_MOUNTAIN', 'YIELD_FAITH',	1);
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
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP',		'+1 [ICON_PEACE] Faith from Mountains worked by the City.[NEWLINE][NEWLINE]Nearby [ICON_RES_MARBLE] Marble: +1 [ICON_RESEARCH] Science.[NEWLINE]Nearby [ICON_RES_STONE] Stone: +1 [ICON_RESEARCH] Science.[NEWLINE][NEWLINE]City must be built next to a [COLOR_CYAN]River[ENDCOLOR] and have a [COLOR_CYAN]Mountain[ENDCOLOR] nearby.'),
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP_CUT',	'+1 [ICON_PEACE] Faith from Mountains worked by the City.[NEWLINE][NEWLINE]Nearby [ICON_RES_MARBLE] Marble: +1 [ICON_RESEARCH] Science.[NEWLINE]Nearby [ICON_RES_STONE] Stone: +1 [ICON_RESEARCH] Science.'),
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_QUOTE',		'[NEWLINE]"Listen a hundred times. Ponder a thousand times. Speak once."[NEWLINE] - Turkish Proverb[NEWLINE]'),
				('TXT_KEY_WONDER_GOEBEKLI_TEPE_PEDIA',		'Göbekli Tepe is a religious site located in southern Turkey, near the Syrian border. It is the oldest known religious building on earth, dating to approximately 10000 BCE, during the Neolithic age of Human civilization, and predating all major civilizations and cities by several millenia. It was first observed during the 1960''s, when archeologists noted that the hill could not be natural due to the shape, yet dismissed it as a Byzantine burial ground. It was not thought different until 1994, and not excavated until a year later. The complex is similar in manner to Stonehenge, with a round shape and large Monolithic stones. However, unlike Stonehenge, many of the pillars are carved with the figures of several animals, which are believed to have been sacred to the hunter-gatherers which constructed Göbekli Tepe.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MAJORVILLE (NEW) - science and faith, faith from tundra, science to monuments;
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_MAJORVILLE';
	UPDATE Buildings SET Hill = 1, NearbyTerrainRequired = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_MAJORVILLE';
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_MAJORVILLE',	'YIELD_FAITH',		2),
				('BUILDING_MAJORVILLE',	'YIELD_SCIENCE',	1);
	
	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,			TerrainType,		YieldType,		Yield) 
	VALUES		('BUILDING_MAJORVILLE',	'TERRAIN_TUNDRA',	'YIELD_FAITH',	1);

	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,			BuildingClassType,			YieldType,			YieldChange) 
	VALUES		('BUILDING_MAJORVILLE',	'BUILDINGCLASS_MONUMENT',	'YIELD_SCIENCE',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_MAJORVILLE',	'FLAVOR_SCIENCE',		20),
				('BUILDING_MAJORVILLE',	'FLAVOR_RELIGION',		50);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_MAJORVILLE',			'Majorville Medicine Wheel'),
				('TXT_KEY_WONDER_MAJORVILLE_HELP',		'+1 [ICON_PEACE] Faith from Tundra tiles worked by the City. All Monuments receive +1 [ICON_RESEARCH] Science.[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Tundra[ENDCOLOR] and on a [COLOR_CYAN]Hill[ENDCOLOR].'),
				('TXT_KEY_WONDER_MAJORVILLE_HELP_CUT',	'+1 [ICON_PEACE] Faith from Tundra tiles worked by the City. All Monuments receive +1 [ICON_RESEARCH] Science.'),
				('TXT_KEY_WONDER_MAJORVILLE_QUOTE',		'[NEWLINE]"When the Earth is sick, the animals will begin to disappear, when that happens, The Warriors of the Rainbow will come to save them."[NEWLINE] - Chief Seattle[NEWLINE]'),
				('TXT_KEY_WONDER_MAJORVILLE_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MOHENJO-DARO (NEW) - culture, faith from rivers, defense, free well;
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_MOHENJO_DARO';
	UPDATE Buildings SET WonderSplashAnchor = 'C,B' WHERE Type = 'BUILDING_MOHENJO_DARO';
	UPDATE Buildings SET River = 1, NearbyTerrainRequired = 'TERRAIN_DESERT'  WHERE Type = 'BUILDING_MOHENJO_DARO';
	---------------------------------------------------------	
	UPDATE Buildings SET FreeBuildingThisCity = 'BUILDINGCLASS_WELL', Defense = 1000 WHERE Type = 'BUILDING_MOHENJO_DARO';
	
	INSERT INTO Building_YieldChanges
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_MOHENJO_DARO',	'YIELD_CULTURE',	2);

	INSERT INTO Building_RiverPlotYieldChanges
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_MOHENJO_DARO',	'YIELD_FAITH',		1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_MOHENJO_DARO',	'FLAVOR_CULTURE',		20),
				('BUILDING_MOHENJO_DARO',	'FLAVOR_CITY_DEFENSE',	20),
				('BUILDING_MOHENJO_DARO',	'FLAVOR_PRODUCTION',	10),
				('BUILDING_MOHENJO_DARO',	'FLAVOR_RELIGION',		30),
				('BUILDING_MOHENJO_DARO',	'FLAVOR_GROWTH',		20);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_MOHENJO_DARO',			'Mohenjo-daro'),
				('TXT_KEY_WONDER_MOHENJO_DARO_HELP',		'+1 [ICON_PEACE] Faith from River tiles worked by the City. Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Well.[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Desert[ENDCOLOR] and next to a [COLOR_CYAN]River[ENDCOLOR].'),
				('TXT_KEY_WONDER_MOHENJO_DARO_HELP_CUT',	'+1 [ICON_PEACE] Faith from River tiles worked by the City. Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Well.'),
				('TXT_KEY_WONDER_MOHENJO_DARO_QUOTE',		'[NEWLINE]"A river is an ocean in a desert."[NEWLINE] - Matshona Dhliwayo[NEWLINE]'),
				('TXT_KEY_WONDER_MOHENJO_DARO_PEDIA',		'TODO');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- SKARA BRAE (NEW) - food and production, global food from Deer, Fish, Cattle, Sheep and Wheet;
	UPDATE Buildings SET Cost = 115, PrereqTech = 'TECH_AGRICULTURE',	NumPoliciesNeeded = 0, MaxStartEra = 'ERA_ANCIENT' WHERE Type = 'BUILDING_SKARA_BRAE';
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_SKARA_BRAE';
	UPDATE Buildings SET Water = 1, MinAreaSize = 10, ProhibitedCityTerrain = 'TERRAIN_DESERT'  WHERE Type = 'BUILDING_SKARA_BRAE';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType, ResourceType) 
	VALUES		('BUILDING_SKARA_BRAE', 'RESOURCE_FISH'),
				('BUILDING_SKARA_BRAE', 'RESOURCE_COW'),
				('BUILDING_SKARA_BRAE', 'RESOURCE_WHEAT'),
				('BUILDING_SKARA_BRAE', 'RESOURCE_SHEEP'),
				('BUILDING_SKARA_BRAE', 'RESOURCE_DEER');
	---------------------------------------------------------	
	INSERT INTO Building_YieldChanges
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_SKARA_BRAE', 'YIELD_PRODUCTION',	2),
				('BUILDING_SKARA_BRAE', 'YIELD_FOOD',		1);
	
	INSERT INTO Building_ResourceYieldChangesGlobal 
				(BuildingType,			ResourceType,		YieldType,		Yield) 
	VALUES		('BUILDING_SKARA_BRAE', 'RESOURCE_FISH',	'YIELD_FOOD',	1),
				('BUILDING_SKARA_BRAE', 'RESOURCE_COW',		'YIELD_FOOD',	1),
				('BUILDING_SKARA_BRAE', 'RESOURCE_WHEAT',	'YIELD_FOOD',	1),
				('BUILDING_SKARA_BRAE', 'RESOURCE_SHEEP',	'YIELD_FOOD',	1),
				('BUILDING_SKARA_BRAE', 'RESOURCE_DEER',	'YIELD_FOOD',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor) 
	VALUES		('BUILDING_SKARA_BRAE', 'FLAVOR_PRODUCTION',	10),
				('BUILDING_SKARA_BRAE', 'FLAVOR_GROWTH',		60);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag, Text)
	VALUES		('TXT_KEY_BUILDING_SKARA_BRAE',			'Skara Brae'),
				('TXT_KEY_WONDER_SKARA_BRAE_HELP',		'All [ICON_RES_COW] Cattle: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_DEER] Deer: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_FISH] Fish: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_SHEEP] Sheep: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_WHEAT] Wheat: +1 [ICON_FOOD] Food.[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Coast[ENDCOLOR] and have improved [ICON_RES_COW] Cattle, [ICON_RES_DEER] Deer, [ICON_RES_FISH] Fish, [ICON_RES_SHEEP] Sheep or [ICON_RES_WHEAT] Wheat nearby. City cannot be built on or next to a [COLOR_NEGATIVE_TEXT]Desert[ENDCOLOR].'),
				('TXT_KEY_WONDER_SKARA_BRAE_HELP_CUT',  'All [ICON_RES_COW] Cattle: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_DEER] Deer: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_FISH] Fish: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_SHEEP] Sheep: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_WHEAT] Wheat: +1 [ICON_FOOD] Food.'),
				('TXT_KEY_WONDER_SKARA_BRAE_QUOTE',		'[NEWLINE]"No great thing is created suddenly."[NEWLINE] - Epictetus[NEWLINE]'),
				('TXT_KEY_WONDER_SKARA_BRAE_PEDIA',		'Skara Brae is a stone-built Neolithic settlement, located on the Bay of Skaill on the west coast of Mainland, the largest island in the Orkney archipelago of Scotland. It consists of eight clustered houses, and was occupied from roughly 3180 BC - 2500 BC.[NEWLINE][NEWLINE]Given the number of homes, it seems likely that no more than fifty people lived in Skara Brae at any given time. Apart from being makers and users of grooved ware, a distinctive style of pottery that appeared in northern Scotland not long before the establishment of the village, they were primarily pastorialists who raised cattle and sheep.');
--============================================--
-- ANCIENT ERA
--============================================--
-- KARNAK (NEW) - late game tourism, faith and food, faith and culture from Oasis and Flood Plains, free Monument;
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
	VALUES		('BUILDING_KARNAK', 'YIELD_FOOD',	1),
				('BUILDING_KARNAK', 'YIELD_FAITH',		2);
	
	INSERT INTO Building_YieldPerXFeatureTimes100 
				(BuildingType,		FeatureType,			YieldType,			Yield) 
	VALUES		('BUILDING_KARNAK', 'FEATURE_OASIS',		'YIELD_CULTURE',	100),
				('BUILDING_KARNAK', 'FEATURE_OASIS',		'YIELD_FAITH',		100),
				('BUILDING_KARNAK', 'FEATURE_FLOOD_PLAINS', 'YIELD_CULTURE',	50),
				('BUILDING_KARNAK', 'FEATURE_FLOOD_PLAINS', 'YIELD_FAITH',		50);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,				Flavor) 
	VALUES		('BUILDING_KARNAK', 'FLAVOR_CULTURE',		50),
				('BUILDING_KARNAK', 'FLAVOR_PRODUCTION',	20),
				('BUILDING_KARNAK', 'FLAVOR_RELIGION',		40);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_KARNAK',			'Karnak'),
				('TXT_KEY_WONDER_KARNAK_HELP',		'[COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monument in this City. +1 [ICON_CULTURE] Culture and +1 [ICON_PEACE] Faith from each Oasis and every 2 Flood Plains worked by this City. +4 [ICON_TOURISM] Tourism with Archeology.[NEWLINE][NEWLINE]City must be built on or next a [COLOR_CYAN]Desert[ENDCOLOR] and have [COLOR_CYAN]Flood Plains[ENDCOLOR] or an [COLOR_CYAN]Oasis[ENDCOLOR] nearby.'),
				('TXT_KEY_WONDER_KARNAK_HELP_CUT',  '[COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monument in this City. +1 [ICON_CULTURE] Culture and +1 [ICON_PEACE] Faith from each Oasis and every 2 Flood Plains worked by this City. +4 [ICON_TOURISM] Tourism with Archeology.'),
				('TXT_KEY_WONDER_KARNAK_QUOTE',		'[NEWLINE]"The body is the house of god. That is why it is said ''Man know yourself''."[NEWLINE] - Egyptian Proverb[NEWLINE]'),
				('TXT_KEY_WONDER_KARNAK_PEDIA',		'Karnak is a large temple complex located in Thebes (nowadays is Luxor). It was constructed during the reign of Ramesses II as a place of worship for many different gods and goddesses, instead of focusing on just one member of the Egyptian Pantheon.[NEWLINE][NEWLINE]  The complex is a vast open-air museum, and the second largest ancient religious site in the world (after the Angkor Wat in Cambodia). It is believed to be the second most visited historical site in Egypt, only the Giza Pyramids near Cairo receive more visits.[NEWLINE][NEWLINE]  One famous aspect of Karnak is the Hypostyle Hall in the Precinct of Amun-Re, a hall area of 50,000 sq ft (5,000 m2) with 134 massive columns arranged in 16 rows. 122 of these columns are 10 meters tall, and the other 12 are 21 meters tall with a diameter of over three meters.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- STONEHENGE
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_STONEHENGE';
	UPDATE Buildings SET NearbyTerrainRequired = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_STONEHENGE';
	UPDATE Buildings SET Flat = 1 WHERE Type = 'BUILDING_STONEHENGE';
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_BUILDING_STONEHENGE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_STONEHENGE_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Grassland[ENDCOLOR] and on a [COLOR_CYAN]Flat[ENDCOLOR].' WHERE Tag ='TXT_KEY_BUILDING_STONEHENGE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- NAZCA (NEW) - late game tourism, science, scientist, food and faith from Plains, faith to Shrines, scientist points;
	UPDATE Buildings SET Cost = 150, PrereqTech = 'TECH_TRAPPING',	NumPoliciesNeeded = 1, MaxStartEra = 'ERA_CLASSICAL' WHERE Type = 'BUILDING_NAZCA';
	UPDATE Buildings SET Hill = 1, NearbyTerrainRequired = 'TERRAIN_PLAINS' WHERE Type = 'BUILDING_NAZCA';
	---------------------------------------------------------	
	UPDATE Buildings SET EnhancedYieldTech = 'TECH_FLIGHT', TechEnhancedTourism = 4, SpecialistType = 'SPECIALIST_SCIENTIST', GreatPeopleRateChange = 1 WHERE Type = 'BUILDING_NAZCA';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,			Yield) 
	VALUES		('BUILDING_NAZCA',	'YIELD_SCIENCE',	1);
	
	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,		TerrainType,		YieldType,		Yield) 
	VALUES		('BUILDING_NAZCA',	'TERRAIN_PLAINS',	'YIELD_FOOD',	1),
				('BUILDING_NAZCA',	'TERRAIN_PLAINS',	'YIELD_FAITH',	1);
	
	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,		BuildingClassType,		YieldType,		YieldChange) 
	VALUES		('BUILDING_NAZCA',	'BUILDINGCLASS_SHRINE', 'YIELD_FAITH',	1);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,		FlavorType,			Flavor) 
	VALUES		('BUILDING_NAZCA',	'FLAVOR_GROWTH',	40),
				('BUILDING_NAZCA',	'FLAVOR_RELIGION',	40),
				('BUILDING_NAZCA',	'FLAVOR_SCIENCE',	20);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	VALUES		('TXT_KEY_BUILDING_NAZCA',			'Nazca Lines'),
				('TXT_KEY_WONDER_NAZCA_HELP',		'+1 [ICON_FOOD] Food and +1 [ICON_PEACE] Faith from nearby Plains worked by the City. All Shrines receive +1 [ICON_PEACE] Faith. +1 [ICON_GREAT_SCIENTIST] Great Scientist Point. +4 [ICON_TOURISM] Tourism with Flight.[NEWLINE][NEWLINE]City must be built on or next to [COLOR_CYAN]Plains[ENDCOLOR] and on a [COLOR_CYAN]Hill[ENDCOLOR].'),
				('TXT_KEY_WONDER_NAZCA_HELP_CUT',	'+1 [ICON_FOOD] Food and +1 [ICON_PEACE] Faith from nearby Plains worked by the City. All Shrines receive +1 [ICON_PEACE] Faith. +1 [ICON_GREAT_SCIENTIST] Great Scientist Point. +4 [ICON_TOURISM] Tourism with Flight.'),
				('TXT_KEY_WONDER_NAZCA_QUOTE',		'[NEWLINE]"The true mystery of the world is the visible, not the invisible."[NEWLINE] - Oscar Wilde[NEWLINE]'),
				('TXT_KEY_WONDER_NAZCA_PEDIA',		'The Nazca Lines, located between the Peruvian towns of Nazca and Palpa, are a series of enormous Geoglyphs designed on a large plateau, spanning over 80 kilometres. The designs have long been a source of mystery for those who have gazed upon them. It is estimated that the lines were constructed by the Nazca culture, hense the name, between 450 and 600 CE. The level of complexity of design varies between designs. Some are simple lines hundreds of metres long, while others are incredibly complex patterns resembling a variety of zoological designs - Monkeys, Condors, Spiders and Orca (Killer whale) to name but a few.[NEWLINE][NEWLINE]  The Nazca Lines are particularily popular amongst circles which believe in the existance of extra-terrestrial life, which the Nazca culture mistook for their gods. They believe that the simpler, straight lines are in fact landing strips for interstellar crafts used by the extra-terrestrials to land, and that a humanoid figure represented in the patterns is one of the extraterrestrials. Modern science has had a range of theories, amongst which the lines serving a purpose similar to that of Stonehenge as an early form of an observatory / astronomical calendar. Other theories were that the geometric lines could indicate the flow of water, irrigation schemes, or be a part of rituals to "summon" water. However, to this day the exact purpose of the lines remains a mystery.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PYRAMIDS
	UPDATE Buildings SET River = 1, Flat = 1, ProhibitedCityTerrain = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_PYRAMID';
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_CHICHEN_ITZA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_CHICHEN_ITZA_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Flat[ENDCOLOR] and next to a [COLOR_CYAN]River[ENDCOLOR]. City cannot be built on or next to a [COLOR_NEGATIVE_TEXT]Tundra[ENDCOLOR] nor [COLOR_NEGATIVE_TEXT]Snow[ENDCOLOR]' WHERE Tag ='TXT_KEY_WONDER_CHICHEN_ITZA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- WIELICZKA (NEW) - late game tourism, +2 Salt, production, 5% global food, food from Salt;
	UPDATE Buildings SET Cost = 150, PrereqTech = 'TECH_MINING', NumPoliciesNeeded = 0, MaxStartEra = 'ERA_CLASSICAL' WHERE Type = 'BUILDING_WIELICZKA';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,			ResourceType) 
	VALUES		('BUILDING_WIELICZKA',	'RESOURCE_SALT');
	---------------------------------------------------------	
	UPDATE Buildings SET EnhancedYieldTech = 'TECH_SCIENTIFIC_THEORY', TechEnhancedTourism = 2 WHERE Type = 'BUILDING_WIELICZKA';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_WIELICZKA',	'YIELD_PRODUCTION', 1);
	
	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,			ResourceType,		YieldType,		Yield) 
	VALUES		('BUILDING_WIELICZKA',	'RESOURCE_SALT',	'YIELD_FOOD',	1);
	
	INSERT INTO Building_ResourceQuantity 
				(BuildingType,			ResourceType,		Quantity) 
	VALUES		('BUILDING_WIELICZKA',	'RESOURCE_SALT',	2);
	
	INSERT INTO Building_GlobalYieldModifiers 
				(BuildingType,			YieldType,		Yield) 
	VALUES		('BUILDING_WIELICZKA',	'YIELD_FOOD',	5);
	---------------------------------------------------------	
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor) 
	VALUES		('BUILDING_WIELICZKA',	'FLAVOR_GROWTH',		50),
				('BUILDING_WIELICZKA',	'FLAVOR_PRODUCTION',	10),
				('BUILDING_WIELICZKA',	'FLAVOR_CULTURE',		30);
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_WIELICZKA',			'Wieliczka Salt Mine'),
				('TXT_KEY_WONDER_WIELICZKA_HELP',		'City gains 2 copies of [ICON_RES_SALT] Salt resource. +5% [ICON_FOOD] Food in all Cities. +2 [ICON_TOURISM] Tourism with Scientific Theory.[NEWLINE][NEWLINE]Nearby [ICON_RES_SALT] Salt: +1 [ICON_FOOD] Food.[NEWLINE][NEWLINE]City must have [ICON_RES_SALT] Salt nearby.'),
				('TXT_KEY_WONDER_WIELICZKA_HELP_CUT',	'City gains 2 copies of [ICON_RES_SALT] Salt resource. +5% [ICON_FOOD] Food in all Cities. +2 [ICON_TOURISM] Tourism with Scientific Theory.[NEWLINE][NEWLINE]Nearby [ICON_RES_SALT] Salt: +1 [ICON_FOOD] Food.'),
				('TXT_KEY_WONDER_WIELICZKA_QUOTE',		'[NEWLINE]"You are the salt of the earth. But remember that salt is useful when in association, but useless in isolation."[NEWLINE] - Israelmore Ayivor[NEWLINE]'),
				('TXT_KEY_WONDER_WIELICZKA_PEDIA',		'The Wieliczka Salt Mine, in the town of Wieliczka, southern Poland, lies within the Kraków metropolitan area. Sodium chloride (table salt) was formerly produced there from the upwelling brine - and had been since Neolithic times. The Wieliczka salt mine, excavated from the 13th century, produced table salt continuously until 2007, as one of the world''s oldest operating salt mines.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PETRA
	UPDATE Buildings SET WonderSplashAnchor = 'C,T' WHERE Type = 'BUILDING_PETRA';
	UPDATE Buildings SET Mountain = 1, NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_PETRA';
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_PETRA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PETRA_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]Beside being built on or next to a [COLOR_CYAN]Desert[ENDCOLOR] city must be built next to a [COLOR_CYAN]Mountain[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_PETRA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- TEMPLE OF ARTEMIS
	UPDATE Buildings SET Flat = 1, ProhibitedCityTerrain = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_TEMPLE_ARTEMIS', 'FEATURE_FOREST');
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Flat[ENDCOLOR] and have a [COLOR_CYAN]Forest[ENDCOLOR] nearby. City cannot be built on or next to a [COLOR_NEGATIVE_TEXT]Desert[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MAUSOLEUM OF HALICARNASSUS
	UPDATE Buildings SET Water = 1, MinAreaSize = 10, Hill = 1 WHERE Type = 'BUILDING_MAUSOLEUM_HALICARNASSUS';
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,												Text) 
	SELECT		'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Coast[ENDCOLOR] and [COLOR_CYAN]Hill[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- STATUE OF ZEUS
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,				ResourceType) 
	VALUES		('BUILDING_STATUE_ZEUS',	'RESOURCE_MARBLE');
	---------------------------------------------------------	
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_STATUE_ZEUS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_STATUE_ZEUS_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must have improved [COLOR_CYAN]Marble[ENDCOLOR] nearby.' WHERE Tag ='TXT_KEY_WONDER_STATUE_ZEUS_HELP';
--============================================--
-- CLASSICAL ERA
--============================================--
-- GREAT LIGHTHOUSE
	UPDATE Buildings SET Water = 1, MinAreaSize = 10, River = 1 WHERE Type = 'BUILDING_GREAT_LIGHTHOUSE';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Coast[ENDCOLOR] and next to a [COLOR_CYAN]River[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GREAT LIBRARY
	UPDATE Buildings SET Hill = 1 WHERE Type = 'BUILDING_GREAT_LIBRARY';
	
	INSERT INTO Building_ResourceQuantityRequirements
				(BuildingType,				ResourceType,		Cost) 
	VALUES		('BUILDING_GREAT_LIBRARY',	'RESOURCE_PAPER',	1);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_GREAT_LIBRARY_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIBRARY_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Hill[ENDCOLOR]. Uses 1 copy of [ICON_RES_PAPER] Paper.' WHERE Tag ='TXT_KEY_WONDER_GREAT_LIBRARY_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- HANGING GARDENS
	UPDATE Buildings SET WonderSplashAnchor = 'C,T' WHERE Type = 'BUILDING_HANGING_GARDEN';
	UPDATE Buildings SET Flat = 1, River = 1 WHERE Type = 'BUILDING_HANGING_GARDEN';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_HANGING_GARDEN_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HANGING_GARDEN_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Flat[ENDCOLOR] and next to a [COLOR_CYAN]River[ENDCOLOR]' WHERE Tag ='TXT_KEY_WONDER_HANGING_GARDEN_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- FORUM ROMANUM
	UPDATE Buildings SET WonderSplashAnchor = 'L,T' WHERE Type = 'BUILDING_FORUM';
	UPDATE Buildings SET Flat = 1 WHERE Type = 'BUILDING_FORUM';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,		FeatureType) 
	VALUES		('BUILDING_FORUM',	'FEATURE_MARSH');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_BUILDING_FORUM_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_FORUM_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Flat[ENDCOLOR] and have a [COLOR_CYAN]Marsh[ENDCOLOR] nearby.' WHERE Tag ='TXT_KEY_BUILDING_FORUM_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MALWIYA MINARET (NEW) - culture, production from quarries, manufactories and stone works, faith from stone and stone works, free engineer, engineer points
	UPDATE Buildings SET Cost = 200, PrereqTech = 'TECH_MATHEMATICS', NumPoliciesNeeded = 4, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_MALWIYA';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_MALWIYA';
	
	UPDATE Buildings SET Flat = 1 WHERE Type = 'BUILDING_MALWIYA';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,			BuildingClassType) 
	VALUES		('BUILDING_MALWIYA',	'BUILDINGCLASS_STONE_WORKS');
	---------------------------------------------------------
	UPDATE Buildings SET SpecialistType = 'SPECIALIST_ENGINEER', GreatPeopleRateChange = 1 WHERE Type = 'BUILDING_MALWIYA';

	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_MALWIYA',	'YIELD_CULTURE',	2);

	INSERT INTO Building_FreeUnits 
				(BuildingType,			UnitType,			NumUnits) 
	VALUES		('BUILDING_MALWIYA',	'UNIT_ENGINEER',	1);

	INSERT INTO Building_ImprovementYieldChangesGlobal 
				(BuildingType,			ImprovementType,			YieldType,			Yield) 
	VALUES		('BUILDING_MALWIYA',	'IMPROVEMENT_MANUFACTORY',	'YIELD_FAITH',		3),
				('BUILDING_MALWIYA',	'IMPROVEMENT_MANUFACTORY',	'YIELD_PRODUCTION', 1),
				('BUILDING_MALWIYA',	'IMPROVEMENT_QUARRY',		'YIELD_FAITH',		1),
				('BUILDING_MALWIYA',	'IMPROVEMENT_QUARRY',		'YIELD_PRODUCTION', 1);

	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,			BuildingClassType,				YieldType,			YieldChange) 
	VALUES		('BUILDING_MALWIYA',	'BUILDINGCLASS_STONE_WORKS',	'YIELD_PRODUCTION', 1);

	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,			ResourceType,		YieldType,			Yield) 
	VALUES		('BUILDING_MALWIYA',	'RESOURCE_STONE',	'YIELD_PRODUCTION', 1);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor) 
	VALUES		('BUILDING_MALWIYA',	'FLAVOR_GREAT_PEOPLE',	30),
				('BUILDING_MALWIYA',	'FLAVOR_PRODUCTION',	50),
				('BUILDING_MALWIYA',	'FLAVOR_RELIGION',		60);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_MALWIYA',			'Malwiya Minaret'),
				('TXT_KEY_WONDER_MALWIYA_HELP',			'Grants a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_ENGINEER] Great Engineer. All Stone Works, Quarries and Manufactories receive +1 [ICON_PRODUCTION] Production. All Manufactories receive +3 [ICON_PEACE] Faith, and Quarries +1 [ICON_PEACE] Faith.[NEWLINE][NEWLINE]Nearby Stone: +1 [ICON_PEACE] Faith.[NEWLINE][NEWLINE]City must be built on [COLOR_CYAN]Flat[ENDCOLOR] and have [COLOR_CYAN]Stone Works[ENDCOLOR] already constructed.'),
				('TXT_KEY_WONDER_MALWIYA_HELP_CUT',		'Grants a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_ENGINEER] Great Engineer. All Stone Works, Quarries and Manufactories receive +1 [ICON_PRODUCTION] Production. All Manufactories receive +3 [ICON_PEACE] Faith, and Quarries +1 [ICON_PEACE] Faith.[NEWLINE][NEWLINE]Nearby Stone: +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_MALWIYA_QUOTE',		'[NEWLINE]"Aim at heaven and you will get Earth... Aim at Earth and you will get neither."[NEWLINE] - C.S.Lewis[NEWLINE]'),
				('TXT_KEY_WONDER_MALWIYA_PEDIA',		'The Malwiya Minaret (also known as the Spiral Minaret) is part of the Great Mosque of Samarra, located in Samarra, Iraq. The complex was built over a period of four years, from 848 to 852 CE. The main mosque was completed one year before the Minaret. The complex was constructed during the reign of Al-Mutawakkil, an Abbasid Caliph. For a time it was the largest mosque in the world.[NEWLINE][NEWLINE]  The minaret (tower) was constructed of sandstone, and is unique among other minarets because of its ascending spiral conical design. 52 metres high and 33 metres wide at the base, the spiral contains stairs reaching to the top. The word "malwiya" translates as "twisted" or "snail shell".[NEWLINE][NEWLINE]  With the turbulence of the Iraq war, the Malwiya Minaret has been damaged by bomb blasts, one in 2005 and one in 2011, when it was attacked by Iraqi insurgents.');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- TERRACOTA ARMY
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_TERRACOTTA_ARMY';
	UPDATE Buildings SET IsNoWater = 1 WHERE Type = 'BUILDING_TERRACOTTA_ARMY';
	-- + Mine or Quarry (Lua)
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must have constructed [COLOR_CYAN]Mine[ENDCOLOR] nearby. City cannot be built next to a [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- BUDDHAS OF BAMYAN (NEW) - culture, faith and golden age points, faith from CS friend, golden age from CS ally, culture at rocketry;
	UPDATE Buildings SET Cost = 200, PrereqTech = 'TECH_CONSTRUCTION', NumPoliciesNeeded = 4, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_BAMYAN';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_BAMYAN';
	
	UPDATE Buildings SET NearbyMountainRequired = 1, ProhibitedCityTerrain = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_BAMYAN';
	---------------------------------------------------------
	UPDATE Buildings SET ReligiousPressureModifier = 100, EnhancedYieldTech = 'TECH_ROCKETRY' WHERE Type = 'BUILDING_BAMYAN';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,		YieldType,					Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_CULTURE',			2),
				('BUILDING_BAMYAN', 'YIELD_FAITH',				3),
				('BUILDING_BAMYAN', 'YIELD_GOLDEN_AGE_POINTS',	1);
	
	INSERT INTO Building_YieldPerFriend
				(BuildingType,		YieldType,		Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_FAITH',	2);
	
	INSERT INTO Building_YieldPerAlly
				(BuildingType,		YieldType,					Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_GOLDEN_AGE_POINTS',	3);

	INSERT INTO Building_TechEnhancedYieldChanges
				(BuildingType,		YieldType,			Yield) 
	VALUES		('BUILDING_BAMYAN', 'YIELD_CULTURE',	3);
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
				('TXT_KEY_WONDER_BAMYAN_HELP',		'City generates +100% religious pressure. +2 [ICON_PEACE] per City-State Friend and +3 [ICON_GOLDEN_AGE] per City-State Ally.[NEWLINE][NEWLINE]City must have a [COLOR_CYAN]Mountain[ENDCOLOR] nearby. City cannot be built on or next to a [COLOR_NEGATIVE_TEXT]Grassland[ENDCOLOR].'),
				('TXT_KEY_WONDER_BAMYAN_HELP_CUT',  'City generates +100% religious pressure. +2 [ICON_PEACE] per City-State Friend and +3 [ICON_GOLDEN_AGE] per City-State Ally.'),
				('TXT_KEY_WONDER_BAMYAN_QUOTE',		'[NEWLINE]"The past is already gone, the future is not yet here. There’s only one moment for you to live."[NEWLINE] - Buddha[NEWLINE]'),
				('TXT_KEY_WONDER_BAMYAN_PEDIA',		'');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GATE OF THE SUN (NEW) - culture and science, culture and gold to lakes and mountains, science to walls, scientist points;
	UPDATE Buildings SET Cost = 200, PrereqTech = 'TECH_CONSTRUCTION', NumPoliciesNeeded = 4, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_GATE_OF_SUN';
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_GATE_OF_SUN';

	UPDATE Buildings SET FreshWater = 1, Water = 1, MinAreaSize = 1, NearbyMountainRequired = 1 WHERE Type = 'BUILDING_GATE_OF_SUN';
	---------------------------------------------------------
	UPDATE Buildings SET SpecialistType = 'SPECIALIST_SCIENTIST', GreatPeopleRateChange = 1 WHERE Type = 'BUILDING_GATE_OF_SUN';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_GATE_OF_SUN',	'YIELD_CULTURE',	2),
				('BUILDING_GATE_OF_SUN',	'YIELD_SCIENCE',	2);

	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,				TerrainType,		YieldType,			Yield) 
	VALUES		('BUILDING_GATE_OF_SUN',	'TERRAIN_MOUNTAIN',	'YIELD_CULTURE',	1),
				('BUILDING_GATE_OF_SUN',	'TERRAIN_MOUNTAIN',	'YIELD_GOLD',		1);
	
	INSERT INTO Building_BuildingClassYieldChanges 
				(BuildingType,				BuildingClassType,		YieldType,			YieldChange) 
	VALUES		('BUILDING_GATE_OF_SUN',	'BUILDINGCLASS_WALLS',	'YIELD_SCIENCE',	1);

	INSERT INTO Building_LakePlotYieldChanges 
				(BuildingType,				YieldType,			Yield)
	VALUES		('BUILDING_GATE_OF_SUN',	'YIELD_CULTURE',	1),
				('BUILDING_GATE_OF_SUN',	'YIELD_GOLD',		1);	
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_GATE_OF_SUN',	'FLAVOR_CULTURE',		50),
				('BUILDING_GATE_OF_SUN',	'FLAVOR_SCIENCE',		30),
				('BUILDING_GATE_OF_SUN',	'FLAVOR_GOLD',			10),
				('BUILDING_GATE_OF_SUN',	'FLAVOR_GREAT_PEOPLE',	10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	VALUES		('TXT_KEY_BUILDING_GATE_OF_SUN',			'Gate of the Sun'),
				('TXT_KEY_WONDER_GATE_OF_SUN_HELP',			'All Walls receive +1 [ICON_RESEARCH] Science. All Mountains and Lakes receive +1 [ICON_GOLD] Gold and +1 [ICON_CULTURE] Culture.[NEWLINE][NEWLINE]City must be built next to a [COLOR_CYAN]Lake[ENDCOLOR] and have a [COLOR_CYAN]Mountain[ENDCOLOR] nearby.'),
				('TXT_KEY_WONDER_GATE_OF_SUN_HELP_CUT',		'All Walls receive +1 [ICON_RESEARCH] Science. All Mountains and Lakes receive +1 [ICON_GOLD] Gold and +1 [ICON_CULTURE] Culture.'),
				('TXT_KEY_WONDER_GATE_OF_SUN_QUOTE',		'[NEWLINE][NEWLINE]"May the sun set on where my love dwells."[NEWLINE][NEWLINE] - Bolivian proverb[NEWLINE][NEWLINE]'),
				('TXT_KEY_WONDER_GATE_OF_SUN_PEDIA',		'');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- PARTHENON
	UPDATE Buildings SET Hill = 1, IsNoRiver = 1, ProhibitedCityTerrain = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_PARTHENON';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_PARTHENON_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PARTHENON_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Hill[ENDCOLOR]. City cannot be built on or next to a [COLOR_NEGATIVE_TEXT]Grassland[ENDCOLOR] nor next to a [COLOR_NEGATIVE_TEXT]River[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_PARTHENON_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- EL GHRIBA (NEW) - gold, culture and faith, free synagogue and artifact;
	UPDATE Buildings SET Cost = 250, PrereqTech = 'TECH_DRAMA', NumPoliciesNeeded = 5, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_EL_GHRIBA';
	UPDATE Buildings SET WonderSplashAnchor = 'C,B' WHERE Type = 'BUILDING_EL_GHRIBA';

	UPDATE Buildings SET Flat = 1, Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_EL_GHRIBA';
	---------------------------------------------------------
	UPDATE Buildings SET HolyCity = 1, FreeBuildingThisCity = 'BUILDINGCLASS_SYNAGOGUE', GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT', GreatWorkCount = 1, FreeGreatWork = 'GREAT_WORK_THE_ARK' WHERE Type = 'BUILDING_EL_GHRIBA';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_EL_GHRIBA',	'YIELD_CULTURE',	2),
				('BUILDING_EL_GHRIBA',	'YIELD_GOLD',		1),
				('BUILDING_EL_GHRIBA',	'YIELD_FAITH',		2);
	
	INSERT INTO GreatWorks
				(Type,					Description,					GreatWorkClassType,	Audio,							Image,									Quote) 
	VALUES		('GREAT_WORK_THE_ARK',	'TXT_KEY_GREAT_WORK_THE_ARK',	'GREAT_WORK_ART',	'AS2D_GREAT_ARTIST_ARTWORK',	'Great_Work_Ark_of_the_Covenant.dds',	'TXT_KEY_GREAT_WORK_THE_ARK_QUOTE');
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,			Flavor) 
	VALUES		('BUILDING_EL_GHRIBA',	'FLAVOR_CULTURE',	60),
				('BUILDING_EL_GHRIBA',	'FLAVOR_RELIGION',	30),
				('BUILDING_EL_GHRIBA',	'FLAVOR_GOLD',		10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_EL_GHRIBA',			'El Ghriba Synagogue'),
				('TXT_KEY_WONDER_EL_GHRIBA_HELP',		'Free [COLOR_POSITIVE_TEXT]Synagogue[ENDCOLOR] in this City. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [COLOR_MAGENTA]Ark of the Covenant[ENDCOLOR] artifact.[NEWLINE][NEWLINE]City must be a [COLOR_CYAN]Holy City[ENDCOLOR], must be built on a [COLOR_CYAN]Flat[ENDCOLOR] and on a [COLOR_CYAN]Coast[ENDCOLOR].'),
				('TXT_KEY_WONDER_EL_GHRIBA_HELP_CUT',	'Free [COLOR_POSITIVE_TEXT]Synagogue[ENDCOLOR] in this City. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [COLOR_MAGENTA]Ark of the Covenant[ENDCOLOR] artifact.'),
				('TXT_KEY_WONDER_EL_GHRIBA_QUOTE',		'[NEWLINE]"Jesus was born a Jew, and he died a Jew. It never occurred to him to establish a new religion. He never crossed himself: he had no reason to. He never set one foot in a church. He went to synagogue."[NEWLINE] - Amos Oz[NEWLINE]'),
				('TXT_KEY_WONDER_EL_GHRIBA_PEDIA',		'TODO'),
				('TXT_KEY_GREAT_WORK_THE_ARK',			'Ark of the Covenant'),
				('TXT_KEY_GREAT_WORK_THE_ARK_QUOTE',	'[NEWLINE]"I had it in my heart to build a house of rest [NEWLINE]for the ark of the covenant of the Lord, [NEWLINE]and for the footstool of our God"[NEWLINE] - 1 Chronicles 28:2[NEWLINE]');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ORACLE
	UPDATE Buildings SET Hill = 1, NearbyMountainRequired = 1 WHERE Type = 'BUILDING_ORACLE';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_ORACLE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ORACLE_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Hill[ENDCOLOR] and have a [COLOR_CYAN]Mountain[ENDCOLOR] nearby.' WHERE Tag ='TXT_KEY_WONDER_ORACLE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ETCHMIADZIN (NEW) - faith and gap, culture and gap from faith, faith from gw, free artifact;
	UPDATE Buildings SET Cost = 250, PrereqTech = 'TECH_PHILOSOPHY', NumPoliciesNeeded = 5, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_ETCHMIADZIN';
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_ETCHMIADZIN';

	UPDATE Buildings SET NearbyTerrainRequired = 'TERRAIN_GRASS' WHERE Type = 'BUILDING_ETCHMIADZIN';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_ETCHMIADZIN',	'FEATURE_FOREST');
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
				('TXT_KEY_WONDER_ETCHMIADZIN_HELP',		'Converts 10% of [ICON_PEACE] Faith to [ICON_CULTURE] Culture and another 10% to [ICON_GOLDEN_AGE] Golden Age Points. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [COLOR_MAGENTA]Holy Lance[ENDCOLOR] artifact. All [ICON_GREAT_WORK] Great Works receive +1 [ICON_PEACE] Faith.[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Grassland[ENDCOLOR] and have a [COLOR_CYAN]Forest[ENDCOLOR] nearby.'),
				('TXT_KEY_WONDER_ETCHMIADZIN_HELP_CUT',	'Converts 10% of [ICON_PEACE] Faith to [ICON_CULTURE] Culture and another 10% to [ICON_GOLDEN_AGE] Golden Age Points. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [COLOR_MAGENTA]Holy Lance[ENDCOLOR] artifact. All [ICON_GREAT_WORK] Great Works receive +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_ETCHMIADZIN_QUOTE',	'[NEWLINE]"The wound of a dagger heals, but that of the tongue, never."[NEWLINE] - Armenian proverb[NEWLINE]'),
				('TXT_KEY_WONDER_ETCHMIADZIN_PEDIA',	'TODO'),
				('TXT_KEY_GREAT_WORK_HOLY_LANCE',		'Holy Lance'),
				('TXT_KEY_GREAT_WORK_HOLY_LANCE_QUOTE',	'[NEWLINE]One of the soldiers pierced his side [NEWLINE]with a lance, and immediately [NEWLINE]there came out blood and water.[NEWLINE] - John 19:34[NEWLINE]');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ANGKOR WAT
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_ANGKOR_WAT';
	UPDATE Buildings SET FreshWater = 1, Water = 1, MinAreaSize = 1 WHERE Type = 'BUILDING_ANGKOR_WAT';
	
	INSERT INTO Building_LocalFeatureOrs 
				(BuildingType,				FeatureType) 
	VALUES		('BUILDING_ANGKOR_WAT',		'FEATURE_JUNGLE');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_ANGKOR_WAT_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ANGKOR_WAT_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be next to a [COLOR_CYAN]Lake[ENDCOLOR] and have a [COLOR_CYAN]Jungle[ENDCOLOR] nearby.' WHERE Tag ='TXT_KEY_WONDER_ANGKOR_WAT_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GREAT WALL
	UPDATE Buildings SET WonderSplashAnchor = 'R,B' WHERE Type = 'BUILDING_GREAT_WALL';
	UPDATE Buildings SET Hill = 1, River = 1 WHERE Type = 'BUILDING_GREAT_WALL';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_GREAT_WALL_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_WALL_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Hill[ENDCOLOR] and next to a [COLOR_CYAN]River[ENDCOLOR]' WHERE Tag ='TXT_KEY_WONDER_GREAT_WALL_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- CHAND BAORI (NEW) - food, gold and culture, food on desert, gpp, no unhappy specialists;
	UPDATE Buildings SET Cost = 250, PrereqTech = 'TECH_ENGINEERING', NumPoliciesNeeded = 5, MaxStartEra = 'ERA_MEDIEVAL' WHERE Type = 'BUILDING_CHAND_BAORI';
	
	UPDATE Buildings SET IsNoWater = 1, NearbyTerrainRequired = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_CHAND_BAORI';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,				BuildingClassType) 
	VALUES		('BUILDING_CHAND_BAORI',	'BUILDINGCLASS_WELL');
	---------------------------------------------------------
	UPDATE Buildings SET NoUnhappfromXSpecialists = 5, GreatPeopleRateModifier = 10 WHERE Type = 'BUILDING_CHAND_BAORI';
	
	INSERT INTO Building_YieldChanges 
				(BuildingType,				YieldType,			Yield) 
	VALUES		('BUILDING_CHAND_BAORI',	'YIELD_FOOD',		3),
				('BUILDING_CHAND_BAORI',	'YIELD_GOLD',		1),
				('BUILDING_CHAND_BAORI',	'YIELD_CULTURE',	2);
	
	INSERT INTO Building_TerrainYieldChanges 
				(BuildingType,				TerrainType,		YieldType,		Yield) 
	VALUES		('BUILDING_CHAND_BAORI',	'TERRAIN_DESERT',	'YIELD_FOOD',	1);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,				FlavorType,				Flavor) 
	VALUES		('BUILDING_CHAND_BAORI',	'FLAVOR_GROWTH',		60),
				('BUILDING_CHAND_BAORI',	'FLAVOR_CULTURE',		20),
				('BUILDING_CHAND_BAORI',	'FLAVOR_GREAT_PEOPLE',	10),
				('BUILDING_CHAND_BAORI',	'FLAVOR_HAPPINESS',		20),
				('BUILDING_CHAND_BAORI',	'FLAVOR_GOLD',			10);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	VALUES		('TXT_KEY_BUILDING_CHAND_BAORI',		'Chand Baori Well'),
				('TXT_KEY_WONDER_CHAND_BAORI_HELP',		'+10% generation of [ICON_GREAT_PEOPLE] Great People in this City. +1 [ICON_FOOD] Food from Desert tiles in this City. 5 Specialists in this City no longer generates [ICON_HAPPINESS_3] Unhappiness from Urbanization.[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Desert[ENDCOLOR] and have [COLOR_CYAN]Well[ENDCOLOR] already constructed. City cannot be built next to a [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR] is nearby.'),
				('TXT_KEY_WONDER_CHAND_BAORI_HELP_CUT',	'+10% generation of [ICON_GREAT_PEOPLE] Great People in this City. +1 [ICON_FOOD] Food from Desert tiles in this City. 5 Specialists in this City no longer generates [ICON_HAPPINESS_3] Unhappiness from Urbanization.'),
				('TXT_KEY_WONDER_CHAND_BAORI_QUOTE',	'[NEWLINE]"When the well''s dry, we know the worth of water."[NEWLINE] - Benjamin Franklin[NEWLINE]'),
				('TXT_KEY_WONDER_CHAND_BAORI_PEDIA',	'');
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- COLOSSUS
	UPDATE Buildings SET Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_COLOSSUS';
	
	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,			ResourceType) 
	VALUES		('BUILDING_COLOSSUS',	'RESOURCE_IRON');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_COLOSSUS_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_COLOSSUS_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Coast[ENDCOLOR] and have an [ICON_RES_IRON] Iron nearby.' WHERE Tag ='TXT_KEY_WONDER_COLOSSUS_HELP';
--============================================--
-- MEDIEVAL ERA
--============================================--
-- UNIVERSITY OF SANKORE
	UPDATE Buildings SET WonderSplashAnchor = 'C,C' WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE';
	UPDATE Buildings SET Flat = 1, NearbyTerrainRequired = 'TERRAIN_DESERT', ProhibitedCityTerrain = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_MOSQUE_OF_DJENNE';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on or next to a [COLOR_CYAN]Desert[ENDCOLOR] and on a [COLOR_CYAN]Flat[ENDCOLOR]. City cannot be built on [COLOR_NEGATIVE_TEXT]Tundra[ENDCOLOR] nor [COLOR_NEGATIVE_TEXT]Snow[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- HAGIA SOPHIA
	UPDATE Buildings SET HolyCity = 1, Water = 1, MinAreaSize = 10 WHERE Type = 'BUILDING_HAGIA_SOPHIA';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,				BuildingClassType) 
	VALUES		('BUILDING_HAGIA_SOPHIA',	'BUILDINGCLASS_TEMPLE');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_HAGIA_SOPHIA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HAGIA_SOPHIA_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be a [COLOR_CYAN]Holy City[ENDCOLOR], must be built on a [COLOR_CYAN]Coast[ENDCOLOR] and have [COLOR_CYAN]Temple[ENDCOLOR] already constructed.' WHERE Tag ='TXT_KEY_WONDER_HAGIA_SOPHIA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- BOROBUDUR
	UPDATE Buildings SET Flat = 1, ProhibitedCityTerrain = 'TERRAIN_TUNDRA' WHERE Type = 'BUILDING_BOROBUDUR';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_BOROBUDUR_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BOROBUDUR_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be a [COLOR_CYAN]Holy City[ENDCOLOR] and must be built on a [COLOR_CYAN]Flat[ENDCOLOR]. City cannot be built on or next to a [COLOR_NEGATIVE_TEXT]Tundra[ENDCOLOR] nor [COLOR_NEGATIVE_TEXT]Snow[ENDCOLOR]' WHERE Tag ='TXT_KEY_WONDER_BOROBUDUR_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- ALHAMBRA
	UPDATE Buildings SET IsNoRiver = 1, Hill = 1 WHERE Type = 'BUILDING_ALHAMBRA';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_ALHAMBRA_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ALHAMBRA_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Hill[ENDCOLOR]. City cannot be built next to a [COLOR_NEGATIVE_TEXT]River[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_ALHAMBRA_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- MACHU PICCHU
	UPDATE Buildings SET Mountain = 1 WHERE Type = 'BUILDING_MACHU_PICHU';
	-- +earlier Mountain in range
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,									Text) 
	SELECT		'TXT_KEY_WONDER_MACHU_PICHU_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built next to a [COLOR_CYAN]Mountain[ENDCOLOR] and have another [COLOR_CYAN]Mountain[ENDCOLOR] nearby.' WHERE Tag ='TXT_KEY_WONDER_MACHU_PICHU_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- FORBIDDEN PALACE
	UPDATE Buildings SET Flat = 1 WHERE Type = 'BUILDING_FORBIDDEN_PALACE';
	
	INSERT INTO Building_ClassesNeededInCity 
				(BuildingType,					BuildingClassType) 
	VALUES		('BUILDING_FORBIDDEN_PALACE',	'BUILDINGCLASS_WALLS');
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text) 
	SELECT		'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Flat[ENDCOLOR] and have [COLOR_CYAN]Walls[ENDCOLOR] already constructed.' WHERE Tag ='TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- CATHEDRAL OF ST. BASIL
	UPDATE Buildings SET River = 1, ProhibitedCityTerrain = 'TERRAIN_DESERT' WHERE Type = 'BUILDING_KREMLIN';
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,								Text) 
	SELECT		'TXT_KEY_WONDER_KREMLIN_HELP_CUT',	Text
	FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KREMLIN_HELP';
				
	UPDATE Language_en_US SET Text = Text||'[NEWLINE][NEWLINE]City must be a [COLOR_CYAN]Holy City[ENDCOLOR] and must be built next to a [COLOR_CYAN]River[ENDCOLOR]. City cannot be built on or next to a [COLOR_CYAN]Desert[ENDCOLOR].' WHERE Tag ='TXT_KEY_WONDER_KREMLIN_HELP';
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-- GOLDEN DAGON PAGODA (NEW) - more Great Artists, artist points, culture and faith to all artists, faith to gold and gems, 4 slots of art (theming: gold, culture, faith, tourism);
	UPDATE Buildings SET Cost = 500, PrereqTech = 'TECH_GUILDS', NumPoliciesNeeded = 8, MaxStartEra = 'ERA_RENAISSANCE' WHERE Type = 'BUILDING_SHWEDAGON';
	UPDATE Buildings SET WonderSplashAnchor = 'L,B' WHERE Type = 'BUILDING_SHWEDAGON';
	
	UPDATE Buildings SET Hill = 1 WHERE Type = 'BUILDING_SHWEDAGON';

	INSERT INTO Building_LocalResourceOrs 
				(BuildingType,			ResourceType) 
	VALUES		('BUILDING_SHWEDAGON',	'RESOURCE_GOLD'),
				('BUILDING_SHWEDAGON',	'RESOURCE_GEMS');
	---------------------------------------------------------
	UPDATE Buildings SET GreatWorkSlotType = 'GREAT_WORK_SLOT_ART_ARTIFACT', GreatWorkCount = 4, ThemingBonusHelp = 'TXT_KEY_SHWEDAGON_THEMING_BONUS_HELP', SpecialistType = 'SPECIALIST_ARTIST', GreatPeopleRateChange = 1 WHERE Type = 'BUILDING_SHWEDAGON';

	INSERT INTO Building_SpecificGreatPersonRateModifier 
				(BuildingType,			SpecialistType,			Modifier)
	VALUES		('BUILDING_SHWEDAGON',	'SPECIALIST_ARTIST',	33);

	INSERT INTO Building_SpecialistYieldChanges 
				(BuildingType,			SpecialistType,			YieldType,			Yield) 
	VALUES		('BUILDING_SHWEDAGON',	'SPECIALIST_ARTIST',	'YIELD_FAITH',		1),
				('BUILDING_SHWEDAGON',	'SPECIALIST_ARTIST',	'YIELD_CULTURE',	1);

	INSERT INTO Building_ResourceYieldChanges 
				(BuildingType,			ResourceType,		YieldType,		Yield) 
	VALUES		('BUILDING_SHWEDAGON',	'RESOURCE_GOLD',	'YIELD_FAITH',	1),
				('BUILDING_SHWEDAGON',	'RESOURCE_GEMS',	'YIELD_FAITH',	1);
	
	INSERT INTO Building_ThemingBonuses 
				(BuildingType,			Description,						Bonus,	MustBeArt,	RequiresOwner,	AIPriority)
	VALUES		('BUILDING_SHWEDAGON',	'TXT_KEY_THEMING_BONUS_SHWEDAGON',	8,		1,			1,				5);

	INSERT INTO Building_ThemingYieldBonus 
				(BuildingType,			YieldType,			Yield) 
	VALUES		('BUILDING_SHWEDAGON',	'YIELD_CULTURE',	2),
				('BUILDING_SHWEDAGON',	'YIELD_FAITH',		2),
				('BUILDING_SHWEDAGON',	'YIELD_GOLD',		2),
				('BUILDING_SHWEDAGON',	'YIELD_TOURISM',	2);
	---------------------------------------------------------
	INSERT INTO Building_Flavors 
				(BuildingType,			FlavorType,				Flavor)
	VALUES		('BUILDING_SHWEDAGON',	'FLAVOR_CULTURE',		40),
				('BUILDING_SHWEDAGON',	'FLAVOR_GREAT_PEOPLE',	40),
				('BUILDING_SHWEDAGON',	'FLAVOR_GOLD',			20),
				('BUILDING_SHWEDAGON',	'FLAVOR_RELIGION',		40);
	---------------------------------------------------------
	INSERT INTO Language_en_US 
				(Tag,										Text)
	VALUES		('TXT_KEY_BUILDING_SHWEDAGON',				'Golden Dagon Pagoda'),
				('TXT_KEY_WONDER_SHWEDAGON_HELP',			'+33% faster generation and +1 [ICON_CULTURE] and +1 [ICON_PEACE] Faith from [ICON_GREAT_ARTIST] Artists in Empire. Has 4 slots for [ICON_GREAT_WORK] Great Works of Art. +2 [ICON_GOLD] Gold, [ICON_CULTURE] Culture, [ICON_PEACE] Faith and [ICON_TOURISM] Tourism if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR].[NEWLINE][NEWLINE]Nearby [ICON_RES_GEMS] Gems: +1 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_GOLD] Gold: +1 [ICON_PEACE] Faith.[NEWLINE][NEWLINE]City must be built o a [COLOR_CYAN]Hill[ENDCOLOR] and have improved [ICON_RES_GEMS] Gems or [ICON_RES_GOLD] Gold nearby.'),
				('TXT_KEY_WONDER_SHWEDAGON_HELP_CUT',		'+33% faster generation and +1 [ICON_CULTURE] and +1 [ICON_PEACE] Faith from [ICON_GREAT_ARTIST] Artists in Empire. Has 4 slots for [ICON_GREAT_WORK] Great Works of Art. +2 [ICON_GOLD] Gold, [ICON_CULTURE] Culture, [ICON_PEACE] Faith and [ICON_TOURISM] Tourism if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR].[NEWLINE][NEWLINE]Nearby [ICON_RES_GEMS] Gems: +1 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_GOLD] Gold: +1 [ICON_PEACE] Faith.'),
				('TXT_KEY_WONDER_SHWEDAGON_QUOTE',			'[NEWLINE]"There was a tumult among men and spirits, the blind beheld objects, the deaf heard sounds. The earth quaked, lightning flashed, gems rained down until they were knee deep, and all trees of the Himalayas, though not in season, bore blossoms and fruit."[NEWLINE] - King Okkalapa[NEWLINE]'),
				('TXT_KEY_WONDER_SHWEDAGON_PEDIA',			'Shwedagon Paya (also known as Shwedagon Pagoda or the Great Dragon Pagoda) is a large Buddhist stupa located in the Burmese city of Rangoon. It is 99 metres tall in it''s current state, and is coated with gold donated by the Burmese populus to maintain the Stupa. It is not known when the gold was put in place, although the stupa itself is said to date back over 2,500 years. Each sucessive dynasty has built upon the Stupa, until it reached the current height of 99 metres during reconstruction following an earthquake in 1768. Shwedagon Paya also features a crown of 5,448 diamonds and 2317 Rubies.'),
				('TXT_KEY_THEMING_BONUS_SHWEDAGON',			'Relics of the four previous Buddhas of the present kalpa'),
				('TXT_KEY_SHWEDAGON_THEMING_BONUS_HELP',	'To maximize your bonus, make sure all the Great Work Slots are all filled with Art created by you.');
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
				
	UPDATE Language_en_US SET Text = 'Requires completion of [COLOR_MAGENTA]Tradition[ENDCOLOR] Branch.[NEWLINE]'||Text||'[NEWLINE][NEWLINE]City must be built on a [COLOR_CYAN]Flat[ENDCOLOR] and next to a [COLOR_CYAN]River[ENDCOLOR].' WHERE Tag ='TXT_KEY_BUILDING_NOTRE_DAME_HELP';
--============================================--
-- RELIGIOUS WONDERS (MUST BE BUILT IN HOLY CITY)
--============================================--
-- El Ghriba - Judaism - Late Classical
-- Hagia Sophia - Orthodox/Islam - Early Medieval
-- Cathedral of St. Basil - Orthodox - Early Medieval
-- Al Masjid an-Nabawi - Islam - Early Medieval
-- Borobudur - Buddhism - Late Medieval
-- St Peter's Basilica - Catholic - Early Renaissance
---------------------------------------------------------
UPDATE Buildings SET HolyCity = 1, MutuallyExclusiveGroup = 70 WHERE Type IN
('BUILDING_BOROBUDUR', 'BUILDING_HAGIA_SOPHIA', 'BUILDING_KREMLIN', 'BUILDING_EL_GHRIBA');--, 'BUILDING_NABAWI', 'BUILDING_ST_PETERS_BASILICA', );
--============================================--
-- POLICY FINISHERS
--============================================--
-- MutuallyExclusiveGroup indicator works only on the city level, so you cannot build a Wonder in the city where the other exists
-- but you can build it in another city. To achieve true 'mutually exclusive' situation we need a dummy building that will be placed
-- in all your cities and block the construction of the 2nd Wonder.
---------------------------------------------------------
UPDATE Buildings SET MutuallyExclusiveGroup = 61, PolicyType = 'POLICY_TRADITION_FINISHER' 	 WHERE Type IN ('BUILDING_MOSQUE_OF_DJENNE',	'BUILDING_NOTRE_DAME');
UPDATE Buildings SET MutuallyExclusiveGroup = 62, PolicyType = 'POLICY_LIBERTY_FINISHER' 	 WHERE Type IN ('BUILDING_FORBIDDEN_PALACE'/*,	'BUILDING_WARTBURG'*/);
UPDATE Buildings SET MutuallyExclusiveGroup = 63, PolicyType = 'POLICY_HONOR_FINISHER' 		 WHERE Type IN ('BUILDING_ALHAMBRA'/*,			'BUILDING_DAMASCUS'*/);

UPDATE Language_en_US SET Text = Text||'[NEWLINE][ICON_BULLET] Unlocks building the [COLOR_POSITIVE_TEXT]Notre Dame[ENDCOLOR]. However, only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built.' WHERE Tag = 'TXT_KEY_POLICY_BRANCH_TRADITION_HELP';
UPDATE Language_en_US SET Text = Text||'[NEWLINE][ICON_BULLET] Unlocks building the [COLOR_POSITIVE_TEXT]Wartburg Castle[ENDCOLOR]. However, only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built.' WHERE Tag = 'TXT_KEY_POLICY_BRANCH_LIBERTY_HELP';
UPDATE Language_en_US SET Text = Text||'[NEWLINE][ICON_BULLET] Unlocks building the [COLOR_POSITIVE_TEXT]Forge of Damascus[ENDCOLOR]. However, only [COLOR_NEGATIVE_TEXT]one[ENDCOLOR] of those newly unlocked Wonders can be built.' WHERE Tag = 'TXT_KEY_POLICY_BRANCH_HONOR_HELP';
--============================================--
-- VP FIXES
--============================================--
UPDATE Buildings SET NumPoliciesNeeded = 7 WHERE Type = 'BUILDING_BOROBUDUR'; -- was 8
UPDATE Buildings SET NumPoliciesNeeded = 8 WHERE Type = 'BUILDING_KREMLIN'; -- was 7
UPDATE Buildings SET NumPoliciesNeeded = 4 WHERE Type = 'BUILDING_FORUM'; -- was 3
UPDATE GreatWorks SET Audio = 'AS2D_GREAT_ARTIST_ARTWORK' WHERE Type = 'GREAT_WORK_THE_CROWN_JEWELS'; -- all other art has it
UPDATE Language_en_US SET Text = 'On the contrary. Every Bison dollar will be worth [NEWLINE]five British pounds. That is the exchange rate [NEWLINE]that the bank of England will implement [NEWLINE]after I kidnap their queen.[NEWLINE] - M. Bison[NEWLINE]' WHERE Tag = 'TXT_KEY_GREAT_WORK_THE_CROWN_JEWELS_QUOTE'; -- did not fit the screen