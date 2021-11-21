import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
            image: NetworkImage(
                'https://cf.shopee.co.id/file/845f1ddb79ffd40de044ab7d815d870a'),
            fit: BoxFit.cover),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 3,
            offset: Offset(0, 5),
          )
        ],
      ),
    );
  }
}
