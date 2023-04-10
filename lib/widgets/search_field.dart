import 'package:demo/constants/colors.dart';
import 'package:flutter/material.dart';

Container searchField() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: secondaryColor,
    ),
    child: const TextField(
      decoration: InputDecoration(
          hintText: "Rechercher",
          hintStyle: TextStyle(),
          prefixIcon: Icon(
            Icons.search,
            size: 20,
          ),
          border: InputBorder.none,
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25)),
    ),
  );
}
