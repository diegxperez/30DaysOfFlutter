import 'package:flutter/material.dart';

class MyBubbleMessage extends StatelessWidget {
  const MyBubbleMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: colors.primary),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Mollit culpa nostrud consssequat',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      )
    ]);
  }
}
