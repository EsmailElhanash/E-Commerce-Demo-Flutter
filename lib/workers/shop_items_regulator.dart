import 'dart:convert';

import 'package:ecommece/objects/shop_component.dart';
import 'package:ecommece/screens/shop_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'shop_component';

class ShopItemsRegulator {
  ShopView shopView;
  ShopItemsRegulator(this.shopView, this.category);
  List<ShopItem> _shopItems = [];
  Category category;

  void requestItems() {
    //get items from server or anywhere
    loadItems();
  }

  void _prepareItems(String items) {
    List<ShopItem> items = [];
    List<Container> itemsContainers = _getShopItemsContainer(items);
    _sendItems(itemsContainers);
  }

  void addShopItems(List<ShopItem> items) {
    _shopItems.addAll(items);
  }

  List<Container> _getShopItemsContainer(List<ShopItem> items) {
    List<Container> itemsContainers = List(items.length);
    for (ShopItem item in items) {
      itemsContainers.add(Container());
    }

    return itemsContainers;
  }

  void _sendItems(List<Container> itemsContainers) {
    //get items from server or anywhere
    shopView.addShopViewItems(itemsContainers);
  }

  Future<String> loadItems() async {
    var s = await rootBundle.loadString('lib/json/item.json');
    List<Map<String, dynamic>> items = jsonDecode(s);
    print(s); //for debug
    return s;
  }

  List<ShopItem> getShopItems(List<Map<String, dynamic>> items) {
    List<ShopItem> shopItems = [];
  }
}
