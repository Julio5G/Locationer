// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ContainerComponent extends StatefulWidget {
  final Widget widgetInContainer;
  final VoidCallback onTapfunction;

  const ContainerComponent({
    required this.widgetInContainer,
    required this.onTapfunction,
  });

  @override
  State<ContainerComponent> createState() => _ContainerComponentState();
}

class _ContainerComponentState extends State<ContainerComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapfunction,
      child: Container(
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: widget.widgetInContainer
        ),
      ),
    );
  }
}