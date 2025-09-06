import 'package:flutter/material.dart';
import '../bottom_navigation_bars.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Enter a beautiful world",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        labelText: "Your Email",
                        hintText: "example@gmail.com",
                        prefixIcon: Icon(Icons.email),
                        border: InputBorder.none,
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: password,
                      obscureText: obscurePassword,
                      obscuringCharacter: '*',  // Set the character to display
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        labelText: "Password",
                        hintText: "*******",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon:
                              obscurePassword
                                  ? Icon(Icons.visibility_off_sharp)
                                  : Icon(Icons.visibility_sharp),
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                        ),
                        border: InputBorder.none,
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return BottomNavigationBars();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have An Account?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Register Now",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
