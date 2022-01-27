import 'package:carproject/profile.dart';
import 'package:carproject/addvisitor.dart';
import 'package:flutter/material.dart';

class myVisitors extends StatefulWidget {
  const myVisitors({Key? key}) : super(key: key);

  @override
  State<myVisitors> createState() => _myVisitors();
}

class _myVisitors extends State<myVisitors> {
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
              'My Visitors',
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
                  'No Visitors Added Yet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
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
                        MaterialPageRoute(builder: (builder) => addVisitor()));
                  },
                  child: Text(
                    'Add a Visitor',
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
