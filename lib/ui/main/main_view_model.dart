import 'package:flutter/foundation.dart';
import 'package:pixa_bay/api/pixabay_api.dart';
import 'package:pixa_bay/model/pixabay_dto.dart';

class MainViewModel extends ChangeNotifier {
  List<PixabayDto> _photos = [];
  List<PixabayDto> get photos => _photos;

  Future<void> searchPhotos(String query) async {
    _photos = await fetchPhotos(query);
    notifyListeners();
  }
}
