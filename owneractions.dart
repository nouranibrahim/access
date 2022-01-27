import 'package:carproject/blacklist.dart';
import 'package:carproject/myvisitors.dart';
import 'package:carproject/profile.dart';
import 'package:flutter/material.dart';

class OwnerActions extends StatefulWidget {
  const OwnerActions({Key? key}) : super(key: key);

  @override
  State<OwnerActions> createState() => _OwnerActionsState();
}

class _OwnerActionsState extends State<OwnerActions> {
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: ElevatedButton(
                    child: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const Profile()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[200],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 130),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const myVisitors()));
                },
                // ignore: prefer_const_constructors
                child: Text(
                  'My Visitors',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[200],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const Blacklist()));
                },
                child: Text(
                  'View BlackList',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[200],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
