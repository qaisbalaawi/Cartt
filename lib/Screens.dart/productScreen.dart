import 'package:flutter/material.dart';
import 'package:simple_cart/Screens.dart/CartModel.dart';
import 'package:simple_cart/Screens.dart/Cart_Screen.dart';
import 'package:provider/provider.dart';

class productScreen extends StatefulWidget {
  @override
  State<productScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<productScreen> {
  List<String> images = [
    'images/q.jpg',
    'images/q2q.jpg',
    'images/qq.jpg',
    'images/qqq.jpg',
    'images/qqqq.jpg',
    'images/r.jpg',
    'images/q3q.jpg',
    'images/n.jpg',
    'images/s.jpg',
  ];

  List<String> names = [
    'Product A',
    'Product B',
    'Product C',
    'Product D',
    'Product E',
    'Product F',
    'Product G',
    'Product H',
  ];

  List<double> prices = [
    1.0,
    1.0,
    121.0,
    12.0,
    22.0,
    21.0,
    13.0,
    11.0,
  ];

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Alpha Store'),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0,
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart_Screen(),
                    ));
              },
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: Scaffold(
          body: Builder(
            builder: (context) {
              var cart = Provider.of<CartModel>(context, listen: false);
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20.0,
                ),
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      cart.addToCart(1, prices[index]);
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(images[index]),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  '\$${prices[index]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}
