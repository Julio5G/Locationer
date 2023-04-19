import 'package:flutter/material.dart';

class ScaffoldComponent extends StatefulWidget {
  final Color backgroundColor;
  final Widget body;
  final Widget title;

  const ScaffoldComponent({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.body
  });

  @override
  State<ScaffoldComponent> createState() => _ScaffoldComponentState();
}

class _ScaffoldComponentState extends State<ScaffoldComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
        centerTitle: true,
        toolbarHeight: 80,
        leading: TextButton(
          child:
            const Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(51, 51, 51, 1),
              size: 60,
            ),
          onPressed: () {
            Navigator.pop(context);
          },
        ), 
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        backgroundColor: const Color.fromRGBO(147, 25, 20, 1),
      ),
      backgroundColor: widget.backgroundColor,
      body: widget.body
    );
  }
}