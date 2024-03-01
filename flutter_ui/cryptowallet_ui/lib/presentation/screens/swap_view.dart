import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class SwapView extends StatelessWidget {
  const SwapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF000000),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  Text(
                    'Swap Currency',
                    style: TextStyle(
                      color: aColorWhite,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.link_sharp,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        )));
  }
}
