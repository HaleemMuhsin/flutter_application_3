import 'package:flutter/material.dart';

import 'package:flutter_application_3/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'lib/assets/Auth_2.png',
                  width: 150,
                  height: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10.0), // Adjust the padding as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      13.0), // Adjust the border radius as needed
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors
                            .white, // Set the color of the border to white
                        width: 2, // Set the width of the border
                      ),
                      borderRadius:
                          BorderRadius.circular(11), // Set the border radius
                    ),
                    child: Image.asset(
                      'lib/assets/SignIn.png', // Adjust the path to your image asset
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Hello',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.21),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to Billboards',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21.31),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 129, 133,
                          129), // Change the color of the label text
                      fontWeight: FontWeight.bold, // Add font weight
                      // Adjust font size
                    ),
                    // Add other decoration properties as needed
                  ),
                ),
              ),
              // Add space between the text fields
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  style: TextStyle(color: Color.fromARGB(255, 212, 209, 209)),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 129, 133,
                          129), // Change the color of the label text
                      fontWeight: FontWeight.bold, // Add font weight
                      // Adjust font size
                    ),
                    // Add other decoration properties as needed
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeUI()),
                  ); // Add your button onPressed logic here
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          18), // Adjust the border radius as needed
                    ),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
