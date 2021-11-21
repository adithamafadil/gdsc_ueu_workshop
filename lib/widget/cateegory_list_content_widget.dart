import 'package:flutter/material.dart';

class CategoryListContentWidget extends StatelessWidget {
  final String title;
  const CategoryListContentWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://cf.shopee.co.id/file/845f1ddb79ffd40de044ab7d815d870a'),
          ),
          const SizedBox(height: 8),
          Text(title)
        ],
      ),
    );
  }
}
