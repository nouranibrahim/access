import 'package:carproject/profile.dart';
import 'package:flutter/material.dart';
import 'package:carproject/blacklist.dart';
import 'package:flutter/widgets.dart';

class addblacklist extends StatefulWidget {
  @override
  State<addblacklist> createState() => _addblacklist();
}

class _addblacklist extends State<addblacklist> {
  // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Text(
              'Add a Car to the Blacklist',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Please Enter Blacklist Name'),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Vehicle Number',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              width: 500,
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Please Enter Vehicle Number'),
              ),
            ),
            const SizedBox(height: 100, width: 200),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  padding: EdgeInsets.all(25.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.purple[200],
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Blacklist()));
                  },
                  child: Text(
                    'Add Car',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
