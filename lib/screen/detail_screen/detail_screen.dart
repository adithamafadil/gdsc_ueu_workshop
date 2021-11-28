import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/model/makeup/makeup_model.dart';
import 'package:gdsc_ueu_workshop/widget/size_container_widget.dart';

class DetailScreen extends StatelessWidget {
  final MakeupModel makeupModel;
  const DetailScreen({Key? key, required this.makeupModel}) : super(key: key);

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
              makeupModel.imageLink,
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
                    children: [
                      Text(
                        makeupModel.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '${makeupModel.priceSign} ${makeupModel.price}',
                        style: const TextStyle(
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
                children: [
                  const Text('50 Terjual'),
                  const SizedBox(width: 8),
                  Text('⭐⭐⭐⭐⭐ ${makeupModel.rating ?? 0}'),
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
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      itemCount: makeupModel.productColors.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (makeupModel.productColors.isEmpty) {
                          return const SizedBox.shrink();
                        } else {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const CircleAvatar(
                                    backgroundColor: Colors.green),
                                Text(
                                  makeupModel.productColors[index].colourName ??
                                      'None',
                                  style: const TextStyle(fontSize: 8),
                                )
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(makeupModel.description),
            ),
          ],
        ),
      ),
    );
  }
}
