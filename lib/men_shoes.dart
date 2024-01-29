import 'package:flutter/material.dart';

class MenShoes extends StatelessWidget {
  const MenShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ScrollPhysics(),
      children: [
        SizedBox(
          height: 250,
          child: Image.asset('images/shoes13.png'),
        ),
        SizedBox(
          height: 250,
          child: Image.asset('images/shoes13.png'),
        ),
        SizedBox(
          height: 250,
          child: Image.asset('images/shoes13.png'),
        ),
      ],
    );
  }
}
