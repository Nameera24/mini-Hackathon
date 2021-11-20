import 'package:flutter/material.dart';
import 'package:flutter_application_10/about.dart';
import 'package:flutter_application_10/cart.dart';
import 'package:flutter_application_10/fav.dart';
import 'package:flutter_application_10/home.dart';
import 'package:flutter_application_10/profile.dart';
import 'package:flutter_application_10/search.dart';

var product = [
  "assets/shirt.jpeg",
  "assets/jeans.jpeg",
  "assets/shirt2.jpg",
  "assets/shoe.jpeg",
  "assets/blackshoe.jpg"
];
var left = [
  "4 piece left",
  "5 piece left",
  "10 piece left",
  "8 piece left",
  "15 piece left"
];
var product1 = [
  "assets/blueshirt.jpg",
  "assets/shoe2.jpg",
  "assets/pant.jpg",
  "assets/checkshirt.jpg",
  "assets/hat.jpg",
  "assets/sneakers.jpg"
];
var detail = ["Black T-Shirt", "Blue Jeans", "Shirt", "Shoes", "Black Shoes"];
var detail1 = [
  "Blue Shirt",
  "Blue shoes",
  "Pants",
  "CheckShirt",
  "Hat",
  "Sneakers"
];
var price = ["50\$", "150\$", "100\$", "90\$", "250\$", "200\$", "60\$"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white)),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 40,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text(
                "Nameera Rashid",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              accountEmail: Text(
                "Nameerarashid98@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/profile.jpg"))),
          ListTile(
              title: Text(
                "Cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange),
              ),
              trailing: Icon(
                Icons.shopping_cart,
                color: Colors.orange,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => cart()));
              }),
          ListTile(
              title: Text(
                "Favorite",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange),
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.orange,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => fav()));
              }),
          ListTile(
              title: Text(
                "About",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange),
              ),
              trailing: Icon(
                Icons.info,
                color: Colors.orange,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => about()));
              }),
          ListTile(
              title: Text(
                "Logout",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange),
              ),
              trailing: Icon(
                Icons.logout,
                color: Colors.orange,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              })
        ],
      )),
      body: Column(
        children: [
          Container(
              child: SizedBox(
            height: 120,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return lst1(product[index], detail[index], left[index]);
                }),
          )),
          Expanded(
            child: Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: product1.length,
                    itemBuilder: (context, index) {
                      return lst2(
                          product1[index], detail1[index], price[index]);
                    })),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false, // <-- AND HERE
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                icon: Icon(Icons.home, color: Color(0xFFde5a35)),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => search()));
                },
                icon: Icon(Icons.search, color: Color(0xFFde5a35))),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => profile()));
              },
              icon: Icon(Icons.person, color: Color(0xFFde5a35)),
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}

Widget lst1(String prd, String dtl, String lt) {
  return Card(
    elevation: 20,
    margin: EdgeInsets.all(5),
    child: Container(
      width: 250,
      padding: EdgeInsets.all(15),
      child: ListTile(
        leading: Image(
          image: AssetImage(prd),
        ),
        title: Text(dtl,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        subtitle: Text(lt, style: TextStyle(color: Colors.redAccent)),
      ),
    ),
  );
}

Widget lst2(String prd, String dtl, String prz) {
  return InkWell(
    onTap: () {},
    child: Card(
      elevation: 20,
      margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 5),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 350,
        width: 300,
        child: Stack(
          children: [
            Positioned(
              left: 3,
              top: 3,
              child: IconButton(
                icon: Icon(Icons.favorite, color: Colors.deepOrangeAccent),
                tooltip: 'Increase volume by 10',
                onPressed: () {},
              ),
            ),
            Positioned(
              right: 4,
              top: 4,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("30% off", style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.red))))),
            ),
            Positioned(
                bottom: 30,
                right: 0,
                child: Icon(Icons.shopping_cart_outlined)),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 170,
                    height: 170,
                    child: Image(image: AssetImage(prd))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dtl,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(prz, style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    ),
  );
}
