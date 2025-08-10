  import 'package:flutter/material.dart';

  class layout6 extends StatelessWidget {
    const layout6({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                // Expanded(
                //   flex: 3,
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 5,bottom: 5),
                //     child: GridView(
                //       shrinkWrap: false,
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //         mainAxisSpacing: 5,
                //         crossAxisSpacing: 5,
                //         childAspectRatio: 1.0,
                //       ),
                //       physics: NeverScrollableScrollPhysics(),
                //       children: [
                //         Container(color: Colors.blue,),
                //         Container(color: Colors.blue,),
                //         Container(color: Colors.blue,),
                //         Container(color: Colors.blue,),
                //       ]
                //     ),
                //   ),
                // ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double itemWidth = (constraints.maxWidth - 5) / 2;
                        double itemHeight = (constraints.maxHeight - 5) / 2;
                        return GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: itemWidth / itemHeight,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(4, (index) {
                            return Container(color: Colors.blue,);
                          }),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
