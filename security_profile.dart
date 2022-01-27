import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: non_constant_identifier_names

// ignore: use_key_in_widget_constructors
class SecurityProfile extends StatefulWidget {
  @override
  _SecurityProfileState createState() => _SecurityProfileState();
}

class _SecurityProfileState extends State<SecurityProfile> {
  File? carImage;

  Future getImage(ImageSource isource) async {
    try {
      final image = await ImagePicker().pickImage(source: isource);
      setState(() {
        carImage = File(image!.path);
      });
    } on PlatformException catch (e) {
      Fluttertoast.showToast(
        msg: 'Image is not available + $e',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
      );
    }
  }

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
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              carImage != null
                  ? Image.file(
                      carImage!,
                      width: 400,
                      height: 400,
                    )
                  : const FlutterLogo(size: 200),
              const SizedBox(height: 10),
              const SizedBox(
                width: 320,
                child: Text(
                  'Security Actions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        const Text(
                          '  Take Photo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () => getImage(ImageSource.camera),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.image_outlined,
                          color: Colors.white,
                        ),
                        const Text(
                          '  Upload Photo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () => getImage(ImageSource.gallery),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Icon(
                          Icons.list_alt,
                          color: Colors.white,
                        ),
                        const Text(
                          '  View List',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () => getImage(ImageSource.gallery),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  height: 50,
                  width: 230,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => SecurityProfile()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[300],
                    ),
                    child: const Text('Send'),
                  ),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => SecurityProfile()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[300],
                    ),
                    child: const Text('Take Photo'),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
