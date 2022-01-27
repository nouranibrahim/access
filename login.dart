import 'package:carproject/profile.dart';
import 'package:carproject/registeration.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String userName = '';
  String password = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  Widget SetUserName() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'User Name'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }
      },
      onSaved: (value) {
        userName = value!;
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget SetPassword() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Password',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password is Required';
        }
      },
      onSaved: (value) {
        password = value!;
      },
    );
  }

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/accessLogo.png',
                  width: 50,
                  height: 50,
                ),
                const Text(
                  'Owner Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SetUserName(),
                SetPassword(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        _formKey.currentState!.save();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const Profile()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple[300],
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const Register()));
                  },
                  // ignore: prefer_const_constructors
                  child: Text(
                    'New? Register Now!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.purple[200],
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
