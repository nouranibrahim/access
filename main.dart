import 'package:carproject/login.dart';
import 'package:carproject/security.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

// ignore: non_constant_identifier_names

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: constant_identifier_names
  static const RadioState = <String>['Owner', 'Security Guard'];
  String selectedValue = RadioState.first;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/accessLogo.png',
                width: 50,
                height: 50,
              ),
              const Text(
                'Hello! Are you an Owner or a security Guard?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              buildingRadio(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 50,
                  width: 150,
                  //const Padding(padding: EdgeInsets.all(10.0)),
                  child: ElevatedButton(
                    onPressed: () {
                      // ignore: avoid_print
                      if (selectedValue == 'Owner') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const Login()));
                      } else if (selectedValue == 'Security Guard') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const Security()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[300],
                    ),
                    child: const Text('Get Started'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildingRadio() => Column(
        children: RadioState.map(
          (value) {
            return RadioListTile<String>(
              value: value,
              groupValue: selectedValue,
              title: Text(value),
              activeColor: Colors.purple[200],
              onChanged: (value) => setState(() => selectedValue = value!),
            );
          },
        ).toList(),
      );
}
