import 'package:flutter/material.dart';
import 'package:simple_cart/TextField.dart';
import 'productScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void validatpasswrod() {
    if (_formKey.currentState!.validate()) {
      String? password = passwordcontroller.text;

      if (password != null && password.isNotEmpty && password.length >= 6) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => productScreen()),
        );
      } else {
        return setState(() {});
      }
    }
  }

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
                SizedBox(height: 40),
                TextFieldWidget(
                  controller: usernamecontroller,
                  obscuerText: false,
                  hintText: 'Enter the Email',
                  validator: (value) {},
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'passwordS',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  validator: (pas) {
                    if (pas == null || pas.isEmpty) {
                      return "Please enter your password";
                    }
                    if (pas.length < 6)
                      return 'password should be atleat 6 char';
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: passwordcontroller.value.toString().length > 6 ||
                          passwordcontroller.value.toString().isNotEmpty
                      ? Colors.lightBlueAccent
                      : Colors.grey,
                  child: MaterialButton(
                    onPressed: () {
                      if (passwordcontroller.value.toString().length > 6)
                        validatpasswrod();
                    },
                    minWidth: 250,
                    height: 42.0,
                    textColor: Colors.white,
                    child:const Text('Log in'),
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
