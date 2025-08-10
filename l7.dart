import 'package:flutter/material.dart';

class layout7 extends StatelessWidget {
  const layout7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  container(0, 5, 5, 0, Colors.indigo),
                  container(5, 5, 0, 0, Colors.amber),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  container(0, 0, 5, 5, Colors.teal),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              container(5, 5, 5, 5, Colors.orangeAccent, 3),
                              container(5, 5, 0, 5, Colors.redAccent),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              container(5, 0, 5, 5, Colors.amber, 1),
                              container(5, 0, 0, 5, Colors.indigo,3),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget container(double t, double r, double b, double l, Color c,[int f = 1])
  {
    return Expanded(
      flex: f,
      child: Padding(
        padding: EdgeInsets.only(
          top: t,
          right: r,
          bottom: b,
          left: l,
        ),
        child: Container(
          color: c,
        ),
      ),
    );
  }
}

