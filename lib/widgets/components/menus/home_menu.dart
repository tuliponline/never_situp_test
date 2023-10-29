import 'package:flutter/material.dart';

Row homeMenu({required onPresse, required String text}) {
  return Row(
    children: [ElevatedButton(onPressed: onPresse, child: Text(text))],
  );
}
