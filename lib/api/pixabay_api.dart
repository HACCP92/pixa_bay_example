import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pixa_bay_example/model/pixabay_dto.dart';

// 강의 듣고 수정 코드
class PixabayApi {
  Future<PixabayDto> getImages(String query) async {
    final url =
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo&pretty=true';
    final http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> jsonString = jsonDecode(response.body);
    return PixabayDto.fromJson(jsonString);
  }
}

// 기존 코드
// Future<List<Photo>> fetchPhotos(String query) async {
//   final url =
//       'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo&pretty=true';
//   final http.Response response = await http.get(Uri.parse(url));
//
//   final Map<String, dynamic> jsonResponse = json.decode(response.body);
//   final List<dynamic> hits = jsonResponse['hits'];
//   return hits.map((item) => Photo.fromJson(item)).toList();
// }
