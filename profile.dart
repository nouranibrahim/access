import 'package:flutter/material.dart';

import 'owneractions.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: ElevatedButton(
                    child: const Icon(Icons.view_headline),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const OwnerActions()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[200],
                    ),
                  ),
                ),
              ),
              const Text(
                'Owner Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Image.asset(
                'assets/OwnerProfilePic.png',
                width: 250,
                height: 250,
              ),
              const SizedBox(
                width: 320,
                child: Text(
                  'Username',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide:
                        BorderSide(color: Colors.purpleAccent, width: 0.1),
                  ),
                  contentPadding: EdgeInsets.all(5),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              const SizedBox(height: 15),
              const SizedBox(
                width: 320,
                child: Text(
                  'Unit Number',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide:
                        BorderSide(color: Colors.purpleAccent, width: 0.1),
                  ),
                  contentPadding: EdgeInsets.all(5),
                  fillColor: Colors.grey,
                  filled: true,
                ),
              ),
              const SizedBox(height: 15),
              const SizedBox(
                width: 320,
                child: Text(
                  'Number of Vehicles',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide:
                        BorderSide(color: Colors.purpleAccent, width: 0.1),
                  ),
                  contentPadding: EdgeInsets.all(5),
                  fillColor: Colors.grey,
                  filled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
