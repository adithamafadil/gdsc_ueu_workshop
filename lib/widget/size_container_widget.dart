import 'package:flutter/material.dart';

class SizeContainerWidget extends StatelessWidget {
  final String fashionSize;
  const SizeContainerWidget({
    Key? key,
    required this.fashionSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey,
        ),
        child: Center(child: Text(fashionSize)),
      ),
    );
  }
}
