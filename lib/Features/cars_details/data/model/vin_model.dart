class vinModel {
  int? numFound;
  List<Listings>? listings;

  vinModel({this.numFound, this.listings});

  vinModel.fromJson(Map<String, dynamic> json) {
    numFound = json['num_found'];
    if (json['listings'] != null) {
      listings = <Listings>[];
      json['listings'].forEach((v) {
        listings!.add(new Listings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num_found'] = this.numFound;
    if (this.listings != null) {
      data['listings'] = this.listings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Listings {
  String? id;
  String? vin;
  String? heading;
  int? price;
  int? miles;
  int? msrp;
  String? dataSource;
  String? vdpUrl;
  bool? carfax1Owner;
  bool? carfaxCleanTitle;
  String? exteriorColor;
  String? interiorColor;
  String? baseIntColor;
  String? baseExtColor;
  int? dom;
  int? dom180;
  int? domActive;
  int? dosActive;
  String? sellerType;
  String? inventoryType;
  String? stockNo;
  int? lastSeenAt;
  String? lastSeenAtDate;
  int? scrapedAt;
  String? scrapedAtDate;
  int? firstSeenAt;
  String? firstSeenAtDate;
  int? firstSeenAtSource;
  String? firstSeenAtSourceDate;
  int? firstSeenAtMc;
  String? firstSeenAtMcDate;
  String? source;
  bool? inTransit;
  Media? media;
  Dealer? dealer;
  McDealership? mcDealership;
  Build? build;

  Listings(
      {this.id,
        this.vin,
        this.heading,
        this.price,
        this.miles,
        this.msrp,
        this.dataSource,
        this.vdpUrl,
        this.carfax1Owner,
        this.carfaxCleanTitle,
        this.exteriorColor,
        this.interiorColor,
        this.baseIntColor,
        this.baseExtColor,
        this.dom,
        this.dom180,
        this.domActive,
        this.dosActive,
        this.sellerType,
        this.inventoryType,
        this.stockNo,
        this.lastSeenAt,
        this.lastSeenAtDate,
        this.scrapedAt,
        this.scrapedAtDate,
        this.firstSeenAt,
        this.firstSeenAtDate,
        this.firstSeenAtSource,
        this.firstSeenAtSourceDate,
        this.firstSeenAtMc,
        this.firstSeenAtMcDate,
        this.source,
        this.inTransit,
        this.media,
        this.dealer,
        this.mcDealership,
        this.build});

  Listings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vin = json['vin'];
    heading = json['heading'];
    price = json['price'];
    miles = json['miles'];
    msrp = json['msrp'];
    dataSource = json['data_source'];
    vdpUrl = json['vdp_url'];
    carfax1Owner = json['carfax_1_owner'];
    carfaxCleanTitle = json['carfax_clean_title'];
    exteriorColor = json['exterior_color'];
    interiorColor = json['interior_color'];
    baseIntColor = json['base_int_color'];
    baseExtColor = json['base_ext_color'];
    dom = json['dom'];
    dom180 = json['dom_180'];
    domActive = json['dom_active'];
    dosActive = json['dos_active'];
    sellerType = json['seller_type'];
    inventoryType = json['inventory_type'];
    stockNo = json['stock_no'];
    lastSeenAt = json['last_seen_at'];
    lastSeenAtDate = json['last_seen_at_date'];
    scrapedAt = json['scraped_at'];
    scrapedAtDate = json['scraped_at_date'];
    firstSeenAt = json['first_seen_at'];
    firstSeenAtDate = json['first_seen_at_date'];
    firstSeenAtSource = json['first_seen_at_source'];
    firstSeenAtSourceDate = json['first_seen_at_source_date'];
    firstSeenAtMc = json['first_seen_at_mc'];
    firstSeenAtMcDate = json['first_seen_at_mc_date'];
    source = json['source'];
    inTransit = json['in_transit'];
    media = json['media'] != null ? new Media.fromJson(json['media']) : null;
    dealer =
    json['dealer'] != null ? new Dealer.fromJson(json['dealer']) : null;
    mcDealership = json['mc_dealership'] != null
        ? new McDealership.fromJson(json['mc_dealership'])
        : null;
    build = json['build'] != null ? new Build.fromJson(json['build']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vin'] = this.vin;
    data['heading'] = this.heading;
    data['price'] = this.price;
    data['miles'] = this.miles;
    data['msrp'] = this.msrp;
    data['data_source'] = this.dataSource;
    data['vdp_url'] = this.vdpUrl;
    data['carfax_1_owner'] = this.carfax1Owner;
    data['carfax_clean_title'] = this.carfaxCleanTitle;
    data['exterior_color'] = this.exteriorColor;
    data['interior_color'] = this.interiorColor;
    data['base_int_color'] = this.baseIntColor;
    data['base_ext_color'] = this.baseExtColor;
    data['dom'] = this.dom;
    data['dom_180'] = this.dom180;
    data['dom_active'] = this.domActive;
    data['dos_active'] = this.dosActive;
    data['seller_type'] = this.sellerType;
    data['inventory_type'] = this.inventoryType;
    data['stock_no'] = this.stockNo;
    data['last_seen_at'] = this.lastSeenAt;
    data['last_seen_at_date'] = this.lastSeenAtDate;
    data['scraped_at'] = this.scrapedAt;
    data['scraped_at_date'] = this.scrapedAtDate;
    data['first_seen_at'] = this.firstSeenAt;
    data['first_seen_at_date'] = this.firstSeenAtDate;
    data['first_seen_at_source'] = this.firstSeenAtSource;
    data['first_seen_at_source_date'] = this.firstSeenAtSourceDate;
    data['first_seen_at_mc'] = this.firstSeenAtMc;
    data['first_seen_at_mc_date'] = this.firstSeenAtMcDate;
    data['source'] = this.source;
    data['in_transit'] = this.inTransit;
    if (this.media != null) {
      data['media'] = this.media!.toJson();
    }
    if (this.dealer != null) {
      data['dealer'] = this.dealer!.toJson();
    }
    if (this.mcDealership != null) {
      data['mc_dealership'] = this.mcDealership!.toJson();
    }
    if (this.build != null) {
      data['build'] = this.build!.toJson();
    }
    return data;
  }
}

class Media {
  List<String>? photoLinks;
  List<String>? photoLinksCached;

  Media({this.photoLinks, this.photoLinksCached});

  Media.fromJson(Map<String, dynamic> json) {
    photoLinks = json['photo_links'].cast<String>();
    photoLinksCached = json['photo_links_cached'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['photo_links'] = this.photoLinks;
    data['photo_links_cached'] = this.photoLinksCached;
    return data;
  }
}

class Dealer {
  int? id;
  String? website;
  String? name;
  String? dealerType;
  String? street;
  String? city;
  String? state;
  String? country;
  String? latitude;
  String? longitude;
  String? zip;
  String? msaCode;
  String? phone;
  String? sellerEmail;

  Dealer(
      {this.id,
        this.website,
        this.name,
        this.dealerType,
        this.street,
        this.city,
        this.state,
        this.country,
        this.latitude,
        this.longitude,
        this.zip,
        this.msaCode,
        this.phone,
        this.sellerEmail});

  Dealer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    website = json['website'];
    name = json['name'];
    dealerType = json['dealer_type'];
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    zip = json['zip'];
    msaCode = json['msa_code'];
    phone = json['phone'];
    sellerEmail = json['seller_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['website'] = this.website;
    data['name'] = this.name;
    data['dealer_type'] = this.dealerType;
    data['street'] = this.street;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['zip'] = this.zip;
    data['msa_code'] = this.msaCode;
    data['phone'] = this.phone;
    data['seller_email'] = this.sellerEmail;
    return data;
  }
}

class McDealership {
  int? mcWebsiteId;
  int? mcDealerId;
  int? mcLocationId;
  int? mcRooftopId;
  String? mcCategory;
  String? website;
  String? name;
  String? dealerType;
  String? street;
  String? city;
  String? state;
  String? country;
  String? latitude;
  String? longitude;
  String? zip;
  String? msaCode;
  String? phone;
  String? sellerEmail;

  McDealership(
      {this.mcWebsiteId,
        this.mcDealerId,
        this.mcLocationId,
        this.mcRooftopId,
        this.mcCategory,
        this.website,
        this.name,
        this.dealerType,
        this.street,
        this.city,
        this.state,
        this.country,
        this.latitude,
        this.longitude,
        this.zip,
        this.msaCode,
        this.phone,
        this.sellerEmail});

  McDealership.fromJson(Map<String, dynamic> json) {
    mcWebsiteId = json['mc_website_id'];
    mcDealerId = json['mc_dealer_id'];
    mcLocationId = json['mc_location_id'];
    mcRooftopId = json['mc_rooftop_id'];
    mcCategory = json['mc_category'];
    website = json['website'];
    name = json['name'];
    dealerType = json['dealer_type'];
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    zip = json['zip'];
    msaCode = json['msa_code'];
    phone = json['phone'];
    sellerEmail = json['seller_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mc_website_id'] = this.mcWebsiteId;
    data['mc_dealer_id'] = this.mcDealerId;
    data['mc_location_id'] = this.mcLocationId;
    data['mc_rooftop_id'] = this.mcRooftopId;
    data['mc_category'] = this.mcCategory;
    data['website'] = this.website;
    data['name'] = this.name;
    data['dealer_type'] = this.dealerType;
    data['street'] = this.street;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['zip'] = this.zip;
    data['msa_code'] = this.msaCode;
    data['phone'] = this.phone;
    data['seller_email'] = this.sellerEmail;
    return data;
  }
}

class Build {
  int? year;
  String? make;
  String? model;
  String? trim;
  String? version;
  String? bodyType;
  String? vehicleType;
  String? transmission;
  String? drivetrain;
  String? fuelType;
  String? engine;
  double? engineSize;
  String? engineBlock;
  int? doors;
  int? cylinders;
  String? madeIn;
  String? overallHeight;
  String? overallLength;
  String? overallWidth;
  String? stdSeating;
  int? highwayMpg;
  int? cityMpg;
  String? powertrainType;

  Build(
      {this.year,
        this.make,
        this.model,
        this.trim,
        this.version,
        this.bodyType,
        this.vehicleType,
        this.transmission,
        this.drivetrain,
        this.fuelType,
        this.engine,
        this.engineSize,
        this.engineBlock,
        this.doors,
        this.cylinders,
        this.madeIn,
        this.overallHeight,
        this.overallLength,
        this.overallWidth,
        this.stdSeating,
        this.highwayMpg,
        this.cityMpg,
        this.powertrainType});

  Build.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    make = json['make'];
    model = json['model'];
    trim = json['trim'];
    version = json['version'];
    bodyType = json['body_type'];
    vehicleType = json['vehicle_type'];
    transmission = json['transmission'];
    drivetrain = json['drivetrain'];
    fuelType = json['fuel_type'];
    engine = json['engine'];

    // الحل هنا: تحويل القيمة إلى double مهما كان نوعها القادم من الـ JSON
    engineSize = json['engine_size'] != null
        ? (json['engine_size'] as num).toDouble()
        : null;

    engineBlock = json['engine_block'];
    doors = json['doors'];
    cylinders = json['cylinders'];
    madeIn = json['made_in'];
    overallHeight = json['overall_height'];
    overallLength = json['overall_length'];
    overallWidth = json['overall_width'];
    stdSeating = json['std_seating'];
    highwayMpg = json['highway_mpg'];
    cityMpg = json['city_mpg'];
    powertrainType = json['powertrain_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['make'] = this.make;
    data['model'] = this.model;
    data['trim'] = this.trim;
    data['version'] = this.version;
    data['body_type'] = this.bodyType;
    data['vehicle_type'] = this.vehicleType;
    data['transmission'] = this.transmission;
    data['drivetrain'] = this.drivetrain;
    data['fuel_type'] = this.fuelType;
    data['engine'] = this.engine;
    data['engine_size'] = this.engineSize;
    data['engine_block'] = this.engineBlock;
    data['doors'] = this.doors;
    data['cylinders'] = this.cylinders;
    data['made_in'] = this.madeIn;
    data['overall_height'] = this.overallHeight;
    data['overall_length'] = this.overallLength;
    data['overall_width'] = this.overallWidth;
    data['std_seating'] = this.stdSeating;
    data['highway_mpg'] = this.highwayMpg;
    data['city_mpg'] = this.cityMpg;
    data['powertrain_type'] = this.powertrainType;
    return data;
  }
}