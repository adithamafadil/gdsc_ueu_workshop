import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/screen/detail_screen/detail_screen.dart';

class CatalogueCard extends StatelessWidget {
  const CatalogueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailScreen(),
          )),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                'https://cf.shopee.co.id/file/845f1ddb79ffd40de044ab7d815d870a',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Produk',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Rp50,000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('50 Terjual', style: TextStyle(fontSize: 10)),
                  Text('⭐ 4.5', style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
