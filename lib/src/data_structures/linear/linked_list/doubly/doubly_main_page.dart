import 'package:dsa_simulation/src/Data_Structures/Linear/linked_list/doubly/doubly_introduction.dart';
import 'package:dsa_simulation/src/Utilities/address_maninter.dart';
import 'package:dsa_simulation/src/Utilities/widgets.dart';
import 'package:flutter/material.dart';
import 'doubly_insertion.dart';

class DoublyMainPage extends StatefulWidget {
  @override
  _DoublyMainPageState createState() => _DoublyMainPageState();
}

class _DoublyMainPageState extends State<DoublyMainPage> {
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => DoublyIntroduction(),
                  ),
                );
              },
              title: 'Introduction',
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tiles(
              onPress: () {
                addElement('Insertion');
                //     Navigator.of(context).pushNamed('/SinglyInsertionPage');
              },
              title: 'Insertion',
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Tiles(
              onPress: () {
                addElement('Insertion');
                //       Navigator.of(context).pushNamed('/SinglyDeletionPage');
              },
              title: 'Deletion',
            ),
          ],
        ),
      ),
    );
  }
}