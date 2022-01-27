import 'package:carproject/profile.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String userName = '';
  String password = '';
  int unitNo = 0;

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
  Widget SetUnitNo() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Unit Number',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Unit Number is Required';
        }
        int? num = int.tryParse(value);
        if (num == null || num <= 0) {
          return 'Unit Number is not Valid';
        }
      },
      onSaved: (value) {
        unitNo = value! as int;
      },
    );
  }

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
                  'Owner Registeration',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SetUserName(),
                SetPassword(),
                SetUnitNo(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    //const Padding(padding: EdgeInsets.all(10.0)),
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
                      child: const Text('Register'),
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
