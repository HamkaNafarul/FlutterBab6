class Item {
  int _id;
  String _name;
  int _price;
  int _stock;
  String _code;

  int get id => _id;
  String get name => this._name;
  int get price => this._price;
  int get stock => this._stock;
  String get code => this._code;

  set name(String value) => this._name = value;
  set price(value) => this._price = value;
  set stock(value) => this._stock = value;
  set code(value) => this._code = value;

// konstruktor versi 1
  Item(this._name, this._price, this._stock, this._code);
// konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._stock = map['stock'];
    this._code = map['code'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    map['stock'] = stock;
    map['code'] = code;
    return map;
  }
}