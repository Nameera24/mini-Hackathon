import 'package:flutter/material.dart';
import 'package:flutter_application_10/item.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Items",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 230.0,
            child: ListView.builder(
                itemCount: sbook.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var book = sbook[index];
                  return Container(
                    width: 120.0,
                    height: 230.0,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(right: 16.0),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 120.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(book.urlimage),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          book.name,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "${book.write}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
          Padding(padding: EdgeInsets.all(15)),
          Container(
            width: double.infinity,
            height: 230.0,
            child: ListView.builder(
                itemCount: sbook1.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var book = sbook1[index];
                  return Container(
                    width: 120.0,
                    height: 230.0,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 16.0),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 120.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(book.urlimage),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          book.name,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "${book.write}",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
