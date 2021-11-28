import 'dart:convert';

import 'package:gdsc_ueu_workshop/model/makeup/makeup_model.dart';
import 'package:http/http.dart' as http;

class MakeupRemoteDataSource {
  Future<List<MakeupModel>> getMakeupRemoteData() async {
    http.Client client = http.Client();
    const String url =
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=nyx';

    try {
      var response = await client.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return List<MakeupModel>.from(
            data.map((makeUp) => MakeupModel.fromJson(makeUp)));
      } else {
        return [];
      }
    } catch (e, stack) {
      print('Error $e on $stack');
      rethrow;
    }
  }
}
