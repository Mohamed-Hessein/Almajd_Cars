class CarsSpec {
  bool? success;
  Input? input;
  Attributes? attributes;
  List<Colors>? colors;
  Equipment? equipment;
  List<Warranties>? warranties;
  String? timestamp;

  CarsSpec(
      {this.success,
        this.input,
        this.attributes,
        this.colors,
        this.equipment,
        this.warranties,
        this.timestamp});

  CarsSpec.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    input = json['input'] != null ? new Input.fromJson(json['input']) : null;
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    if (json['colors'] != null) {
      colors = <Colors>[];
      json['colors'].forEach((v) {
        colors!.add(new Colors.fromJson(v));
      });
    }
    equipment = json['equipment'] != null
        ? new Equipment.fromJson(json['equipment'])
        : null;
    if (json['warranties'] != null) {
      warranties = <Warranties>[];
      json['warranties'].forEach((v) {
        warranties!.add(new Warranties.fromJson(v));
      });
    }
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.input != null) {
      data['input'] = this.input!.toJson();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.colors != null) {
      data['colors'] = this.colors!.map((v) => v.toJson()).toList();
    }
    if (this.equipment != null) {
      data['equipment'] = this.equipment!.toJson();
    }
    if (this.warranties != null) {
      data['warranties'] = this.warranties!.map((v) => v.toJson()).toList();
    }
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class Input {
  String? key;
  String? vin;

  Input({this.key, this.vin});

  Input.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    vin = json['vin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['vin'] = this.vin;
    return data;
  }
}

class Attributes {
  String? year;
  String? make;
  String? model;
  String? trim;
  String? style;
  String? type;
  String? size;
  String? category;
  String? madeIn;
  String? madeInCity;
  String? doors;
  String? fuelType;
  String? fuelCapacity;
  String? cityMileage;
  String? highwayMileage;
  String? engine;
  String? engineSize;
  String? engineCylinders;
  String? transmission;
  String? transmissionShort;
  String? transmissionType;
  String? transmissionSpeeds;
  String? drivetrain;
  String? antiBrakeSystem;
  String? steeringType;
  String? curbWeight;
  String? grossVehicleWeightRating;
  String? overallHeight;
  String? overallLength;
  String? overallWidth;
  String? wheelbaseLength;
  String? standardSeating;
  String? invoicePrice;
  String? deliveryCharges;
  String? manufacturerSuggestedRetailPrice;
  String? productionSeqNumber;
  String? frontBrakeType;
  String? rearBrakeType;
  String? turningDiameter;
  String? frontSuspension;
  String? rearSuspension;
  String? frontSpringType;
  String? rearSpringType;
  String? tires;
  String? frontHeadroom;
  String? rearHeadroom;
  String? frontLegroom;
  String? rearLegroom;
  String? frontShoulderRoom;
  String? rearShoulderRoom;
  String? frontHipRoom;
  String? rearHipRoom;
  List<String>? interiorTrim;
  List<String>? exteriorColor;
  String? curbWeightManual;
  String? groundClearance;
  String? trackFront;
  String? trackRear;
  String? cargoLength;
  String? widthAtWheelwell;
  String? widthAtWall;
  String? depth;
  String? optionalSeating;
  String? passengerVolume;
  String? cargoVolume;
  String? cargoVolumeSeatsInPlace;
  String? maximumCargoVolume;
  String? standardTowing;
  String? maximumTowing;
  String? standardPayload;
  String? maximumPayload;
  String? maximumGvwr;
  String? vehicleClass;
  String? vehicleRating;

  Attributes(
      {this.year,
        this.make,
        this.model,
        this.trim,
        this.style,
        this.type,
        this.size,
        this.category,
        this.madeIn,
        this.madeInCity,
        this.doors,
        this.fuelType,
        this.fuelCapacity,
        this.cityMileage,
        this.highwayMileage,
        this.engine,
        this.engineSize,
        this.engineCylinders,
        this.transmission,
        this.transmissionShort,
        this.transmissionType,
        this.transmissionSpeeds,
        this.drivetrain,
        this.antiBrakeSystem,
        this.steeringType,
        this.curbWeight,
        this.grossVehicleWeightRating,
        this.overallHeight,
        this.overallLength,
        this.overallWidth,
        this.wheelbaseLength,
        this.standardSeating,
        this.invoicePrice,
        this.deliveryCharges,
        this.manufacturerSuggestedRetailPrice,
        this.productionSeqNumber,
        this.frontBrakeType,
        this.rearBrakeType,
        this.turningDiameter,
        this.frontSuspension,
        this.rearSuspension,
        this.frontSpringType,
        this.rearSpringType,
        this.tires,
        this.frontHeadroom,
        this.rearHeadroom,
        this.frontLegroom,
        this.rearLegroom,
        this.frontShoulderRoom,
        this.rearShoulderRoom,
        this.frontHipRoom,
        this.rearHipRoom,
        this.interiorTrim,
        this.exteriorColor,
        this.curbWeightManual,
        this.groundClearance,
        this.trackFront,
        this.trackRear,
        this.cargoLength,
        this.widthAtWheelwell,
        this.widthAtWall,
        this.depth,
        this.optionalSeating,
        this.passengerVolume,
        this.cargoVolume,
        this.cargoVolumeSeatsInPlace,
        this.maximumCargoVolume,
        this.standardTowing,
        this.maximumTowing,
        this.standardPayload,
        this.maximumPayload,
        this.maximumGvwr,
        this.vehicleClass,
        this.vehicleRating});

  Attributes.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    make = json['make'];
    model = json['model'];
    trim = json['trim'];
    style = json['style'];
    type = json['type'];
    size = json['size'];
    category = json['category'];
    madeIn = json['made_in'];
    madeInCity = json['made_in_city'];
    doors = json['doors'];
    fuelType = json['fuel_type'];
    fuelCapacity = json['fuel_capacity'];
    cityMileage = json['city_mileage'];
    highwayMileage = json['highway_mileage'];
    engine = json['engine'];
    engineSize = json['engine_size'];
    engineCylinders = json['engine_cylinders'];
    transmission = json['transmission'];
    transmissionShort = json['transmission_short'];
    transmissionType = json['transmission_type'];
    transmissionSpeeds = json['transmission_speeds'];
    drivetrain = json['drivetrain'];
    antiBrakeSystem = json['anti_brake_system'];
    steeringType = json['steering_type'];
    curbWeight = json['curb_weight'];
    grossVehicleWeightRating = json['gross_vehicle_weight_rating'];
    overallHeight = json['overall_height'];
    overallLength = json['overall_length'];
    overallWidth = json['overall_width'];
    wheelbaseLength = json['wheelbase_length'];
    standardSeating = json['standard_seating'];
    invoicePrice = json['invoice_price'];
    deliveryCharges = json['delivery_charges'];
    manufacturerSuggestedRetailPrice =
    json['manufacturer_suggested_retail_price'];
    productionSeqNumber = json['production_seq_number'];
    frontBrakeType = json['front_brake_type'];
    rearBrakeType = json['rear_brake_type'];
    turningDiameter = json['turning_diameter'];
    frontSuspension = json['front_suspension'];
    rearSuspension = json['rear_suspension'];
    frontSpringType = json['front_spring_type'];
    rearSpringType = json['rear_spring_type'];
    tires = json['tires'];
    frontHeadroom = json['front_headroom'];
    rearHeadroom = json['rear_headroom'];
    frontLegroom = json['front_legroom'];
    rearLegroom = json['rear_legroom'];
    frontShoulderRoom = json['front_shoulder_room'];
    rearShoulderRoom = json['rear_shoulder_room'];
    frontHipRoom = json['front_hip_room'];
    rearHipRoom = json['rear_hip_room'];
    interiorTrim = json['interior_trim'].cast<String>();
    exteriorColor = json['exterior_color'].cast<String>();
    curbWeightManual = json['curb_weight_manual'];
    groundClearance = json['ground_clearance'];
    trackFront = json['track_front'];
    trackRear = json['track_rear'];
    cargoLength = json['cargo_length'];
    widthAtWheelwell = json['width_at_wheelwell'];
    widthAtWall = json['width_at_wall'];
    depth = json['depth'];
    optionalSeating = json['optional_seating'];
    passengerVolume = json['passenger_volume'];
    cargoVolume = json['cargo_volume'];
    cargoVolumeSeatsInPlace = json['cargo_volume_seats_in_place'];
    maximumCargoVolume = json['maximum_cargo_volume'];
    standardTowing = json['standard_towing'];
    maximumTowing = json['maximum_towing'];
    standardPayload = json['standard_payload'];
    maximumPayload = json['maximum_payload'];
    maximumGvwr = json['maximum_gvwr'];
    vehicleClass = json['vehicle_class'];
    vehicleRating = json['vehicle_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['make'] = this.make;
    data['model'] = this.model;
    data['trim'] = this.trim;
    data['style'] = this.style;
    data['type'] = this.type;
    data['size'] = this.size;
    data['category'] = this.category;
    data['made_in'] = this.madeIn;
    data['made_in_city'] = this.madeInCity;
    data['doors'] = this.doors;
    data['fuel_type'] = this.fuelType;
    data['fuel_capacity'] = this.fuelCapacity;
    data['city_mileage'] = this.cityMileage;
    data['highway_mileage'] = this.highwayMileage;
    data['engine'] = this.engine;
    data['engine_size'] = this.engineSize;
    data['engine_cylinders'] = this.engineCylinders;
    data['transmission'] = this.transmission;
    data['transmission_short'] = this.transmissionShort;
    data['transmission_type'] = this.transmissionType;
    data['transmission_speeds'] = this.transmissionSpeeds;
    data['drivetrain'] = this.drivetrain;
    data['anti_brake_system'] = this.antiBrakeSystem;
    data['steering_type'] = this.steeringType;
    data['curb_weight'] = this.curbWeight;
    data['gross_vehicle_weight_rating'] = this.grossVehicleWeightRating;
    data['overall_height'] = this.overallHeight;
    data['overall_length'] = this.overallLength;
    data['overall_width'] = this.overallWidth;
    data['wheelbase_length'] = this.wheelbaseLength;
    data['standard_seating'] = this.standardSeating;
    data['invoice_price'] = this.invoicePrice;
    data['delivery_charges'] = this.deliveryCharges;
    data['manufacturer_suggested_retail_price'] =
        this.manufacturerSuggestedRetailPrice;
    data['production_seq_number'] = this.productionSeqNumber;
    data['front_brake_type'] = this.frontBrakeType;
    data['rear_brake_type'] = this.rearBrakeType;
    data['turning_diameter'] = this.turningDiameter;
    data['front_suspension'] = this.frontSuspension;
    data['rear_suspension'] = this.rearSuspension;
    data['front_spring_type'] = this.frontSpringType;
    data['rear_spring_type'] = this.rearSpringType;
    data['tires'] = this.tires;
    data['front_headroom'] = this.frontHeadroom;
    data['rear_headroom'] = this.rearHeadroom;
    data['front_legroom'] = this.frontLegroom;
    data['rear_legroom'] = this.rearLegroom;
    data['front_shoulder_room'] = this.frontShoulderRoom;
    data['rear_shoulder_room'] = this.rearShoulderRoom;
    data['front_hip_room'] = this.frontHipRoom;
    data['rear_hip_room'] = this.rearHipRoom;
    data['interior_trim'] = this.interiorTrim;
    data['exterior_color'] = this.exteriorColor;
    data['curb_weight_manual'] = this.curbWeightManual;
    data['ground_clearance'] = this.groundClearance;
    data['track_front'] = this.trackFront;
    data['track_rear'] = this.trackRear;
    data['cargo_length'] = this.cargoLength;
    data['width_at_wheelwell'] = this.widthAtWheelwell;
    data['width_at_wall'] = this.widthAtWall;
    data['depth'] = this.depth;
    data['optional_seating'] = this.optionalSeating;
    data['passenger_volume'] = this.passengerVolume;
    data['cargo_volume'] = this.cargoVolume;
    data['cargo_volume_seats_in_place'] = this.cargoVolumeSeatsInPlace;
    data['maximum_cargo_volume'] = this.maximumCargoVolume;
    data['standard_towing'] = this.standardTowing;
    data['maximum_towing'] = this.maximumTowing;
    data['standard_payload'] = this.standardPayload;
    data['maximum_payload'] = this.maximumPayload;
    data['maximum_gvwr'] = this.maximumGvwr;
    data['vehicle_class'] = this.vehicleClass;
    data['vehicle_rating'] = this.vehicleRating;
    return data;
  }
}

class Colors {
  String? category;
  String? name;

  Colors({this.category, this.name});

  Colors.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['name'] = this.name;
    return data;
  }
}

class Equipment {
  String? s4wdAwd;
  String? absBrakes;
  String? adjustableFootPedals;
  String? airConditioning;
  String? alloyWheels;
  String? amFmRadio;
  String? automaticHeadlights;
  String? automaticLoadLeveling;
  String? cargoAreaCover;
  String? cargoAreaTiedowns;
  String? cargoNet;
  String? cassettePlayer;
  String? cdChanger;
  String? cdPlayer;
  String? childSafetyDoorLocks;
  String? chromeWheels;
  String? cruiseControl;
  String? daytimeRunningLights;
  String? deepTintedGlass;
  String? driverAirbag;
  String? driverMultiAdjustablePowerSeat;
  String? dvdPlayer;
  String? electrochromicExteriorRearviewMirror;
  String? electrochromicInteriorRearviewMirror;
  String? electronicBrakeAssistance;
  String? electronicParkingAid;
  String? firstAidKit;
  String? fogLights;
  String? frontAirDam;
  String? frontCooledSeat;
  String? frontHeatedSeat;
  String? frontPowerLumbarSupport;
  String? frontPowerMemorySeat;
  String? frontSideAirbag;
  String? frontSideAirbagWithHeadProtection;
  String? frontSplitBenchSeat;
  String? fullSizeSpareTire;
  String? genuineWoodTrim;
  String? glassRearWindowOnConvertible;
  String? heatedExteriorMirror;
  String? heatedSteeringWheel;
  String? highIntensityDischargeHeadlights;
  String? intervalWipers;
  String? keylessEntry;
  String? leatherSeat;
  String? leatherSteeringWheel;
  String? limitedSlipDifferential;
  String? loadBearingExteriorRack;
  String? lockingDifferential;
  String? lockingPickupTruckTailgate;
  String? manualSunroof;
  String? navigationAid;
  String? passengerAirbag;
  String? passengerMultiAdjustablePowerSeat;
  String? pickupTruckBedLiner;
  String? pickupTruckCargoBoxLight;
  String? powerAdjustableExteriorMirror;
  String? powerDoorLocks;
  String? powerSlidingSideVanDoor;
  String? powerSunroof;
  String? powerTrunkLid;
  String? powerWindows;
  String? rainSensingWipers;
  String? rearSpoiler;
  String? rearWindowDefogger;
  String? rearWiper;
  String? remoteIgnition;
  String? removableTop;
  String? runFlatTires;
  String? runningBoards;
  String? secondRowFoldingSeat;
  String? secondRowHeatedSeat;
  String? secondRowMultiAdjustablePowerSeat;
  String? secondRowRemovableSeat;
  String? secondRowSideAirbag;
  String? secondRowSideAirbagWithHeadProtection;
  String? secondRowSoundControls;
  String? separateDriverFrontPassengerClimateControls;
  String? sideHeadCurtainAirbag;
  String? skidPlate;
  String? slidingRearPickupTruckWindow;
  String? splashGuards;
  String? steelWheels;
  String? steeringWheelMountedControls;
  String? subwoofer;
  String? tachometer;
  String? telematicsSystem;
  String? telescopicSteeringColumn;
  String? thirdRowRemovableSeat;
  String? tiltSteering;
  String? tiltSteeringColumn;
  String? tirePressureMonitor;
  String? towHitchReceiver;
  String? towingPreparationPackage;
  String? tractionControl;
  String? tripComputer;
  String? trunkAntiTrapDevice;
  String? vehicleAntiTheft;
  String? vehicleStabilityControlSystem;
  String? voiceActivatedTelephone;
  String? windDeflectorForConvertibles;

  Equipment(
      {this.s4wdAwd,
        this.absBrakes,
        this.adjustableFootPedals,
        this.airConditioning,
        this.alloyWheels,
        this.amFmRadio,
        this.automaticHeadlights,
        this.automaticLoadLeveling,
        this.cargoAreaCover,
        this.cargoAreaTiedowns,
        this.cargoNet,
        this.cassettePlayer,
        this.cdChanger,
        this.cdPlayer,
        this.childSafetyDoorLocks,
        this.chromeWheels,
        this.cruiseControl,
        this.daytimeRunningLights,
        this.deepTintedGlass,
        this.driverAirbag,
        this.driverMultiAdjustablePowerSeat,
        this.dvdPlayer,
        this.electrochromicExteriorRearviewMirror,
        this.electrochromicInteriorRearviewMirror,
        this.electronicBrakeAssistance,
        this.electronicParkingAid,
        this.firstAidKit,
        this.fogLights,
        this.frontAirDam,
        this.frontCooledSeat,
        this.frontHeatedSeat,
        this.frontPowerLumbarSupport,
        this.frontPowerMemorySeat,
        this.frontSideAirbag,
        this.frontSideAirbagWithHeadProtection,
        this.frontSplitBenchSeat,
        this.fullSizeSpareTire,
        this.genuineWoodTrim,
        this.glassRearWindowOnConvertible,
        this.heatedExteriorMirror,
        this.heatedSteeringWheel,
        this.highIntensityDischargeHeadlights,
        this.intervalWipers,
        this.keylessEntry,
        this.leatherSeat,
        this.leatherSteeringWheel,
        this.limitedSlipDifferential,
        this.loadBearingExteriorRack,
        this.lockingDifferential,
        this.lockingPickupTruckTailgate,
        this.manualSunroof,
        this.navigationAid,
        this.passengerAirbag,
        this.passengerMultiAdjustablePowerSeat,
        this.pickupTruckBedLiner,
        this.pickupTruckCargoBoxLight,
        this.powerAdjustableExteriorMirror,
        this.powerDoorLocks,
        this.powerSlidingSideVanDoor,
        this.powerSunroof,
        this.powerTrunkLid,
        this.powerWindows,
        this.rainSensingWipers,
        this.rearSpoiler,
        this.rearWindowDefogger,
        this.rearWiper,
        this.remoteIgnition,
        this.removableTop,
        this.runFlatTires,
        this.runningBoards,
        this.secondRowFoldingSeat,
        this.secondRowHeatedSeat,
        this.secondRowMultiAdjustablePowerSeat,
        this.secondRowRemovableSeat,
        this.secondRowSideAirbag,
        this.secondRowSideAirbagWithHeadProtection,
        this.secondRowSoundControls,
        this.separateDriverFrontPassengerClimateControls,
        this.sideHeadCurtainAirbag,
        this.skidPlate,
        this.slidingRearPickupTruckWindow,
        this.splashGuards,
        this.steelWheels,
        this.steeringWheelMountedControls,
        this.subwoofer,
        this.tachometer,
        this.telematicsSystem,
        this.telescopicSteeringColumn,
        this.thirdRowRemovableSeat,
        this.tiltSteering,
        this.tiltSteeringColumn,
        this.tirePressureMonitor,
        this.towHitchReceiver,
        this.towingPreparationPackage,
        this.tractionControl,
        this.tripComputer,
        this.trunkAntiTrapDevice,
        this.vehicleAntiTheft,
        this.vehicleStabilityControlSystem,
        this.voiceActivatedTelephone,
        this.windDeflectorForConvertibles});

  Equipment.fromJson(Map<String, dynamic> json) {
    s4wdAwd = json['4wd_awd'];
    absBrakes = json['abs_brakes'];
    adjustableFootPedals = json['adjustable_foot_pedals'];
    airConditioning = json['air_conditioning'];
    alloyWheels = json['alloy_wheels'];
    amFmRadio = json['am_fm_radio'];
    automaticHeadlights = json['automatic_headlights'];
    automaticLoadLeveling = json['automatic_load_leveling'];
    cargoAreaCover = json['cargo_area_cover'];
    cargoAreaTiedowns = json['cargo_area_tiedowns'];
    cargoNet = json['cargo_net'];
    cassettePlayer = json['cassette_player'];
    cdChanger = json['cd_changer'];
    cdPlayer = json['cd_player'];
    childSafetyDoorLocks = json['child_safety_door_locks'];
    chromeWheels = json['chrome_wheels'];
    cruiseControl = json['cruise_control'];
    daytimeRunningLights = json['daytime_running_lights'];
    deepTintedGlass = json['deep_tinted_glass'];
    driverAirbag = json['driver_airbag'];
    driverMultiAdjustablePowerSeat = json['driver_multi_adjustable_power_seat'];
    dvdPlayer = json['dvd_player'];
    electrochromicExteriorRearviewMirror =
    json['electrochromic_exterior_rearview_mirror'];
    electrochromicInteriorRearviewMirror =
    json['electrochromic_interior_rearview_mirror'];
    electronicBrakeAssistance = json['electronic_brake_assistance'];
    electronicParkingAid = json['electronic_parking_aid'];
    firstAidKit = json['first_aid_kit'];
    fogLights = json['fog_lights'];
    frontAirDam = json['front_air_dam'];
    frontCooledSeat = json['front_cooled_seat'];
    frontHeatedSeat = json['front_heated_seat'];
    frontPowerLumbarSupport = json['front_power_lumbar_support'];
    frontPowerMemorySeat = json['front_power_memory_seat'];
    frontSideAirbag = json['front_side_airbag'];
    frontSideAirbagWithHeadProtection =
    json['front_side_airbag_with_head_protection'];
    frontSplitBenchSeat = json['front_split_bench_seat'];
    fullSizeSpareTire = json['full_size_spare_tire'];
    genuineWoodTrim = json['genuine_wood_trim'];
    glassRearWindowOnConvertible = json['glass_rear_window_on_convertible'];
    heatedExteriorMirror = json['heated_exterior_mirror'];
    heatedSteeringWheel = json['heated_steering_wheel'];
    highIntensityDischargeHeadlights =
    json['high_intensity_discharge_headlights'];
    intervalWipers = json['interval_wipers'];
    keylessEntry = json['keyless_entry'];
    leatherSeat = json['leather_seat'];
    leatherSteeringWheel = json['leather_steering_wheel'];
    limitedSlipDifferential = json['limited_slip_differential'];
    loadBearingExteriorRack = json['load_bearing_exterior_rack'];
    lockingDifferential = json['locking_differential'];
    lockingPickupTruckTailgate = json['locking_pickup_truck_tailgate'];
    manualSunroof = json['manual_sunroof'];
    navigationAid = json['navigation_aid'];
    passengerAirbag = json['passenger_airbag'];
    passengerMultiAdjustablePowerSeat =
    json['passenger_multi_adjustable_power_seat'];
    pickupTruckBedLiner = json['pickup_truck_bed_liner'];
    pickupTruckCargoBoxLight = json['pickup_truck_cargo_box_light'];
    powerAdjustableExteriorMirror = json['power_adjustable_exterior_mirror'];
    powerDoorLocks = json['power_door_locks'];
    powerSlidingSideVanDoor = json['power_sliding_side_van_door'];
    powerSunroof = json['power_sunroof'];
    powerTrunkLid = json['power_trunk_lid'];
    powerWindows = json['power_windows'];
    rainSensingWipers = json['rain_sensing_wipers'];
    rearSpoiler = json['rear_spoiler'];
    rearWindowDefogger = json['rear_window_defogger'];
    rearWiper = json['rear_wiper'];
    remoteIgnition = json['remote_ignition'];
    removableTop = json['removable_top'];
    runFlatTires = json['run_flat_tires'];
    runningBoards = json['running_boards'];
    secondRowFoldingSeat = json['second_row_folding_seat'];
    secondRowHeatedSeat = json['second_row_heated_seat'];
    secondRowMultiAdjustablePowerSeat =
    json['second_row_multi_adjustable_power_seat'];
    secondRowRemovableSeat = json['second_row_removable_seat'];
    secondRowSideAirbag = json['second_row_side_airbag'];
    secondRowSideAirbagWithHeadProtection =
    json['second_row_side_airbag_with_head_protection'];
    secondRowSoundControls = json['second_row_sound_controls'];
    separateDriverFrontPassengerClimateControls =
    json['separate_driver_front_passenger_climate_controls'];
    sideHeadCurtainAirbag = json['side_head_curtain_airbag'];
    skidPlate = json['skid_plate'];
    slidingRearPickupTruckWindow = json['sliding_rear_pickup_truck_window'];
    splashGuards = json['splash_guards'];
    steelWheels = json['steel_wheels'];
    steeringWheelMountedControls = json['steering_wheel_mounted_controls'];
    subwoofer = json['subwoofer'];
    tachometer = json['tachometer'];
    telematicsSystem = json['telematics_system'];
    telescopicSteeringColumn = json['telescopic_steering_column'];
    thirdRowRemovableSeat = json['third_row_removable_seat'];
    tiltSteering = json['tilt_steering'];
    tiltSteeringColumn = json['tilt_steering_column'];
    tirePressureMonitor = json['tire_pressure_monitor'];
    towHitchReceiver = json['tow_hitch_receiver'];
    towingPreparationPackage = json['towing_preparation_package'];
    tractionControl = json['traction_control'];
    tripComputer = json['trip_computer'];
    trunkAntiTrapDevice = json['trunk_anti_trap_device'];
    vehicleAntiTheft = json['vehicle_anti_theft'];
    vehicleStabilityControlSystem = json['vehicle_stability_control_system'];
    voiceActivatedTelephone = json['voice_activated_telephone'];
    windDeflectorForConvertibles = json['wind_deflector_for_convertibles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['4wd_awd'] = this.s4wdAwd;
    data['abs_brakes'] = this.absBrakes;
    data['adjustable_foot_pedals'] = this.adjustableFootPedals;
    data['air_conditioning'] = this.airConditioning;
    data['alloy_wheels'] = this.alloyWheels;
    data['am_fm_radio'] = this.amFmRadio;
    data['automatic_headlights'] = this.automaticHeadlights;
    data['automatic_load_leveling'] = this.automaticLoadLeveling;
    data['cargo_area_cover'] = this.cargoAreaCover;
    data['cargo_area_tiedowns'] = this.cargoAreaTiedowns;
    data['cargo_net'] = this.cargoNet;
    data['cassette_player'] = this.cassettePlayer;
    data['cd_changer'] = this.cdChanger;
    data['cd_player'] = this.cdPlayer;
    data['child_safety_door_locks'] = this.childSafetyDoorLocks;
    data['chrome_wheels'] = this.chromeWheels;
    data['cruise_control'] = this.cruiseControl;
    data['daytime_running_lights'] = this.daytimeRunningLights;
    data['deep_tinted_glass'] = this.deepTintedGlass;
    data['driver_airbag'] = this.driverAirbag;
    data['driver_multi_adjustable_power_seat'] =
        this.driverMultiAdjustablePowerSeat;
    data['dvd_player'] = this.dvdPlayer;
    data['electrochromic_exterior_rearview_mirror'] =
        this.electrochromicExteriorRearviewMirror;
    data['electrochromic_interior_rearview_mirror'] =
        this.electrochromicInteriorRearviewMirror;
    data['electronic_brake_assistance'] = this.electronicBrakeAssistance;
    data['electronic_parking_aid'] = this.electronicParkingAid;
    data['first_aid_kit'] = this.firstAidKit;
    data['fog_lights'] = this.fogLights;
    data['front_air_dam'] = this.frontAirDam;
    data['front_cooled_seat'] = this.frontCooledSeat;
    data['front_heated_seat'] = this.frontHeatedSeat;
    data['front_power_lumbar_support'] = this.frontPowerLumbarSupport;
    data['front_power_memory_seat'] = this.frontPowerMemorySeat;
    data['front_side_airbag'] = this.frontSideAirbag;
    data['front_side_airbag_with_head_protection'] =
        this.frontSideAirbagWithHeadProtection;
    data['front_split_bench_seat'] = this.frontSplitBenchSeat;
    data['full_size_spare_tire'] = this.fullSizeSpareTire;
    data['genuine_wood_trim'] = this.genuineWoodTrim;
    data['glass_rear_window_on_convertible'] =
        this.glassRearWindowOnConvertible;
    data['heated_exterior_mirror'] = this.heatedExteriorMirror;
    data['heated_steering_wheel'] = this.heatedSteeringWheel;
    data['high_intensity_discharge_headlights'] =
        this.highIntensityDischargeHeadlights;
    data['interval_wipers'] = this.intervalWipers;
    data['keyless_entry'] = this.keylessEntry;
    data['leather_seat'] = this.leatherSeat;
    data['leather_steering_wheel'] = this.leatherSteeringWheel;
    data['limited_slip_differential'] = this.limitedSlipDifferential;
    data['load_bearing_exterior_rack'] = this.loadBearingExteriorRack;
    data['locking_differential'] = this.lockingDifferential;
    data['locking_pickup_truck_tailgate'] = this.lockingPickupTruckTailgate;
    data['manual_sunroof'] = this.manualSunroof;
    data['navigation_aid'] = this.navigationAid;
    data['passenger_airbag'] = this.passengerAirbag;
    data['passenger_multi_adjustable_power_seat'] =
        this.passengerMultiAdjustablePowerSeat;
    data['pickup_truck_bed_liner'] = this.pickupTruckBedLiner;
    data['pickup_truck_cargo_box_light'] = this.pickupTruckCargoBoxLight;
    data['power_adjustable_exterior_mirror'] =
        this.powerAdjustableExteriorMirror;
    data['power_door_locks'] = this.powerDoorLocks;
    data['power_sliding_side_van_door'] = this.powerSlidingSideVanDoor;
    data['power_sunroof'] = this.powerSunroof;
    data['power_trunk_lid'] = this.powerTrunkLid;
    data['power_windows'] = this.powerWindows;
    data['rain_sensing_wipers'] = this.rainSensingWipers;
    data['rear_spoiler'] = this.rearSpoiler;
    data['rear_window_defogger'] = this.rearWindowDefogger;
    data['rear_wiper'] = this.rearWiper;
    data['remote_ignition'] = this.remoteIgnition;
    data['removable_top'] = this.removableTop;
    data['run_flat_tires'] = this.runFlatTires;
    data['running_boards'] = this.runningBoards;
    data['second_row_folding_seat'] = this.secondRowFoldingSeat;
    data['second_row_heated_seat'] = this.secondRowHeatedSeat;
    data['second_row_multi_adjustable_power_seat'] =
        this.secondRowMultiAdjustablePowerSeat;
    data['second_row_removable_seat'] = this.secondRowRemovableSeat;
    data['second_row_side_airbag'] = this.secondRowSideAirbag;
    data['second_row_side_airbag_with_head_protection'] =
        this.secondRowSideAirbagWithHeadProtection;
    data['second_row_sound_controls'] = this.secondRowSoundControls;
    data['separate_driver_front_passenger_climate_controls'] =
        this.separateDriverFrontPassengerClimateControls;
    data['side_head_curtain_airbag'] = this.sideHeadCurtainAirbag;
    data['skid_plate'] = this.skidPlate;
    data['sliding_rear_pickup_truck_window'] =
        this.slidingRearPickupTruckWindow;
    data['splash_guards'] = this.splashGuards;
    data['steel_wheels'] = this.steelWheels;
    data['steering_wheel_mounted_controls'] = this.steeringWheelMountedControls;
    data['subwoofer'] = this.subwoofer;
    data['tachometer'] = this.tachometer;
    data['telematics_system'] = this.telematicsSystem;
    data['telescopic_steering_column'] = this.telescopicSteeringColumn;
    data['third_row_removable_seat'] = this.thirdRowRemovableSeat;
    data['tilt_steering'] = this.tiltSteering;
    data['tilt_steering_column'] = this.tiltSteeringColumn;
    data['tire_pressure_monitor'] = this.tirePressureMonitor;
    data['tow_hitch_receiver'] = this.towHitchReceiver;
    data['towing_preparation_package'] = this.towingPreparationPackage;
    data['traction_control'] = this.tractionControl;
    data['trip_computer'] = this.tripComputer;
    data['trunk_anti_trap_device'] = this.trunkAntiTrapDevice;
    data['vehicle_anti_theft'] = this.vehicleAntiTheft;
    data['vehicle_stability_control_system'] =
        this.vehicleStabilityControlSystem;
    data['voice_activated_telephone'] = this.voiceActivatedTelephone;
    data['wind_deflector_for_convertibles'] = this.windDeflectorForConvertibles;
    return data;
  }
}

class Warranties {
  String? type;
  String? miles;
  String? months;

  Warranties({this.type, this.miles, this.months});

  Warranties.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    miles = json['miles'];
    months = json['months'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['miles'] = this.miles;
    data['months'] = this.months;
    return data;
  }
}