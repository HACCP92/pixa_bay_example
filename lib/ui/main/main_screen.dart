import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixa_bay/api/pixabay_api.dart';
import 'package:pixa_bay/model/pixabay_dto.dart';
import 'package:pixa_bay/ui/Shape/shape_box.dart';
import 'package:pixa_bay/ui/Shape/shape_photo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<PixabayDto> photos = [];

  Future<void> searchPhotos(String query) async {
    photos = await fetchPhotos(query);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShapeBox(
            onSearch:
                searchPhotos), // Pass the searchPhotos function as a callback
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          ShapePhoto(photos: photos), // Pass the list of photos
        ],
      ),
    );
  }
}
