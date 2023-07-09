import 'package:flutter/material.dart';
import 'package:mcu2/pages/herocard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController controller = PageController(viewportFraction: 0.8);
  final List<Widget> _list = <Widget>[
    const HeroCard(),
    const HeroCard(),
    const HeroCard(),
    const HeroCard(),
    const HeroCard(),
    const HeroCard(),
  ];
  int _curr = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MCU APP'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'MCU App',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              const Text(
                'Super Heroes',
                style: TextStyle(fontSize: 24, letterSpacing: 3),
              ),
              // Expanded(
              //   child: HeroCard(),
              // ),
              Expanded(
                child: PageView(
                  children: _list,
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  onPageChanged: (num) {
                    setState(() {
                      _curr = num;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
