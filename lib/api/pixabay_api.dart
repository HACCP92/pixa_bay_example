import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pixa_bay/model/pixabay_dto.dart';

Future<List<PixabayDto>> fetchPhotos(String query) async {
  final url =
      'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo&pretty=true';
  final http.Response response = await http.get(Uri.parse(url));

  final Map<String, dynamic> jsonResponse = json.decode(response.body);
  final List<dynamic> hits = jsonResponse['hits'];
  return hits.map((item) => PixabayDto.fromJson(item)).toList();
}
