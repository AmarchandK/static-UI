import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const h10 = SizedBox(height: 10);
const h20 = SizedBox(height: 20);
const h30 = SizedBox(height: 30);
const Color wColor = Colors.white;
const Color bColor = Colors.black;
const Color greyColor = Colors.grey;

Text contents({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 20, color: Colors.grey[350]),
  );
}

Widget headingText({required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 20, color: wColor, fontWeight: FontWeight.bold),
    ),
  );
}
