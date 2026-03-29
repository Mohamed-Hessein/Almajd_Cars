


class CarsPrice {
  String? retail;
  String? tradeIn;
  String? roughTradeIn;
  String? averageTradeIn;
  String? loanValue;
  int? uid;
  String? msrp;
  List<TradeInValues>? tradeInValues;
  AuctionValues? auctionValues;

  CarsPrice(
      {this.retail,
        this.tradeIn,
        this.roughTradeIn,
        this.averageTradeIn,
        this.loanValue,
        this.uid,
        this.msrp,
        this.tradeInValues,
        this.auctionValues});

  CarsPrice.fromJson(Map<String, dynamic> json) {
    retail = json['retail'];
    tradeIn = json['tradeIn'];
    roughTradeIn = json['roughTradeIn'];
    averageTradeIn = json['averageTradeIn'];
    loanValue = json['loanValue'];
    uid = json['uid'];
    msrp = json['msrp'];
    if (json['tradeInValues'] != null) {
      tradeInValues = <TradeInValues>[];
      json['tradeInValues'].forEach((v) {
        tradeInValues!.add(new TradeInValues.fromJson(v));
      });
    }
    auctionValues = json['auctionValues'] != null
        ? new AuctionValues.fromJson(json['auctionValues'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['retail'] = this.retail;
    data['tradeIn'] = this.tradeIn;
    data['roughTradeIn'] = this.roughTradeIn;
    data['averageTradeIn'] = this.averageTradeIn;
    data['loanValue'] = this.loanValue;
    data['uid'] = this.uid;
    data['msrp'] = this.msrp;
    if (this.tradeInValues != null) {
      data['tradeInValues'] =
          this.tradeInValues!.map((v) => v.toJson()).toList();
    }
    if (this.auctionValues != null) {
      data['auctionValues'] = this.auctionValues!.toJson();
    }
    return data;
  }
}

class TradeInValues {
  String? date;
  String? value;

  TradeInValues({this.date, this.value});

  TradeInValues.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['value'] = this.value;
    return data;
  }
}

class AuctionValues {
  int? lowAuctionValue;
  int? averageAuctionValue;
  int? highAuctionValue;
  String? dateRange;

  AuctionValues(
      {this.lowAuctionValue,
        this.averageAuctionValue,
        this.highAuctionValue,
        this.dateRange});

  AuctionValues.fromJson(Map<String, dynamic> json) {
    lowAuctionValue = json['lowAuctionValue'];
    averageAuctionValue = json['averageAuctionValue'];
    highAuctionValue = json['highAuctionValue'];
    dateRange = json['dateRange'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lowAuctionValue'] = this.lowAuctionValue;
    data['averageAuctionValue'] = this.averageAuctionValue;
    data['highAuctionValue'] = this.highAuctionValue;
    data['dateRange'] = this.dateRange;
    return data;
  }
}
class CarsPrice2 {
  String? retail;
  String? tradeIn;
  String? roughTradeIn;
  String? averageTradeIn;
  String? loanValue;
  int? uid;
  String? msrp;
  List<TradeInValues>? tradeInValues;
  AuctionValues? auctionValues;

  CarsPrice2(
      {this.retail,
        this.tradeIn,
        this.roughTradeIn,
        this.averageTradeIn,
        this.loanValue,
        this.uid,
        this.msrp,
        this.tradeInValues,
        this.auctionValues});

  CarsPrice2.fromJson(Map<String, dynamic> json) {
    retail = json['retail'];
    tradeIn = json['tradeIn'];
    roughTradeIn = json['roughTradeIn'];
    averageTradeIn = json['averageTradeIn'];
    loanValue = json['loanValue'];
    uid = json['uid'];
    msrp = json['msrp'];
    if (json['tradeInValues'] != null) {
      tradeInValues = <TradeInValues>[];
      json['tradeInValues'].forEach((v) {
        tradeInValues!.add(new TradeInValues.fromJson(v));
      });
    }
    auctionValues = json['auctionValues'] != null
        ? new AuctionValues.fromJson(json['auctionValues'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['retail'] = this.retail;
    data['tradeIn'] = this.tradeIn;
    data['roughTradeIn'] = this.roughTradeIn;
    data['averageTradeIn'] = this.averageTradeIn;
    data['loanValue'] = this.loanValue;
    data['uid'] = this.uid;
    data['msrp'] = this.msrp;
    if (this.tradeInValues != null) {
      data['tradeInValues'] =
          this.tradeInValues!.map((v) => v.toJson()).toList();
    }
    if (this.auctionValues != null) {
      data['auctionValues'] = this.auctionValues!.toJson();
    }
    return data;
  }
}

class TradeInValues2 {
  String? date;
  String? value;

  TradeInValues2({this.date, this.value});

  TradeInValues2.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['value'] = this.value;
    return data;
  }
}

class AuctionValues2 {
  int? lowAuctionValue;
  int? averageAuctionValue;
  int? highAuctionValue;
  String? dateRange;

  AuctionValues2(
      {this.lowAuctionValue,
        this.averageAuctionValue,
        this.highAuctionValue,
        this.dateRange});

  AuctionValues2.fromJson(Map<String, dynamic> json) {
    lowAuctionValue = json['lowAuctionValue'];
    averageAuctionValue = json['averageAuctionValue'];
    highAuctionValue = json['highAuctionValue'];
    dateRange = json['dateRange'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lowAuctionValue'] = this.lowAuctionValue;
    data['averageAuctionValue'] = this.averageAuctionValue;
    data['highAuctionValue'] = this.highAuctionValue;
    data['dateRange'] = this.dateRange;
    return data;
  }
}

