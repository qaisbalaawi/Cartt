import 'package:flutter/material.dart';

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
    20.0,
    30.0,
    25.0,
    40.0,
    18.0,
    35.0,
    22.0,
    28.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Alpha Store'),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20.0,
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: content(),
    );
  }

  Widget content() {


  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20.0,
    ),
    itemCount: names.length,
    itemBuilder: (context, index) {
      return Card(
        elevation: 3, // Add elevation for a card-like effect
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
      );
    },
  );
}

}
