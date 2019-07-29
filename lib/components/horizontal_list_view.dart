import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'imagess\categories\cereal.jpg',
            image_caption: 'Moong Dal',
          ),

          Category(
            image_location: 'imagess/categories/baby.jpg',
            image_caption: 'Baby',
          ),

          Category(
            image_location: 'imagess/categories/bakery.jpeg',
            image_caption: 'Bakery',
          ),

          Category(
            image_location: 'imagess/categories/cookies.jpg',
            image_caption: 'Biscuit',
          ),

          Category(
            image_location: 'imagess/categories/spices.jpeg',
            image_caption: 'Masale',
          ),

          Category(
            image_location: 'imagess/categories/wine.jpg',
            image_caption: 'Bear',
          ),

          Category(
            image_location: 'imagess/categories/beverages.png',
            image_caption: 'Beverages',
          ),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(
  {
    this.image_caption,
    this.image_location
  }
      );

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(image_location, width: 100.0, height: 80.0),
        //subtitle: Text(image_caption,),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption, style: new TextStyle(fontSize: 8.0),),
        ),
      ),
    ),
      ),
    );
  }
}