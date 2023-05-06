import 'package:http/http.dart' as http;
import 'package:test_projectalya/model/siswa.dart';

class siswaService {
  static final String _baseUrl = 'https://hiringmobile.qtera.co.id/students';

  Future getSiswa() async {
    Uri urlApi = Uri.parse(_baseUrl);

    final response = await http.get(urlApi);

    if (response.statusCode == 200) {
      //datumFromJson(response.body.toString());
      studentFromJson(response.body.toString());
    } else {
      throw Exception('Gagal Mendapatkan Data');
    }
  }
}
