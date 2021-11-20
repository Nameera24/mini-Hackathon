import 'package:flutter/material.dart';
import 'package:flutter_application_10/HomeScreen.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 40,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 40,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search By Name Or Address",
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              )),
        ),
      ),
    );
  }
}
