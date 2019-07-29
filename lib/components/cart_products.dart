import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Cereal",
      "picture": "imagess/products/g1.jpg",
      "price": 85,
      "brand": "Basmati",
      "quantity": "1 Kg",
    },

    {
      "name": "Coke",
      "picture": "imagess/products/g2.jpg",
      "price": 50,
      "brand": "Pepsi",
      "quantity": "1 litre",
    },
  ];

  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder:(context,index) {
         return new Single_cart_product(
           cart_prod_name: Products_on_the_cart[index]["name"],
           cart_prod_brand: Products_on_the_cart[index]["brand"],
           cart_prod_qty: Products_on_the_cart[index]["quantity"],
           cart_prod_picture: Products_on_the_cart[index]["picture"],
           cart_prod_price: Products_on_the_cart[index]["price"],
         );
        },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_qty;
  final cart_prod_brand;

  Single_cart_product(
  {
    this.cart_prod_brand,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty,
}
      );

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //Leading Section
        leading: new Image.asset(cart_prod_picture, width: 100.0, height: 100.0,),
        //Title Section
        title: new Text(cart_prod_name),
        //Subtitle Section
        subtitle: new Column(
          children: <Widget>[
            //row inside the column
            new Row(
              children: <Widget>[
                //this section is for the brand of the product
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Brand:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_brand,style: TextStyle(color: Colors.red),),
                ),

                //This section is for the name of the product
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0,8.0 ),
                  child: new Text("Name:"),
                ),

                new Padding(padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_name,style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
            //This section is for the product price
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$$cart_prod_price", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            new Text("\$$cart_prod_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}