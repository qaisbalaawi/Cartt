import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_cart/Screens.dart/CartModel.dart';

class Cart_Screen extends StatefulWidget {
  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);
    double totalPrice = cart.calculateTotalPrice();

    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'products [${cart.count.length}]',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'totalprice \$${totalPrice}',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ));
  }
}
