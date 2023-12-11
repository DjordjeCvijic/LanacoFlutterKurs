import 'package:first_app/screens/population/population_model.dart';
import 'package:first_app/screens/population/population_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopulationScreen extends StatelessWidget {
  const PopulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final populationProvider =
        Provider.of<PopulationProvider>(context, listen: false);
    populationProvider.getPopulationData();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder(
            future: populationProvider.getPopulationData(),
            builder: (context, AsyncSnapshot<List<PopulationModel>> snapshot) =>
                snapshot.connectionState == ConnectionState.waiting
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          Text("Podaci se obradjuju")
                        ],
                      )
                    : Container(
                        height: 100,
                        child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            PopulationModel model =
                                snapshot.data!.elementAt(index);
                            return Text(
                              "${model.yearOfData} -> ${model.populationNumber}",
                            );
                          },
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
