import 'package:demo/constants/colors.dart';
import 'package:demo/models/item.dart';
import 'package:flutter/material.dart';

class ElementFormat extends StatelessWidget {
  final Item myItem;
  final onMyItemChange;
  const ElementFormat(
      {super.key, required this.myItem, required this.onMyItemChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () {
          onMyItemChange(myItem);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: secondaryColor,
        leading: Icon(
          myItem.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: primaryColor,
        ),
        title: Text(
          myItem.texte,
          style: TextStyle(
            fontSize: 16,
            decoration: myItem.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          width: 40,
          height: 40,
          child: IconButton(
            icon: const Icon(
              Icons.delete,
              color: dangerColor,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
