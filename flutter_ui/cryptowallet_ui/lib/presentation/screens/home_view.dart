import 'package:cryptowallet_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('lib/assets/images/profiles.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$ 8,405',
                style: Color(aPrimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
