import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/CartModel.dart';
import 'package:provider_app/CartPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(top: 10),
              color: Colors.green[100],
              child: Center(
                child: Consumer<MyCart>(
                  builder: (context, myCart, child) => Text(
                    myCart.cartList.length.toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              margin: EdgeInsets.only(bottom: 20),
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage()));
                          },
                          child: Container(
                            height: 150,
                            width: 200,
                            margin: EdgeInsets.only(right: 10, top: 10),
                            color: Colors.green[100],
                          ),
                        ),
                        Text(
                          'Product Name',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Consumer<MyCart>(
                          builder: (context, myCart, child) => FlatButton(
                            onPressed: () {
                              myCart.addToCart(index);
                            },
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            color: Colors.green[100],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
