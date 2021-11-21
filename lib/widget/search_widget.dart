import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 3,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Row(
              children: const [
                Icon(Icons.zoom_in_outlined),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration:
                        InputDecoration(hintText: 'Belanja hadial natal, yuk!'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: const Icon(Icons.qr_code_scanner_outlined),
        ),
      ],
    );
  }
}
