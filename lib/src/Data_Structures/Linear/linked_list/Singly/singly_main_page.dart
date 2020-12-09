import 'package:dsa_simulation/src/Utilities/address_maninter.dart';
import 'package:dsa_simulation/src/Utilities/widgets.dart';
import 'package:flutter/material.dart';

class SinglyMainPage extends StatefulWidget {
  @override
  _SinglyMainPageState createState() => _SinglyMainPageState();
}

class _SinglyMainPageState extends State<SinglyMainPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        height: height,
        width: width,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Tiles(
              onPress: () {
                addElement('Introduction');
                //Navigator.of(context).pushNamed('/ArrayPageView');
              },
              title: 'Introduction',
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tiles(
              onPress: () {
                addElement('Insertion');
                //Navigator.of(context).pushNamed('/StackIntroduction');
              },
              title: 'Insertion',
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tiles(
              onPress: () {},
              title: 'Deletion',
            ),

          ],
        ),
      ),
    );
  }
}