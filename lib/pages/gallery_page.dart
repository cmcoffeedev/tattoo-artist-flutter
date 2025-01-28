import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Gallery Coming Soon',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}