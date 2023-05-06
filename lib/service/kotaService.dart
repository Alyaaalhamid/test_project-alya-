import 'package:http/http.dart' as http;
import 'package:test_projectalya/model/kota.dart';

class siswaService {
  static final String _baseUrl = 'https://hiringmobile.qtera.co.id/city';

  Future getSiswa() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      // print(response.body);
      //datumFromJson(response.body.toString());
      studentFromJson(response.body.toString());
    } else {
      throw Exception('Gagal Mendapatkan Data');
    }
  }
}
