import 'package:flutter/material.dart';
import 'package:ecommerce3/components/cart_products.dart';


class Cart extends StatefulWidget {
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
          actions: <Widget> [
            new IconButton (
                icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white),
                onPressed: () {}
            ),
          ]
      ),//AppBar

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total: "),
              subtitle: new Text("\$${220}"),
              ),
            ),
            Expanded(
              child: new MaterialButton(onPressed: () {},
              child: new Text("Check out", style: TextStyle(color: Colors.white),),
              color: Colors.red,),

            )
          ],
        ),
      ),
    );
  }
}