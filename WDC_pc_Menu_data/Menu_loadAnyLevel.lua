require("Chunk.lua")
local kEpisodeLevels = {}
kEpisodeLevels[101] = {"env_clementineHouseExterior","env_clementineHouseExterior_night","env_ClementineHouseInterior","env_drugstoreExterior","env_drugstoreInteriorPrologue","env_drugstoreOffice","env_hershelFarmExterior","env_hershelFarmExteriorNight","env_motorInn_end","env_motorInn_stealthMission","env_persistencetest","env_streetOutskirts","env_woodsClementine","NextTimeOn"}
kEpisodeLevels[102] = {"env_dairyBarnDay","env_dairyBarnNight","env_dairyExteriorDay","env_dairyExteriorFence","env_dairyHouse","env_dairyMeatLocker","env_motorInn","env_motorInnFinale","env_woodsAbandonedCamp","env_woodsAbandonedCampDay","env_woodsBearTrap","env_woodsJoleneCamp","NextTimeOn","PreviouslyOn"}
kEpisodeLevels[103] = {"env_clearing","env_drugstoreExterior","env_drugstoreInterior","env_epilogue","env_motorInn","env_motorInnBanditAttack","env_overpass","env_road","env_station","env_trainAfterStop","env_trainBeforeStop","env_wreckedTrain","NextTimeOn","PreviouslyOn"}
kEpisodeLevels[104] = {"env_cancerGroupHideout","env_cancerGroupHideoutEpilogue","env_crawfordAutoShop","env_crawfordExterior","env_crawfordSchoolBellTower","env_crawfordSchoolClassroom","env_crawfordSchoolHallways","env_crawfordSchoolNursesOffice","env_manorExteriorDay","env_manorExteriorNight","env_manorInteriorAfterCrawford","env_manorInteriorAttic","env_manorInteriorBeforeCrawford","env_manorInteriorClementineSearch","env_manorInteriorHouseSearch","env_savannahRiverStreet","env_savannahSewers","env_savannahStreets","PreviouslyOn"}
kEpisodeLevels[105] = {"env_epilogue","env_jewleryStore","env_manorExterior","env_manorInterior","env_manorInteriorAttic","env_manorNeighborBedroom","env_marshHouseExterior","env_marshHouseInterior","env_riverStreet","env_riverStreetRooftop","env_rooftop","PreviouslyOn"}

kEpisodeLevels[201] = {"BackwoodsStream","CabinExterior","CabinInterior","CabinShedInterior","ClearingCampfire","RiverCamp","RiverShore","RiverWoods","TruckStopBathroom","NextTimeOn","PreviouslyOn"}
kEpisodeLevels[202] = {"CabinInterior","LakeBridge","LakeBridgeApproach","LakeBridgeStationHouse","LakeWoodsCellar","LakeWoodsClearing","LodgeExteriorAndMainRoom","LodgeExteriorFront","LodgeExteriorRear","LodgeMainRoom","NextTimeOn","PreviouslyOn"}
kEpisodeLevels[203] = {"HardwareStoreExterior","HardwareStoreExteriorForest","HardwareStoreExteriorRear","HardwareStoreExteriorRoofAndYard","HardwareStoreExteriorYardAfternoon","HardwareStoreExteriorYardNight","HardwareStoreInteriorExteriorNight","HardwareStoreInteriorExteriorRoofNight","NextTimeOn","PreviouslyOn"}
kEpisodeLevels[204] = {"CivilWarMemorialCenter","CivilWarMemorialCenterMorning","CivilWarMemorialMuseum","CivilWarMemorialObservationDeck","CivilWarMemorialObservationDeckEvening","HardwareStoreExteriorRear","MobileHome","RoadSnowy","TrailerPark","PreviouslyOn"}
kEpisodeLevels[205] = {"FinaleHardwareStore","FinaleOpenField","FinaleWellington","FrozenLake","RestStop","RoadSnowy","RoadTruckSnowstorm","SnowyPowerStation","SnowyWoods","StashHouseExterior","StashHouseExteriorNight","StashHouseInterior","PreviouslyOn"}

kEpisodeLevels[301] = {"AirportExterior","AirportExteriorGate","AirportHangar","GarciaDominguezHouse","HardwareStore","Junkyard","JunkyardDay","JunkyardHill","VirginiaRailroad","VirginiaRoad","VirginiaRoadWinter","Wellington"}
kEpisodeLevels[302] = {"AirportExteriorDusk","AirportExteriorGate","GarciaDominguezHouse","JunkyardDay","RichmondGate","RichmondStreet","RichmondTunnel","VirginiaForestBus","VirginiaRoad","VirginiaRoadCar","VirginiaUnderpass","PreviouslyOn"}
kEpisodeLevels[303] = {"GarciaDominguezHouse","RichmondBackEntrance","RichmondChurchInterior","RichmondFactoryExterior","RichmondFactoryExteriorBack","RichmondFactoryInterior","RichmondGate","RichmondGateNight","RichmondMedical","RichmondQuarantineInterior","RichmondSafeHouse","RichmondSquare","VirginiaForestCamp","VirginiaRailroadNight","PreviouslyOn"}
kEpisodeLevels[304] = {"BattingCages","FlashbackJavi","HardwareStoreForestHill","RichmondApartmentNight","RichmondApartments","RichmondArmory","RichmondMedical304","RichmondQuarantineInterior304","RichmondSafehouse","RichmondSquareDawn","RichmondSquareDusk","RichmondWaterTower","VirginiaForestBus304","VirginiaForestCamp304","PreviouslyOn"}
kEpisodeLevels[305] = {"GarciaDominguezHouse","RichmondApartments","RichmondApartmentsRoof","RichmondChurchInterior","RichmondGate","RichmondGateFinale","RichmondOverpass","RichmondSquare","RichmondSquarePlayground","RichmondSquareWall","RichmondSquareWallDusk","RichmondStreet","RichmondStreetTile","RichmondWaterTower","VirginiaUnderpass","PreviouslyOn"}

kEpisodeLevels[401] = {"BoardingSchoolBasement","BoardingSchoolDorm","BoardingSchoolDormNight","BoardingSchoolExterior","BoardingSchoolExteriorGate","BoardingSchoolExteriorNight","BoardingSchoolInterior","Configurator","ForestShack","ForestTile","RoadTile","TrainStation","TrainStationNight"}
kEpisodeLevels[402] = {"BellTower","BoardingSchoolDorm","BoardingSchoolDormNight","BoardingSchoolExterior","BoardingSchoolExteriorDamaged","BoardingSchoolExteriorDusk","BoardingSchoolExteriorGate","BoardingSchoolExteriorGateNight","BoardingSchoolExteriorNight","BoardingSchoolInterior","BoardingSchoolInteriorNight","DormRoom","ForestCamp","ForestTile","GreenHouse","PreviouslyOn"}
kEpisodeLevels[403] = {"BoardingSchoolDorm","BoardingSchoolExteriorBasement","BoardingSchoolInterior","ForestBarn","ForestCamp","RiverBoat","RiverShoreline","RiverShorelineNight","PreviouslyOn"}
kEpisodeLevels[404] = {"BoardingSchoolDorm","BoardingSchoolExterior","BoardingSchoolExteriorGate","Cave","CliffBridge","ForestBarn","ForestShack","FortMcCarrollRanch","RiverBoat","RiverShorelineNight","PreviouslyOn"}

Menu_LoadAnyLevel = function()
  -- function num : 0_0 , upvalues : _ENV
  local playAllowed = Chunk_PlayGo_PreBeginPlay("Gallery")
  if not playAllowed then
    return
  end
  local menu = Menu_Create(JumpScrollList, episode)
  menu.align = "left"
  menu.capacity = 10
  menu.showArrows = true
  menu.Show = function(self, direction)
    -- function num : 0_0_0 , upvalues : _ENV
    if direction and direction > 0 then
      Menu_Main_SetIdle("env_clementineHouse400_characterGallery")
      ChorePlayAndWait("env_clementineHouse400_mainMenuToCharacterGallery")
      ChorePlay("ui_alphaGradient_show")
    end
    ;
    (Menu.Show)(self)
  end

  menu.Hide = function(self, direction)
    -- function num : 0_0_1 , upvalues : _ENV
    (Menu.Hide)(self)
    if direction and direction < 0 then
      ChorePlay("ui_alphaGradient_hide")
      ChorePlayAndWait("env_clementineHouse400_characterGalleryToMainMenu")
    end
  end

  menu.Populate = function(self)
    -- function num : 0_0_2 , upvalues : _ENV, menu
    Menu_Add(Header, nil, "Load Any Level")

    --SEASON 1
    --Menu_Add(Header, nil, "Season 1")
    Menu_Add(ListButtonLite, "101", "101", "Menu_LoadAnyLevelEpisode( 101 )")
    Menu_Add(ListButtonLite, "102", "102", "Menu_LoadAnyLevelEpisode( 102 )")
    Menu_Add(ListButtonLite, "103", "103", "Menu_LoadAnyLevelEpisode( 103 )")
    Menu_Add(ListButtonLite, "104", "104", "Menu_LoadAnyLevelEpisode( 104 )")
    Menu_Add(ListButtonLite, "105", "105", "Menu_LoadAnyLevelEpisode( 105 )")
    --SEASON 2
    --Menu_Add(Header, nil, "Season 2")
    Menu_Add(ListButtonLite, "201", "201", "Menu_LoadAnyLevelEpisode( 201 )")
    Menu_Add(ListButtonLite, "202", "202", "Menu_LoadAnyLevelEpisode( 202 )")
    Menu_Add(ListButtonLite, "203", "203", "Menu_LoadAnyLevelEpisode( 203 )")
    Menu_Add(ListButtonLite, "204", "204", "Menu_LoadAnyLevelEpisode( 204 )")
    Menu_Add(ListButtonLite, "205", "205", "Menu_LoadAnyLevelEpisode( 205 )")
    --SEASON 3
    --Menu_Add(Header, nil, "Season 3 ")
    Menu_Add(ListButtonLite, "301", "301", "Menu_LoadAnyLevelEpisode( 301 )")
    Menu_Add(ListButtonLite, "302", "302", "Menu_LoadAnyLevelEpisode( 302 )")
    Menu_Add(ListButtonLite, "303", "303", "Menu_LoadAnyLevelEpisode( 303 )")
    Menu_Add(ListButtonLite, "304", "304", "Menu_LoadAnyLevelEpisode( 304 )")
    Menu_Add(ListButtonLite, "305", "305", "Menu_LoadAnyLevelEpisode( 305 )")
    --SEASON 4
    --Menu_Add(Header, nil, "Season 4")
    Menu_Add(ListButtonLite, "401", "401", "Menu_LoadAnyLevelEpisode( 401 )")
    Menu_Add(ListButtonLite, "402", "402", "Menu_LoadAnyLevelEpisode( 402 )")
    Menu_Add(ListButtonLite, "403", "403", "Menu_LoadAnyLevelEpisode( 403 )")
    Menu_Add(ListButtonLite, "404", "404", "Menu_LoadAnyLevelEpisode( 404 )")

    local legendWidget = Menu_Add(Legend)
    legendWidget.Place = function(self)
      -- function num : 0_0_2_0 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

    Legend_Add("faceButtonDown", "legend_select")
    Legend_Add("faceButtonRight", "legend_previousMenu", "Menu_Pop()")
    local legendButton = Menu_Add(LegendButtonBack, "legendButton_back", "Menu_Pop()", "legendButton_back")
    legendButton.Place = function(self)
      -- function num : 0_0_2_1 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

  end

  Menu_Push(menu)
end

Menu_LoadLevel = function(levelEpisode, level)
  local file = io.open("C:\\Users\\Violet\\Desktop\\CustomMenuText.txt", "w")
  file:write(levelEpisode)
  file:write(level)
  file:close()
  SubProject_Switch(levelEpisode, level .. ".lua")
end

Menu_LoadAnyLevelEpisode = function(episode)
  local menu = Menu_Create(JumpScrollList, episode)
  menu.align = "left"
  menu.capacity = 10
  menu.showArrows = true
  menu.episode = episode
  --menu.scene = "zoo_season" .. season
  --menu.set = "SupportSeason" .. season
  menu.Populate = function(self)
    Menu_Add(Header, nil, self.episode)
    for _,level in ipairs(kEpisodeLevels[self.episode]) do
      Menu_Add(ListButtonLite, level, level, "Menu_LoadLevel(\"" .. "WalkingDead" .. self.episode .. "\", \"" .. level .. "\")")
      --Menu_Add(ListButtonLite, (string.format)("season%s%s", self.season, character), (string.format)("character_%s", (string.lower)(character)), (string.format)("Menu_CharacterZoo( \"%s\", \"%s\" )", self.season, character), "zoo")
    end
    local legendWidget = Menu_Add(Legend)
    legendWidget.Place = function(self)
      -- function num : 0_1_0_0 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

    Legend_Add("faceButtonDown", "legend_select")
    Legend_Add("faceButtonRight", "legend_previousMenu", "Menu_Pop()")
    local legendButton = Menu_Add(LegendButtonBack, "legendButton_back", "Menu_Pop()", "legendButton_back")
    legendButton.Place = function(self)
      -- function num : 0_1_0_1 , upvalues : menu
      self:AnchorToAgent(menu.agent, "left", "bottom")
    end

  end

  menu.Hide = function(self, direction)
    -- function num : 0_1_1 , upvalues : _ENV
    (Menu.Hide)(self)
    if direction and direction < 0 then
      if SceneIsActive(self.scene) then
        SceneRemove(self.scene)
      end
      if ResourceSetEnabled(self.set) then
        ResourceSetDisable(self.set, true)
      end
    end
  end

  Menu_Push(menu)
end