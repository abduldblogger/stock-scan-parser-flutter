import 'dart:convert';

/// id : 1
/// name : "Top gainers"
/// tag : "Intraday Bullish"
/// color : "green"
/// criteria : [{"type":"plain_text","text":"Sort - %price change in descending order"}]

StockScanRow StockScanRowFromJson(String str) =>
    StockScanRow.fromJson(json.decode(str));

String StockScanRowToJson(StockScanRow data) =>
    json.encode(data.toJson());

class StockScanRow {
  StockScanRow({
    int? id,
    String? name,
    String? tag,
    String? color,
    List<Criteria>? criteria,
  }) {
    _id = id;
    _name = name;
    _tag = tag;
    _color = color;
    _criteria = criteria;
  }

  StockScanRow.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _tag = json['tag'];
    _color = json['color'];
    if (json['criteria'] != null) {
      _criteria = [];
      json['criteria'].forEach((v) {
        _criteria?.add(Criteria.fromJson(v));
      });
    }
  }

  int? _id;
  String? _name;
  String? _tag;
  String? _color;
  List<Criteria>? _criteria;

  int? get id => _id;

  String? get name => _name;

  String? get tag => _tag;

  String? get color => _color;

  List<Criteria>? get criteria => _criteria;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['tag'] = _tag;
    map['color'] = _color;
    if (_criteria != null) {
      map['criteria'] = _criteria?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// type : "plain_text"
/// text : "Sort - %price change in descending order"

Criteria criteriaFromJson(String str) => Criteria.fromJson(json.decode(str));

String criteriaToJson(Criteria data) => json.encode(data.toJson());

class Criteria {
  Criteria({
    String? type,
    String? text,
  }) {
    _type = type;
    _text = text;
  }

  Criteria.fromJson(dynamic json) {
    _type = json['type'];
    _text = json['text'];
  }

  String? _type;
  String? _text;

  String? get type => _type;

  String? get text => _text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['text'] = _text;
    return map;
  }
}
