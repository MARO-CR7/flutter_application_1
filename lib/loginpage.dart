import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class Loginpage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            width: 250,
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Enter Your information to Login",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),

                SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Check your Name";
                    } else {
                      return null;
                    }
                  },
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    labelText: "Username",
                  ),
                ),

                SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Check your Password";
                    } else {
                      return null;
                    }
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    labelText: "Password",
                    suffix: IconButton(
                      onPressed: () {
                        isObscure != isObscure;
                      },
                      icon: isObscure
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: Size(400, 40),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final username = usernameController.text;
                      final pass = passwordController.text;

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    }
                    ;
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 30),
                TextButton(onPressed: () {}, child: Text("Forget Password?")),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Text("Don't have an Account? "),
                    TextButton(onPressed: () {}, child: Text("SignUp")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
