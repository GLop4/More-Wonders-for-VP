print("Loading DummyBuildingsForWonders.lua from MWfVP")
--------------------------------------------------------------
-- Orginal script for Kronborg was created by LeeS 
-- Dec 13, 2017: Retrofitted for Vox Populi, Infixo
-- Jan 14, 2020: Improved, adan_eslavo
--------------------------------------------------------------
local eUnitClassCaravan = GameInfoTypes.UNITCLASS_CARAVAN
local eUnitClassCargo = GameInfoTypes.UNITCLASS_CARGO_SHIP

-- Chevaliers
local eChevaliers = GameInfoTypes["BUILDING_CHEVALIERS"]
local eChevaliersDummy = GameInfoTypes["BUILDING_CHEVALIERS_DUMMY"]
local bHasChevaliers = false
local eChevaliersOwner

-- Itsukushima
local eItsukushima = GameInfoTypes["BUILDING_ITSUKUSHIMA"]
local eItsukushimaDummy = GameInfoTypes["BUILDING_ITSUKUSHIMA_DUMMY"]
local bHasItsukushima = false
local eItsukushimaOwner

-- Qalhat
local eQalhat = GameInfoTypes["BUILDING_QALHAT"]
local eQalhatDummy = GameInfoTypes["BUILDING_QALHAT_DUMMY"]
local bHasQalhat = false
local eQalhatOwner

-- Gate of the Sun
local eSunGate = GameInfoTypes["BUILDING_GATE_OF_SUN"]
local eSunGateDummy = GameInfoTypes["BUILDING_GATE_OF_SUN_DUMMY"]
local eClassWalls = "BUILDINGCLASS_WALLS"
local bHasSunGate = false
local eSunGateOwner

-- Great Zimbabwe
local eZimbabwe = GameInfoTypes["BUILDING_GREAT_ZIMBABWE"]
local eZimbabweDummy = GameInfoTypes["BUILDING_GREAT_ZIMBABWE_DUMMY"]
local bHasZimbabwe = false
local eZimbabweOwner

-- Kilwa Kisiwani
local eKilwa = GameInfoTypes["BUILDING_KILWA_KISIWANI"]
local eKilwaDummy = GameInfoTypes["BUILDING_KILWA_KISIWANI_DUMMY"]
local bHasKilwa = false
local eKilwaOwner

-- Marae Arahurahu
local eMarae = GameInfoTypes["BUILDING_MARAE"]
local eMaraeDummy = GameInfoTypes["BUILDING_MARAE_DUMMY"]
local bHasMarae = false
local eMaraeOwner

-- Kuk Swamp
local eKuk = GameInfoTypes["BUILDING_KUK"]
local eKukDummy = GameInfoTypes["BUILDING_KUK_DUMMY"]
local bHasKuk = false
local eKukOwner

-- St. Peter's Basilica
local eStPeters = GameInfoTypes["BUILDING_ST_PETERS"]
local eStPetersDummy = GameInfoTypes["BUILDING_ST_PETERS_DUMMY"]
local bHasStPeters = false
local eStPetersOwner

-- Panama Canal
local ePanamaCanal = GameInfoTypes["BUILDING_PANAMA_CANAL"]
local ePanamaCanalDummy = GameInfoTypes["BUILDING_PANAMA_CANAL_DUMMY"]
local bHasPanamaCanal = false
local ePanamaCanalOwner

-- load game and check if they are built
function WasWonderAlreadyBuilt()
	for i = 0, GameDefines.MAX_MAJOR_CIVS - 1, 1 do
		local pPlayer = Players[i]
	
		if pPlayer:IsEverAlive() then
			for city in pPlayer:Cities() do
				if city:IsHasBuilding(eChevaliers) then
					bHasChevaliers = true
					eChevaliersOwner = i
				end

				if city:IsHasBuilding(eItsukushima) then
					bHasItsukushima = true
					eItsukushimaOwner = i
				end

				if city:IsHasBuilding(eQalhat) then
					bHasQalhat = true
					eQalhatOwner = i
				end

				if city:IsHasBuilding(eSunGate) then
					bHasSunGate = true
					eSunGateOwner = i
				end

				if city:IsHasBuilding(eZimbabwe) then
					bHasZimbabwe = true
					eZimbabweOwner = i
				end

				if city:IsHasBuilding(eKilwa) then
					bHasKilwa = true
					eKilwaOwner = i
				end

				if city:IsHasBuilding(eMarae) then
					bHasMarae = true
					eMaraeOwner = i
				end

				if city:IsHasBuilding(eKuk) then
					bHasKuk = true
					eKukOwner = i
				end

				if city:IsHasBuilding(eStPeters) then
					bStPetersKuk = true
					eStPetersOwner = i
				end

				if city:IsHasBuilding(ePanamaCanal) then
					bHasPanamaCanal = true
					ePanamaCanalOwner = i
				end
			end
		end
	end
end
Events.LoadScreenClose.Add(WasWonderAlreadyBuilt)

-- check if wonder was built
function IsWonderConstructed(ePlayer, eCity, eBuilding, bGold, bFaith) 
	if not bHasChevaliers then	
		if eBuilding == eChevaliers then
			bHasChevaliers = true
			eChevaliersOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
		
			for city in pPlayer:Cities() do
				if not city:IsCoastal(10) and not city:IsHasBuilding(eChevaliers) then
					city:SetNumRealBuilding(eChevaliersDummy, 1)
				end
			end
		end
	end

	if not bHasItsukushima then	
		if eBuilding == eItsukushima then
			bHasItsukushima = true
			eItsukushimaOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
		
			for city in pPlayer:Cities() do
				if city:IsCoastal(10) then
					city:SetNumRealBuilding(eItsukushimaDummy, 1)
				end
			end
		end
	end

	if not bHasQalhat then
		if eBuilding == eQalhat then
			bHasQalhat = true
			eQalhatOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
			local pCity = pPlayer:GetCityByID(eCity)
			local iSeaTradeRoutesWithMajors = 0

			for _, player in ipairs(Players) do
				if player:IsAlive() then
					for _, tradeRoute in ipairs(player:GetTradeRoutes()) do
						if ((tradeRoute.FromID == ePlayer and not Players[tradeRoute.ToID]:IsMinorCiv()) 
						or (tradeRoute.ToID == ePlayer and not Players[tradeRoute.FromID]:IsMinorCiv())) 
						and tradeRoute.FromID ~= tradeRoute.ToID 
						and tradeRoute.Domain == GameInfoTypes.DOMAIN_SEA then
							iSeaTradeRoutesWithMajors = iSeaTradeRoutesWithMajors + 1
						end
					end
				end
			end

			pCity:SetNumRealBuilding(eQalhatDummy, iSeaTradeRoutesWithMajors)
			
			--[[		
			Domain - DomainTypes.DOMAIN_LAND or DomainTypes.DOMAIN_SEA (int)
			TurnsLeft - turns left before the trade route can be reassigned (int)
			FromCivilizationType - eg GameInfoTypes.CIVILIZATION_ENGLAND (int)
			FromID - from player ID (int)
			FromCityName - from city name (string)
			FromCity - from city (Lua pCity object)
			ToCivilizationType - to player civ type (int)
			ToID - to player ID (int)
			ToCityName - to city name (string)
			ToCity - to city (Lua pCity object)
			FromGPT - route yield (int)
			ToGPT - route yield (int)
			ToFood - route yield (int)
			ToProduction - route yield (int)
			FromScience - route yield (int)
			ToScience - route yield (int)
			ToReligion - to religion type (or -1) (int)
			ToPressure - to pressure (int)
			FromReligion - from religion type (or -1) (int)
			FromPressure - from pressure (int)
			FromTourism - from tourism (int)
			ToTourism - to tourism (int)
			--]]
		end
	end

	if not bHasSunGate then	
		if eBuilding == eSunGate then
			bHasSunGate = true
			eSunGateOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
		
			for city in pPlayer:Cities() do
				for building in GameInfo.Buildings{BuildingClass=eClassWalls} do	
					if city:IsHasBuilding(building.Type) then
						city:SetNumRealBuilding(eSunGateDummy, 1)
						break
					end
				end
			end
		end
	else
		for building in GameInfo.Buildings{BuildingClass=eClassWalls} do
			if eBuilding == building.ID then
				local pPlayer = Players[ePlayer]
				local pCity = pPlayer:GetCityByID(eCity)

				pCity:SetNumRealBuilding(eSunGateDummy, 1)
				break
			end
		end
	end

	if not bHasZimbabwe then
		if eBuilding == eZimbabwe then
			bHasZimbabwe = true
			eZimbabweOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
			local pCity = pPlayer:GetCityByID(eCity)
			local iActiveTradeRoutes = 0

			for _, player in ipairs(Players) do
				if player:IsAlive() then
					for _, tradeRoute in ipairs(player:GetTradeRoutes()) do
						if tradeRoute.FromID == ePlayer then
							iActiveTradeRoutes = iActiveTradeRoutes + 1
						end
					end
				end
			end

			pCity:SetNumRealBuilding(eZimbabweDummy, iActiveTradeRoutes)
		end
	end

	if not bHasKilwa then	
		if eBuilding == eKilwa then
			bHasKilwa = true
			eKilwaOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
			local pCity = pPlayer:GetCityByID(eCity)

			pCity:SetNumRealBuilding(eKilwaDummy, 1)
		end
	end

	if not bHasMarae then	
		if eBuilding == eMarae then
			bHasMarae = true
			eMaraeOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
			local pCity = pPlayer:GetCityByID(eCity)

			pCity:SetNumRealBuilding(eMaraeDummy, 1)
		end
	end

	if not bHasKuk then	
		if eBuilding == eKuk then
			bHasKuk = true
			eKukOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
		
			for city in pPlayer:Cities() do
				city:SetNumRealBuilding(eKukDummy, 1)
			end
		end
	end

	if not bHasStPeters then	
		if eBuilding == eStPeters then
			bHasStPeters = true
			eStPetersOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
			local pCity = pPlayer:GetCityByID(eCity)

			pCity:SetNumRealBuilding(eStPetersDummy, 1)
		end
	end

	if not bHasPanamaCanal then	
		if eBuilding == ePanamaCanal then
			bHasPanamaCanal = true
			ePanamaCanalOwner = ePlayer
			
			local pPlayer = Players[ePlayer]
		
			for city in pPlayer:Cities() do
				if city:IsCoastal(10) then
					city:SetNumRealBuilding(ePanamaCanalDummy, 1)
				end
			end
		end
	end
end
GameEvents.CityConstructed.Add(IsWonderConstructed)

-- check if wonder conquered by another player
function CheckForWonderAfterCapture(eOldOwner, bIsCapital, iX, iY, eNewOwner, iPop, bConquest)
	if bHasChevaliers then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eChevaliers) then
			local pOldOwner = Players[eOldOwner]
			
			for city in pOldOwner:Cities() do
				city:SetNumRealBuilding(eChevaliersDummy, 0)
			end
			
			local pNewOwner = Players[eNewOwner]
			eChevaliersOwner = eNewOwner
			
			for city in pNewOwner:Cities() do
				if not city:IsCoastal(10) and not city:IsHasBuilding(eChevaliers) then
					city:SetNumRealBuilding(eChevaliersDummy, 1)
				end
			end		
		else
			if eNewOwner == eChevaliersOwner and not pConqCity:IsCoastal(10) then
				pConqCity:SetNumRealBuilding(eChevaliersDummy, 1)
			elseif eNewOwner ~= eChevaliersOwner then
				pConqCity:SetNumRealBuilding(eChevaliersDummy, 0)
			end
		end
	end
	
	if bHasItsukushima then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eItsukushima) then
			local pOldOwner = Players[eOldOwner]
			
			for city in pOldOwner:Cities() do
				city:SetNumRealBuilding(eItsukushimaDummy, 0)
			end
			
			local pNewOwner = Players[eNewOwner]
			eItsukushimaOwner = eNewOwner
			
			for city in pNewOwner:Cities() do
				if city:IsCoastal(10) then
					city:SetNumRealBuilding(eItsukushimaDummy, 1)
				end
			end		
		else
			if eNewOwner == eItsukushimaOwner and pConqCity:IsCoastal(10) then
				pConqCity:SetNumRealBuilding(eItsukushimaDummy, 1)
			elseif eNewOwner ~= eItsukushimaOwner then
				pConqCity:SetNumRealBuilding(eItsukushimaDummy, 0)
			end
		end
	end

	if bHasQalhat then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eQalhat) then
			eQalhatOwner = eNewOwner
			local iSeaTradeRoutesWithMajors = 0
			
			for _, player in ipairs(Players) do
				if player:IsAlive() then
					for _, tradeRoute in ipairs(player:GetTradeRoutes()) do
						if ((tradeRoute.FromID == eNewOwner and not Players[tradeRoute.ToID]:IsMinorCiv()) 
						or (tradeRoute.ToID == eNewOwner and not Players[tradeRoute.FromID]:IsMinorCiv())) 
						and tradeRoute.FromID ~= tradeRoute.ToID 
						and tradeRoute.Domain == GameInfoTypes.DOMAIN_SEA then
							iSeaTradeRoutesWithMajors = iSeaTradeRoutesWithMajors + 1
						end
					end
				end
			end

			pConqCity:SetNumRealBuilding(eQalhatDummy, iSeaTradeRoutesWithMajors)
		end
	end

	if bHasSunGate then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eSunGate) then
			local pOldOwner = Players[eOldOwner]
			
			for city in pOldOwner:Cities() do
				city:SetNumRealBuilding(eSunGateDummy, 0)
			end
			
			local pNewOwner = Players[eNewOwner]
			eSunGateOwner = eNewOwner
			
			for city in pNewOwner:Cities() do
				for building in GameInfo.Buildings{BuildingClass=eClassWalls} do	
					if city:IsHasBuilding(building.Type) then
						city:SetNumRealBuilding(eSunGateDummy, 1)
						break
					end
				end
			end		
		else
			for building in GameInfo.Buildings{BuildingClass=eClassWalls} do	
				if eNewOwner == eSunGateOwner and pConqCity:IsHasBuilding(building.Type) then
					pConqCity:SetNumRealBuilding(eSunGateDummy, 1)
					break
				elseif eNewOwner ~= eSunGateOwner then
					pConqCity:SetNumRealBuilding(eSunGateDummy, 0)
					break
				end
			end
		end
	end

	if bHasZimbabwe then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eZimbabwe) then
			eZimbabweOwner = eNewOwner
			local iActiveTradeRoutes = 0
			
			for _, player in ipairs(Players) do
				if player:IsAlive() then
					for _, tradeRoute in ipairs(player:GetTradeRoutes()) do
						if tradeRoute.FromID == ePlayer then
							iActiveTradeRoutes = iActiveTradeRoutes + 1
						end
					end
				end
			end

			pConqCity:SetNumRealBuilding(eZimbabweDummy, iActiveTradeRoutes)
		end
	end

	if bHasKilwa then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eKilwa) then
			eKilwaOwner = eNewOwner
			
			pConqCity:SetNumRealBuilding(eKilwaDummy, 1)
		end
	end

	if bHasMarae then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eMarae) then
			eMaraeOwner = eNewOwner
			
			pConqCity:SetNumRealBuilding(eMaraeDummy, 1)
		end
	end

	if bHasKuk then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eKuk) then
			local pOldOwner = Players[eOldOwner]
			
			for city in pOldOwner:Cities() do
				city:SetNumRealBuilding(eKukDummy, 0)
			end
			
			local pNewOwner = Players[eNewOwner]
			eKukOwner = eNewOwner
			
			for city in pNewOwner:Cities() do
				city:SetNumRealBuilding(eKukDummy, 1)
			end		
		else
			if eNewOwner == eKukOwner then
				pConqCity:SetNumRealBuilding(eKukDummy, 1)
			else
				pConqCity:SetNumRealBuilding(eKukDummy, 0)
			end
		end
	end

	if bHasStPeters then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(eStPeters) then
			eStPetersOwner = eNewOwner
			
			pConqCity:SetNumRealBuilding(eStPetersDummy, 1)
		end
	end

	if bHasPanamaCanal then	
		local pPlot = Map.GetPlot(iX, iY)
		local pConqCity = pPlot:GetWorkingCity()
		
		if pConqCity:IsHasBuilding(ePanamaCanal) then
			local pOldOwner = Players[eOldOwner]
			
			for city in pOldOwner:Cities() do
				city:SetNumRealBuilding(ePanamaCanalDummy, 0)
			end
			
			local pNewOwner = Players[eNewOwner]
			ePanamaCanalOwner = eNewOwner
			
			for city in pNewOwner:Cities() do
				if city:IsCoastal(10) then
					city:SetNumRealBuilding(ePanamaCanalDummy, 1)
				end
			end		
		else
			if eNewOwner == ePanamaCanalOwner and pConqCity:IsCoastal(10) then
				pConqCity:SetNumRealBuilding(ePanamaCanalDummy, 1)
			elseif eNewOwner ~= ePanamaCanalOwner then
				pConqCity:SetNumRealBuilding(ePanamaCanalDummy, 0)
			end
		end
	end
end
GameEvents.CityCaptureComplete.Add(CheckForWonderAfterCapture)

-- check if new city has effects
function BuildDummyInNewCity(ePlayer, iX, iY)
	if bHasChevaliers then
		if ePlayer == eChevaliersOwner then
			local pPlot = Map.GetPlot(iX, iY)
			local pCity = pPlot:GetWorkingCity()
			
			if not pCity:IsCoastal(10) then
				pCity:SetNumRealBuilding(eChevaliersDummy, 1)
			end
		end
	end

	if bHasItsukushima then
		if ePlayer == eItsukushimaOwner then
			local pPlot = Map.GetPlot(iX, iY)
			local pCity = pPlot:GetWorkingCity()
			
			if pCity:IsCoastal(10) then
				pCity:SetNumRealBuilding(eItsukushimaDummy, 1)
			end
		end
	end

	if bHasSunGate then
		if ePlayer == eSunGateOwner then
			local pPlot = Map.GetPlot(iX, iY)
			local pCity = pPlot:GetWorkingCity()
			
			for building in GameInfo.Buildings{BuildingClass=eClassWalls} do	
				if pCity:IsHasBuilding(building.Type) then
					pCity:SetNumRealBuilding(eSunGateDummy, 1)
					break
				end
			end
		end
	end

	if bHasKuk then
		if ePlayer == eKukOwner then
			local pPlot = Map.GetPlot(iX, iY)
			local pCity = pPlot:GetWorkingCity()
			
			pCity:SetNumRealBuilding(eKukDummy, 1)
		end
	end

	if bHasPanamaCanal then
		if ePlayer == ePanamaCanalOwner then
			local pPlot = Map.GetPlot(iX, iY)
			local pCity = pPlot:GetWorkingCity()
			
			if pCity:IsCoastal(10) then
				pCity:SetNumRealBuilding(ePanamaCanalDummy, 1)
			end
		end
	end
end
GameEvents.PlayerCityFounded.Add(BuildDummyInNewCity)

-- check if unit action changed
function SetDummiesOnUnitActionChange(ePlayer, iUnit)
	if bHasQalhat then
		if ePlayer == eQalhatOwner then
			local pPlayer = Players[ePlayer]
			local pUnit = pPlayer:GetUnitByID(iUnit)
		
			if pUnit == nil then return end 	
		
			local iUnitClass = pUnit:GetUnitClassType()
		
			if iUnitClass ~= eUnitClassCargo then return end
		
			local iSeaTradeRoutesWithMajors = 0

			for _, player in ipairs(Players) do
				if player:IsAlive() then
					for city in player:Cities() do
						if city:IsHasBuilding(eQalhat) then
							for _, trader in ipairs(Players) do
								if not trader:IsEverAlive() then break end
						
								for _, tradeRoute in ipairs(trader:GetTradeRoutes()) do
									if ((tradeRoute.FromID == player:GetID() and not Players[tradeRoute.ToID]:IsMinorCiv()) 
									or (tradeRoute.ToID == player:GetID() and not Players[tradeRoute.FromID]:IsMinorCiv())) 
									and tradeRoute.FromID ~= tradeRoute.ToID 
									and tradeRoute.Domain == GameInfoTypes.DOMAIN_SEA then
										iSeaTradeRoutesWithMajors = iSeaTradeRoutesWithMajors + 1
									end
								end
							end

							city:SetNumRealBuilding(eQalhatDummy, iSeaTradeRoutesWithMajors)
							return
						end
					end
				end
			end
		end
	end

	if bHasZimbabwe then
		if ePlayer == eZimbabweOwner then
			local pPlayer = Players[ePlayer]
			local pUnit = pPlayer:GetUnitByID(iUnit)
			if pUnit == nil then return end 	
		
			local iUnitClass = pUnit:GetUnitClassType()
			print("Unit action just changed")
			if iUnitClass ~= eUnitClassCargo and iUnitClass ~= eUnitClassCaravan then return end
			print("Zimbabwe - trade unit action changed")
			local iActiveTradeRoutes = 0

			for _, player in ipairs(Players) do
				print("Zimbabwe - player: ", player:GetName())
				if player:IsAlive() then
					print("Zimbabwe - player is alive")
					for city in player:Cities() do
						print("Zimbabwe - city: ", city:GetName())
						if city:IsHasBuilding(eZimbabwe) then
							print("Zimbabwe - city has Zimbabwe")
							for _, trader in ipairs(Players) do
								if not trader:IsEverAlive() then break end
								print("Zimbabwe - trader is alive")
								for _, tradeRoute in ipairs(trader:GetTradeRoutes()) do
									print("Zimbabwe - tr id", tradeRoute.FromID, tradeRoute.ToID, tradeRoute.TurnsLeft)
									if tradeRoute.FromID == ePlayer then
										print("Zimbabwe - tr analyse", tradeRoute.FromID)									
										iActiveTradeRoutes = iActiveTradeRoutes + 1
										print("Zimbabwe - tr analyse", iActiveTradeRoutes)
									end
								end
							end

							city:SetNumRealBuilding(eZimbabweDummy, iActiveTradeRoutes)
							print("Zimbabwe - found", iActiveTradeRoutes, "active trade routes and set those dummies in", city:GetName())
							return
						end
					end
				end
			end
		end
	end
end
Events.UnitActionChanged.Add(SetDummiesOnUnitActionChange)
--------------------------------------------------------------
--------------------------------------------------------------
print("Loaded DummyBuildingsForWonders.lua from MWfVP")
--------------------------------------------------------------
--------------------------------------------------------------