import 'package:demo/constants/colors.dart';
import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: primaryColor,
    title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Icon(Icons.menu, color: secondaryColor, size: 30),
      SizedBox(
        width: 40,
        height: 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/images/burger.jpg"),
        ),
      )
    ]),
  );
}
