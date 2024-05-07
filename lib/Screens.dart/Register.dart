import 'package:flutter/material.dart';
import 'package:simple_cart/Screens.dart/productScreen.dart';
import 'package:simple_cart/TextField.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Alpha Market',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextFieldWidget(
                  controller: usernamecontroller,
                  obscuerText: false,
                  hintText: 'Enter the Email',
                  validator: (value) {},
                ),
                SizedBox(height: 40),
                TextFieldWidget(
                  controller: passwordcontroller,
                  obscuerText: true,
                  hintText: 'Enter the Password',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password is required';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent,
                  child: MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        String? password = passwordcontroller.text;
                        if (password != null &&
                            password.length >= 6 &&
                            password!.isEmpty)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => productScreen()));
                      }
                    },
                    minWidth: 250,
                    height: 42.0,
                    child: Text('Register'),
                    textColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
