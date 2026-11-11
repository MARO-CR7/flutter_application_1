import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/loginpage.dart';

class SignUpPage extends StatefulWidget {
  const new({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isObscure = true;
  String? rad = "";

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
                  "Sign Up",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Create Your Account",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),

                SizedBox(height: 30),
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
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Check your Email";
                    } else if (!value.contains("@gmail.com")) {
                      return "Check your Email";
                    }
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    hintText: "mohamed1@gmail.com",
                    labelText: "Email",
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
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "The Confirm Password isn't your Password";
                    } else {
                      return null;
                    }
                  },
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    labelText: "Passsword",
                    suffix: IconButton(
                      onPressed: () {
                        isObscure = !isObscure;
                      },
                      icon: isObscure
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .center,
                  children: [
                    RadioMenuButton(
                      value: "Male",
                      groupValue: rad,
                      onChanged: (value) {
                        setState(() {
                          rad = value;
                        });
                      },
                      child: Text("Male"),
                    ),

                    RadioMenuButton(
                      value: "Female",
                      groupValue: rad,
                      onChanged: (value) {
                        setState(() {
                          rad = value;
                        });
                      },
                      child: Text("Female"),
                    ),
                  ],
                ),

                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: Size(400, 40),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final email = emailController.text;
                      final pass = passwordController.text;

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    }
                    ;
                  },
                  child: Text("Sign Up", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 30),
                Text("OR"),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up from Google",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    Text("Already have an Account? "),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpage()),
                      ),
                      child: Text("Login"),
                    ),
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
