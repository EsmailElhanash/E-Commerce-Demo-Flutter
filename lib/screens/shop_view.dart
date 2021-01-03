library shop_view;

import 'package:ecommece/ui/navigation/navigation_drawer.dart';
import 'package:ecommece/workers/shop_items_regulator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ShopWidget extends StatefulWidget {
  final Category category;

  const ShopWidget({Key key, this.category}) : super(key: key);
  @override
  ShopView createState() => ShopView(category);
}

class ShopView extends State<ShopWidget> {
  List<Container> _shopViewItems = [];
  ShopItemsRegulator _regulator;
  Category category;

  ShopView(this.category) {
    _regulator = ShopItemsRegulator(this, category);
  }

  set shopViewItems(List<Container> value) {
    setState(() {
      _shopViewItems.addAll(value);
    });
  }

  void requestItems() {
    _regulator.requestItems();
  }

  void addShopViewItems(List<Container> itemsContainers) {
    _shopViewItems.addAll(itemsContainers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Shop"),
      ),
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: _shopViewItems,
      ),
    );
  }
}
