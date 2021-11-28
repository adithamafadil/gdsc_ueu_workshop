import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/model/makeup/makeup_model.dart';
import 'package:gdsc_ueu_workshop/screen/detail_screen/detail_screen.dart';

class CatalogueCard extends StatelessWidget {
  final MakeupModel makeupModel;
  const CatalogueCard({Key? key, required this.makeupModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(makeupModel: makeupModel),
          )),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                makeupModel.imageLink,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                makeupModel.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${makeupModel.priceSign} ${makeupModel.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('50 Terjual', style: TextStyle(fontSize: 10)),
                  Text('⭐ ${makeupModel.rating ?? 0}',
                      style: const TextStyle(fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
