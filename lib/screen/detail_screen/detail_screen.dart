import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/widget/size_container_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.shopping_cart),
              SizedBox(width: 8),
              Text('Add to Cart'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://cf.shopee.co.id/file/845f1ddb79ffd40de044ab7d815d870a',
              height: 320,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Nama Produk',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Rp50,000',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.favorite_border,
                    size: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Text('50 Terjual'),
                  SizedBox(width: 8),
                  Text('⭐⭐⭐⭐⭐ 5'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Choose your sizee'),
                  Row(
                    children: const [
                      SizeContainerWidget(fashionSize: 'S'),
                      SizeContainerWidget(fashionSize: 'M'),
                      SizeContainerWidget(fashionSize: 'L'),
                      SizeContainerWidget(fashionSize: 'XL'),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Available Color'),
                  Row(
                    children: const [
                      CircleAvatar(backgroundColor: Colors.green),
                      SizedBox(width: 8),
                      CircleAvatar(backgroundColor: Colors.yellow)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting '
                'industry. Lorem Ipsum has been the industry\'s standard dummy text'
                ' ever since the 1500s, when an unknown printer took a galley of '
                'type and scrambled it to make a type specimen book. It has '
                'survived not only five centuries, but also the leap into electronic '
                'typesetting, remaining essentially unchanged. It was popularised '
                'in the 1960s with the release of Letraset sheets containing Lorem '
                'Ipsum passages, and more recently with desktop publishing software '
                'like Aldus PageMaker including versions of Lorem Ipsum.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
