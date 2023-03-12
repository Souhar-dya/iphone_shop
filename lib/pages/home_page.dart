import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: (CatalogModel.items != null) && (CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: ((context, index) {
                final item = CatalogModel.items[index];
                return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: GridTile(
                      header: Container(
                        padding: const EdgeInsets.all(12),
                        decoration:
                            const BoxDecoration(color: Colors.deepPurple),
                        child: Text(
                          item.name,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      footer: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Text(
                          "\$${item.price.toString()}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      child: Image.network(item.image),
                    ));
              }),
              itemCount: CatalogModel.items.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const MyDrawer(),
    );
  }
}
