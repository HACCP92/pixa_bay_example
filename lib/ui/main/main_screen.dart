import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixa_bay_example/api/pixabay_api.dart';
import 'package:pixa_bay_example/model/pixabay_dto.dart';
import 'package:pixa_bay_example/ui/Shape/shape_box.dart';
import 'package:pixa_bay_example/ui/Shape/shape_photo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Photo> photos = []; // Initialize an empty list

  @override
  void initState() {
    super.initState();
    // Add some initial data to the photos list
    photos = [];
  }

  Future<void> searchPhotos(String query) async {
    photos = await fetchPhotos(query);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShapeBox(
          onSearch: searchPhotos,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          ShapePhoto(photos: photos),
        ],
      ),
    );
  }
}
