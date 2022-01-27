import 'package:carproject/profile.dart';
import 'package:carproject/addblacklist.dart';
import 'package:flutter/material.dart';

class myVisitorsupdated extends StatefulWidget {
  const myVisitorsupdated({Key? key}) : super(key: key);

  @override
  State<myVisitorsupdated> createState() => _myVisitorsupdated();
}

class _myVisitorsupdated extends State<myVisitorsupdated> {
  // ignore: non_constant_identifier_names
  _myVisitorsupdated({Key? key});
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: Text(
                          'Name = ',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.center,
                        )),
                        Center(
                            child: Text(
                          'Vehicle Number = ',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.center,
                        )),
                        Center(
                            child: Text(
                          'Time',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.center,
                        )),
                      ]),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => addblacklist()));
                    },
                    child: Text(
                      'Add a Car to Blacklist',
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
      ),
    );
  }
}
