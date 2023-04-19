import 'package:flutter/material.dart';
import 'dart:ui';
import 'button.dart';

void showDialogBox(BuildContext context, String title, String professor, String horario) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: Color.fromRGBO(178, 0, 0, 1),
              width: 3.0
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 24, 
              color: Colors.black
            ),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                professor,
                style: const TextStyle(
                  fontSize: 20, 
                  color: Colors.black
                ),
              ),
              Text(
                horario,
                style: const TextStyle(
                  fontSize: 20, 
                  color: Colors.black
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Button(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: const Text(
                  "Voltar",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                color: const Color.fromRGBO(178, 0, 0, 1),
              ),
            ),
          ],
        ),
      );
    },
  );
}