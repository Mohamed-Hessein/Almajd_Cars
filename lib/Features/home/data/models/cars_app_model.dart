class carapp {
  Collection? collection;
  List<Data>? data;

  carapp({this.collection, this.data});

  carapp.fromJson(Map<String, dynamic> json) {
    collection = json['collection'] != null
        ? new Collection.fromJson(json['collection'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.collection != null) {
      data['collection'] = this.collection!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Collection {
  String? url;
  int? count;
  int? pages;
  int? total;
  String? next;
  String? prev;
  String? first;
  String? last;


  Collection(
      {this.url,
        this.count,
        this.pages,
        this.total,
        this.next,
        this.prev,
        this.first,
        this.last});

  Collection.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    count = json['count'];
    pages = json['pages'];
    total = json['total'];
    next = json['next'];
    prev = json['prev'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['count'] = this.count;
    data['pages'] = this.pages;
    data['total'] = this.total;
    data['next'] = this.next;
    data['prev'] = this.prev;
    data['first'] = this.first;
    data['last'] = this.last;
    return data;
  }
}

class Data {
  int? id;
  int? makeId;
  int? modelId;
  int? submodelId;
  int? year;
  String? make;
  String? model;
  dynamic? series;
  String? submodel;
  String? trim;
  String? description;
  int? msrp;
  int? invoice;
  String? created;
  String? modified;
  String get imageUrl => "https://loremflickr.com/800/600/car,$make?random=$id";
  Data(
      {this.id,
        this.makeId,
        this.modelId,
        this.submodelId,
        this.year,
        this.make,
        this.model,
        this.series,
        this.submodel,
        this.trim,
        this.description,
        this.msrp,
        this.invoice,
        this.created,
        this.modified});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    makeId = json['make_id'];
    modelId = json['model_id'];
    submodelId = json['submodel_id'];
    year = json['year'];
    make = json['make'];
    model = json['model'];
    series = json['series'];
    submodel = json['submodel'];
    trim = json['trim'];
    description = json['description'];
    msrp = json['msrp'];
    invoice = json['invoice'];
    created = json['created'];
    modified = json['modified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['make_id'] = this.makeId;
    data['model_id'] = this.modelId;
    data['submodel_id'] = this.submodelId;
    data['year'] = this.year;
    data['make'] = this.make;
    data['model'] = this.model;
    data['series'] = this.series;
    data['submodel'] = this.submodel;
    data['trim'] = this.trim;
    data['description'] = this.description;
    data['msrp'] = this.msrp;
    data['invoice'] = this.invoice;
    data['created'] = this.created;
    data['modified'] = this.modified;
    return data;
  }
}