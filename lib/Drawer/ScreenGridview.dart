import 'package:flutter/material.dart';

import '../main.dart';

void main() {
  runApp(MyApp());
}

class ScreenGridView extends StatefulWidget {
  const ScreenGridView({Key? key}) : super(key: key);

  @override
  State<ScreenGridView> createState() => _ScreenGridViewState();
}

class _ScreenGridViewState extends State<ScreenGridView> {

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 0,

      mainAxisSpacing: 10,
      children: List.generate(100, (index) {
        return Center(
          child: Card(

            child: Column(
              children: <Widget>[
                Image.network(
              'https://picsum.photos/250?image=$index',

                  height: 200,
                  width: 250,

                ),
                Text(
                  'Image $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
        );
      }),
    );

  }
}