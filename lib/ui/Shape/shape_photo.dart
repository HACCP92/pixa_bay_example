import 'package:flutter/material.dart';
import 'package:pixa_bay/model/pixabay_dto.dart';
import 'package:pixa_bay/ui/detail/detail_screen.dart';

class ShapePhoto extends StatefulWidget {
  final List<PixabayDto> photos;

  const ShapePhoto({required this.photos});

  @override
  _ShapePhotoState createState() => _ShapePhotoState();
}

class _ShapePhotoState extends State<ShapePhoto> {
  PixabayDto? selectedPhoto;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10.0),
      itemCount: widget.photos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final photo = widget.photos[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(photo: photo)),
            );
          },
          child: Hero(
            tag: photo.id,
            child: Container(
              width: 166,
              height: 166,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(photo.webformatURL),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
