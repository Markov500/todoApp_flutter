import 'package:demo/constants/colors.dart';
import 'package:flutter/material.dart';

Row addItem() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(
            bottom: 20,
            right: 10,
            left: 10,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: primaryColor,
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ]),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Elément à ajouter", border: InputBorder.none),
          ),
        ),
      ),
      Container(
        color: primaryColor,
        margin: const EdgeInsets.only(
          bottom: 20,
          right: 10,
          left: 10,
        ),
        child: IconButton(
          icon: const Icon(
            Icons.add,
            color: secondaryColor,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
