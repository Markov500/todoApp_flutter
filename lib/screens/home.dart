import 'package:demo/constants/colors.dart';
import 'package:demo/models/item.dart';
import 'package:demo/widgets/add_item.dart';
import 'package:demo/widgets/element_format.dart';
import 'package:demo/widgets/my_app_bar.dart';
import 'package:demo/widgets/search_field.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Item> myListItem = Item.items;

  void handleItemChange(Item item) {
    setState(() {
      item.isDone = !item.isDone;
    });
  }

  void handleItemDelete(Item item) {
    var i = myListItem.where((element) => element.id == item.id).first;
    setState(() {
      myListItem.remove(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      //The header
      appBar: myAppBar(),
      //The body of the app
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                searchField(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  child: const Text(
                    "Mes éléments",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    for (Item i in myListItem)
                      ElementFormat(
                        myItem: i,
                        onMyItemChange: handleItemChange,
                        onDeleteMyItem: handleItemDelete,
                      ),
                  ],
                )),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: addItem(),
          )
        ],
      ),
    );
  }
}
