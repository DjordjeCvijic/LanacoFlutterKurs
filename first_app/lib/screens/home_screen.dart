import 'package:first_app/helpers/dummy_data.dart';
import 'package:first_app/widgets/person_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/person_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: DummyData.listOfPersons
            .map((person) =>PersonCard(person: person))
            .toList(),
      )
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
          //       padding: EdgeInsets.fromLTRB(20, 20, 22, 20),
          //       height: 100,
          //       width: double.infinity,
          //       color: Colors.red[100],
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.blue[200],
          //           border: Border.all(color: Colors.brown,width: 3),
          //           borderRadius: BorderRadius.only(topLeft: Radius.circular(20) )
          //         ),
          //         width: double.infinity,
          //         height: double.infinity,
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
