import 'package:flutter/foundation.dart';
import 'package:pixa_bay_example/api/pixabay_api.dart';
import 'package:pixa_bay_example/model/pixabay_dto.dart';

class MainViewModel extends ChangeNotifier {
  List<Photo> _photos = [];
  List<Photo> get photos => _photos;

  Future<void> searchPhotos(String query) async {
    _photos = await fetchPhotos(query);
    notifyListeners();
  }
}
