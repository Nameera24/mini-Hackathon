import 'package:flutter/material.dart';
import 'package:flutter_application_10/HomeScreen.dart';
import 'package:flutter_application_10/home.dart';

class fav extends StatefulWidget {
  const fav({Key? key}) : super(key: key);

  @override
  _favState createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite",
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
            Icons.favorite,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
    );
  }
}
