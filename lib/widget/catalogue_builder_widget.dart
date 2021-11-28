import 'package:flutter/material.dart';
import 'package:gdsc_ueu_workshop/datasource/remote/makeup_remote_datasource.dart';
import 'package:gdsc_ueu_workshop/model/makeup/makeup_model.dart';

import 'catalogue_card.dart';

class CatalogueeBuilderWidget extends StatefulWidget {
  const CatalogueeBuilderWidget({Key? key}) : super(key: key);

  @override
  State<CatalogueeBuilderWidget> createState() =>
      _CatalogueeBuilderWidgetState();
}

class _CatalogueeBuilderWidgetState extends State<CatalogueeBuilderWidget> {
  late MakeupRemoteDataSource _remoteDataSource;

  @override
  void initState() {
    _remoteDataSource = MakeupRemoteDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MakeupModel>>(
        future: _remoteDataSource.getMakeupRemoteData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7),
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                var data = snapshot.data;
                if (data == null) {
                  return const Center(child: Text('Data Kosong'));
                } else {
                  return CatalogueCard(makeupModel: data[index]);
                }
              },
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: Text('Error'));
          }
        });
  }
}
