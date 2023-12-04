import 'dart:developer';

import 'package:first_app/models/vozilo.dart';
import 'package:flutter/material.dart';

import '/helpers/dummy_data.dart';
import '/widgets/person_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  double saberiDuzine(double duzinaV1, double duzinaV2) {
    return duzinaV1 + duzinaV2;
  }

  @override
  Widget build(BuildContext context) {
    print("TEST");
    Vozilo vozilo1 = Vozilo(
        naziv: "BMW",
        godiste: 2002,
        duzinaVozila: 5.3,
        putnickoVozilo: true,
        vlasnici: ["Marko", "janko", "Dusan"],
        trenutniVlasnik: "Dusan");

    Vozilo vozilo2 = Vozilo(
      naziv: "Ferguson",
      godiste: 2002,
      duzinaVozila: 5.3,
      putnickoVozilo: false,
    );
    print("############################ " + vozilo1.naziv);
    print("############################ " + vozilo1.godiste.toString());

    int starostV1 = vozilo1.starostVozila(2023, "21", dan: 4, mjesec: 12);

    print("############################ " + starostV1.toString());

    vozilo2.ispisVozila();
    double sabraneDuzine =
        saberiDuzine(vozilo1.duzinaVozila, vozilo2.duzinaVozila);

    vozilo1.ispisiTrenutnogVlasika();
    vozilo2.ispisiTrenutnogVlasika();

    int broj1 = vozilo1.brojVlasnika();
    int broj2 = vozilo2.brojVlasnika();
    print(broj1.toString() + " " + broj2.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Osobe',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: DummyData.listOfPersons
              .map((person) => PersonCard(person: person))
              .toList(),

          // body: SafeArea(
          //   child: ListView.builder(
          //     physics: const BouncingScrollPhysics(),
          //     itemCount: DummyData.listOfPersons.length,
          //     itemBuilder: (context, index) {
          //       return PersonCard(
          //         person: DummyData.listOfPersons[index],
          //       );
          //     },
          //   ),

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
      ),
    );
  }
}
