import 'package:flutter/material.dart';

DefaultTextStyle introCommonStyle(Widget childs) {
  return DefaultTextStyle(style: TextStyle(
    letterSpacing: 1.04
  ), child: );
}

final introMessages = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Column(children: [
      const Text('Financial Control',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.04,
          )),
      const Text(
          'Defina suas necessidades para o futuro que te espera e alcance-o sem complicações',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, letterSpacing: 1.04))
    ])
  ],
);

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _HomePageState();
}

class _HomePageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Flex(direction: Axis.vertical, children: [
      Flex(direction: Axis.vertical, children: [
        Stack(children: [
          Image.asset(
            'lib/images/intro/money_going_of_the_sky.jpg',
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0, 1],
              ),
            ),
          )
        ]),
        introMessages
      ])
    ]));
  }
}
