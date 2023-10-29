import 'package:flutter/material.dart';

ElevatedButton submit_button({required onPresser, required String text}) =>
    ElevatedButton(onPressed: onPresser, child: Text(text));
