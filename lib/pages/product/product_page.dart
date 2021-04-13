import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text("Bonjour Produit"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bonjour je suis le produit :)'),
                ],
                  )
              )
          ),
        )
    );
  }
}
