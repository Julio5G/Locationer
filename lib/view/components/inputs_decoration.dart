import 'package:flutter/material.dart';

InputDecoration customInputDecoration() {
  return InputDecoration(
    labelStyle: const TextStyle(fontSize: 18),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    filled: true,
    fillColor: Colors.white,
  );
}