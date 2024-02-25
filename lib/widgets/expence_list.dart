import 'package:expencestracker/widgets/expence_style.dart';
import 'package:flutter/material.dart';
import 'package:expencestracker/models/expence.dart';

class ExpenceList extends StatelessWidget {
  const ExpenceList({super.key, required this.expenceList});

  final List<ExpenceModel> expenceList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenceList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: ExpenceStyle(
              expence: expenceList[index],
            ),
          );
        },
      ),
    );
  }
}
