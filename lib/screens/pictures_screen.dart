import 'package:flutter/material.dart';

class PicturesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(bottom: 20),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.network(
                  'https://picsum.photos/350?image=' + (index * 10).toString(),
                  fit: BoxFit.fitWidth),
            ),
          );
        });
  }
}
