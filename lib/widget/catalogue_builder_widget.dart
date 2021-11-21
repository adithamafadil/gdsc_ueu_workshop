import 'package:flutter/material.dart';

import 'catalogue_card.dart';

class CatalogueeBuilderWidget extends StatelessWidget {
  const CatalogueeBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemCount: 15,
      itemBuilder: (context, index) {
        return const CatalogueCard();
      },
    );
  }
}
