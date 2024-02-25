import 'package:expencestracker/models/expence.dart';
import 'package:expencestracker/widgets/expence_list.dart';
import 'package:flutter/material.dart';

class ExpencesTracker extends StatefulWidget {
  const ExpencesTracker({super.key});

  @override
  State<ExpencesTracker> createState() => _ExpencesTrackerState();
}

class _ExpencesTrackerState extends State<ExpencesTracker> {
  final List<ExpenceModel> _expenceList = [
    ExpenceModel(
        title: "Food Ball",
        amount: 102.5,
        date: DateTime.now(),
        category: Category.lessure),
    ExpenceModel(
        title: "Hiking",
        amount: 120,
        date: DateTime.now(),
        category: Category.travel),
    ExpenceModel(
        title: "Carrot",
        amount: 500,
        date: DateTime.now(),
        category: Category.food)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 10,
          shadowColor: Colors.black,
          title: const Text(
            "Expences Tracker",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          actions: [
            Container(
              color: Colors.yellow,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            ExpenceList(
              expenceList: _expenceList,
            )
          ],
        ));
  }
}
