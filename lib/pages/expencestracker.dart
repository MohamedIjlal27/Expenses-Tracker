import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpencesTracker extends StatelessWidget {
  const ExpencesTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
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
    );
  }
}
