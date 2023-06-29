import 'package:flutter/material.dart';
import 'package:pixa_bay/model/pixabay_dto.dart';

class DetailScreen extends StatelessWidget {
  final PixabayDto photo;

  const DetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('클릭된사진입니다'),
      ),
      body: Center(
        child: Hero(
          tag: photo.id,
          child: Image.network(
            photo.largeImageURL,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
