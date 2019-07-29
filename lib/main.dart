import 'package:flutter/material.dart';
import 'package:ecommerce3/screens/home.dart';
import 'package:ecommerce3/screens/login1.dart';
void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomePage(),
        home: Login(),
      )
  );
}

/*

class HomePage extends StatefulWidget {

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  Widget build(BuildContext context) {

    Widget image_Carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('imagess/products/g1.jpg'),
          AssetImage('imagess/products/g2.jpg'),
          AssetImage('imagess/products/g3.jpeg'),
          AssetImage('imagess/products/g4.jpeg'),
        ],
//        autoplay: false,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn, //sliding images
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
        dotIncreasedColor: Colors.blue,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton (icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton (icon: Icon(
              Icons.shopping_cart,
              color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//header part of drawer
            new UserAccountsDrawerHeader(
              accountName: Text('Hitsa'),
              accountEmail: Text('sshitendra010@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.red
              ),
            ),  //User Account Drawer Header

            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),                           //change made here
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),

      body: new Column(
        children: <Widget>[
          //image_carousel begins hee
//          image_Carousel,

          //padding widget
      new Padding(padding: const EdgeInsets.all(4.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: new Text('Categories'),
        ),
      ),//padding

          //horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
            alignment: Alignment.centerLeft,
            child: new Text('Recent Products'),
            ),
          ),//padding

          //grid view
          Flexible(child: Products(),
          ),
        ],
      ),
    );
  }
}
*/