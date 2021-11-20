import 'package:flutter/material.dart';
import 'package:flutter_application_10/HomeScreen.dart';
import 'package:flutter_application_10/home.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white)),
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,
          ),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
    );
  }
}
