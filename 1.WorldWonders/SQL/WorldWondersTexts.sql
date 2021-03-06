----------------------------------------------------
-- Text file for all Wonders
-- Feb 20, 2020: Created, adan_eslavo
----------------------------------------------------
/*
New HELP texts!
0 = Normal HELP texts made with VP standard;
1 = Better HELP texts. (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('MW-HELP', 	1);
----------------------------------------------------
----------------------------------------------------
-- Altamira Cave
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_ALTAMIRA',			'Altamira Cave'),
			('TXT_KEY_WONDER_ALTAMIRA_QUOTE',		'[NEWLINE]"After Altamira everything seems decadent."[NEWLINE] - Pablo Picasso[NEWLINE]'),
			('TXT_KEY_WONDER_ALTAMIRA_PEDIA',		'Altamira Cave is approximately 1,000 m (3,280.84 ft) meters long and consists of a series of twisting passages and chambers. The main passage varies from two to six meters in height. The cave was formed through collapses following early karst phenomena in the calcareous rock of Mount Vispieres. Archaeological excavations in the cave floor found rich deposits of artifacts from the Upper Solutrean (c. 18,500 years ago) and Lower Magdalenian (between c. 16,590 and 14,000 years ago). Both periods belong to the Paleolithic or Old Stone Age. In the two millennia between these two occupations, the cave was evidently inhabited only by wild animals. Human occupants of the site were well-positioned to take advantage of the rich wildlife that grazed in the valleys of the surrounding mountains as well as the marine life available in nearby coastal areas. Around 13,000 years ago a rockfall sealed the cave''s entrance, preserving its contents until its eventual discovery, which occurred after a nearby tree fell and disturbed the fallen rocks. Human occupation was limited to the cave mouth, although paintings were created throughout the length of the cave. The artists used charcoal and ochre or hematite to create the images, often diluting these pigments to produce variations in intensity and creating an impression of chiaroscuro. They also exploited the natural contours of the cave walls to give their subjects a three-dimensional effect. The Polychrome Ceiling is the most impressive feature of the cave, depicting a herd of extinct steppe bison (Bison priscus) in different poses, two horses, a large doe, and possibly a wild boar. Dated to the Magdalenian occupation, these paintings include abstract shapes in addition to animal subjects. Solutrean paintings include images of horses and goats, as well as handprints that were created when artists placed their hands on the cave wall and blew pigment over them to leave a negative image. Numerous other caves in northern Spain contain Paleolithic art, but none is as complex or well-populated as Altamira.'),
			('TXT_KEY_WONDER_ALTAMIRA_HELP',		'Contains 1 slot for [ICON_GREAT_WORK] Great Work of Art or Artifact.[NEWLINE][NEWLINE]Nearby [ICON_RES_BISON] Bison: +1 [ICON_FOOD] Food and +1 [ICON_CULTURE] Culture.[NEWLINE]Nearby [ICON_RES_DEER] Deer: +1 [ICON_FOOD] Food and +1 [ICON_CULTURE] Culture.');

UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Altamira Cave[ENDCOLOR] greatly supports early culture generation (+2[ICON_CULTURE]), especially if [COLOR_GREY]Bisons[ENDCOLOR], [COLOR_GREY]Deers[ENDCOLOR] or [COLOR_GREY]Horses[ENDCOLOR] (+1[ICON_FOOD], +1[ICON_CULTURE]/[ICON_RES_BISON], [ICON_RES_DEER], [ICON_RES_HORSE]) are present nearby. Maximize its effectiveness by filling empty art slot (+1[ICON_GREAT_WORK]) or by rushing advanced technologies ([COLOR_CYAN]Archaeology:[ENDCOLOR] +3[ICON_CULTURE]).'
WHERE Tag = 'TXT_KEY_WONDER_ALTAMIRA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_ALTAMIRA_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ALTAMIRA_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Resource: [ICON_RES_BISON] [COLOR_CYAN]Bison[ENDCOLOR]/[ICON_RES_DEER] [COLOR_CYAN]Deer[ENDCOLOR]/[ICON_RES_HORSE] [COLOR_CYAN]Horses[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ALTAMIRA_HELP';
----------------------------------------------------
-- Ggantija
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_GGANTIJA',			'Ggantija'),
			('TXT_KEY_WONDER_GGANTIJA_QUOTE',		'[NEWLINE]"We need to find God, and he cannot be found in noise and restlessness. God is the friend of silence. See how nature - trees, flowers, grass - grows in silence; see the stars, the moon and the sun, how they move in silence... We need silence to be able to touch souls."[NEWLINE] - Mother Teresa[NEWLINE]'),
			('TXT_KEY_WONDER_GGANTIJA_PEDIA',		'Ggantija (Giants'' Tower) is a megalithic temple complex in Malta on the Mediterranean island of Gozo. Its makers erected the two Ggantija temples during the Neolithic Age (c. 3600-2500 BC), which makes the buildings more than 5500 years old and the world''s second oldest manmade religious structures, after Gobekli Tepe. The temples were possibly the site of a Fertility cult - archeologists believe that the numerous figurines and statues found on site are connected with that cult.'),
			('TXT_KEY_WONDER_GGANTIJA_HELP',		'Grants 50 [ICON_FOOD] Food after construction. Converts 10% [ICON_PEACE] Faith produced by this City into [ICON_FOOD] Food. All Farms in the Empire receive +1 [ICON_FOOD] Food.');

UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Ggantija[ENDCOLOR] boosts your empire''s growth right after construction (50[ICON_FOOD]) and upgrades all [COLOR_CITY_BROWN]Farms[ENDCOLOR] (+1[ICON_FOOD]/[ICON_WORKER][ICON_WORKER]). To increase your city developement even more, you should fully focus on religion (10%[ICON_PEACE] into [ICON_FOOD]).'
WHERE Tag = 'TXT_KEY_WONDER_GGANTIJA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_GGANTIJA_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GGANTIJA_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR]; Improvement: [COLOR_CYAN]2 Farms[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GGANTIJA_HELP';
----------------------------------------------------				
-- Goebekli Tepe	
INSERT INTO Language_en_US 
			(Tag,										Text) 
VALUES		('TXT_KEY_BUILDING_GOEBEKLI_TEPE',			'Goebekli Tepe'),
			('TXT_KEY_WONDER_GOEBEKLI_TEPE_QUOTE',		'[NEWLINE]"Look up at the stars and not down at your feet. Try to make sense of what you see, and wonder about what makes the universe exist. Be curious."[NEWLINE] - Stephen Hawking[NEWLINE]'),
			('TXT_KEY_WONDER_GOEBEKLI_TEPE_PEDIA',		'Göbekli Tepe is a religious site located in southern Turkey, near the Syrian border. It is the oldest known religious building on earth, dating to approximately 10000 BCE, during the Neolithic age of Human civilization, and predating all major civilizations and cities by several millenia. It was first observed during the 1960''s, when archeologists noted that the hill could not be natural due to the shape, yet dismissed it as a Byzantine burial ground. This belief persisted until 1994, and not excavated until a year later. The complex is similar in form to Stonehenge, with a round shape and large Monolithic stones. However, unlike Stonehenge, many of the pillars are carved with the figures of several animals, which are believed to have been sacred to the hunter-gatherers which constructed Göbekli Tepe.'),
			('TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP',		'+1 [ICON_RESEARCH] Science and +1 [ICON_PEACE] Faith from Mountains worked by this City.[NEWLINE][NEWLINE]All [ICON_RES_STONE] Stone: +1 [ICON_RESEARCH] Science.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Goebekli Tepe[ENDCOLOR] is excellent wonder for area filled with [COLOR_CITY_BLUE]Mountains[ENDCOLOR] (+1[ICON_RESEARCH], +1[ICON_PEACE]/[ICON_FLOWER]), which increases important yield''s early output (+1[ICON_RESEARCH]; +1[ICON_CULTURE]; +1[ICON_PEACE]). Make sure to claim each [COLOR_GREY]Stone[ENDCOLOR] (+1[ICON_RESEARCH]/[ICON_RES_STONE][ICON_RES_STONE]) deposit you can find.'
WHERE Tag = 'TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GOEBEKLI_TEPE_HELP';
----------------------------------------------------				
-- Kuk
INSERT INTO Language_en_US 
			(Tag,							Text) 
VALUES		('TXT_KEY_BUILDING_KUK',		'Kuk'),
			('TXT_KEY_WONDER_KUK_QUOTE',	'[NEWLINE]"If perfection is stagnation, then Heaven is a swamp."[NEWLINE] - Richard Bach[NEWLINE]'),
			('TXT_KEY_WONDER_KUK_PEDIA',	'TODO'),
			('TXT_KEY_WONDER_KUK_HELP',		'10% [ICON_FOOD] Food and 5% [ICON_PRODUCTION] Production is carried over after new [ICON_CITIZEN] Citizen is born. +1 [ICON_PRODUCTION] Production and +1 [ICON_RESEARCH] Science from Marshes worked by this City.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Kuk[ENDCOLOR], thanks to unique agricultural techniques, turned [COLOR_CITY_GREEN]Marshes[ENDCOLOR] (+1[ICON_PRODUCTION], +1[ICON_RESEARCH]/[ICON_MUSHROOM][ICON_MUSHROOM]) into rich soil. Use its power to speed up developement of your huge city even more (+10%[ICON_FOOD], +5%[ICON_PRODUCTION]/New [ICON_CITIZEN]).'
WHERE Tag = 'TXT_KEY_WONDER_KUK_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_KUK_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KUK_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Snow[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Marsh[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_KUK_HELP';
----------------------------------------------------
-- Majorville Medicine Wheel
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_MAJORVILLE',			'Majorville Medicine Wheel'),
			('TXT_KEY_WONDER_MAJORVILLE_QUOTE',		'[NEWLINE]"When the Earth is sick, the animals will begin to disappear, when that happens, The Warriors of the Rainbow will come to save them."[NEWLINE] - Chief Seattle[NEWLINE]'),
			('TXT_KEY_WONDER_MAJORVILLE_PEDIA',		'The Majorville Medicine Wheel is an archaeological site of the Blackfeet nation dating to 3200 BCE. It is a round stone cairn connected to a cobble circle by 28 stone spokes. Traditionally, in certain Native American cultures, medicine wheels are metaphors for a variety of spiritual concepts. However, as it is believed that the Majorville Medicine Wheel was improved upon for successive generations, the precise meaning of the wheel may differ for each generation. Offerings found at the site included sweet grass, willow, cloth, tobacco, and iniskim stones ("buffalo calling stones").'),
			('TXT_KEY_WONDER_MAJORVILLE_HELP',		'+1 [ICON_PEACE] Faith from Tundra tiles worked by this City. All Camps in the Empire receive +1 [ICON_FOOD] Food.[NEWLINE][NEWLINE]All [ICON_RES_BISON] Bison: +1 [ICON_CULTURE] Culture.');
			
UPDATE Language_en_US
SET Text = 'This [COLOR_YIELD_FOOD]Medicine Wheel[ENDCOLOR] strongly supports [COLOR_CITY_BLUE]Tundra[ENDCOLOR] (+1[ICON_PEACE]/[ICON_FLOWER]) developement. You should construct as many [COLOR_CITY_BROWN]Camps[ENDCOLOR] (+1[ICON_FOOD]/[ICON_WORKER][ICON_WORKER]) as possible to increase your growth and and catch all [COLOR_GREY]Bisons[ENDCOLOR] (+1[ICON_CULTURE]/[ICON_RES_BISON][ICON_RES_BISON]) to boost your culture output as well.'
WHERE Tag = 'TXT_KEY_WONDER_MAJORVILLE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MAJORVILLE_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MAJORVILLE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Tundra[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MAJORVILLE_HELP';	
----------------------------------------------------
-- Mohenjo-daro
INSERT INTO Language_en_US 
			(Tag,										Text) 
VALUES		('TXT_KEY_BUILDING_MOHENJO_DARO',			'Mohenjo-daro'),
			('TXT_KEY_WONDER_MOHENJO_DARO_QUOTE',		'[NEWLINE]"A river is an ocean in a desert."[NEWLINE] - Matshona Dhliwayo[NEWLINE]'),
			('TXT_KEY_WONDER_MOHENJO_DARO_PEDIA',		'Built sometime around 2500 BC, Mohenjo-daro was one of the largest of the Harappan civilizations settlements, center of a thriving culture that spanned northern India and Pakistan. While the Egyptians were building pyramids for their pharaohs and the Minoans were leaping over bulls for sport, the 40,000 (or so) citizens of Mohenjo-daro were building striking structures of fired and mortared brick: public baths, a central market with a public well, spacious homes, a great granary (with air ducts to dry the grain), the Pillared Hall for assemblies, and the College Hall (78 rooms thought to have been a residence for priests). Mohenjo-daro was the most advanced city of its time, with remarkably sophisticated civil engineering and urban planning. When the Harappan civilization went into a sudden  and as yet unexplained, although historians have lots of theories  decline around 1900 BC, Mohenjo-daro was gradually abandoned, to be lost until 1920 AD. (Adapted from Sid Meier''s Civilization 6)'),
			('TXT_KEY_WONDER_MOHENJO_DARO_HELP',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Well in the City in which it is built. +1 [ICON_FOOD] Food from River tiles worked by this City.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Mohenjo-daro[ENDCOLOR] makes special use from recently constructed [COLOR_YIELD_FOOD]Well[ENDCOLOR] ([ICON_FOOD]; [ICON_PRODUCTION]), increases potential of local [COLOR_CITY_GREEN]River[ENDCOLOR] (+1[ICON_FOOD]/[ICON_MUSHROOM]) and supports your culture and religion (+2[ICON_CULTURE]; +1[ICON_PEACE]).'
WHERE Tag = 'TXT_KEY_WONDER_MOHENJO_DARO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MOHENJO_DARO_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MOHENJO_DARO_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Desert[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MOHENJO_DARO_HELP';	
----------------------------------------------------
-- Skara Brae
INSERT INTO Language_en_US 
			(Tag, Text)
VALUES		('TXT_KEY_BUILDING_SKARA_BRAE',			'Skara Brae'),
			('TXT_KEY_WONDER_SKARA_BRAE_QUOTE',		'[NEWLINE]"No great thing is created suddenly."[NEWLINE] - Epictetus[NEWLINE]'),
			('TXT_KEY_WONDER_SKARA_BRAE_PEDIA',		'Skara Brae is a stone-built Neolithic settlement, located on the Bay of Skaill on the west coast of Mainland, the largest island in the Orkney archipelago of Scotland. It consists of eight clustered houses, and was occupied from roughly 3180 BC - 2500 BC.[NEWLINE][NEWLINE]Given the number of homes, it seems likely that no more than fifty people lived in Skara Brae at any given time. Apart from being makers and users of grooved ware, a distinctive style of pottery that appeared in northern Scotland not long before the establishment of the village, they were primarily pastorialists who raised cattle and sheep.'),
			('TXT_KEY_WONDER_SKARA_BRAE_HELP',		'All Villages in the Empire receive +1 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold.[NEWLINE][NEWLINE]All [ICON_RES_COW] Cattle: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_FISH] Fish: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_SHEEP] Sheep: +1 [ICON_FOOD] Food.[NEWLINE]All [ICON_RES_WHEAT] Wheat: +1 [ICON_FOOD] Food.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Skara Brae[ENDCOLOR] gives major developement boost to all cities with improved basic resources (+1[ICON_FOOD]/[ICON_RES_COW][ICON_RES_COW], [ICON_RES_SHEEP][ICON_RES_SHEEP], [ICON_RES_FISH][ICON_RES_FISH], [ICON_RES_WHEAT][ICON_RES_WHEAT]). Starting from medieval era, you should create numerous upgraded [COLOR_CITY_BROWN]Villages[ENDCOLOR] (+1[ICON_PRODUCTION], +1[ICON_GOLD]/[ICON_WORKER][ICON_WORKER]) with much more potential than standard ones.'
WHERE Tag = 'TXT_KEY_WONDER_SKARA_BRAE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_SKARA_BRAE_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_SKARA_BRAE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Resource: [ICON_RES_COW] [COLOR_CYAN]Cattle[ENDCOLOR]/[ICON_RES_FISH] [COLOR_CYAN]Fish[ENDCOLOR]/[ICON_RES_SHEEP] [COLOR_CYAN]Sheep[ENDCOLOR]/[ICON_RES_WHEAT] [COLOR_CYAN]Wheat[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_SKARA_BRAE_HELP';	
----------------------------------------------------
----------------------------------------------------
-- Karnak
INSERT INTO Language_en_US 
			(Tag,								Text) 
VALUES		('TXT_KEY_BUILDING_KARNAK',			'Karnak'),
			('TXT_KEY_WONDER_KARNAK_QUOTE',		'[NEWLINE]"I was sitting in the Temple of Karnak of the Nile, as the sun was going down, and I was all alone, and the great Hypostyle Hall was full of shadows and ghosts of the past, (...) and if you believe that, you''ll believe anything."[NEWLINE] - Wilbur A. Smith[NEWLINE]'),
			('TXT_KEY_WONDER_KARNAK_PEDIA',		'Karnak is a large temple complex located in Thebes (nowadays is Luxor). It was constructed during the reign of Ramesses II as a place of worship for many different gods and goddesses, instead of focusing on just one member of the Egyptian Pantheon.[NEWLINE][NEWLINE]  The complex is a vast open-air museum, and the second largest ancient religious site in the world (after the Angkor Wat in Cambodia). It is believed to be the second most visited historical site in Egypt, only the Giza Pyramids near Cairo receive more visits.[NEWLINE][NEWLINE]  One famous aspect of Karnak is the Hypostyle Hall in the Precinct of Amun-Re, a hall area of 50,000 sq ft (5,000 m2) with 134 massive columns arranged in 16 rows. 122 of these columns are 10 meters tall, and the other 12 are 21 meters tall with a diameter of over three meters.'),
			('TXT_KEY_WONDER_KARNAK_HELP',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monument in the City in which it is built and all Monuments in the Empire receive +1 [ICON_CULTURE] Culture. +1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith from each Oasis and every 2 Flood Plains worked by this City. +4 [ICON_TOURISM] Tourism with [COLOR_CYAN]Archeology[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Karnak[ENDCOLOR] temples turn rare [COLOR_CITY_GREEN]Oasis[ENDCOLOR] (+1[ICON_PRODUCTION], +1[ICON_PEACE]/[ICON_MUSHROOM]) and [COLOR_CITY_GREEN]Flood Plains[ENDCOLOR] (+1[ICON_PRODUCTION], +1[ICON_PEACE]/2 [ICON_MUSHROOM]) into very productive sacred places. Remember to build a [COLOR_YIELD_FOOD]Monument[ENDCOLOR] ([ICON_CULTURE]; [ICON_MOVES]; +1[ICON_CULTURE]) in all other cities to speed up your cultural progress.'
WHERE Tag = 'TXT_KEY_WONDER_KARNAK_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_KARNAK_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KARNAK_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Flood Plains[ENDCOLOR]/[COLOR_CYAN]Oasis[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_KARNAK_HELP';	
----------------------------------------------------
-- Nazca Lines
INSERT INTO Language_en_US 
			(Tag,								Text) 
VALUES		('TXT_KEY_BUILDING_NAZCA',			'Nazca Lines'),
			('TXT_KEY_WONDER_NAZCA_QUOTE',		'[NEWLINE]"The true mystery of the world is the visible, not the invisible."[NEWLINE] - Oscar Wilde[NEWLINE]'),
			('TXT_KEY_WONDER_NAZCA_PEDIA',		'The Nazca Lines, located between the Peruvian towns of Nazca and Palpa, are a series of enormous Geoglyphs designed on a large plateau, spanning over 80 kilometres. The designs have long been a source of mystery for those who have gazed upon them. It is estimated that the lines were constructed by the Nazca culture, hense the name, between 450 and 600 CE. The level of complexity of design varies between designs. Some are simple lines hundreds of metres long, while others are incredibly complex patterns resembling a variety of zoological designs - Monkeys, Condors, Spiders and Orca (Killer whale) to name but a few.[NEWLINE][NEWLINE]  The Nazca Lines are particularily popular amongst circles which believe in the existance of extra-terrestrial life, which the Nazca culture mistook for their gods. They believe that the simpler, straight lines are in fact landing strips for interstellar crafts used by the extra-terrestrials to land, and that a humanoid figure represented in the patterns is one of the extraterrestrials. Modern science has had a range of theories, amongst which the lines serving a purpose similar to that of Stonehenge as an early form of an observatory / astronomical calendar. Other theories were that the geometric lines could indicate the flow of water, irrigation schemes, or be a part of rituals to "summon" water. However, to this day the exact purpose of the lines remains a mystery.'),
			('TXT_KEY_WONDER_NAZCA_HELP',		'+2 [ICON_FOOD] Food from nearby Plains, +1 [ICON_PEACE] Faith from nearby Hills and +1 [ICON_RESEARCH] Science from Camps worked by this City. +4 [ICON_RESEARCH] Science and +2 [ICON_TOURISM] Tourism with [COLOR_CYAN]Flight[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Nazca Lines[ENDCOLOR] hide awesome scientific secrets, fully discovered only with air reconaissance ([COLOR_CYAN]Flight:[ENDCOLOR] +4[ICON_RESEARCH], +2[ICON_TOURISM]). Boost your growth and religion by claiming local [COLOR_CITY_BLUE]Plains[ENDCOLOR] (+2[ICON_FOOD]/[ICON_FLOWER]) and [COLOR_CITY_BLUE]Hills[ENDCOLOR] (+1[ICON_PEACE]/[ICON_FLOWER]) or science by constructing [COLOR_CITY_BROWN]Camps[ENDCOLOR] (+1[ICON_RESEARCH]/[ICON_WORKER]).'
WHERE Tag = 'TXT_KEY_WONDER_NAZCA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_NAZCA_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_NAZCA_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Plains[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]Camp[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_NAZCA_HELP';	
----------------------------------------------------
-- Wieliczka
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_WIELICZKA',			'Wieliczka Salt Mine'),
			('TXT_KEY_WONDER_WIELICZKA_QUOTE',		'[NEWLINE]"You are the salt of the earth. But remember that salt is useful when in association, but useless in isolation."[NEWLINE] - Israelmore Ayivor[NEWLINE]'),
			('TXT_KEY_WONDER_WIELICZKA_PEDIA',		'The Wieliczka Salt Mine, in the town of Wieliczka, southern Poland, lies within the Kraków metropolitan area. Sodium chloride (table salt) was formerly produced there from the upwelling brine - and had been since Neolithic times. The Wieliczka salt mine, excavated from the 13th century, produced table salt continuously until 2007, as one of the world''s oldest operating salt mines.'),
			('TXT_KEY_WONDER_WIELICZKA_HELP',		'Wonder places 2 new [ICON_RES_SALT] Salt resources inside City range if possible. +5% [ICON_FOOD] Food in all Cities. +1 [ICON_FOOD] Food from Mines worked by this City.[NEWLINE][NEWLINE]Nearby [ICON_RES_SALT] Salt: +1 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Wieliczka Salt Mine[ENDCOLOR] reveals hidden underground secret, greatly boosting your food generation (+5%[ICON_FOOD][ICON_FOOD]) and [COLOR_CITY_BROWN]Mining[ENDCOLOR] (+1[ICON_FOOD]/[ICON_WORKER]) efficiency, additionally supported by recently discovered richer deposits of [COLOR_GREY]Salt[ENDCOLOR] (+2[ICON_RES_SALT]; +1[ICON_PRODUCTION], +1[ICON_GOLD]/[ICON_RES_SALT]).'
WHERE Tag = 'TXT_KEY_WONDER_WIELICZKA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_WIELICZKA_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_WIELICZKA_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]2 Mines[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_WIELICZKA_HELP';	
----------------------------------------------------
-- Stonehenge
UPDATE Language_en_US
SET Text = 'Mysterious [COLOR_YIELD_FOOD]Stonehenge[ENDCOLOR] serves as an improved [COLOR_YIELD_FOOD]Council[ENDCOLOR] ([ICON_RESEARCH]), which provides instant faith boost (50[ICON_PEACE]), almost guaranteeing founding new religion and improving your engineering branch (+1[ICON_GREAT_ENGINEER]).'
WHERE Tag = 'TXT_KEY_BUILDING_STONEHENGE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_BUILDING_STONEHENGE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_STONEHENGE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_STONEHENGE_HELP';
----------------------------------------------------
-- Pyramids
UPDATE Language_en_US
SET Text = 'Great [COLOR_YIELD_FOOD]Pyramids[ENDCOLOR] are an engineering masterpiece (+1[ICON_GREAT_ENGINEER]), accelerating the coming of next golden age thanks to the efforts of prominent people (50[ICON_GOLDEN_AGE]/[ICON_GREAT_PEOPLE][ICON_GREAT_PEOPLE]). Use recently trained [COLOR_YIELD_GOLD]free Settler[ENDCOLOR] to found another great and prosperous city.'
WHERE Tag = 'TXT_KEY_WONDER_CHICHEN_ITZA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_CHICHEN_ITZA_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_CHICHEN_ITZA_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Tundra[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Snow[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_CHICHEN_ITZA_HELP';
----------------------------------------------------
-- Petra
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Petra[ENDCOLOR] complex uses surrounding [COLOR_CITY_BLUE]Desert[ENDCOLOR] (+1[ICON_GOLD]/[ICON_FLOWER]) to increase your income. Send new [COLOR_YIELD_GOLD]free Caravan[ENDCOLOR] along available trade routes (+1[ICON_INTERNATIONAL_TRADE]) to quickly spread your culture over the world ([COLOR_CYAN]Archaeology:[ENDCOLOR] +6[ICON_CULTURE]).'
WHERE Tag = 'TXT_KEY_WONDER_PETRA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'City must be built on or next to Desert. ', '') WHERE Tag ='TXT_KEY_WONDER_PETRA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);
		
INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_PETRA_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PETRA_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Desert[ENDCOLOR], [COLOR_CYAN]Mountain[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PETRA_HELP';

----------------------------------------------------
-- Temple of Artemis
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Temple of Artemis[ENDCOLOR] strongly supports global growth (+10%[ICON_FOOD][ICON_FOOD]), promotes [COLOR_YIELD_FOOD]Herbalists[ENDCOLOR] ([ICON_FOOD]; [ICON_PRODUCTION]) and makes hired specialists in the city much less weighted (-2[ICON_HAPPINESS_3] Urbanization). As and addition, this city can spam ranged units to conquer even more valuable lands (+20%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Ranged[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Desert[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR]; Improvement: [COLOR_CYAN]Camp[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_TEMPLE_ARTEMIS_HELP';
----------------------------------------------------
-- Mausoleum of Halicarnassus
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Mausoleum of Halicarnassus[ENDCOLOR] starts new festival with greatly improved effect (20[ICON_HAPPINESS_1] WLTKD turns; +10%[ICON_PRODUCTION], +10%[ICON_GOLD], +10%[ICON_RESEARCH]/[ICON_HAPPINESS_1] WLTKD). Such a progress could be possible thanks to the effort of recenlty constructed [COLOR_YIELD_FOOD]Stone Works[ENDCOLOR] ([ICON_PRODUCTION]; [ICON_GOLD]).'
WHERE Tag = 'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,												Text) 
SELECT		'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]Quarry[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MAUSOLEUM_HALICARNASSUS_HELP';
----------------------------------------------------
-- Statue of Zeus
UPDATE Language_en_US
SET Text = 'Monumental [COLOR_YIELD_FOOD]Statue of Zeus[ENDCOLOR] along with local [COLOR_YIELD_FOOD]Barracks[ENDCOLOR] ([ICON_WAR]; [ICON_RESEARCH]; [ICON_HAPPINESS_3]) increases your offensive capabilities, especially during city sieges ([COLOR_WATER_TEXT]Statue of Zeus[ENDCOLOR]/[COLOR_YIELD_GOLD]Military[ENDCOLOR]) and triples your efforts towards reducing local unrest (-1[ICON_HAPPINESS_3] Distress).'
WHERE Tag = 'TXT_KEY_WONDER_STATUE_ZEUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_STATUE_ZEUS_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_STATUE_ZEUS_HELP';
				
UPDATE Language_en_US SET Text = 'Other Player: [COLOR_CYAN]Guarded[ENDCOLOR]/[COLOR_CYAN]Afraid[ENDCOLOR]/[COLOR_CYAN]Hostile[ENDCOLOR]/[COLOR_CYAN]Warring[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_STATUE_ZEUS_HELP';
----------------------------------------------------
----------------------------------------------------
-- Malwiya Minaret
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_MALWIYA',			'Malwiya Minaret'),
			('TXT_KEY_WONDER_MALWIYA_QUOTE',		'[NEWLINE]"Aim at heaven and you will get Earth... Aim at Earth and you will get neither."[NEWLINE] - C.S. Lewis[NEWLINE]'),
			('TXT_KEY_WONDER_MALWIYA_PEDIA',		'The Malwiya Minaret (also known as the Spiral Minaret) is part of the Great Mosque of Samarra, located in Samarra, Iraq. The complex was built over a period of four years, from 848 to 852 CE. The main mosque was completed one year before the Minaret. The complex was constructed during the reign of Al-Mutawakkil, an Abbasid Caliph. For a time it was the largest mosque in the world.[NEWLINE][NEWLINE]  The minaret (tower) was constructed of sandstone, and is unique among other minarets because of its ascending spiral conical design. 52 metres high and 33 metres wide at the base, the spiral contains stairs reaching to the top. The word "malwiya" translates as "twisted" or "snail shell".[NEWLINE][NEWLINE]  With the turbulence of the Iraq war, the Malwiya Minaret has been damaged by bomb blasts, one in 2005 and one in 2011, when it was attacked by Iraqi insurgents.'),
			('TXT_KEY_WONDER_MALWIYA_HELP',			'All Stone Works in the Empire receive +2 [ICON_PRODUCTION] Production, all Quarries +1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith and all Manufactories +3 [ICON_PEACE] Faith.');
				
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Malwiya Minaret[ENDCOLOR] is a result of engineering genious (+2[ICON_GREAT_ENGINEER]), that improved all [COLOR_CITY_BROWN]Quarried[ENDCOLOR] materials (+1[ICON_PRODUCTION], +1[ICON_PEACE]/[ICON_WORKER][ICON_WORKER]). Make sure to link your resources, construct many [COLOR_CITY_BROWN]Manufactories[ENDCOLOR] (+3[ICON_PEACE]/[ICON_WORKER][ICON_WORKER]) and rush [COLOR_YIELD_FOOD]Stone Works[ENDCOLOR] (+2[ICON_PRODUCTION][ICON_PRODUCTION]) in all your cities to support this wonderful project.'
WHERE Tag = 'TXT_KEY_WONDER_MALWIYA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MALWIYA_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MALWIYA_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Building: [COLOR_CYAN]Stone Works[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MALWIYA_HELP';	
----------------------------------------------------
-- Buddhas of Bamyan
INSERT INTO Language_en_US 
			(Tag,								Text)
VALUES		('TXT_KEY_BUILDING_BAMYAN',			'Buddhas of Bamyan'),
			('TXT_KEY_WONDER_BAMYAN_QUOTE',		'[NEWLINE]"The past is already gone, the future is not yet here. There''s only one moment for you to live."[NEWLINE] - Buddha[NEWLINE]'),
			('TXT_KEY_WONDER_BAMYAN_PEDIA',		'Deep in the Hindu Kush, in the Bamyan Valley, along the Silk Road, the Buddhas of Bamyan once towered over the region. Bamyan was a religious site from the 2nd century until the later half of the 7th century, and the Buddhas were constructed throughout that time. The Chinese Buddhist pilgrim Xuanzang visited in 630 CE, describing Bamyan as a flourishing Buddhist center "with more than ten monstaries and more than a thousand monks". In 2001, the Buddhas were destroyed by the Taliban, either in protest of international aid priorities or as part of Islamic religious iconoclasm, to both international and domestic condemnation. Since then, international efforts have been made to reconstruct the Buddhas. Furthermore, after the destruction of the Buddhas, caves containing art from the 5th through 9th centuries were discovered, as well as Xuanzang''s translation of the Pratityasamutpada Sutra that spelled out the basic belief of Buddhism: all things are transient.While the original Buddhas of Bamyan may be gone, their message and cultural significance will echo for all eternity.'),
			('TXT_KEY_WONDER_BAMYAN_HELP',		'City generates +100% Religious Pressure. +2 [ICON_PEACE] per City-State Friend and +3 [ICON_GOLDEN_AGE] per City-State Ally. +1 [ICON_INFLUENCE] World Congress Vote for each 2 Declarations of Friendship.');
			
UPDATE Language_en_US
SET Text = 'Gigantic [COLOR_YIELD_FOOD]Buddhas[ENDCOLOR] should be sign of your generosity passed to all nations in the world (+100%[ICON_RELIGION] Pressure). Make sure to keep peace around you and gather many friends and allies (+2[ICON_PEACE]/[ICON_CITY_STATE] Friend; +3[ICON_GOLDEN_AGE]/[ICON_CITY_STATE] Ally), even in distant future when world will be led by superpowers (+1[ICON_DIPLOMAT] League Vote/2 DoF).'
WHERE Tag = 'TXT_KEY_WONDER_BAMYAN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_BAMYAN_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BAMYAN_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]2 Mountains[ENDCOLOR]; Player: [COLOR_CYAN]at Peace[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BAMYAN_HELP';	
----------------------------------------------------
-- Gate of the Sun
INSERT INTO Language_en_US 
			(Tag,										Text) 
VALUES		('TXT_KEY_BUILDING_GATE_OF_SUN',			'Gate of the Sun'),
			('TXT_KEY_WONDER_GATE_OF_SUN_QUOTE',		'[NEWLINE]"May the sun set on where my love dwells."[NEWLINE] - Bolivian proverb[NEWLINE]'),
			('TXT_KEY_WONDER_GATE_OF_SUN_PEDIA',		'The Gate of the Sun is a stone arch constructed by the ancient Tiwanaku culture of Bolivia, dated to between 500-950 CE. The lintel is carved with 48 squars surrounding a central figure. The central figure is a man with his head surrounded by 24 rays. Some believe that the Gate of the Sun possesses an astronomical or astrological significance, or may have served as a calendar. No one knows for sure.'),
			('TXT_KEY_WONDER_GATE_OF_SUN_HELP',			'All Walls in the Empire receive +1 [ICON_RESEARCH] Science. +1 [ICON_CULTURE] Culture from Mountains and Lakes worked by this City. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art. +5% [ICON_RESEARCH] Science produced by this City during [ICON_GOLDEN_AGE] Golden Age and +5% [ICON_RESEARCH] Science in Cities with Walls.');
			
UPDATE Language_en_US
SET Text = 'Mysterious [COLOR_YIELD_FOOD]Gate of the Sun[ENDCOLOR] hides unremarkable inscriptions (+1[ICON_GREAT_WORK]). Revealing their secrets can help your [COLOR_CITY_BLUE]Mountains[ENDCOLOR] (+1[ICON_CULTURE]/[ICON_FLOWER]) and [COLOR_CITY_GREEN]Lakes[ENDCOLOR] (+1[ICON_CULTURE]/[ICON_MUSHROOM]) become more influential and will be key factor in your developement (+5%[ICON_RESEARCH]/[ICON_GOLDEN_AGE]). Remember to pass the knowledge by building [COLOR_YIELD_FOOD]Walls[ENDCOLOR] (+1[ICON_RESEARCH][ICON_RESEARCH]; +5%[ICON_RESEARCH]/Cities with Walls) in all your cities.'
WHERE Tag = 'TXT_KEY_WONDER_GATE_OF_SUN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_GATE_OF_SUN_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GATE_OF_SUN_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GATE_OF_SUN_HELP';	
----------------------------------------------------
-- El Ghriba Synagogue
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_EL_GHRIBA',			'El Ghriba Synagogue'),
			('TXT_KEY_WONDER_EL_GHRIBA_QUOTE',		'[NEWLINE]"Jesus was born a Jew, and he died a Jew. It never occurred to him to establish a new religion. He never crossed himself - he had no reason to. He never set one foot in a church. He went to synagogue."[NEWLINE] - Amos Oz[NEWLINE]'),
			('TXT_KEY_WONDER_EL_GHRIBA_PEDIA',		'El Ghriba Synagogue, located on the Tunisian island of Djerba, is the oldest synagogue in Tunisa and the center of the village''s holy life. According to legend, it was constructed with a door and a stone from the destruction of either Solomon''s Temple in 586 BCE or the Second Temple in 70 CE. Thus, it links the local Jewish community to the ancestral heart of Judaism and remains a pilgrimage site into the modern day.'),
			('TXT_KEY_GREAT_WORK_THE_ARK',			'Ark of the Covenant'),
			('TXT_KEY_GREAT_WORK_THE_ARK_QUOTE',	'[NEWLINE]"I had it in my heart to build a house of rest [NEWLINE]for the ark of the covenant of the Lord, [NEWLINE]and for the footstool of our God."[NEWLINE] - 1 Chronicles, 28:2[NEWLINE]'),
			('TXT_KEY_WONDER_EL_GHRIBA_HELP',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Synagogue in the City in which it is built. Receive 50 [ICON_GOLD] Gold from each [ICON_PEACE] Faith Purchase. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [ICON_GREAT_WORK] [COLOR_CULTURE_STORED]Ark of the Covenant[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]El Ghriba[ENDCOLOR] is a [COLOR_YIELD_FOOD]Synagogue[ENDCOLOR] ([ICON_PRODUCTION]; [ICON_PEACE]; [ICON_HAPPINESS_3]; [ICON_GREAT_WORK]; [ICON_RESEARCH]) containing artifacts like [COLOR_CULTURE_STORED]Ark of the Covenant[ENDCOLOR] (+1[ICON_GREAT_WORK]), which is foundation stone of Jewish history. It can also successfully make all religious expenses profit some gold in return (50[ICON_GOLD]/[ICON_PEACE][ICON_PEACE] Purchase).'
WHERE Tag = 'TXT_KEY_WONDER_EL_GHRIBA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_EL_GHRIBA_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_EL_GHRIBA_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_PRODUCTION]Holy City[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_EL_GHRIBA_HELP';		
----------------------------------------------------
-- Etchmiadzin Cathedral
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_ETCHMIADZIN',		'Etchmiadzin Cathedral'),
			('TXT_KEY_WONDER_ETCHMIADZIN_QUOTE',	'[NEWLINE]"The wound of a dagger heals, but that of the tongue, never."[NEWLINE] - Armenian proverb[NEWLINE]'),
			('TXT_KEY_WONDER_ETCHMIADZIN_PEDIA',	'Located in Vagharshapat, Armenia, Etchmiadzin Cathedral is often considered the oldest cathedral in the world. Following the adoption of Christianity as the Armenian state religion by King Tiridates III, tt was built between 301 and 303 CE by Saint Gregory the Illuminator over a pagan temple. Until the second half of the fifth century, Etchmiadzin was the seat of the supreme head of the Armenian Church.[NEWLINE]Etchmiadzin was the national and political center of the Armenian people for centuries, and is considered to be holy ground. It is crucial to the Armenian identity, and remains a popular pilgrimage site today. While Shah Abbas I of Persia plundered the cathedral in an attempt to diminish Armenian cultural identity, and the cathedral''s importance was diminished under the Soviet Union, it endured. In 2000, it was added to the list of UNESCO World Heritage Sites. Notably, the cathedral claims to house several relics, such as the Lance of Longingus, relics of the Twelve Apostles, and a fragment of Noah''s Ark.'),
			('TXT_KEY_GREAT_WORK_HOLY_LANCE',		'Holy Lance'),
			('TXT_KEY_GREAT_WORK_HOLY_LANCE_QUOTE',	'[NEWLINE]One of the[NEWLINE]soldiers[NEWLINE]pierced his[NEWLINE]side with[NEWLINE]a lance, and[NEWLINE]immediately[NEWLINE]there came[NEWLINE]out blood[NEWLINE]and water.[NEWLINE] - John, 19:34[NEWLINE]'),
			('TXT_KEY_WONDER_ETCHMIADZIN_HELP',		'Converts 10% of [ICON_PEACE] Faith produced by this City into [ICON_CULTURE] Culture and another 10% into [ICON_GOLDEN_AGE] Golden Age Points. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [ICON_GREAT_WORK] [COLOR_CULTURE_STORED]Holy Lance[ENDCOLOR]. All [ICON_GREAT_WORK] Great Works in the Empire receive +1 [ICON_PEACE] Faith.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Etchmiadzin Cathedral[ENDCOLOR] stores wonderful great works like [COLOR_CULTURE_STORED]Holy Lance[ENDCOLOR] (+1[ICON_GREAT_WORK]; +1[ICON_PEACE]/[ICON_GREAT_WORK][ICON_GREAT_WORK]). Thanks to the support of high up nobles, it turns speeds up coming of next golden era and increase your culture output (10%[ICON_PEACE] into [ICON_CULTURE], [ICON_GOLDEN_AGE]).'
WHERE Tag = 'TXT_KEY_WONDER_ETCHMIADZIN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_ETCHMIADZIN_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ETCHMIADZIN_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ETCHMIADZIN_HELP';		
----------------------------------------------------
-- Chand Baori
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_CHAND_BAORI',		'Chand Baori'),
			('TXT_KEY_WONDER_CHAND_BAORI_QUOTE',	'[NEWLINE]"When the well''s dry, we know the worth of water."[NEWLINE] - Benjamin Franklin[NEWLINE]'),
			('TXT_KEY_WONDER_CHAND_BAORI_PEDIA',	'Built over a thousand years ago, Chand Baori is a stepwell located in the Abhaneri village of Rajasthan, India. Stepwells are unique to the Indian subcontinent, and are wells with steps leading down to the water. They were one of many developments to deal with the seasonal availability of water. [NEWLINE]Chand Baori is quite possibly the largest of the stepwells, and may be the most visually spectacular. It is a four-sided structure, with a temple to Harshat Mata, goddess of joy, at one face. In the modern era, Chand Baori has been included in several Bollywood films, though stepwells have fallen out of favor with the arrival of running water.'),
			('TXT_KEY_WONDER_CHAND_BAORI_HELP',		'Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_PEOPLE] Great Person of your choice. +10% generation of [ICON_GREAT_PEOPLE] Great People in this City. +1 [ICON_FOOD] Food from Desert tiles in this City. 3 Specialists in the City no longer generates [ICON_HAPPINESS_3] Unhappiness from Urbanization.');

UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Chand Baori[ENDCOLOR] guarantees, that your local [COLOR_CITY_BLUE]Desert[ENDCOLOR] (+1[ICON_FOOD]/[ICON_FLOWER]) will not be useless for your city. It is also place, where new specialists settle their offices (-3[ICON_HAPPINESS_3] Urbanization) and very important and profitable deals between nobles are agreed ([COLOR_YIELD_GOLD]free [ICON_GREAT_PEOPLE][ENDCOLOR]; +10%[ICON_GREAT_PEOPLE]).'
WHERE Tag = 'TXT_KEY_WONDER_CHAND_BAORI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_CHAND_BAORI_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_CHAND_BAORI_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Fresh Water[ENDCOLOR]; Building: [COLOR_CYAN]Well[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_CHAND_BAORI_HELP';		
----------------------------------------------------
-- Great Lighthouse
UPDATE Language_en_US
SET Text = 'Nothing can help sailors to achieve their destination more than [COLOR_YIELD_FOOD]Lighthouse[ENDCOLOR] ([ICON_FOOD]; [ICON_GOLD]; [ICON_CONNECTED]). [COLOR_YIELD_FOOD]Great Lighthouse[ENDCOLOR] additionally strengthens vision and movement of all your sea units ([COLOR_WATER_TEXT]Great Lighthouse[ENDCOLOR]/[COLOR_YIELD_GOLD]Military Naval[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'City must be built on the coast. ', '') WHERE Tag ='TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Grassland[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GREAT_LIGHTHOUSE_HELP';
----------------------------------------------------
-- Great Library
UPDATE Language_en_US
SET Text = 'Enormous collection of books from [COLOR_YIELD_FOOD]Great Library[ENDCOLOR], like all other [COLOR_YIELD_FOOD]Libraries[ENDCOLOR] ([ICON_RESEARCH]; [ICON_HAPPINESS_3]) provides massive scientific boost (+1[ICON_GREAT_SCIENTIST]), instant technological progress ([COLOR_CYAN]free Technology[ENDCOLOR]) and additional slots for literature granting even more science if themed (+2[ICON_GREAT_WORK] if themed:[ICON_RESEARCH]).'
WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIBRARY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_GREAT_LIBRARY_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_LIBRARY_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR]/[COLOR_CYAN]Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GREAT_LIBRARY_HELP';
----------------------------------------------------
-- Forum Romanum
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Forum Romanum[ENDCOLOR] uses variety of abilities to make you the most influential ruler in the world. Beside receiving support of experts ([COLOR_YIELD_GOLD]free [ICON_DIPLOMAT][ENDCOLOR]; +1[ICON_DIPLOMAT]), you have increased production of diplomatic units (+20%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Diplomatic[ENDCOLOR]), new [COLOR_GREY]Paper[ENDCOLOR] source available (+1[ICON_RES_PAPER]) and increased pitch in any diplomatic actions ([COLOR_WATER_TEXT]Imperial Seal[ENDCOLOR]/[COLOR_YIELD_GOLD]Diplomatic[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_BUILDING_FORUM_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_FORUM_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_FORUM_HELP';
				
UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR], [COLOR_CYAN]Marsh[ENDCOLOR]; Policy: [COLOR_MAGENTA]-1[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_FORUM_HELP';
----------------------------------------------------
-- Hanging Gardens
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Hanging Gardens[ENDCOLOR] are are much bigger and spectacular version of standard [COLOR_YIELD_FOOD]Garden[ENDCOLOR] ([ICON_GREAT_PEOPLE]; [ICON_GOLD]; [ICON_FOOD]; [ICON_HAPPINESS_3]), which provides massive amount of food (+10[ICON_FOOD]). Boost your population growth using its perks.'
WHERE Tag = 'TXT_KEY_WONDER_HANGING_GARDEN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_HANGING_GARDEN_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HANGING_GARDEN_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HANGING_GARDEN_HELP';
----------------------------------------------------
-- Terracota Army
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Terracota Army[ENDCOLOR] allows for creation incredible army (+5[ICON_SILVER_FIST]) and increases improvement construction speed (+25%[ICON_WORKER]) to create well-developed cities. Make sure to kill all your enemies (10[ICON_CULTURE]/Kill)!.'
WHERE Tag = 'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP';
				
UPDATE Language_en_US SET Text = 'Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR]; Improvement: [COLOR_CYAN]Mine[ENDCOLOR]/[COLOR_CYAN]Quarry[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_TERRA_COTTA_ARMY_HELP';
----------------------------------------------------
-- Parthenon
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Parthenon[ENDCOLOR] focuses not only on artistry (+2[ICON_GREAT_WORK] if themed:[ICON_CULTURE]; [COLOR_CULTURE_STORED]Phidias Showing the Frieze of the Parthenon to his Friends[ENDCOLOR]) entartaining your citizens (-1[ICON_HAPPINESS_3] Boredom), but also supports your army (+10%[ICON_SILVER_FIST]). Additionally it turns [COLOR_YIELD_FOOD]Amphitheaters[ENDCOLOR] (+1[ICON_RESEARCH][ICON_RESEARCH]; +1[ICON_CULTURE][ICON_CULTURE]) into scientific and cultural centers.'
WHERE Tag = 'TXT_KEY_WONDER_PARTHENON_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Contains a prebuilt [ICON_GREAT_WORK] Great Work of Art in one of the [ICON_GREAT_WORK] Great Work slots.', 'Starts with [ICON_GREAT_WORK] [COLOR_CULTURE_STORED]Phidias Showing the Frieze of the Parthenon to his Friends[ENDCOLOR].') WHERE Tag ='TXT_KEY_WONDER_PARTHENON_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_PARTHENON_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PARTHENON_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Fresh Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PARTHENON_HELP';
----------------------------------------------------
-- Oracle
UPDATE Language_en_US
SET Text = 'Mysterious [COLOR_YIELD_FOOD]Oracle[ENDCOLOR], unlike other [COLOR_YIELD_FOOD]Temples[ENDCOLOR] ([ICON_PEACE]; [ICON_CULTURE]; [ICON_GOLD]; [ICON_GREAT_WORK]; [ICON_HAPPINESS_3]), makes all your scientific projects possible (+1[ICON_GREAT_SCIENTIST]). It gives you massive instant yield injection (500[ICON_RESEARCH]; 500[ICON_CULTURE]) and makes your citizens more qualified (-1[ICON_HAPPINESS_3] Illiteracy).'
WHERE Tag = 'TXT_KEY_WONDER_ORACLE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_ORACLE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ORACLE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ORACLE_HELP';
----------------------------------------------------
-- Angkor Wat
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Angkor Wat[ENDCOLOR] boosts your empire''s expansion (+25%[ICON_CULTURE][ICON_CULTURE] Border Growth; -25%[ICON_GOLD][ICON_GOLD] Plot Cost) and, unlike other [COLOR_YIELD_FOOD]Mandirs[ENDCOLOR] ([ICON_FOOD]; [ICON_PEACE]; [ICON_HAPPINESS_3]; [ICON_GREAT_WORK]; [ICON_SPY]), supports your engineering projects (+1[ICON_GREAT_ENGINEER]).'
WHERE Tag = 'TXT_KEY_WONDER_ANGKOR_WAT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_ANGKOR_WAT_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ANGKOR_WAT_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR], [COLOR_CYAN]Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ANGKOR_WAT_HELP';
----------------------------------------------------
-- Great Wall
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Great Wall[ENDCOLOR] is unbelievably successful defensive project, modifying your [COLOR_YIELD_FOOD]Walls[ENDCOLOR] ([ICON_STRENGTH]; [ICON_SILVER_FIST]; [ICON_RANGE_STRENGTH]; [ICON_HAPPINESS_3]) into monstrual barrier (-All [ICON_MOVES] if Enemy crosses your borders). It allows your soldiers, led by experienced general ([COLOR_YIELD_GOLD]free [ICON_GREAT_GENERAL][ENDCOLOR]), to compete with greatest armies in the world (+3[ICON_SILVER_FIST]).'
WHERE Tag = 'TXT_KEY_WONDER_GREAT_WALL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_GREAT_WALL_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_WALL_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Other Player: [COLOR_CYAN]Deceptive[ENDCOLOR]/[COLOR_CYAN]Hostile[ENDCOLOR]/[COLOR_CYAN]Warring[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GREAT_WALL_HELP';
----------------------------------------------------
-- Colossus
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Colossus[ENDCOLOR] will make from you the greatest merchant of all seas (+1[ICON_INTERNATIONAL_TRADE]; [COLOR_YIELD_GOLD]free Cargo Ship[ENDCOLOR]). You can only watch how your gold income in the city is growing more and more thanks to the recently established trade routes (+2[ICON_GOLD]/[ICON_INTERNATIONAL_TRADE]).'
WHERE Tag = 'TXT_KEY_WONDER_COLOSSUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'City must be built on the coast. ', '') WHERE Tag ='TXT_KEY_WONDER_COLOSSUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_COLOSSUS_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_COLOSSUS_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Resource: [ICON_RES_IRON] [COLOR_CYAN]Iron[ENDCOLOR]/[ICON_RES_COPPER] [COLOR_CYAN]Copper[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_COLOSSUS_HELP';
----------------------------------------------------
----------------------------------------------------
-- Prophet's Mosque
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_NABAWI',				'Prophet''s Mosque'),
			('TXT_KEY_WONDER_NABAWI_QUOTE',			'[NEWLINE]"When you see a person who has been given more than you in money and beauty, look to those, who have been given less."[NEWLINE] - Prophet Muhammad[NEWLINE]'),
			('TXT_KEY_WONDER_NABAWI_PEDIA',			'Al-Masjid al-Nabawi, often called the Prophet''s Mosque, is a mosque situated in the city of Medina. As the final resting place of the Islamic prophet Muhammad, it is considered the second holiest site in Islam by Muslims (the first being the Masjid al-Haram in Mecca) and is one of the largest mosques in the World. The mosque is under the control of the Custodian of the Two Holy Mosques. It is the second mosque built in history.[NEWLINE][NEWLINE]  One of the most notable features of the site is the Green Dome over the center of the mosque, where the tomb of Muhammad is located. It is not exactly known when the green dome was constructed but manuscripts dating to the early 12th century describe the dome. It is known as the Dome of the Prophet or the Green Dome. Subsequent Islamic rulers greatly expanded and decorated it. Early Muslim leaders Abu Bakr and Umar are buried in an adjacent area in the mosque.[NEWLINE][NEWLINE]  The site was originally Muhammad''s house; he settled there after his Hijra to Medina, later building a mosque on the grounds. He himself shared in the heavy work of construction. The original mosque was an open-air building. The basic plan of the building has been adopted in the building of other mosques throughout the world.'),
			('TXT_KEY_THEMING_BONUS_NABAWI',		'Islamic calligraphy works'),
			('TXT_KEY_THEMING_BONUS_NABAWI_HELP',	'To maximize your bonus, make sure both Great Works are filled with Writings created by you.'),
			('TXT_KEY_WONDER_NABAWI_HELP',			'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Mosque in the City in which it is built. All Cities generate +10% [ICON_PEACE] Faith. Has 2 slot for [ICON_GREAT_WORK] Great Works of Writing that provide +4 [ICON_PEACE] Faith and [ICON_GOLDEN_AGE] Golden Age Points if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR]. +20% generation of [ICON_GREAT_WRITER] Great Writers in this City.');
			
UPDATE Language_en_US
SET Text = 'This Wonder is an unique [COLOR_YIELD_FOOD]Mosque[ENDCOLOR] ([ICON_RESEARCH]; [ICON_PEACE]; [ICON_GREAT_WORK]; [ICON_CULTURE]; [ICON_GOLDEN_AGE]; [ICON_HAPPINESS_3]) where you can learn arabic religious literature (+20%[ICON_GREAT_WRITER]; +2[ICON_GREAT_WORK] if themed: [ICON_PEACE], [ICON_GOLDEN_AGE]). Massive faith output (+10%[ICON_PEACE][ICON_PEACE]) from your empire will help you in achieving religious domination.'
WHERE Tag = 'TXT_KEY_WONDER_NABAWI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_NABAWI_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_NABAWI_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_PRODUCTION]Holy City[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_NABAWI_HELP';		
----------------------------------------------------
-- Lavaux
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_LAVAUX',				'Lavaux'),
			('TXT_KEY_WONDER_LAVAUX_QUOTE',			'[NEWLINE]"A bottle of wine contains more philosophy than all the books in the world".[NEWLINE] - Louis Pasteur[NEWLINE]'),
			('TXT_KEY_WONDER_LAVAUX_PEDIA',			'TODO'),
			('TXT_KEY_WONDER_LAVAUX_HELP',			'Wonder places 2 new [ICON_RES_WINE] Wine resources inside City range if possible. Empire [ICON_HAPPINESS_3] Needs Modifier is reduced by 10% in all Cities. +1 [ICON_FOOD] Food from Lakes worked by this City.[NEWLINE][NEWLINE]Nearby [ICON_RES_WINE] Wine: +1 [ICON_FOOD] Food, +1 [ICON_GOLD] Gold and +1 [ICON_PEACE] Faith.');
			
UPDATE Language_en_US
SET Text = 'Wineyards of [COLOR_YIELD_FOOD]Lavaux[ENDCOLOR] are well-known source of unique [COLOR_GREY]Grapes[ENDCOLOR] (+2[ICON_RES_WINE]; +1[ICON_FOOD], +1[ICON_GOLD], +1[ICON_PEACE]/[ICON_RES_WINE]). Try to make all your citizens much happier (-10%[ICON_HAPPINESS_3][ICON_HAPPINESS_3] Needs) using these wonderful fruits, benefitting crystal clear waters of nearby [COLOR_CITY_GREEN]Lake[ENDCOLOR] (+1[ICON_FOOD][ICON_MUSHROOM]).'
WHERE Tag = 'TXT_KEY_WONDER_LAVAUX_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_LAVAUX_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_LAVAUX_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_LAVAUX_HELP';		
----------------------------------------------------
-- Wartburg
INSERT INTO Language_en_US 
			(Tag,										Text)
VALUES		('TXT_KEY_BUILDING_WARTBURG',				'Wartburg'),
			('TXT_KEY_WONDER_WARTBURG_QUOTE',			'[NEWLINE]"In nature we never see anything isolated, but everything in connection with something else which is before it, beside it, under it and over it."[NEWLINE] - Johann Wolfgang von Goethe[NEWLINE]'),
			('TXT_KEY_WONDER_WARTBURG_PEDIA',			'Wartburg Castle was built in 1067 by Ludwig der Springer to secure his traditional territories. From 1172 to 1211, it was an important princely court in the Holy Roman Empire and a support for poets, thus becoming the setting of the legendary Sangerkrieg. Following his excommunication, Martin Luther stayed at Wartburg when he translated the New Testament from ancient Greek into German.[NEWLINE]For centuries, Wartburg has been a place of pilgrimage for its significance in German and Christian history. In the modern day, Wartburg remains a popular tourist attraction. It often stages the opera Tannhauser. While the castle still contains original structures from the 12th through 15th centuries, much of the interior dates back only to the 19th century, transformed under communist rule in the time of the GDR.'),
			('TXT_KEY_THEMING_BONUS_WARTBURG',			'Literature that inspired whole nations'),
			('TXT_KEY_THEMING_BONUS_WARTBURG_HELP',		'To maximize your bonus, make sure all the Great Work Slots are all filled with literature created by you.'),
			('TXT_KEY_WONDER_WARTBURG_HELP',			'+30% generation of [ICON_GREAT_WRITER] Great Writers in Empire. Has 3 slots for [ICON_GREAT_WORK] Great Works of Literature. +3 [ICON_CULTURE] Culture and +3 [ICON_PEACE] Faith and 3 [ICON_GOLDEN_AGE] Golden Age Points if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR]. 15 XP per each [ICON_GREAT_WORK] Great Work for Land units trained in this City. All Writer''s Guilds in the Empire receive +1 [ICON_PEACE] Faith.');
			
UPDATE Language_en_US
SET Text = 'With [COLOR_YIELD_FOOD]Wartburg[ENDCOLOR] you will become king of literature (+2[ICON_GREAT_WRITER]; +30%[ICON_GREAT_WRITER]), which can be stored on your new shelves (+3[ICON_GREAT_WORK] if themed:[ICON_CULTURE], [ICON_PEACE], [ICON_GOLDEN_AGE]). Increase your faith output by constructing [COLOR_YIELD_FOOD]Writer''s Guilds[ENDCOLOR] (+1[ICON_PEACE][ICON_PEACE]) in your empire and raise up experience of your units using your city collection (+15 XP/[ICON_GREAT_WORK]/[COLOR_YIELD_GOLD]Land[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_WARTBURG_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_WARTBURG_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_WARTBURG_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Progress Finisher[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR]; Building: [COLOR_CYAN]Writer''s Guild[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_WARTBURG_HELP';		
----------------------------------------------------
-- Great Zimbabwe
INSERT INTO Language_en_US 
			(Tag,										Text) 
VALUES		('TXT_KEY_BUILDING_GREAT_ZIMBABWE',			'Great Zimbabwe'),
			('TXT_KEY_WONDER_GREAT_ZIMBABWE_QUOTE',		'[NEWLINE]"God is good, but never dance with a lion."[NEWLINE] - Zimbabwean proverb[NEWLINE]'),
			('TXT_KEY_WONDER_GREAT_ZIMBABWE_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_GREAT_ZIMBABWE_HELP',		'Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. [ICON_GOLD] Gold cost of aquiring new tiles reduced by 30% in all Cities. +2 [ICON_GOLDEN_AGE] Golden Age Points in this City and 3 XP to units constructed in all cities for each active [ICON_INTERNATIONAL_TRADE] Trade Route.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Great Zimbabwe[ENDCOLOR] makes use from your expanded trade network (+1[ICON_INTERNATIONAL_TRADE]), which supports your empire''s yields (+2[ICON_GOLDEN_AGE]/[ICON_INTERNATIONAL_TRADE][ICON_INTERNATIONAL_TRADE]) and army (+3 Global XP/[ICON_INTERNATIONAL_TRADE][ICON_INTERNATIONAL_TRADE]). Make sure to use your treasury to expand your Cities more than your neighbours (-30%[ICON_GOLD][ICON_GOLD] Plot Cost).'
WHERE Tag = 'TXT_KEY_WONDER_GREAT_ZIMBABWE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_GREAT_ZIMBABWE_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GREAT_ZIMBABWE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Authority Finisher[ENDCOLOR]; Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Improvement: [COLOR_CYAN]3 (Mines + Camps)[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GREAT_ZIMBABWE_HELP';		
----------------------------------------------------
-- Ahu Tongariki
INSERT INTO Language_en_US 
			(Tag,								Text) 
VALUES		('TXT_KEY_BUILDING_AHU',			'Ahu Tongariki'),
			('TXT_KEY_WONDER_AHU_QUOTE',		'[NEWLINE]"The metaphor is so obvious. Easter Island isolated in the Pacific Ocean - once the island got into trouble, there was no way they could get free. There was no other people from whom they could get help. In the same way that we on planet Earth, if we ruin our own world, we won''t be able to get help."[NEWLINE] - Jared Diamond[NEWLINE]'),
			('TXT_KEY_WONDER_AHU_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_AHU_HELP',			'+10% [ICON_PEACE] in your Empire. +1 [ICON_PRODUCTION] Production from Forest or Jungle, +1 [ICON_CULTURE] Culture from Quarries and +1 [ICON_PEACE] Faith from Coast tiles worked by this City. +20% [ICON_WORKER] Improvement Construction Rate. Grants 1 copy of unique luxury resource: Tern Egg.'),
			('TXT_KEY_RESOURCE_TERN',			'Tern Egg'),
			('TXT_KEY_RESOURCE_TERN_TEXT',		'TODO'),
			('TXT_KEY_RESOURCE_MONOPOLY_TERN',	'[COLOR_POSITIVE_TEXT]Monopoly Bonus:[ENDCOLOR] +10% [ICON_PEACE] Faith in all owned Cities (tied to building).');
			
UPDATE Language_en_US
SET Text = 'Monumental platform, [COLOR_YIELD_FOOD]Ahu Tongariki[ENDCOLOR], boosts your production significantly, if you have [COLOR_CITY_GREEN]Forests[ENDCOLOR] or [COLOR_CITY_GREEN]Jungles[ENDCOLOR] (+1[ICON_PRODUCTION]/[ICON_MUSHROOM]) nearby or hire new workers (+20%[ICON_WORKER]). Cultural influence of all [COLOR_CITY_BROWN]Quarries[ENDCOLOR] (+1[ICON_CULTURE]/[ICON_WORKER][ICON_WORKER]) on your citizens, supported by new [COLOR_GREY]Unique Luxury[ENDCOLOR] resource (+1 flat [ICON_RES_TERN]; +10%[ICON_PEACE][ICON_PEACE]) will send you in much brighter future.'
WHERE Tag = 'TXT_KEY_WONDER_AHU_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_AHU_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_AHU_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]Forest/Jungle[ENDCOLOR]; Resource: [ICON_RES_STONE] [COLOR_CYAN]Stone[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_AHU_HELP';		
----------------------------------------------------
-- Falun Mine
INSERT INTO Language_en_US 
			(Tag,								Text) 
VALUES		('TXT_KEY_BUILDING_FALUN',			'Falun Mine'),
			('TXT_KEY_WONDER_FALUN_QUOTE',		'[NEWLINE]"Mining is like a search-and-destroy mission."[NEWLINE] - Stewart Udall[NEWLINE]'),
			('TXT_KEY_WONDER_FALUN_PEDIA',		'Operating in Falun, Sweden from the tenth century to 1992, Falun Mine produced as much as two thirds of Europe''s copper needs and helped fund many of Sweden''s wars in the 17th century. The operation of the mine granted Sweden a virtual monopoly on copper through the 17th century, funding the various wars of Sweden during its great power era, though the output of the mine was a pittance by modern standards. In 1992, commercial mining ceased as the mine was no longer economically viable. In 2001, Falun Mine was selected as a UNESCO World Heritage site.'),
			('TXT_KEY_WONDER_FALUN_HELP',		'Wonder places 2 new [ICON_RES_COPPER] Copper resources inside City range if possible. +1 [ICON_GOLD] Gold from Mines worked by this City. Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_GENERAL] Great General and +100 [ICON_GREAT_ENGINEER] Great Engineers Progress on construction during Medieval or Renaissance Era.[NEWLINE][NEWLINE]Nearby [ICON_RES_COPPER] Copper: +1 [ICON_GOLD] and +1 [ICON_GOLDEN_AGE] Golden Age Point.');
			
UPDATE Language_en_US
SET Text = 'Mining complex at [COLOR_YIELD_FOOD]Falun[ENDCOLOR] makes all difficult investments possible. Huge support of engineers (2%[ICON_GREAT_ENGINEER]/Construction) or militarists ([COLOR_YIELD_GOLD]free [ICON_GREAT_GENERAL][ENDCOLOR]), new [COLOR_GREY]Copper[ENDCOLOR] deposits (+2[ICON_RES_COPPER]; +1[ICON_GOLD], +1[ICON_GOLDEN_AGE]/[ICON_RES_COPPER]) and more valuable local [COLOR_CITY_BROWN]Mines[ENDCOLOR] (+1[ICON_GOLD]/[ICON_WORKER]) can easily buy you leadership of the world.'
WHERE Tag = 'TXT_KEY_WONDER_FALUN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_FALUN_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_FALUN_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Progress Finisher[ENDCOLOR]; Improvement: [COLOR_CYAN]4 Mines[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_FALUN_HELP';		
----------------------------------------------------
-- Forge of Damascus
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_DAMASCUS',			'Forge of Damascus'),
			('TXT_KEY_WONDER_DAMASCUS_QUOTE',		'[NEWLINE]"The reputation and history of Damascus steel has given rise to many legends, such as the ability to cut through a rifle barrel or to cut a hair falling across the blade. The manufacturing technique has yet to be reverse engineered, even in modern times."[NEWLINE] - from legends about Damascus Steel[NEWLINE]'),
			('TXT_KEY_WONDER_DAMASCUS_PEDIA',		'Damascus steel was a type of steel used for manufacturing sword blades in the Near East made with wootz steel. These swords are characterized by distinctive patterns of banding and mottling reminiscent of flowing water. Such blades were reputed to be tough, resistant to shattering and capable of being honed to a sharp, resilient edge.[NEWLINE][NEWLINE]  The reputation and history of Damascus steel has given rise to many legends, such as the ability to cut through a rifle barrel or to cut a hair falling across the blade. Although many types of modern steel outperform ancient Damascus alloys, chemical reactions in the production process made the blades extraordinary for their time, as Damascus steel was superplastic and very hard at the same time. [COLOR_NEGATIVE_TEXT]Lost after unit upgrade[ENDCOLOR].'),
			('TXT_KEY_PROMOTION_DAMASCUS',			'Damascus Steel'),
			('TXT_KEY_PROMOTION_DAMASCUS_HELP',		'+20%[ICON_STRENGTH]CS.'),
			('TXT_KEY_WONDER_DAMASCUS_HELP',		'+3 [ICON_PRODUCTION] Production with [COLOR_CYAN]Metallurgy[ENDCOLOR]. Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Forge in the City in which it is built. All Melee and Mounted Units in the Empire get [COLOR_POSITIVE_TEXT]Damascus Steel[ENDCOLOR] promotion.[NEWLINE][NEWLINE]All [ICON_RES_IRON] Iron: +1 [ICON_PRODUCTION] Production and +1 [ICON_RESEARCH] Science.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Forge of Damascus[ENDCOLOR], thanks to recent scientific discovery, turns your melee weaponry into masterpiece ([COLOR_WATER_TEXT]Damascus Steel[ENDCOLOR]/[COLOR_YIELD_GOLD]Melee Land[ENDCOLOR]), which cannot be copied in any other [COLOR_YIELD_FOOD]Forge[ENDCOLOR] ([ICON_PRODUCTION]; [ICON_GOLD]; [ICON_GREAT_ENGINEER]; [ICON_RESEARCH]). Your production and science literally explodes, so remember to claim all available [COLOR_GREY]Iron[ENDCOLOR] deposits (+1[ICON_PRODUCTION], +1[ICON_RESEARCH]/[ICON_RES_IRON][ICON_RES_IRON]).'
WHERE Tag = 'TXT_KEY_WONDER_DAMASCUS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_DAMASCUS_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_DAMASCUS_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Authority Finisher[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR]; Resource: [ICON_RES_IRON] [COLOR_CYAN]Iron[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_DAMASCUS_HELP';		
----------------------------------------------------
-- Golden Dagon Pagoda
INSERT INTO Language_en_US 
			(Tag,											Text)
VALUES		('TXT_KEY_BUILDING_SHWEDAGON',					'Golden Dagon Pagoda'),
			('TXT_KEY_WONDER_SHWEDAGON_QUOTE',				'[NEWLINE]"There was a tumult among men and spirits, the blind beheld objects, the deaf heard sounds. The earth quaked, lightning flashed, gems rained down until they were knee deep, and all trees of the Himalayas, though not in season, bore blossoms and fruit."[NEWLINE] - King Okkalapa[NEWLINE]'),
			('TXT_KEY_WONDER_SHWEDAGON_PEDIA',				'Shwedagon Paya (also known as Shwedagon Pagoda or the Great Dragon Pagoda) is a large Buddhist stupa located in the Burmese city of Rangoon. It is 99 metres tall in it''s current state, and is coated with gold donated by the Burmese populus to maintain the Stupa. It is not known when the gold was put in place, although the stupa itself is said to date back over 2,500 years. Each sucessive dynasty has built upon the Stupa, until it reached the current height of 99 metres during reconstruction following an earthquake in 1768. Shwedagon Paya also features a crown of 5,448 diamonds and 2317 Rubies.'),
			('TXT_KEY_THEMING_BONUS_SHWEDAGON_KALPA',		'Relics of the four previous Buddhas of the present kalpa'),
			('TXT_KEY_THEMING_BONUS_SHWEDAGON_CONSECUTIVE',	'Relics from most recent eras'),
			('TXT_KEY_THEMING_BONUS_SHWEDAGON_PLAYERS',		'Relics from different creators'),
			('TXT_KEY_THEMING_BONUS_SHWEDAGON_ARTIFACTS',	'Bunch of Relics'),
			('TXT_KEY_THEMING_BONUS_SHWEDAGON_HELP',		'To maximize your bonus, make sure all the Great Work Slots are all filled with Artifacts created by different Players in consecutive Eras.'),
			('TXT_KEY_WONDER_SHWEDAGON_HELP',				'Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Archaeologist. +2 [ICON_PEACE] Faith from Artists. Has 4 slots for [ICON_GREAT_WORK] Great Works of Art. +3 [ICON_GOLD] Gold, [ICON_CULTURE] Culture, [ICON_PEACE] Faith and [ICON_TOURISM] Tourism if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Golden Pagoda[ENDCOLOR] fully focuses on every aspect related to artistry. Religious and more frequent artists in this city (+1[ICON_GREAT_ARTIST]; +2[ICON_PEACE]/[ICON_GREAT_ARTIST][ICON_GREAT_ARTIST]), more valuable great works of your empire (+1[ICON_GOLD]/[ICON_GREAT_WORK][ICON_GREAT_WORK]) and much more space for new art (+4[ICON_GREAT_WORK] if themed:[ICON_GOLD], [ICON_CULTURE], [ICON_PEACE], [ICON_TOURISM]) will make your city shine! Make sure to use your new forces to find hidden artifacts ([COLOR_YIELD_GOLD]free Archaeologist[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_SHWEDAGON_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_SHWEDAGON_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_SHWEDAGON_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Tradition Finisher[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_SHWEDAGON_HELP';		
----------------------------------------------------
-- Mont St. Michel
INSERT INTO Language_en_US 
			(Tag,								Text) 
VALUES		('TXT_KEY_BUILDING_MICHEL',			'Mont Saint-Michel'),
			('TXT_KEY_WONDER_MICHEL_QUOTE',		'[NEWLINE]"Church and State, Soul and Body, God and Man, are all one at Mont Saint Michel, and the business of all is to fight, each in his own way, or to stand guard for each other."[NEWLINE] - Henry Adams[NEWLINE]'),
			('TXT_KEY_WONDER_MICHEL_PEDIA',		'Perched on a rocky islet in the midst of vast sandbanks exposed to powerful tides between Normandy and Brittany stand the "Wonder of the West", a Gothic-style Benedictine abbey dedicated to the archangel St Michael, and the village that grew up in the shadow of its great walls. Built between the 11th and 16th centuries, the abbey is a technical and artistic tour de force, having had to adapt to the problems posed by this unique natural site.'),
			('TXT_KEY_WONDER_MICHEL_HELP',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Monastery in the City in which it is built. Greatly increase [ICON_STRENGTH] Combat Strength and Hit Points of this City. +3 [ICON_GOLD] Gold and +3 [ICON_TOURISM] Tourism with [COLOR_CYAN]Electricity[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = 'Lonely [COLOR_YIELD_FOOD]Mont Saint-Michel[ENDCOLOR] will turn your vulnerable [COLOR_YIELD_FOOD]Monastery[ENDCOLOR] ([ICON_FOOD]; [ICON_RESEARCH]; [ICON_PEACE]) into a fortress (+10[ICON_STRENGTH]; +100 HP), where you can focus on your soul (+2[ICON_PEACE]/5 [ICON_CITIZEN]) and plan next expenses for your growing treasury.'
WHERE Tag = 'TXT_KEY_WONDER_MICHEL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MICHEL_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MICHEL_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]single-tile Island[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MICHEL_HELP';		
----------------------------------------------------
-- Itsukushima Shrine
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_ITSUKUSHIMA',		'Itsukushima Shrine'),
			('TXT_KEY_WONDER_ITSUKUSHIMA_QUOTE',	'[NEWLINE]"Faith is not the clinging to a shrine but an endless pilgrimage of the heart."[NEWLINE] - Abraham Joshua Heschel[NEWLINE]'),
			('TXT_KEY_WONDER_ITSUKUSHIMA_PEDIA',	'Itsukushima shrine is one of the most iconic Shinto shrines in Japan. It is world renowned for it''s iconic "Floating" torii gate, which pilgrims had to steer their boat through before they could enter the shrine''s grounds. It is located on the island of Itsukushima, at the western end of Japan''s "inland sea". There has been a shrine at the location since approximately 628 CE, when one was constructed under the reign of Empresss Suiko. The current design, however, dates from 1168, when the shrine was constructed with funds provided by the warlord Taiya no Kiyomori.[NEWLINE][NEWLINE]  The shrine, and it''s floating Torii, are one of the "Three Views of Japan", along with the sandbar at Amanohashidate, and Matsushima bay. These have been designated as the most beautiful scenes of Japan, and are frequented by tourists.'),
			('TXT_KEY_WONDER_ITSUKUSHIMA_HELP',		'+1 [ICON_FOOD] Food, +1 [ICON_CULTURE] Culture and +1 [ICON_PEACE] Faith to Atolls and [ICON_CULTURE] Culture cost of aquiring new tiles reduced by 50% in coastal Cities. +1 [ICON_PEACE] Faith from Sea tiles. All Fishing Boats in the Empire receive +1 [ICON_CULTURE] Culture.[NEWLINE][NEWLINE]Nearby [ICON_RES_CORAL] Coral: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_CRAB] Crab: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_PEARLS] Pearls: +2 [ICON_PEACE] Faith.[NEWLINE]Nearby [ICON_RES_WHALE] Whales: +2 [ICON_PEACE] Faith.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Itsukushima Shrine[ENDCOLOR] boost yields generated by nearby [COLOR_CITY_BLUE]Oceans[ENDCOLOR] (+1[ICON_PEACE]/[ICON_FLOWER]), [COLOR_GREY]Sea Luxuries[ENDCOLOR] (+2[ICON_PEACE]/[COLOR_GREY]Sea Luxury[ENDCOLOR]) and [COLOR_CITY_BROWN]Fishing Boats[ENDCOLOR] (+1[ICON_CULTURE]/[ICON_WORKER]) as well as all [COLOR_CITY_GREEN]Atolls[ENDCOLOR] (+1[ICON_FOOD], +1[ICON_CULTURE], +1[ICON_PEACE]/[ICON_MUSHROOM][ICON_MUSHROOM]). Additionally expansion of your coastal cities is now much easier (+50%[ICON_CULTURE][ICON_CULTURE] Border Growth).'
WHERE Tag = 'TXT_KEY_WONDER_ITSUKUSHIMA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_ITSUKUSHIMA_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ITSUKUSHIMA_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Resource: [ICON_RES_CORAL] [COLOR_CYAN]Coral[ENDCOLOR]/[ICON_RES_CRAB] [COLOR_CYAN]Crab[ENDCOLOR]/[ICON_RES_PEARLS] [COLOR_CYAN]Pearls[ENDCOLOR]/[ICON_RES_WHALE] [COLOR_CYAN]Whales[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ITSUKUSHIMA_HELP';		
----------------------------------------------------
-- Qalhat
INSERT INTO Language_en_US 
			(Tag,								Text) 
VALUES		('TXT_KEY_BUILDING_QALHAT',			'Qalhat'),
			('TXT_KEY_WONDER_QALHAT_QUOTE',		'[NEWLINE]"The haven is very large and good, and is frequented by numerous ships with goods from India, and from this city the spices and other merchandize are distributed among the cities and towns of the interior. They also export many good Arab horses from this to India."[NEWLINE] - Marco Polo[NEWLINE]'),
			('TXT_KEY_WONDER_QALHAT_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_QALHAT_HELP',		'Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. Sea [ICON_INTERNATIONAL_TRADE] Trade Routes gain +100% range and +1 [ICON_GOLD] Gold. +50% [ICON_PRODUCTION] Production of Cargo Ships. +2 [ICON_CULTURE] Culture for each [ICON_INTERNATIONAL_TRADE] Sea Trade Route from or to other major Player.[NEWLINE][NEWLINE]Nearby [ICON_RES_HORSE] Horses: +2 [ICON_GOLD].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Qalhat[ENDCOLOR], mentioned by some europeans sailors seeking unique supplies (+1[ICON_GOLD]/[ICON_RES_HORSE]; +50%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Cargo Ship[ENDCOLOR]), is a wonderful place, where merchants of all seas meet and exchange their goods (Sea [ICON_INTERNATIONAL_TRADE]: +1[ICON_GOLD], +100%[ICON_SWAP]). Learn foreign culture by monopolizing worldwide sea trade (2[ICON_CULTURE]/Sea [ICON_INTERNATIONAL_TRADE][ICON_INTERNATIONAL_TRADE] with Major).'
WHERE Tag = 'TXT_KEY_WONDER_QALHAT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_QALHAT_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_QALHAT_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Resource: [ICON_RES_HORSE] [COLOR_CYAN]Horses[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_QALHAT_HELP';		
----------------------------------------------------
-- Krak des Chevaliers
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_CHEVALIERS',			'Krak des Chevaliers'),
			('TXT_KEY_WONDER_CHEVALIERS_QUOTE',		'[NEWLINE]"I have long since been aware that your king is a man of the greatest honor and bravery, but he is imprudent."[NEWLINE] - Saladin to Richard I the Lionheart[NEWLINE]'),
			('TXT_KEY_WONDER_CHEVALIERS_PEDIA',		'Krak des Chevaliers, also Crac des Chevaliers, is a Crusader castle in Syria and one of the most important preserved medieval castles in the world. The site was first inhabited in the 11th century by a settlement of Kurds; as a result it was known as Hisn al Akrad, meaning the "Castle of the Kurds". In 1142 it was given by Raymond II, Count of Tripoli, to the Knights Hospitaller. It remained in their possession until it fell in 1271. It became known as Crac de l''Ospital; the name Krak des Chevaliers was coined in the 19th century.'),
			('TXT_KEY_WONDER_CHEVALIERS_HELP',		'Greatly increase [ICON_STRENGTH] Combat Strength and +20% [ICON_PRODUCTION] Production of Mounted and Siege Units in this City. Carries over 10% of [ICON_FOOD] Food after [ICON_CITIZEN] City Growth. +1 [ICON_SILVER_FIST] Military Unit Supply Cap. All other [COLOR_POSITIVE_TEXT]non-coastal[ENDCOLOR] Cities receive +1 [ICON_PEACE] Faith, +5 [ICON_STRENGTH] City Defense and +1 [ICON_SILVER_FIST] Military Unit Supply Cap.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Krak des Chevaliers[ENDCOLOR], castle on top of a hill, a perfect place to defend against your enemies (30[ICON_STRENGTH]) and plan next offensive. Increased production of your troops (+20%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Mounted[ENDCOLOR], [COLOR_YIELD_GOLD]Siege[ENDCOLOR]), awesome leadership ([COLOR_YIELD_GOLD]free [ICON_GREAT_GENERAL][ENDCOLOR]), and improved management of all your non-coastal cities (+1[ICON_PEACE][ICON_PEACE]; +5[ICON_STRENGTH][ICON_STRENGTH]; +1[ICON_SILVER_FIST][ICON_SILVER_FIST]) are just a beginning of your glory.'
WHERE Tag = 'TXT_KEY_WONDER_CHEVALIERS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_CHEVALIERS_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_CHEVALIERS_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_NEGATIVE_TEXT]Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_CHEVALIERS_HELP';		
----------------------------------------------------
-- University of Sankore
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]University of Sankore[ENDCOLOR] successfully combines science and faith together. Nearby [COLOR_YIELD_FOOD]Mosque[ENDCOLOR] ([ICON_RESEARCH]; [ICON_PEACE]; [ICON_GREAT_WORK]; [ICON_CULTURE]; [ICON_GOLDEN_AGE]; [ICON_HAPPINESS_3]) will attract noble great people, who use their influence to boost your most important research projects (50[ICON_RESEARCH]/[ICON_GREAT_PEOPLE]).'
WHERE Tag = 'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Tradition[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Tradition Finisher[ENDCOLOR]; Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Building: [COLOR_CYAN]Library[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MOSQUE_OF_DJENNE_HELP';
----------------------------------------------------
-- Hagia Sophia
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Hagia Sophia[ENDCOLOR] profits from its rich history and fully reorganizes your religion. New prophet ([COLOR_YIELD_GOLD]Free [ICON_PROPHET][ENDCOLOR]), recently constructed [COLOR_YIELD_FOOD]Church[ENDCOLOR] ([ICON_PEACE]; [ICON_MISSIONARY]; [ICON_CULTURE]; [ICON_HAPPINESS_3]; [ICON_GREAT_WORK]) and increased pressure on dissenters (+25%[ICON_MISSIONARY] Strength) will force your will among other nations.'
WHERE Tag = 'TXT_KEY_WONDER_HAGIA_SOPHIA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_HAGIA_SOPHIA_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HAGIA_SOPHIA_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_PRODUCTION]Holy City[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HAGIA_SOPHIA_HELP';
----------------------------------------------------
-- Borobudur
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Borobudur[ENDCOLOR] is a gigantic [COLOR_YIELD_FOOD]Stupa[ENDCOLOR] ([ICON_PEACE]; [ICON_MISSIONARY]; [ICON_RESEARCH]; [ICON_GOLDEN_AGE]; [ICON_TOURISM]; [ICON_HAPPINESS_3]), which focuses on small actions, that can flow other cities with your faith (+5[ICON_PEACE]). Use existing and produce new more powerful [COLOR_YIELD_GOLD]Missionaries[ENDCOLOR] (+1[ICON_MISSIONARY] Spread) to quickly convert your enemies.'
WHERE Tag = 'TXT_KEY_WONDER_BOROBUDUR_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Must be built in a Holy City. ', '') WHERE Tag ='TXT_KEY_WONDER_BOROBUDUR_HELP';
	
INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_BOROBUDUR_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BOROBUDUR_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_PRODUCTION]Holy City[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BOROBUDUR_HELP';
----------------------------------------------------
-- Alhambra
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Alhambra[ENDCOLOR] is an architectural mix of two totally different cultures (+10%[ICON_CULTURE]) formed into unique [COLOR_YIELD_FOOD]Castle[ENDCOLOR] ([ICON_STRENGTH]; [ICON_SILVER_FIST]; [ICON_PRODUCTION]; [ICON_HAPPINESS_3]; [ICON_GREAT_WORK]), where special mounted melee units will be trained to support your expansion ([COLOR_WATER_TEXT]Jinete[ENDCOLOR]/[COLOR_YIELD_GOLD]Mounted[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_ALHAMBRA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Authority[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_ALHAMBRA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_ALHAMBRA_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ALHAMBRA_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Authority Finisher[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ALHAMBRA_HELP';

----------------------------------------------------
-- Machu Picchu
UPDATE Language_en_US
SET Text = 'If your city is surrounded by [COLOR_CITY_BLUE]Mountains[ENDCOLOR] (+1[ICON_FOOD], +1[ICON_PRODUCTION], +1[ICON_CULTURE], +1[ICON_PEACE]/[ICON_FLOWER]), then [COLOR_YIELD_FOOD]Machu Picchu[ENDCOLOR] is a perfect choice. All your city connections in this difficult terrain are more profitble (+15%[ICON_GOLD]/[ICON_CONNECTED][ICON_CONNECTED]) and your treasury is supported by qualified specialists (+1[ICON_GREAT_MERCHANT]).'
WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'City must be built within 2 tiles of a Mountain that is inside your territory. ', '') WHERE Tag ='TXT_KEY_WONDER_MACHU_PICHU_HELP';
	
INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_MACHU_PICHU_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]2 Mountains[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MACHU_PICHU_HELP';
----------------------------------------------------
-- Forbidden Palace
UPDATE Language_en_US
SET Text = 'Rich [COLOR_YIELD_FOOD]Forbidden Palace[ENDCOLOR] will help you get out of crisis (-1[ICON_HAPPINESS_3] Poverty). Huge investments in empire developement (-15%[ICON_GOLD][ICON_GOLD] Purchase Cost) and brand new merchant district (+2[ICON_GREAT_MERCHANT]) will introduce you into new era.'
WHERE Tag = 'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Progress[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Progress Finishier[ENDCOLOR]; [COLOR_YIELD_GOLD]Capital[ENDCOLOR]; Building: [COLOR_CYAN]Walls[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_FORBIDDEN_PALACE_HELP';
----------------------------------------------------
-- Cathedral of St. Basil
UPDATE Language_en_US SET Text = 'St. Basil''s Cathedral' WHERE Tag ='TXT_KEY_WONDER_KREMLIN';

UPDATE Language_en_US
SET Text = 'Colourful [COLOR_YIELD_FOOD]Cathedral of St. Basil[ENDCOLOR] is a kind of [COLOR_YIELD_FOOD]Order[ENDCOLOR] ([ICON_PEACE]; [ICON_MISSIONARY]; [ICON_STRENGTH]; [ICON_SILVER_FIST]; [ICON_HAPPINESS_3]), which has high base yields (+3[ICON_CULTURE]; +4[ICON_PEACE]) and lowers requirement for reformation (-5%[ICON_RELIGION] Followers). Use it to gain new abilities just before your enemies do the same!'
WHERE Tag = 'TXT_KEY_WONDER_KREMLIN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Must be built in a Holy City. ', '') WHERE Tag ='TXT_KEY_WONDER_KREMLIN_HELP';
	
INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_KREMLIN_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KREMLIN_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_PRODUCTION]Holy City[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_KREMLIN_HELP';
----------------------------------------------------
-- Notre Dame
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Notre Dame[ENDCOLOR], wonderful [COLOR_YIELD_FOOD]Cathedral[ENDCOLOR] ([ICON_GOLD]; [ICON_PEACE]; [ICON_MISSIONARY]; [ICON_HAPPINESS_3]), creates history and starts new era in your empire (Start [ICON_GOLDEN_AGE]). Many impressing artwork (+2[ICON_GREAT_WORK] if themed:[ICON_PEACE], [ICON_GOLDEN_AGE]) collected behind its walls will make your citizens much happier (+1[ICON_HAPPINESS_1]).'
WHERE Tag = 'TXT_KEY_BUILDING_NOTRE_DAME_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_BUILDING_NOTRE_DAME_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_NOTRE_DAME_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Tradition Finisher[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_NOTRE_DAME_HELP';
----------------------------------------------------
----------------------------------------------------
-- Ait Benhaddou
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_BENHADDOU',			'Ait Benhaddou'),
			('TXT_KEY_WONDER_BENHADDOU_QUOTE',		'[NEWLINE]"Are you not entertained?"[NEWLINE] - Maximus Decimus Meridius[NEWLINE]'),
			('TXT_KEY_WONDER_BENHADDOU_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_BENHADDOU_HELP',		'Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot. +1 [ICON_FOOD] Food from River tiles woked by this City. Nearby Villages receive +3 [ICON_GOLD] Gold and +3 [ICON_TOURISM] Tourism. +4 [ICON_TOURISM] Tourism with [COLOR_CYAN]Radio[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = 'Huge [COLOR_YIELD_FOOD]Ait Benhaddou[ENDCOLOR] [COLOR_CITY_BROWN]Village[ENDCOLOR] (+3[ICON_GOLD], +3[ICON_TOURISM]/[ICON_WORKER]) is awesome tourist attraction and an ideal scenography for numerous movie projects ([COLOR_CYAN]Radio:[ENDCOLOR] +4[ICON_TOURISM]). This desert settlement makes also profit from nearby [COLOR_CITY_GREEN]River[ENDCOLOR] (+1[ICON_FOOD]/[ICON_MUSHROOM]) to expand your current trade network (+1[ICON_INTERNATIONAL_TRADE]).'
WHERE Tag = 'TXT_KEY_WONDER_BENHADDOU_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_BENHADDOU_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BENHADDOU_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Desert[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Improvement: [COLOR_CYAN]Village[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BENHADDOU_HELP';		
----------------------------------------------------
-- Kilwa Kisiwani
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_KILWA_KISIWANI',			'Kilwa Kisiwani'),
			('TXT_KEY_WONDER_KILWA_KISIWANI_QUOTE',		'[NEWLINE]"Kilwa is one of the most beautifully built cities in the world. The houses there are entirely made of wood, their rooftops out of rope grass, and it rains with great vigour."[NEWLINE] - Ibn Battuta[NEWLINE]'),
			('TXT_KEY_WONDER_KILWA_KISIWANI_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_KILWA_KISIWANI_HELP',		'Receive 1 copy of [ICON_RES_PORCELAIN] Porcelain and [ICON_RES_JEWELRY] Jewelry. Gain 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slots. +1 [ICON_PRODUCTION] Production from Strategic and +1 [ICON_GOLD] Gold from Luxury resources worked by this City.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Kilwa Kisiwani[ENDCOLOR] trade center (+2[ICON_INTERNATIONAL_TRADE]) acquires for you few copies of [COLOR_GREY]City-State Luxuries[ENDCOLOR] (+1 flat [ICON_RES_JEWELRY]; +1 flat [ICON_RES_PORCELAIN]). Moreover, you receive substantial bonus from resources available on your terrain (+1[ICON_PRODUCTION]/[COLOR_GREY]Strategic[ENDCOLOR]; +1[ICON_GOLD]/[COLOR_GREY]Luxury[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_KILWA_KISIWANI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_KILWA_KISIWANI_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KILWA_KISIWANI_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Statecraft Finisher[ENDCOLOR]; Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Improvement: [COLOR_CYAN]3 (Mines + Camps)[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_KILWA_KISIWANI_HELP';		
----------------------------------------------------
-- St. Peter's Basilica
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_ST_PETERS',			'St. Peter''s Basilica'),
			('TXT_KEY_WONDER_ST_PETERS_QUOTE',		'[NEWLINE]"A rock pile ceases to be a rock pile the moment a single man contemplates it, bearing within him the image of a cathedral."[NEWLINE] - Antoine de Saint-Exupery[NEWLINE]'),
			('TXT_KEY_WONDER_ST_PETERS_PEDIA',		'Basilica Papale di San Pietro in Vaticano, better known as St. Peter''s Basilica, is a late Renaissance church in Vatican City, with the largest interior of any Christian church in the world. The supposed burial site of the apostle Peter in 64 AD, some years later a shrine was constructed there. Replacing the shrine, construction of "old" St. Peter''s was begun by the Emperor Constantine between 319 and 333 AD.[NEWLINE][NEWLINE]  Having fallen into serious disrepair over the centuries, Pope Julius II in 1505 determined to demolish the old church and replace it with a monumental structure, a construction project that spanned the next 120 years under a succession of popes and architects. To finance the colossal project, a number of popes authorized the wholesale selling of indulgences, a practice that led in part to Martin Luther''s protestant movement.[NEWLINE][NEWLINE]  With work by some of the Renaissance''s leading figures - Michelangelo, Raphael, Bramante, Bernini and others - the church now stands as one of the great treasures of Western civilization.'),
			('TXT_KEY_WONDER_ST_PETERS_HELP',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Cathedral and 3 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Inquisitors in the City in which it is built. +1 [ICON_HAPPINESS_1] Happiness from all unique Religious buildings. Receive 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_DOPLOMAT] World Congress Delegate.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]St. Peter''s Basilica[ENDCOLOR] is not only religious, but also diplomatic (3 [COLOR_YIELD_GOLD]free Inquisitors[ENDCOLOR]; +1[ICON_DIPLOMAT] League Vote) [COLOR_YIELD_FOOD]Cathedral[ENDCOLOR] ([ICON_GOLD]; [ICON_PEACE]; [ICON_MISSIONARY]; [ICON_HAPPINESS_3]) as well. Grants massive happiness boost, if you invest in religion (+1[ICON_HAPPINESS_1]/all Religious buildings).'
WHERE Tag = 'TXT_KEY_WONDER_ST_PETERS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_ST_PETERS_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ST_PETERS_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_PRODUCTION]Holy City[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ST_PETERS_HELP';		
----------------------------------------------------
-- Golden Pavilion
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_KINKAKU_JI',			'Golden Pavilion'),
			('TXT_KEY_WONDER_KINKAKU_JI_QUOTE',		'[NEWLINE]"A book holds a house of Gold."[NEWLINE] - Chinese Proverb[NEWLINE]'),
			('TXT_KEY_WONDER_KINKAKU_JI_PEDIA',		'Kinkaku-ji (literally "Temple of the Golden Pavilion") is a Buddhist temple in Kyoto, Japan. it was originally built as a villa at an unknown date, however was bought in 1397 by Shogun Ashikaga Yoshimitsu, who converted the villa into the Kinkaku-ji complex. Upon his death, it was converted to a Zen temple by his son.[NEWLINE][NEWLINE]  In July 1950 it was burnt down by a Monk with a mental illness, causing a massive renovation project to be undertaken. The renovations took five years, completed in 1955. The exterior of the upper two floors were covered in pure gold leave, giving the name "Golden Pavilion", however it is unclear wether the gold leaf was present in the pre-1950''s version.'),
			('TXT_KEY_WONDER_KINKAKU_JI_HELP',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Pagoda in the City in which it is built. +1 [ICON_FOOD] Food, +1 [ICON_PEACE] Faith and +1 [ICON_CULTURE] Culture from each Lake, Forest and Jungle tile worked by the City. Has 1 slot for [ICON_GREAT_WORK] Great Works of Literature.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Golden Pavilion[ENDCOLOR] is strongly tied to surrounding nature: [COLOR_CITY_GREEN]Lakes[ENDCOLOR], [COLOR_CITY_GREEN]Forests[ENDCOLOR] and [COLOR_CITY_GREEN]Jungles[ENDCOLOR] (+1[ICON_FOOD], +1[ICON_CULTURE], +1[ICON_PEACE]/[ICON_MUSHROOM]). Mentioned nature was always inspiration for writers (1[ICON_GREAT_WORK]) spending their leisure time in peaceful [COLOR_YIELD_FOOD]Pagodas[ENDCOLOR] ([ICON_RELIGION]; [ICON_HAPPINESS_3]).'
WHERE Tag = 'TXT_KEY_WONDER_KINKAKU_JI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_KINKAKU_JI_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KINKAKU_JI_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Fealty Finisher[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR], [COLOR_CYAN]Forest[ENDCOLOR]/[COLOR_CYAN]Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_KINKAKU_JI_HELP';		
----------------------------------------------------
-- Marae Arahurahu
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_MARAE',				'Marae Arahurahu'),
			('TXT_KEY_WONDER_MARAE_QUOTE',			'[NEWLINE]"The leader at the front and the workers behind the scenes."[NEWLINE] - Maori proverb[NEWLINE]'),
			('TXT_KEY_WONDER_MARAE_PEDIA',			'TODO'),
			('TXT_KEY_THEMING_BONUS_MARAE',			'Pre-war pump-up songs'),
			('TXT_KEY_THEMING_BONUS_MARAE_HELP',	'To maximize your bonus, make sure all the Great Work Slots are all filled with Music created by you.'),
			('TXT_KEY_WONDER_MARAE_HELP',			'Has 2 slot for [ICON_GREAT_WORK] Great Works of Music. +10 [ICON_FOOD] Food and +3 [ICON_CULTURE] Culture if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR]. 20 XP per each [ICON_GREAT_WORK] Great Work for Land and Sea Units trained in this City. All Ranged Units get [COLOR_POSITIVE_TEXT]Marae[ENDCOLOR] promotion and all Land and Sea Units get [COLOR_POSITIVE_TEXT]Arahurahu[ENDCOLOR].'),
			('TXT_KEY_PROMOTION_MARAE',				'Marae'),
			('TXT_KEY_PROMOTION_MARAE_HELP',		'+10%[ICON_RANGE_STRENGTH]RCS.'),
			('TXT_KEY_PROMOTION_ARAHURAHU',			'Arahurahu'),
			('TXT_KEY_PROMOTION_ARAHURAHU_HELP',	'15 [ICON_CULTURE] Culture [COLOR:255:230:85:255]on Kill[ENDCOLOR] and 15 [ICON_PEACE] Faith [COLOR:255:230:85:255]on Death[ENDCOLOR].');

UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Marae Arahurahu[ENDCOLOR] greatly supports your army, especially ranged land units ([COLOR_WATER_TEXT]Marae[ENDCOLOR]/[COLOR_YIELD_GOLD]Ranged Land[ENDCOLOR]), which should be core of your army ever since. Motivated troops are rewarded, regardless the result of the combat ([COLOR_WATER_TEXT]Arahurahu[ENDCOLOR]/[COLOR_YIELD_GOLD]Military Land[ENDCOLOR]). Remember, that great works in the city increase experience gained by your units (+2[ICON_GREAT_WORK] if themed: [ICON_FOOD], [ICON_CULTURE]; +20 XP/[ICON_GREAT_WORK]/[COLOR_YIELD_GOLD]Land[ENDCOLOR], [COLOR_YIELD_GOLD]Naval[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_MARAE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MARAE_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MARAE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR], [COLOR_CYAN]Coast[ENDCOLOR]; Building: [COLOR_CYAN]Garden[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MARAE_HELP';		
----------------------------------------------------
-- Old Bridge
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_OLD_BRIDGE',			'Old Bridge in Mostar'),
			('TXT_KEY_WONDER_OLD_BRIDGE_QUOTE',		'[NEWLINE]"A refugee is someone who survived and who can create the future."[NEWLINE] - Amela Koluder[NEWLINE]'),
			('TXT_KEY_WONDER_OLD_BRIDGE_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_OLD_BRIDGE_HELP',		'Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_DIPLOMAT] Great Diplomat and 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_DOPLOMAT] World Congress Delegates.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Old Bridge in Mostar[ENDCOLOR] is your call for peace and prosperity (+2[ICON_DIPLOMAT] League Votes; +1[ICON_HAPPINESS_1]). Use your diplomatic strength ([COLOR_YIELD_GOLD]free [ICON_DIPLOMAT][ENDCOLOR]; +2[ICON_DIPLOMAT]) to bring nations on your site.'
WHERE Tag = 'TXT_KEY_WONDER_OLD_BRIDGE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_OLD_BRIDGE_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_OLD_BRIDGE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Statecraft Finisher[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Player: [COLOR_CYAN]at Peace[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_OLD_BRIDGE_HELP';		
----------------------------------------------------
-- Meenakshi Temple
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_MEENAKSHI',			'Meenakshi Temple'),
			('TXT_KEY_WONDER_MEENAKSHI_QUOTE',		'[NEWLINE]"We greet you, Devi Meenakshi, she who shines like a thousand-million suns, adorned with bracelets and garlands... She who is auspicious, she who embodies existence. I always bow to you, whose compassion is an ocean."[NEWLINE] - Adi Shankara[NEWLINE]'),
			('TXT_KEY_WONDER_MEENAKSHI_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_MEENAKSHI_HELP',		'Provides a [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Mandir in the City in which it is built. Receive 100 [ICON_FOOD] Food from each [ICON_PEACE] Faith Purchase. All [ICON_GREAT_WORK] Great Works in the Empire receive +1 [ICON_FOOD] Food. +1 [ICON_PEACE] Faith from Lake and River tiles worked by this City.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Mandir[ENDCOLOR] ([ICON_FOOD]; [ICON_PEACE]; [ICON_HAPPINESS_3]; [ICON_GREAT_WORK]; [ICON_SPY]) praising [COLOR_YIELD_FOOD]Meenakshi[ENDCOLOR] increases faith in your people (+1[ICON_PEACE]/4 [ICON_CITIZEN][ICON_CITIZEN]) amazed by this colorful wonder. Waters of nearby [COLOR_CITY_GREEN]Lakes[ENDCOLOR] and [COLOR_CITY_GREEN]Rivers[ENDCOLOR] (+1[ICON_PEACE]/[ICON_MUSHROOM]) boost your growth, which can be raised even more by investing in religious projects (100[ICON_FOOD]/[ICON_PEACE][ICON_PEACE] Purchase) or devoting to artistry (+1[ICON_FOOD]/[ICON_GREAT_WORK][ICON_GREAT_WORK]).'
WHERE Tag = 'TXT_KEY_WONDER_MEENAKSHI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MEENAKSHI_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MEENAKSHI_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_YIELD_PRODUCTION]Holy City[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MEENAKSHI_HELP';		
----------------------------------------------------
-- Peterhof
INSERT INTO Language_en_US 
			(Tag,									Text) 
VALUES		('TXT_KEY_BUILDING_PETERHOF',			'Peterhof'),
			('TXT_KEY_WONDER_PETERHOF_QUOTE',		'[NEWLINE]"It is my great desire to reform my subjects, and yet I am ashamed to confess that I am unable to reform myself."[NEWLINE] - Peter The Great[NEWLINE]'),
			('TXT_KEY_WONDER_PETERHOF_PEDIA',		'The Peterhof Palace is a series of palaces and gardens located in Saint Petersburg, Russia, laid out on the orders of Peter the Great. These Palaces and gardens are sometimes referred as the "Russian Versailles". The palace-ensemble along with the city centre is recognised as a UNESCO World Heritage Site.'),
			('TXT_KEY_WONDER_PETERHOF_HELP',		'+10% generation of [ICON_GREAT_PEOPLE] Great People in this City. Starts 20 turn of [ICON_HAPPINESS_1] WLTKD in this City. +15% [ICON_PRODUCTION] Production, [ICON_GOLD] Gold and [ICON_GOLDEN_AGE] Golden Age Points during [ICON_HAPPINESS_1] WLTKD.');
			
UPDATE Language_en_US
SET Text = 'Palace of [COLOR_YIELD_FOOD]Peterhof[ENDCOLOR] tells your citizens about your will to do everything possible to improve their lives (+6[ICON_GOLDEN_AGE]; 20[ICON_HAPPINESS_1] WLTKD turns), and they respond you with the same (+15%[ICON_PRODUCTION], +15%[ICON_GOLD], +15%[ICON_GOLDEN_AGE]/[ICON_HAPPINESS_1] WLTKD). Such a prosperity is strong invitation for any kind of nobles planning to cisit your city (+10%[ICON_GREAT_PEOPLE]).'
WHERE Tag = 'TXT_KEY_WONDER_PETERHOF_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_PETERHOF_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PETERHOF_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PETERHOF_HELP';		
----------------------------------------------------
-- Bakken
INSERT INTO Language_en_US 
			(Tag,								Text) 
VALUES		('TXT_KEY_BUILDING_BAKKEN',			'Bakken'),
			('TXT_KEY_WONDER_BAKKEN_QUOTE',		'[NEWLINE]"Amusement is appealing because we don''t have to think. It spares us the fear and anxiety that might otherwise prey on our thoughts."[NEWLINE] - John Ortberg[NEWLINE]'),
			('TXT_KEY_WONDER_BAKKEN_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_BAKKEN_HELP',		'Starts 10 turn of [ICON_HAPPINESS_1] WLTKD in this City. +33% [ICON_TOURISM] Tourism during [ICON_HAPPINESS_1] WLTKD.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Bakken[ENDCOLOR] provides entertainment on maximum level (+3[ICON_HAPPINESS_1]), greatly increasing your tourism traffic and its profits (10[ICON_HAPPINESS_1] WLTKD turns; +33%[ICON_TOURISM]/[ICON_HAPPINESS_1] WLTKD).'
WHERE Tag = 'TXT_KEY_WONDER_BAKKEN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_BAKKEN_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BAKKEN_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Player: [COLOR_CYAN]Happiness > 70%[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BAKKEN_HELP';		
----------------------------------------------------
-- House of Trades of the Indies
INSERT INTO Language_en_US 
			(Tag,										Text) 
VALUES		('TXT_KEY_BUILDING_HOUSE_OF_TRADE',			'House of Trade of the Indies'),
			('TXT_KEY_WONDER_HOUSE_OF_TRADE_QUOTE',		'[NEWLINE]"All other lands found on the western side of the boundary shall belong to the King and Queen of Castille - and their successors."[NEWLINE] - Treaty of Tordesillas[NEWLINE]'),
			('TXT_KEY_WONDER_HOUSE_OF_TRADE_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_HOUSE_OF_TRADE_HELP',		'Receive 1 [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_GREAT_ADMIRAL] Great Admiral. Gain 2 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slots. +10% [ICON_PRODUCTION] Production towards Naval Military Units and Cargo Ships.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]House of Trade[ENDCOLOR] bonds your military with trade so tightly, that it feels natural (+10%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Military Naval[ENDCOLOR], [COLOR_YIELD_GOLD]Cargo[ENDCOLOR]). Fresh naval leadership ([COLOR_YIELD_GOLD]free [ICON_GREAT_ADMIRAL][ENDCOLOR]) and new possible trade routes (+2[ICON_INTERNATIONAL_TRADE]) will make ruler of all seas.'
WHERE Tag = 'TXT_KEY_WONDER_HOUSE_OF_TRADE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_HOUSE_OF_TRADE_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HOUSE_OF_TRADE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Player: [COLOR_CYAN]2 [ICON_CITY_STATE] Allies[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HOUSE_OF_TRADE_HELP';		
----------------------------------------------------
-- Solovietsky Monastery
INSERT INTO Language_en_US 
			(Tag,										Text) 
VALUES		('TXT_KEY_BUILDING_SOLOVIETSKY',			'Solovietsky Monastery'),
			('TXT_KEY_WONDER_SOLOVIETSKY_QUOTE',		'[NEWLINE]"Everything is defeated before love."[NEWLINE] - Elder Thaddeus of Vitovnica[NEWLINE]'),
			('TXT_KEY_WONDER_SOLOVIETSKY_PEDIA',		'The Solovetsky Monastery is a fortified monastery located on the Solovetsky Islands in the White Sea in northern Russia. It was one of the largest Christian citadels in northern Russia before it was converted into a Soviet prison and labor camp in 1926-39, and served as a prototype for the camps of the Gulag system. The monastery has experienced several major changes and military sieges. Its most important structures date from the 16th century, when Filip Kolychev was its hegumen (comparable to an abbot).'),
			('TXT_KEY_WONDER_SOLOVIETSKY_HELP',			'+1 [ICON_PRODUCTION] Production and +1 [ICON_PEACE] Faith from Tundra tiles worked by this City. Greatly increase [ICON_STRENGTH] Combat Strength and Hit Points of this City. +1 [ICON_WAR] Military Unit Supply Cap. +15% [ICON_PRODUCTION] Production towards Naval Military Units.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Solovietsky Monastery[ENDCOLOR] greatly supports your weak [COLOR_CITY_BLUE]Tundra[ENDCOLOR] (+1[ICON_PRODUCTION], +1[ICON_PEACE]/[ICON_FLOWER]) tiles. It helps you in quick navy reinforcement (+25%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Military Naval[ENDCOLOR]) and strengthen your offense and deffense in the city (10[ICON_STRENGTH]; 50 HP; +1[ICON_SILVER_FIST]).'
WHERE Tag = 'TXT_KEY_WONDER_SOLOVIETSKY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_SOLOVIETSKY_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_SOLOVIETSKY_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Fealty Finisher[ENDCOLOR]; Terrain: [COLOR_CYAN]Tundra[ENDCOLOR], [COLOR_CYAN]Coast[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_SOLOVIETSKY_HELP';		
----------------------------------------------------
-- Globe Theater
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Globe Theater[ENDCOLOR] unites all artistic proffessions in one wonder (+2[ICON_GOLDEN_AGE]/[ICON_GREAT_ARTIST][ICON_GREAT_ARTIST], [ICON_GREAT_WRITER][ICON_GREAT_WRITER], [ICON_GREAT_MUSICIAN][ICON_GREAT_MUSICIAN]), but its much stronger focus on literature is obvious ([COLOR_YIELD_GOLD]free [ICON_GREAT_WRITER][ENDCOLOR]; +2[ICON_GREAT_WORK] if themed:[ICON_GOLD]). This wonder is so influencial, that people''s tastes change accoridng to your will (-1[ICON_HAPPINESS_3] Boredom; -1[ICON_HAPPINESS_3][ICON_HAPPINESS_3] Urbanization).'
WHERE Tag = 'TXT_KEY_WONDER_GLOBE_THEATER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_GLOBE_THEATER_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_GLOBE_THEATER_HELP';
				
UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR]; Building: [COLOR_CYAN]Amphitheater[ENDCOLOR], [COLOR_CYAN]Baths[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_GLOBE_THEATER_HELP';
----------------------------------------------------
-- Chichen Itza
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Chichen Itza[ENDCOLOR] makes your golden ages much more important (+50%[ICON_GOLDEN_AGE] Length), and your citizens much happier (-10%[ICON_HAPPINESS_3][ICON_HAPPINESS_3]). Build it, and your people will awe you.'
WHERE Tag = 'TXT_KEY_WONDER_TAJ_MAHAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,									Text) 
SELECT		'TXT_KEY_WONDER_TAJ_MAHAL_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_TAJ_MAHAL_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Plains[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_TAJ_MAHAL_HELP';
----------------------------------------------------
-- Himeji Castle
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Himeji Castle[ENDCOLOR] turns typical [COLOR_YIELD_FOOD]Castle[ENDCOLOR] ([ICON_STRENGTH]; [ICON_SILVER_FIST]; [ICON_PRODUCTION]; [ICON_HAPPINESS_3]; [ICON_GREAT_WORK]) into impenetrable fortress (+10%[ICON_STRENGTH][ICON_STRENGTH]). Moreover, you can create bigger army (+5[ICON_SILVER_FIST]) and all units on your own land receive combat bonuses ([COLOR_WATER_TEXT]Himeji Castle[ENDCOLOR]/[COLOR_YIELD_GOLD]Military[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_HIMEJI_CASTLE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_HIMEJI_CASTLE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HIMEJI_CASTLE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HIMEJI_CASTLE_HELP';
----------------------------------------------------
-- Leaning Tower of Pisa
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Leaning Tower of Piza[ENDCOLOR] brings attention of many influential nobles, who want to cooperate with you ([COLOR_YIELD_GOLD]free [ICON_GREAT_PEOPLE][ENDCOLOR]). Their final destination is not only this city (+25%[ICON_GREAT_PEOPLE]), but also all others in your empire (+10%[ICON_GREAT_PEOPLE][ICON_GREAT_PEOPLE]).'
WHERE Tag = 'TXT_KEY_WONDER_LEANING_TOWER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_LEANING_TOWER_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_LEANING_TOWER_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Water[ENDCOLOR], [COLOR_CYAN]Marsh[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_LEANING_TOWER_HELP';
----------------------------------------------------
-- Porcelain Tower
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Porcelain Tower[ENDCOLOR] is a wonderful scientific building which improves education of your citizens (-1[ICON_HAPPINESS_3] Illiteracy), invites new great people to the city ([COLOR_YIELD_GOLD]free [ICON_GREAT_SCIENTIST][ENDCOLOR]; +2[ICON_GREAT_SCIENTIST]) and makes use of overall research you produce (+50%[ICON_RESEARCH]/[ICON_RESEARCH] RA or +25%[ICON_SCIENCE] if [ICON_RESEARCH] RAs are disabled).'
WHERE Tag = 'TXT_KEY_WONDER_PORCELAIN_TOWER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_PORCELAIN_TOWER_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PORCELAIN_TOWER_HELP';
				
UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR]; Player: [COLOR_CYAN]2 [ICON_CITY_STATE] Allies[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PORCELAIN_TOWER_HELP';
----------------------------------------------------
-- Taj Mahal
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Taj Mahal[ENDCOLOR] maximizes number of golden ages you enter (Start [ICON_GOLDEN_AGE]; +1[ICON_GOLDEN_AGE]/2[ICON_CITIZEN]) and benefits from multiple religions in your city (+3[ICON_RESEARCH], +3[ICON_CULTURE], +3[ICON_PEACE]/[ICON_RELIGION]). Do not let them go away!'
WHERE Tag = 'TXT_KEY_WONDER_PYRAMIDS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_PYRAMIDS_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PYRAMIDS_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PYRAMIDS_HELP';
----------------------------------------------------
-- Uffizi
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Uffizi[ENDCOLOR] gallery is perfect spot for any talented artist ([COLOR_YIELD_GOLD]free [ICON_GREAT_ARTISTS][ENDCOLOR]; +3[ICON_GREAT_WORK] if themed:[ICON_CULTURE]; +1[ICON_CULTURE]/[ICON_GREAT_WORK][ICON_GREAT_WORK]). This wonder also resolves almost all problems with urbanization in your empire (-1[ICON_HAPPINESS_3][ICON_HAPPINESS_3] Urbanization)'
WHERE Tag = 'TXT_KEY_WONDER_UFFIZI_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_UFFIZI_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_UFFIZI_HELP';
				
UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR]; Great Works: [COLOR_CYAN]3 [ICON_GREAT_WORK] GW of Art[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_UFFIZI_HELP';
----------------------------------------------------
-- Sistine Chapel
UPDATE Language_en_US
SET Text = 'Filled with wonderful frescos (+2[ICON_GREAT_WORK] if themed:[ICON_CULTURE], [ICON_PEACE]) beautiful [COLOR_YIELD_FOOD]Sistine Chapel[ENDCOLOR] is literally an artistic bomb for your empire (+10%[ICON_CULTURE][ICON_CULTURE]). Make sure to built it, if you aim for a cultural victory.'
WHERE Tag = 'TXT_KEY_WONDER_SISTINE_CHAPEL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_WONDER_SISTINE_CHAPEL_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_SISTINE_CHAPEL_HELP';
				
UPDATE Language_en_US SET Text = 'Building: [COLOR_CYAN]Artist''s Guild[ENDCOLOR]; Player: [COLOR_CYAN]Founded Religion[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_SISTINE_CHAPEL_HELP';
----------------------------------------------------
-- Summer Palace
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Sumer Palace[ENDCOLOR] is another wonder fully focused on strengthening your diplomatic power ([COLOR_WATER_TEXT]Nobility[ENDCOLOR]/[COLOR_YIELD_GOLD]Diplomatic[ENDCOLOR]) and improving construction rate of your negotiators (+20%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Diplomatic[ENDCOLOR]). It also upgrades [COLOR_YIELD_FOOD]Chanceries[ENDCOLOR] (+3[ICON_GOLD][ICON_GOLD]; +1[ICON_CULTURE][ICON_CULTURE]) in your empire and creates new source of [COLOR_GREY]Paper[ENDCOLOR] (+1[ICON_RES_PAPER]).'
WHERE Tag = 'TXT_KEY_BUILDING_SUMMER_PALACE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,										Text) 
SELECT		'TXT_KEY_BUILDING_SUMMER_PALACE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_SUMMER_PALACE_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Forest[ENDCOLOR], [COLOR_CYAN]Lake[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_SUMMER_PALACE_HELP';
----------------------------------------------------
-- Red Fort
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Red Fort[ENDCOLOR] is an ideal choice for a militaristic leader. Increased global army limit (+5%[ICON_SILVER_FIST][ICON_SILVER_FIST]), upgraded city''s offensive and defensive capabilities (+10%[ICON_RANGE_STRENGTH]; +1[ICON_SWAP]; +30[ICON_STRENGTH]; +100 HP), brand new [COLOR_YIELD_FOOD]Arsenal[ENDCOLOR] ([ICON_STRENGTH]; [ICON_RANGE_STRENGTH]; [ICON_SILVER_FIST]; [ICON_SPY]; [ICON_HAPPINESS_3]) as well as support of engineers ([COLOR_YIELD_GOLD]free [ICON_GREAT_ENGINEER][ENDCOLOR]) and scientists (+1[ICON_GREAT_SCIENTIST]) will make from you unquestionnable lider of the world.'
WHERE Tag = 'TXT_KEY_WONDER_RED_FORT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Fealty[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_RED_FORT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_RED_FORT_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_RED_FORT_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Fealty Finisher[ENDCOLOR]; Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_RED_FORT_HELP';
----------------------------------------------------
----------------------------------------------------
-- Museum Island
INSERT INTO Language_en_US 
			(Tag,												Text)
VALUES		('TXT_KEY_BUILDING_MUSEUM_ISLAND',					'Museum Island'),
			('TXT_KEY_WONDER_MUSEUM_ISLAND_QUOTE',				'[NEWLINE]"Berlin is rather a part of the world than a city."[NEWLINE] - Jean Paul[NEWLINE]'),
			('TXT_KEY_WONDER_MUSEUM_ISLAND_PEDIA',				'Established in 1797, this museum complex in Central Berlin consists of 5 museums, each known for their extensive amount of holdings.'),
			('TXT_KEY_THEMING_BONUS_MUSEUM_ISLAND_COMPOSITION',	'Wonders of Museumsinsel'),
			('TXT_KEY_THEMING_BONUS_MUSEUM_ISLAND_ERAS',		'Wonders of all time'),
			('TXT_KEY_THEMING_BONUS_MUSEUM_ISLAND_OTHERS',		'Wonders of all nations'),
			('TXT_KEY_THEMING_BONUS_MUSEUM_ISLAND_ART',			'Artistic gallery'),
			('TXT_KEY_THEMING_BONUS_MUSEUM_ISLAND_HELP',		'To maximize your bonus, make sure all the Great Work Slots are all filled with Art created by Players different than the owner, and from different Eras.'),
			('TXT_KEY_WONDER_MUSEUM_ISLAND_HELP',				'Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Museum. +50% generation of [ICON_GREAT_ARTIST] Great Artists in Empire. +2 [ICON_TOURISM] Tourism to all Museums. Has 4 slots for [ICON_GREAT_WORK] Great Works of Art. +5 [ICON_RESEARCH] Science, [ICON_CULTURE] Culture, [ICON_TOURISM] Tourism if [COLOR_POSITIVE_TEXT]Themed[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Museum Island[ENDCOLOR] is the biggest composition of artistic work ever founded (+4[ICON_GREAT_WORK] if themed: [ICON_RESEARCH], [ICON_CULTURE], [ICON_TOURISM]). It is an incentive for anyone eager to become an artist (+50%[ICON_GREAT_ARTIST]), whose art can be stored in one of recently created [COLOR_YIELD_FOOD]Museums[ENDCOLOR] ([ICON_CULTURE]; [ICON_GREAT_WORK]; [ICON_HAPPINESS_3]; [ICON_GREAT_ARTIST]; [ICON_GOLD]) (+2[ICON_TOURISM]).'
WHERE Tag = 'TXT_KEY_WONDER_MUSEUM_ISLAND_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MUSEUM_ISLAND_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MUSEUM_ISLAND_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Artistry Finisher[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Great Works: [COLOR_CYAN]4 [ICON_GREAT_WORK] GW of Art[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MUSEUM_ISLAND_HELP';		
----------------------------------------------------
-- Brooklyn Bridge
INSERT INTO Language_en_US 
			(Tag,								Text)
VALUES		('TXT_KEY_BUILDING_BROOKLYN',		'Brooklyn Bridge'),
			('TXT_KEY_WONDER_BROOKLYN_QUOTE',	'[NEWLINE]"Scientists are people who build the Brooklyn Bridge and then buy it."[NEWLINE] - William F. Buckley Jr.[NEWLINE]'),
			('TXT_KEY_WONDER_BROOKLYN_PEDIA',	'The Brooklyn Bridge is an iconic suspension bridge joining the boroughs of Manhattan and Brooklyn in New York City, New York across the East River. It was constructed between January 3 1870 and May 24, 1883 when it was opened to the public. The bridge is constructed in a Neo-Gothic style, as exhibited by the pointed arches in the towers.[NEWLINE][NEWLINE]  During scares of stability of the bridge in 1884, P.T. Barnum lead a herd of 21 elephants from his circus across the bridge. The bridge also has been used for exoduses of people following events such as 9/11, during which circumstances the bridge wobbled in a similar manner to the Millenium bridge in London.'),
			('TXT_KEY_WONDER_BROOKLYN_HELP',	'Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_DIPLOMAT] Great Diplomat and 100 [ICON_INFLUENCE] on construction. Gain 1 [COLOR_POSITIVE_TEXT]Additional[ENDCOLOR] [ICON_INTERNATIONAL_TRADE] Trade Route slot.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Brooklyn Bridge[ENDCOLOR] has huge influence on people from all corners of the world (100[ICON_INFLUENCE] to all [ICON_CITY_STATE]). Additionally it hires new influencer ([COLOR_YIELD_GOLD]free [ICON_DIPLOMAT][ENDCOLOR]) and your word can be sent through recently established trade routes (+1[ICON_INTERNATIONAL_TRADE]).'
WHERE Tag = 'TXT_KEY_WONDER_BROOKLYN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_BROOKLYN_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BROOKLYN_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; City: [COLOR_CYAN]25 Citizens[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BROOKLYN_HELP';
----------------------------------------------------
-- Trans-Siberian Railway
INSERT INTO Language_en_US 
			(Tag,											Text)
VALUES		('TXT_KEY_BUILDING_SIBERIAN_RAILWAY',			'Trans-Siberian Railway'),
			('TXT_KEY_WONDER_SIBERIAN_RAILWAY_QUOTE',		'[NEWLINE]"The Trans-Siberian is more than just a railway. It''s a journey into the psyche of modern Russia; a triumph of engineering; a movable feast through the largest - and, perhaps, most mysterious - nation on Earth."[NEWLINE] - Gavin Haines[NEWLINE]'),
			('TXT_KEY_WONDER_SIBERIAN_RAILWAY_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_SIBERIAN_RAILWAY_HELP',		'+20% [ICON_WORKER] Improvement Construction Rate. All Land Units receive [COLOR_POSITIVE_TEXT]Trans-Siberian Railway[ENDCOLOR] promotion. +15% [ICON_GOLD] Gold from City Connections.[NEWLINE][NEWLINE]All [ICON_RES_COAL] Coal: +5 [ICON_GOLDEN_AGE] Golden Age Points.[NEWLINE]All [ICON_RES_OIL] Oil: +5 [ICON_GOLDEN_AGE] Golden Age Points.[NEWLINE]All [ICON_RES_ALUMINUM] Aluminum: +5 [ICON_GOLDEN_AGE] Golden Age Points.[NEWLINE]All [ICON_RES_URANIUM] Uranium: +5 [ICON_GOLDEN_AGE] Golden Age Points.'),
			('TXT_KEY_PROMOTION_SIBERIAN_RAILWAY',			'Trans-Siberian Railway'),
			('TXT_KEY_PROMOTION_SIBERIAN_RAILWAY_HELP',		'+1[ICON_MOVES]Movement Point [COLOR:255:230:85:255]on Tundra and Snow[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Trans-Siberian Railway[ENDCOLOR] makes journey through wild parts of Earth much easier ([COLOR_WATER_TEXT]Trans-Siberian Railway[ENDCOLOR]/[COLOR_YIELD_GOLD]Land[ENDCOLOR]). It greatly boosts your income (+15%[ICON_GOLD]/[ICON_CONNECTED][ICON_CONNECTED]) and productivity (+20%[ICON_WORKER] Worker Rate), as well as increases the value of all modern [COLOR_GREY]Strategic[ENDCOLOR] resources inside your territory (+5[ICON_GOLDEN_AGE]/[ICON_RES_COAL][ICON_RES_COAL],[ICON_RES_OIL][ICON_RES_OIL],[ICON_RES_ALUMINUM][ICON_RES_ALUMINUM],[ICON_RES_URANIUM][ICON_RES_URANIUM]).'
WHERE Tag = 'TXT_KEY_WONDER_SIBERIAN_RAILWAY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_SIBERIAN_RAILWAY_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_SIBERIAN_RAILWAY_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Tundra[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Building: [COLOR_CYAN]Train Station[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_SIBERIAN_RAILWAY_HELP';
----------------------------------------------------
-- Panama Canal
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_PANAMA_CANAL',		'Panama Canal'),
			('TXT_KEY_WONDER_PANAMA_CANAL_QUOTE',	'[NEWLINE]"A stream cannot rise larger than its source"[NEWLINE] - Theodore Roosevelt[NEWLINE]'),
			('TXT_KEY_WONDER_PANAMA_CANAL_PEDIA',	'The Panama Canal is a manmade shipping lane located on the Panama Isthmus seperating the Pacific Ocean and Carribean Sea. The idea of a canal in the location was first proposed int he sixteenth century by Charles V, Holy Roman Emperor, who asked for a link to shorten the journey between Spain and their colony of Peru. In 1698 the Kingdom of Scotland launched a project to create an overland trade route in the area, which was abandoned due to inhospitiable conditions a year later.[NEWLINE][NEWLINE]  It was not until 1855 that a link was first established, the Panama Canal Railway, as a result of the 1849 discovery of Gold in the American state of California. This railway was used extensively in the American construction of the canal from 1904 to 1914. As opposed to the French plan of constructing a flat water canal, much like that of the Suez Canal, the American design featured a series of ship locks to rise the ships over a range that caused problems for the French design. The American design proved sucessful, and was opened on August 15, 1914. Railway cars had been used to transport approximately 152,910,972 cubic metres of excevations through the construction, while it had cost 27,500 lives across the whole project.'),
			('TXT_KEY_WONDER_PANAMA_CANAL_HELP',	'All Naval Units receive [COLOR_POSITIVE_TEXT]Panama Canal[ENDCOLOR] promotion. Sea [ICON_INTERNATIONAL_TRADE] Trade Routes gain +100% range and +3 [ICON_GOLD] Gold. +2 [ICON_GOLD] Gold to all Harbors and Seaports.'),
			('TXT_KEY_PROMOTION_PANAMA_CANAL',		'Panama Canal'),
			('TXT_KEY_PROMOTION_PANAMA_CANAL_HELP',	'+1[ICON_ARROW_RIGHT]Movement Point. +10 HP [COLOR:255:230:85:255]on Heal inside Friendly Territory[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = 'Important [COLOR_YIELD_FOOD]Panama Canal[ENDCOLOR] project strengthens your trade routes and allows for further voyages (+100% Sea [ICON_INTERNATIONAL_TRADE][ICON_INTERNATIONAL_TRADE] Range; +3[ICON_GOLD]/Sea [ICON_INTERNATIONAL_TRADE][ICON_INTERNATIONAL_TRADE]). All maritime buildings gain additional support (+2[ICON_GOLD]/all [COLOR_YIELD_FOOD]Harbors[ENDCOLOR], [COLOR_YIELD_FOOD]Seaports[ENDCOLOR]) and all naval units have increased mobility and endurance ([COLOR_WATER_TEXT]Panama Canal[ENDCOLOR]/[COLOR_YIELD_GOLD]Naval[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_PANAMA_CANAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_PANAMA_CANAL_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PANAMA_CANAL_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Isthmus on minimum 10-tile area[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PANAMA_CANAL_HELP';
----------------------------------------------------
-- Zocalo
INSERT INTO Language_en_US 
			(Tag,								Text)
VALUES		('TXT_KEY_BUILDING_ZOCALO',		'Zocalo'),
			('TXT_KEY_WONDER_ZOCALO_QUOTE',	'[NEWLINE]"The Zocalo is a magnificent space, at least four times the size of Trafalagar Square, with the National Palace on one side, the huge cathedral on the other, and in one corner part of the old Aztec City so brutally destroyed by Hernan Cortez and the Conquistadores."[NEWLINE] - Jeremy Corbyn[NEWLINE]'),
			('TXT_KEY_WONDER_ZOCALO_PEDIA',	'TODO'),
			('TXT_KEY_WONDER_ZOCALO_HELP',	'Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] [ICON_DIPLOMAT] Great Diplomat. +1 [ICON_PEACE] Faith from Civil Servants in your Empire. +10% [ICON_PRODUCTION] Production towards Diplomatic units. +2 [ICON_TOURISM] Tourism from all Monuments in your Empire. +1 Civil Servant slot.');
			
UPDATE Language_en_US
SET Text = 'Huge [COLOR_YIELD_FOOD]Zocalo[ENDCOLOR] is a proof of political ([COLOR_YIELD_GOLD]free [ICON_DIPLOMAT][ENDCOLOR]; +1 slot for [ICON_DIPLOMAT]; +10%[ICON_PRODUCTION]/[COLOR_YIELD_GOLD]Diplomatic[ENDCOLOR]) and religious (+1[ICON_PEACE]/[ICON_DIPLOMAT][ICON_DIPLOMAT]) accents in history of the city. Such monuments attract tourists from all over the world (+2[ICON_TOURISM]/all [COLOR_YIELD_FOOD]Monuments[ENDCOLOR]), who want to be the part of these events.'
WHERE Tag = 'TXT_KEY_WONDER_ZOCALO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_ZOCALO_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ZOCALO_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Plains[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ZOCALO_HELP';
----------------------------------------------------
-- Kew Gardens
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_KEW_GARDENS',		'Kew Gardens'),
			('TXT_KEY_WONDER_KEW_GARDENS_QUOTE',	'[NEWLINE]"Stand in nature before anyone else has woken and most people find something to believe in."[NEWLINE] - Tor Udall[NEWLINE]'),
			('TXT_KEY_WONDER_KEW_GARDENS_PEDIA',	'TODO'),
			('TXT_KEY_WONDER_KEW_GARDENS_HELP',		'+1 [ICON_FOOD] Food, +1 [ICON_RESEARCH] Science and +1 [ICON_TOURISM] Tourism from Farms in your Empire. Converts 10% of [ICON_FOOD] Food produced by this City into [ICON_RESEARCH] Science and further 10% of [ICON_RESEARCH] Science into [ICON_TOURISM] Tourism.');
			
UPDATE Language_en_US
SET Text = 'Rich [COLOR_YIELD_FOOD]Kew Gardens[ENDCOLOR] are filled with tousands of plants, huge database and human devotion to study their behaviour and support developement of [COLOR_CITY_BROWN]Farms[ENDCOLOR] in your empire (+1[ICON_FOOD], +1[ICON_RESEARCH], +1[ICON_TOURISM]/[ICON_WORKER][ICON_WORKER]). There''s a connection between growth, accumulated knowledge and also tourism traffic created by curious eco-visitors (+3[ICON_GREAT_SCIENTIST]; 10%[ICON_FOOD] into [ICON_RESEARCH]; 10%[ICON_RESEARCH] into [ICON_TOURISM]), which can be used to speed up your economy.'
WHERE Tag = 'TXT_KEY_WONDER_KEW_GARDENS_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_KEW_GARDENS_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_KEW_GARDENS_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Rationalism Finisher[ENDCOLOR]; Building: [COLOR_CYAN]Agribusiness[ENDCOLOR], [COLOR_CYAN]Garden[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_KEW_GARDENS_HELP';
----------------------------------------------------
-- Monte Carlo
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_MONTE_CARLO',		'Monte Carlo Casino'),
			('TXT_KEY_WONDER_MONTE_CARLO_QUOTE',	'[NEWLINE]"Luck was a servant and not a master. Luck had to be accepted with a shrug or taken advantage of up to the hilt. But it had to be understood and recognized for what it was and not confused with a faulty appreciation of the odds, for, at gambling, the deadly sin is to mistake bad play for bad luck."[NEWLINE] - Ian Fleming[NEWLINE]'),
			('TXT_KEY_WONDER_MONTE_CARLO_PEDIA',	'The Monte Carlo Casino is a gambling and entertainment complex located in Monte Carlo, Monaco. It includes a casino, the Grand Theatre de Monte Carlo, and the office of Les Ballets de Monte Carlo. The Monte Carlo Casino is owned and operated by the Société des bains de mer de Monaco, a public company in which the Monaco government and the ruling family have a majority interest. The company also owns the principal hotels, sports clubs, foodservice establishments, and nightclubs throughout Monaco.'),
			('TXT_KEY_WONDER_MONTE_CARLO_HELP',		'+10% [ICON_GOLD] Gold in your Empire. Converts 33% of [ICON_TOURISM] Tourism produced by this City into [ICON_GOLD] Gold. 20% of [ICON_GOLD] Gold Purchase is converted into [ICON_TOURISM] Tourism. Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Hotel.');
			
UPDATE Language_en_US
SET Text = 'Casino of [COLOR_YIELD_FOOD]Monte Carlo[ENDCOLOR] invites anyone favoured by the fortune (+10% global [ICON_GOLD]). Promises of becoming rich attract tourists (20%[ICON_GOLD] Spent into [ICON_TOURISM]), and money they spend in your [COLOR_YIELD_FOOD]Hotels[ENDCOLOR] ([ICON_TOURISM]) (+2[ICON_GOLD]; +2[ICON_TOURISM]) is what your empire needs the most (33%[ICON_TOURISM] into [ICON_GOLD]).'
WHERE Tag = 'TXT_KEY_WONDER_MONTE_CARLO_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_MONTE_CARLO_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MONTE_CARLO_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Artistry Finisher[ENDCOLOR]; Terrain: [COLOR_CYAN]Mountain[ENDCOLOR], [COLOR_CYAN]Coast[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MONTE_CARLO_HELP';
----------------------------------------------------
-- Ruhr Valley
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_RUHR_VALLEY',		'Ruhr Valley'),
			('TXT_KEY_WONDER_RUHR_VALLEY_QUOTE',	'[NEWLINE]"The industrial heart of Germany practically stopped beating. Hardly anyone worked, hardly anything ran. The population of the Ruhr area... had to be supported by the rest of the country."[NEWLINE] - Adam Fergusson[NEWLINE]'),
			('TXT_KEY_WONDER_RUHR_VALLEY_PEDIA',	'TODO'),
			('TXT_KEY_WONDER_RUHR_VALLEY_HELP',		'Wonder places 2 new [ICON_RES_COAL] Coal resources inside City range if possible. +10% [ICON_PRODUCTION] Production in your Empire. +1 [ICON_PRODUCTION] Production from Mines and Quarries in your Empire. +2 Working Range of this City.');
			
UPDATE Language_en_US
SET Text = 'Abundant [COLOR_YIELD_FOOD]Ruhr Valley[ENDCOLOR] agglomeration (+2[ICON_RANGE] City Working Range) is the heart of whole country (+10% global [ICON_PRODUCTION]). It supports your industry thanks to new discoveries of [COLOR_GREY]Coal[ENDCOLOR] deposits (+2[ICON_RES_COAL]) and well-trained workforce spread across all [COLOR_CITY_BROWN]Mines[ENDCOLOR] and [COLOR_CITY_BROWN]Quarries[ENDCOLOR] (+1[ICON_PRODUCTION]/[ICON_WORKER][ICON_WORKER]).'
WHERE Tag = 'TXT_KEY_WONDER_RUHR_VALLEY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_RUHR_VALLEY_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_RUHR_VALLEY_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Industry Finisher[ENDCOLOR]; Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_RUHR_VALLEY_HELP';
----------------------------------------------------
-- Darjeeling Himalayan Railway
INSERT INTO Language_en_US 
			(Tag,									Text)
VALUES		('TXT_KEY_BUILDING_DARJEELING',			'Darjeeling Himalayan Railway'),
			('TXT_KEY_WONDER_DARJEELING_QUOTE',		'[NEWLINE]"A traditional Englishman drinks tea to the point where his blood has long-since been replaced with an infusion of Ceylon, Assam, and Darjeeling."[NEWLINE] - Fennel Hudson[NEWLINE]'),
			('TXT_KEY_WONDER_DARJEELING_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_DARJEELING_HELP',		'All Pedestrian Military Units receive [COLOR_POSITIVE_TEXT]Toy Train[ENDCOLOR] promotion. +15% [ICON_GOLD] Gold from City Connections. +1 [ICON_FOOD] Food, [ICON_PRODUCTION] Production, [ICON_CULTURE] Culture and [ICON_TOURISM] Tourism from Mountain tiles worked by this City.'),
			('TXT_KEY_PROMOTION_DARJEELING',		'Toy Train'),
			('TXT_KEY_PROMOTION_DARJEELING_HELP',	'Unit [COLOR:255:230:85:255]can Move over Mountain[ENDCOLOR]. If unit [COLOR:255:230:85:255]ends turn on Mountain[ENDCOLOR] then it takes Damage [COLOR:255:230:85:255]at the beginning of next turn[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Darjeeling Himalayan Railway[ENDCOLOR] is excellent way to communicate difficult areas of your empire together ([COLOR_WATER_TEXT]Toy Train[ENDCOLOR]/[COLOR_YIELD_GOLD]Military Pedestrian[ENDCOLOR]). Such a connection can also improve your income (+15%[ICON_GOLD]/[ICON_CONNECTED][ICON_CONNECTED]) and populate [COLOR_CITY_BLUE]Mountainous[ENDCOLOR] (+1[ICON_FOOD], +1[ICON_PRODUCTION], +1[ICON_CULTURE], +1[ICON_TOURISM]/[ICON_FLOWER]) terrain surrounding your city.'
WHERE Tag = 'TXT_KEY_WONDER_DARJEELING_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_DARJEELING_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_DARJEELING_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]2 Mountains[ENDCOLOR]; Building: [COLOR_CYAN]Train Station[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_DARJEELING_HELP';
----------------------------------------------------
-- Banff Springs Hotel
INSERT INTO Language_en_US 
			(Tag,								Text)
VALUES		('TXT_KEY_BUILDING_BANFF',			'Banff Springs Hotel'),
			('TXT_KEY_WONDER_BANFF_QUOTE',		'[NEWLINE]"A national park is not a playground. It''s a sanctuary for nature and for humans who will accept nature on nature''s own terms."[NEWLINE] - Michael Frome[NEWLINE]'),
			('TXT_KEY_WONDER_BANFF_PEDIA',		'TODO'),
			('TXT_KEY_WONDER_BANFF_HELP',		'+1 [ICON_GOLD] Gold and +1 [ICON_TOURISM] Tourism from all Merchant Specialists in your Empire. +5 [ICON_GOLD] Gold and +5 [ICON_TOURISM] Tourism from all Mountain tiles worked by this City. Grants [COLOR_POSITIVE_TEXT]Free[ENDCOLOR] Hotel. -1 [ICON_HAPPINESS_3] Unhappiness from [ICON_CULTURE] Boredom.');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Banff Springs Hotel[ENDCOLOR] is a perfect example how to make profits from [COLOR_CITY_BLUE]Mountains[ENDCOLOR] (+5[ICON_GOLD], +5[ICON_TOURISM]/[ICON_FLOWER]) using basic tourism infrastructure: [COLOR_YIELD_FOOD]Hotels[ENDCOLOR] ([ICON_TOURISM]), merchant districts (+1[ICON_GREAT_MERCHANT]; +5[ICON_GOLD], +5[ICON_TOURISM]/[ICON_GREAT_MERCHANT][ICON_GREAT_MERCHANT]) and all kind of entartainment facilities (-1[ICON_HAPPINESS_3] Boredom).'
WHERE Tag = 'TXT_KEY_WONDER_BANFF_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_BANFF_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BANFF_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR], [COLOR_CYAN]Tundra[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BANFF_HELP';
----------------------------------------------------
-- Orszaghaz
INSERT INTO Language_en_US 
			(Tag,										Text) 
VALUES		('TXT_KEY_BUILDING_ORSZAGHAZ',				'Orszaghaz'),
			('TXT_KEY_WONDER_ORSZAGHAZ_QUOTE',			'[NEWLINE]"With self-government is freedom, and with freedom is justice and patriotism."[NEWLINE] - Lajos Kossuth[NEWLINE]'),
			('TXT_KEY_WONDER_ORSZAGHAZ_PEDIA',			'TODO'),
			('TXT_KEY_GREAT_WORK_HOLY_HUNGARY',			'Holy Crown of Hungary'),
			('TXT_KEY_GREAT_WORK_HOLY_HUNGARY_QUOTE',	'[NEWLINE]You desire that which exceeds my humble powers,but I trust[NEWLINE]in the compassion and mercy of the All-powerful God.[NEWLINE] - Saint Stephen[NEWLINE]'),
			('TXT_KEY_WONDER_ORSZAGHAZ_HELP',			'+10% [ICON_GOLDEN_AGE] Golden Age Points. +1 [ICON_INFLUENCE] World Congress Vote, +1 [ICON_INFLUENCE] World Congress Vote for each 2 Declarations of Friendship and +1 [ICON_INFLUENCE] World Congress Vote for each 2 Defensive Pacts. Has 1 slot for [ICON_GREAT_WORK] Great Work of Art, and starts with [ICON_GREAT_WORK] [COLOR_CULTURE_STORED]Holy Crown of Hungary[ENDCOLOR].');
			
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Orszaghaz[ENDCOLOR] is an evidence of your good will towards rest of the world (+1[ICON_DIPLOMAT] League Votes; +1[ICON_DIPLOMAT] League Vote/2 DoF; +1[ICON_DIPLOMAT] League Vote/2 DP). You invite them to see the holiest artifact in your collection: [COLOR_CULTURE_STORED]Holy Crown of Hungary[ENDCOLOR], spreading the light of new better age (+10%[ICON_GOLDEN_AGE]).'
WHERE Tag = 'TXT_KEY_WONDER_ORSZAGHAZ_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US (Tag, Text) 
SELECT 'TXT_KEY_WONDER_ORSZAGHAZ_HELP_CUT', Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_ORSZAGHAZ_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Building: [COLOR_CYAN]Constabulary[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_ORSZAGHAZ_HELP';		
----------------------------------------------------
-- Neuschwanstein
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Neuschwanstein[ENDCOLOR] gives you nice boost to your treasury (+6[ICON_GOLD]; +1[ICON_GREAT_MERCHANT]), culture output (+4[ICON_CULTURE]), and turns your [COLOR_YIELD_FOOD]Castles[ENDCOLOR] (+1[ICON_GOLD], +1[ICON_CULTURE], +1[ICON_HAPPINESS_1]) into most valuable buildings in your cities.'
WHERE Tag = 'TXT_KEY_WONDER_NEUSCHWANSTEIN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Can only be built in a City within 2 tiles of a Mountain that is inside your territory. ', '') WHERE Tag ='TXT_KEY_WONDER_NEUSCHWANSTEIN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_NEUSCHWANSTEIN_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_NEUSCHWANSTEIN_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Mountain[ENDCOLOR]; Feature: [COLOR_CYAN]Fresh Water[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_NEUSCHWANSTEIN_HELP';
----------------------------------------------------
-- Slater Mill
UPDATE Language_en_US
SET Text = 'If you are looking for a nice industrial boost for your civilization, then [COLOR_YIELD_FOOD]Slater Mill[ENDCOLOR] is for you. This [COLOR_YIELD_FOOD]Factory[ENDCOLOR] ([ICON_PRODUCTION]; [ICON_GREAT_PEOPLE]; [ICON_HAPPINESS_3]; [ICON_INTERNATIONAL_TRADE]) is great source of strategic [COLOR_GREY]Coal[ENDCOLOR] (+4 flat [ICON_RES_COAL]), supported by fresh engineering corps (+1[ICON_GREAT_ENGINEER]), that will increase your developement significantly.' WHERE Tag = 'TXT_KEY_BUILDING_SLATER_MILL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Can only be built in a City next to a River. ', '') WHERE Tag ='TXT_KEY_WONDER_NEUSCHWANSTEIN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_SLATER_MILL_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_SLATER_MILL_HELP';
				
UPDATE Language_en_US SET Text = 'Feature: [COLOR_CYAN]River[ENDCOLOR]; Building: [COLOR_CYAN]Windmill[ENDCOLOR]; Improvement: [COLOR_CYAN]2 Plantations[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_SLATER_MILL_HELP';
----------------------------------------------------
-- Louvre
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Louvre[ENDCOLOR] is an ideal place for hiding precious artifacts (2 [COLOR_YIELD_GOLD]free Archaeologists[ENDCOLOR]). This huge [COLOR_YIELD_FOOD]Museum[ENDCOLOR] ([ICON_CULTURE]; [ICON_GREAT_WORK]; [ICON_HAPPINESS_3]; [ICON_GREAT_ARTIST]; [ICON_GOLD]) also contains wonderful pieces of global art (4[ICON_GREAT_WORK] if themed: [ICON_CULTURE]) and invites artists from all over the world ([COLOR_YIELD_GOLD]free [ICON_GREAT_ARTIST][ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_LOUVRE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Artistry[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_LOUVRE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_LOUVRE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_LOUVRE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Artistry Finisher[ENDCOLOR]; Improvement: [COLOR_CYAN]Landmark[ENDCOLOR]; Great Works: [COLOR_CYAN]4 [ICON_GREAT_WORK] GW of Art[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_LOUVRE_HELP';
----------------------------------------------------
-- Palace of Westminster
UPDATE Language_en_US
SET Text = 'Influential [COLOR_YIELD_FOOD]Palace of Westminster[ENDCOLOR] brings additional seats for your world congress delegtes (+2[ICON_DIPLOMAT] League Vote/8 [ICON_CITY_STATE] in game). Additionally it increases your wealth by inviting merchants ([COLOR_YIELD_GOLD]free [ICON_GREAT_MERCHANT][ENDCOLOR]) and reducing your people''s needs (-1[ICON_HAPPINESS_3] Poverty).'
WHERE Tag = 'TXT_KEY_WONDER_BIG_BEN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Statecraft[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_BIG_BEN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_BIG_BEN_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BIG_BEN_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Statecraft Finisher[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Player: [COLOR_CYAN]3 [ICON_CITY_STATE] Allies[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BIG_BEN_HELP';
----------------------------------------------------
-- Eiffel Tower
UPDATE Language_en_US
SET Text = 'Impressing [COLOR_YIELD_FOOD]Eiffel Tower[ENDCOLOR] can be a helpful tool for quick cultural developement of your civilization (-10%[ICON_CULTURE] Policy Cost), which is key to world domination.'
WHERE Tag = 'TXT_KEY_WONDER_EIFFEL_TOWER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_EIFFEL_TOWER_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_EIFFEL_TOWER_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Grassland[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Resource: [COLOR_CYAN]Iron[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_EIFFEL_TOWER_HELP';
----------------------------------------------------
-- Brandenburg Gate
UPDATE Language_en_US
SET Text = 'Military potential of [COLOR_YIELD_FOOD]Brandenburg Gate[ENDCOLOR] is invaluable. Bigger (+10[ICON_SILVER_FIST]) and well-trained army (+15 Global XP/[COLOR_YIELD_GOLD]Military[ENDCOLOR]) as well as a briliant leadership ([COLOR_YIELD_GOLD]free [ICON_GREAT_GENERAL][ENDCOLOR]) will entrench your current position amongst other nations and economical situation of your people (-1[ICON_HAPPINESS_3] Poverty).'
WHERE Tag = 'TXT_KEY_WONDER_BRANDENBURG_GATE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_BRANDENBURG_GATE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BRANDENBURG_GATE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Imperialism Finisher[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Improvement: [COLOR_CYAN]Citadel/Fort[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BRANDENBURG_GATE_HELP';
----------------------------------------------------
----------------------------------------------------
-- Statue of Liberty
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Statue of Liberty[ENDCOLOR] is your sign towards other communities, that your developement is the best way to rule the world ([COLOR_MAGENTA]free Policy[ENDCOLOR]). Such a confidence increase trust of your citizens, who become more productive in all spheres of life (+1[ICON_PRODUCTION]/All specialists).'
WHERE Tag = 'TXT_KEY_WONDER_STATUE_OF_LIBERTY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires [COLOR_MAGENTA]Freedom[ENDCOLOR]. ', '') WHERE Tag ='TXT_KEY_WONDER_STATUE_OF_LIBERTY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_STATUE_OF_LIBERTY_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_STATUE_OF_LIBERTY_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_UNIT_TEXT]Freedom[ENDCOLOR]; Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Player: [COLOR_CYAN]4 [ICON_CITY_STATE] Allies[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_STATUE_OF_LIBERTY_HELP';
----------------------------------------------------
-- Empire State Building
UPDATE Language_en_US
SET Text = 'Becoming rich is in your blood, so construction of [COLOR_YIELD_FOOD]Empire State Building[ENDCOLOR] is inevitable (+1[ICON_GOLD]/All specialists). It is a [COLOR_YIELD_FOOD]Stock Exchange[ENDCOLOR] ([ICON_GOLD]; [ICON_GREAT_MERCHANT]), were bankers generate huge profits and people gather to change their future ([COLOR_YIELD_GOLD]free [ICON_GREAT_PEOPLE][ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_BUILDING_EMPIRE_STATE_BUILDING_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,												Text) 
SELECT		'TXT_KEY_BUILDING_EMPIRE_STATE_BUILDING_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_EMPIRE_STATE_BUILDING_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Resource: [COLOR_CYAN]Aluminum[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_EMPIRE_STATE_BUILDING_HELP';
----------------------------------------------------
-- Motherland Calls
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Motherland Calls[ENDCOLOR] is a evidence of your will ([COLOR_MAGENTA]free Policy[ENDCOLOR]). It strengthen internal security using [COLOR_YIELD_FOOD]Police Station[ENDCOLOR] ([ICON_SPY]; [ICON_HAPPINESS_3]; [ICON_CULTURE]; [ICON_RESEARCH]) and increase efficiency of your spies (lower enemy chance to: Incite [ICON_REBELION], Cause [ICON_HAPPINESS_3]; higher chance to: Incite [ICON_REBELION], Cause [ICON_HAPPINESS_3], Disrupt [ICON_PRODUCTION]). You''re so kind for your people (-1[ICON_HAPPINESS_3] Distress).'
WHERE Tag = 'TXT_KEY_WONDER_MOTHERLAND_STATUE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires [COLOR_MAGENTA]Order[ENDCOLOR]. ', '') WHERE Tag ='TXT_KEY_WONDER_MOTHERLAND_STATUE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_MOTHERLAND_STATUE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_MOTHERLAND_STATUE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_UNIT_TEXT]Order[ENDCOLOR]; Terrain: [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_MOTHERLAND_STATUE_HELP';
----------------------------------------------------
-- Cristo Redentor
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Cristo Redentor[ENDCOLOR] is an invitation for tourists from all over the world (+25[ICON_TOURISM]) and will make your [COLOR_YIELD_FOOD]Hotels[ENDCOLOR] (+2[ICON_CULTURE]; +2[ICON_GOLDEN_AGE]; +2[ICON_TOURISM]) an important part of your fortune.'
WHERE Tag = 'TXT_KEY_WONDER_CRISTO_REDENTOR_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_CRISTO_REDENTOR_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_CRISTO_REDENTOR_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Hill[ENDCOLOR]; Feature: [COLOR_CYAN]Forest/Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_CRISTO_REDENTOR_HELP';
----------------------------------------------------
-- Broadway
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Broadway[ENDCOLOR] is a perfect place for talented musicians ([COLOR_YIELD_GOLD]free [ICON_GREAT_MUSICIAN][ENDCOLOR]), who can present here fruits of their imagination (+3[ICON_GREAT_WORK] if themed: [ICON_GOLD]), and every future construction in this city will be awarded by them (250[ICON_CULTURE]/Construction).'
WHERE Tag = 'TXT_KEY_WONDER_BROADWAY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Industry[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_BROADWAY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_BROADWAY_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_BROADWAY_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Industry Finisher[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Great Works: [COLOR_CYAN]3 [ICON_GREAT_WORK] GW of Music[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_BROADWAY_HELP';
----------------------------------------------------
-- Prora
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Prora[ENDCOLOR] recreation centre makes your citizens happier (+1[ICON_HAPPINESS_1]) and pushes them to develop more efiiciently ([COLOR_MAGENTA]free Policy[ENDCOLOR]). Additionally it will protect your future wonder constructions (lower enemy chance to: Sabotage Wonder) and award soldiers devastating enemy lands (25[ICON_CULTURE]/Pillaging).'
WHERE Tag = 'TXT_KEY_WONDER_PRORA_RESORT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires [COLOR_MAGENTA]Autocracy[ENDCOLOR] and can only be constructed in coastal City. ', '') WHERE Tag ='TXT_KEY_WONDER_PRORA_RESORT_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_PRORA_RESORT_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PRORA_RESORT_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_UNIT_TEXT]Autocracy[ENDCOLOR]; Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Forest/Jungle[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PRORA_RESORT_HELP';
----------------------------------------------------
----------------------------------------------------
-- Bletchey Park
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Bletchey Park[ENDCOLOR] is place filled with scientists (+1[ICON_RESEARCH]/All Scientists) and spies (+2[ICON_SPY]; [ICON_SPY][ICON_SPY] level up; -15% Enemy [ICON_SPY][ICON_SPY] Effectiveness; [ICON_SPY][ICON_SPY] are immune to failure; higher chance to: Steal [ICON_RESEARCH], Disrupt [ICON_PRODUCTION]). The most advanced [COLOR_YIELD_FOOD]Research Lab[ENDCOLOR] ([ICON_RESEARCH]; [ICON_GREAT_SCIENTIST]; [ICON_HAPPINESS_3]) is constructed to increase your knowledge.'
WHERE Tag = 'TXT_KEY_BUILDING_BLETCHLEY_PARK_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Rationalism[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_BUILDING_BLETCHLEY_PARK_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_BLETCHLEY_PARK_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_BLETCHLEY_PARK_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Rationalism Finisher[ENDCOLOR]; Terrain: [COLOR_CYAN]Grassland[ENDCOLOR], [COLOR_NEGATIVE_TEXT]Coast[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_BLETCHLEY_PARK_HELP';
----------------------------------------------------
-- Pentagon
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Pentagon[ENDCOLOR] focuses on military abilities of your cities (+1[ICON_SILVER_FIST][ICON_SILVER_FIST]; +2 Global City Air Cap). Increased forces for production of your planes (+50%[ICON_PRODUCTION], +20 XP/[COLOR_YIELD_GOLD]Air[ENDCOLOR]; 2 [COLOR_YIELD_GOLD]free Jet Fighters[ENDCOLOR]. And it can even more, thanks to hidden intelligence agency, making your spies more effective (higher chance to: Disrupt [ICON_PRODUCTION]).'
WHERE Tag = 'TXT_KEY_WONDER_PENTAGON_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Requires completion of [COLOR_MAGENTA]Imperialism[ENDCOLOR] Branch. ', '') WHERE Tag ='TXT_KEY_WONDER_PENTAGON_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_PENTAGON_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_PENTAGON_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR_MAGENTA]Imperialism Finisher[ENDCOLOR]; Feature: [COLOR_CYAN]River[ENDCOLOR]; Improvement: [COLOR_CYAN]Citadel/Fort[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_PENTAGON_HELP';
----------------------------------------------------
----------------------------------------------------
-- Sydney Opera House
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Sydney Opera House[ENDCOLOR], amazing and original architectural wonder, brings to its halls many nobles, sharing with you with their culture and experience ([COLOR_MAGENTA]free Policy[ENDCOLOR]; +25%[ICON_CULTURE]). Here you can hear wonderful and inspiring music compositions from all over the world (+2[ICON_GREAT_WORK] if themed: [ICON_CULTURE]).'
WHERE Tag = 'TXT_KEY_WONDER_SYDNEY_OPERA_HOUSE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'Can only be constructed in a coastal City. ', '') WHERE Tag ='TXT_KEY_WONDER_SYDNEY_OPERA_HOUSE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_SYDNEY_OPERA_HOUSE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_SYDNEY_OPERA_HOUSE_HELP';
				
UPDATE Language_en_US SET Text = 'Terrain: [COLOR_CYAN]Coast[ENDCOLOR]; Great Works: [COLOR_CYAN]4 [ICON_GREAT_WORK] GW of Music[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_SYDNEY_OPERA_HOUSE_HELP';
----------------------------------------------------
-- CN Tower
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]CN Tower[ENDCOLOR] is unusual [COLOR_YIELD_FOOD]Broadcast Tower[ENDCOLOR] ([ICON_GREAT_WORK]; [ICON_CULTURE]; [ICON_TOURISM]; [ICON_HAPPINESS_3]), which serves for masses (+1[ICON_CITIZEN][ICON_CITIZEN]; +1[ICON_HAPPINESS_1]/City). All works become much more valuable (+2[ICON_GOLD], +3[ICON_TOURISM], +50%[ICON_TOURISM]/[ICON_GREAT_WORK][ICON_GREAT_WORK]) and all wonders are now tourism centers (+50%[ICON_CULTURE] of all [COLOR_YIELD_FOOD]World Wonders[ENDCOLOR], [COLOR_CITY_GREEN]Natural Wonders[ENDCOLOR] and [COLOR_CITY_BLUE]Tiles[ENDCOLOR] into [ICON_TOURISM]).'
WHERE Tag = 'TXT_KEY_WONDER_CN_TOWER_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_CN_TOWER_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_CN_TOWER_HELP';
				
UPDATE Language_en_US SET Text = 'Plot: [COLOR_CYAN]Flat[ENDCOLOR]; Feature: [COLOR_CYAN]Lake[ENDCOLOR]; Player: [COLOR_CYAN]Happiness > 80%[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_CN_TOWER_HELP';
----------------------------------------------------
-- Hubble Space Telescope
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Hubble Space Telescope[ENDCOLOR] is last step to your scientific victory (+25%[ICON_PRODUCION]/[COLOR_YIELD_GOLD]Spaceship Part[ENDCOLOR]), supported by brand new [COLOR_YIELD_FOOD]Spaceship Factory[ENDCOLOR] ([ICON_PRODUCTION]; [ICON_RESEARCH]). This huge leap towards space can be an inspiration for further developement (2 [COLOR_YIELD_GOLD]free [ICON_GREAT_SCIENTIST][ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_WONDER_HUBBLE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_WONDER_HUBBLE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_WONDER_HUBBLE_HELP';
				
UPDATE Language_en_US SET Text = 'Resource: [COLOR_CYAN]Aluminum[ENDCOLOR]; Building: [COLOR_CYAN]Observatory[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_WONDER_HUBBLE_HELP';
----------------------------------------------------
-- Great Firewall
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Great Firewall[ENDCOLOR] makes hacking to your city systems much harder (-99,9% Enemy [ICON_SPY] Effectiveness; -25% Enemy [ICON_SPY][ICON_SPY] Effectiveness). You will be able to resist influence of other civilizations (foreign [ICON_TOURISM] bonus from technologies is negated) and your [COLOR_YIELD_FOOD]Research Labs[ENDCOLOR] (+10[ICON_RESEARCH]) become much more effective.'
WHERE Tag = 'TXT_KEY_BUILDING_GREAT_FIREWALL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_GREAT_FIREWALL_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_GREAT_FIREWALL_HELP';
				
UPDATE Language_en_US SET Text = 'Building: [COLOR_CYAN]Police Station, Wire Service[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_GREAT_FIREWALL_HELP';
----------------------------------------------------
-- CERN
UPDATE Language_en_US
SET Text = 'Hidden [COLOR_YIELD_FOOD]CERN[ENDCOLOR] facility gathers all scientists to create huge technological breakthrough (2 [COLOR_CYAN]free Technologies[ENDCOLOR] and amaze those, who can only watch how you drift away (+100[ICON_INFLUENCE]/[ICON_CITY_STATE]).'
WHERE Tag = 'TXT_KEY_BUILDING_CERN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_CERN_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_CERN_HELP';
				
UPDATE Language_en_US SET Text = 'Resource: [COLOR_CYAN]Uranium[ENDCOLOR]; Building: [COLOR_CYAN]Research Lab[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_CERN_HELP';
----------------------------------------------------
----------------------------------------------------
-- Crystal Palace
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Crystal Palace[ENDCOLOR] is a result of huge industrial potential. It boosts all [COLOR_YIELD_FOOD]Factories[ENDCOLOR] (+2[ICON_PRODUCTION]; +2[ICON_RESEARCH]) and starts new age in your civilization (Start [ICON_GOLDEN_AGE]).'
WHERE Tag = 'TXT_KEY_BUILDING_CRYSTAL_PALACE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'May only be built collaboratively through the World Congress. ', '') WHERE Tag ='TXT_KEY_BUILDING_CRYSTAL_PALACE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_CRYSTAL_PALACE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_CRYSTAL_PALACE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR:45:150:50:255]Victory in "World''s Fair" project[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_CRYSTAL_PALACE_HELP';
----------------------------------------------------
-- UN
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]United Nations[ENDCOLOR] can be the most influential comission of all in the world (Start [ICON_GOLDEN_AGE]; Start [COLOR:45:150:50:255]World Congress Session[ENDCOLOR]), where your best delegates (+1[ICON_DIPLOMAT]) will show what is most important for your citizens and those small countries, whose voice is not represented here (25[ICON_INFLUENCE]/[ICON_CITY_STATE]/[ICON_GREAT_PEOPLE]).'
WHERE Tag = 'TXT_KEY_UN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'May only be built collaboratively through the World Congress. ', '') WHERE Tag ='TXT_KEY_UN_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_UN_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_UN_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR:45:150:50:255]Victory in "United Nations" project[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_UN_HELP';
----------------------------------------------------
-- Grand Canal
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Grand Canal[ENDCOLOR] shows your devotion to all those people, who risk their lives on sea frontline ([COLOR_WATER_TEXT]Treasure Fleet[ENDCOLOR]/[COLOR_YIELD_GOLD]Military Naval (no Carriers, Submarines)[ENDCOLOR]). It also allows you to establish another trade route (+1[INTERNATIONAL_TRADE]), but it is your choice if it will be land or sea connection.'
WHERE Tag = 'TXT_KEY_BUILDING_GRAND_CANAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'May only be built collaboratively through the World Congress. ', '') WHERE Tag ='TXT_KEY_BUILDING_GRAND_CANAL_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_GRAND_CANAL_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_GRAND_CANAL_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR:45:150:50:255]Victory in "Treasure Fleet" project[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_GRAND_CANAL_HELP';
----------------------------------------------------
-- International Space Station
UPDATE Language_en_US
SET Text = 'Scientists and engineers work together on [COLOR_YIELD_FOOD]International Space Station[ENDCOLOR] to break barriers (+1[ICON_RESEARCH]/All Engineers; (+1[ICON_PRODUCTION]/All Scientists). Their efforts gives you technological boost (+33%[ICON_RESEARCH]/[ICON_GREAT_SCIENTIST]), and are innovative solution for problems of your industry (200[ICON_PRODUCTION]/[COLOR_CYAN]Technology[ENDCOLOR]).'
WHERE Tag = 'TXT_KEY_BUILDING_INTERNATIONAL_SPACE_STATION_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'May only be built collaboratively through the World Congress. ', '') WHERE Tag ='TXT_KEY_BUILDING_INTERNATIONAL_SPACE_STATION_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_INTERNATIONAL_SPACE_STATION_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_INTERNATIONAL_SPACE_STATION_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR:45:150:50:255]Victory in "International Space Station" project[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_INTERNATIONAL_SPACE_STATION_HELP';
----------------------------------------------------
-- Olympic Village
UPDATE Language_en_US
SET Text = 'Olympic Games are great source of joy in these difficult times (+3[ICON_HAPPINESS_1]). [COLOR_YIELD_FOOD]Olympic Village[ENDCOLOR] is here to gather people together, watching games and forgetting about surrounding pain (+25%[ICON_CULTURE] of all [COLOR_YIELD_FOOD]World Wonders[ENDCOLOR], [COLOR_CITY_GREEN]Natural Wonders[ENDCOLOR] and [COLOR_CITY_BROWN]Improvements[ENDCOLOR] into [ICON_TOURISM]). All constructed [COLOR_YIELD_FOOD]Stadiums[ENDCOLOR] (+2[ICON_GOLD]; +2[ICON_TOURISM]) become center of upcoming world events.'
WHERE Tag = 'TXT_KEY_BUILDING_OLYMPIC_VILLAGE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'May only be built collaboratively through the World Congress. ', '') WHERE Tag ='TXT_KEY_BUILDING_OLYMPIC_VILLAGE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_OLYMPIC_VILLAGE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_OLYMPIC_VILLAGE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR:45:150:50:255]Victory in "International Games" project[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_OLYMPIC_VILLAGE_HELP';
----------------------------------------------------
-- Menin Gate
UPDATE Language_en_US
SET Text = '[COLOR_YIELD_FOOD]Menin Gate[ENDCOLOR] will be admonishment for future generations (+2[ICON_CULTURE], +2[ICON_GOLDEN_AGE]/Death). This monument, but also each site releated to recent battles represents the huge pain (+1[ICON_CULTURE], +1[ICON_GOLDEN_AGE]/All [COLOR_CITY_BROWN]Forts[ENDCOLOR], [COLOR_CITY_BROWN]Citadels[ENDCOLOR] and [COLOR_CITY_BROWN]Landmarks[ENDCOLOR]). Maybe there''s a chance to keep current prosperity (+2[ICON_HAPPINESS_1]).'
WHERE Tag = 'TXT_KEY_BUILDING_MENIN_GATE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 1);

UPDATE Language_en_US SET Text = REPLACE(Text, 'May only be built collaboratively through the World Congress. ', '') WHERE Tag ='TXT_KEY_BUILDING_MENIN_GATE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='MW-HELP' AND Value= 0);

INSERT INTO Language_en_US 
			(Tag,								Text) 
SELECT		'TXT_KEY_BUILDING_MENIN_GATE_HELP_CUT',	Text
FROM Language_en_US WHERE Tag = 'TXT_KEY_BUILDING_MENIN_GATE_HELP';
				
UPDATE Language_en_US SET Text = 'Special: [COLOR:45:150:50:255]Victory in "Global Wargames" project[ENDCOLOR].[NEWLINE][NEWLINE]'||Text WHERE Tag ='TXT_KEY_BUILDING_MENIN_GATE_HELP';
----------------------------------------------------
----------------------------------------------------