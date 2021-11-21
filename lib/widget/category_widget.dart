import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/widget/cateegory_list_content_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              'See all',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryListContentWidget(title: 'Category ${index + 1}');
            },
          ),
        ),
      ],
    );
  }
}
