import 'package:flutter/material.dart';
import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
