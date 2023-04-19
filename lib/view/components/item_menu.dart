import 'package:flutter/material.dart';

class ItemMenu extends StatefulWidget {
  final double sizeOfBox;
  final Widget child;
  final Function() onPressed;

  const ItemMenu({
    super.key, 
    required this.sizeOfBox,
    required this.child,
    required this.onPressed,
  });

  @override
  State<ItemMenu> createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.sizeOfBox,
        height: widget.sizeOfBox,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: widget.child
        ),
      ),
    );
  }
}