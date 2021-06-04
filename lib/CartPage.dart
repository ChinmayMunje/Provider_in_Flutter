import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/CartModel.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Consumer<MyCart>(
        builder: (context, myCart, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(myCart.cartList.length.toString())),
            FlatButton(
                onPressed: () {
                  myCart.removeFromCart();
                },
                color: Colors.green[100],
                child: Text(
                  'Delete Item',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
