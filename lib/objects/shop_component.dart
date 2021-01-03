library shop_component;

import 'package:flutter/widgets.dart';

class ShopItem {
  int _id;
  String _name;
  List<Image> _images = [];
  List<ShopCategory> _categories = [];
  double _price;
  String _description;
  String _currency;
}

class ShopCategory {
  int _id;
  String _name;
  Image _image;
}
