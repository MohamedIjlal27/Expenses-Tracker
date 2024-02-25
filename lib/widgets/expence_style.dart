import 'package:flutter/material.dart';
import 'package:expencestracker/models/expence.dart';

class ExpenceStyle extends StatelessWidget {
  const ExpenceStyle({super.key, required this.expence});

  final ExpenceModel expence;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown.shade50,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expence.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  expence.amount.toStringAsFixed(2),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expence.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expence.getformatedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
