import 'package:flutter/material.dart';
import 'package:ecommerce2/screens/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Cereal",
      "picture": "imagess/products/g1.jpg",
      "old_price": 120,
      "price": 85,
    },

    {
      "name": "Coke",
      "picture": "imagess/products/g2.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Wine",
      "picture": "imagess/products/g3.jpeg",
      "old_price": 200,
      "price": 150,
    },
    {
      "name": "Oats",
      "picture": "imagess/products/g4.jpeg",
      "old_price": 10,
      "price": 5,
    },
    {
      "name": "Moong dal",
      "picture": "imagess/products/g1.jpg",
      "old_price": 12,
      "price": 8,
    },
    {
      "name": "Badam",
      "picture": "imagess/products/g2.jpg",
      "old_price": 130,
      "price": 95,
    },
    {
      "name": "Cold Drink",
      "picture": "imagess/products/g3.jpeg",
      "old_price": 15,
      "price": 9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              //onTap: () {},
              onTap: () => Navigator.of(context).push(
                  new MaterialPageRoute(  //here we are giving the details of product.
                      builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize:16.0),),
                        ),
                        new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                      ],
                    )
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
          ),
      ),
    );
  }
}