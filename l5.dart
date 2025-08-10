import 'package:flutter/material.dart';

class layout5 extends StatelessWidget {
  const layout5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
              Expanded(child: Container(color: Colors.cyan,),),
            Expanded(child: Row(
              children: [
                Expanded(flex: 2,child: Container(color: Colors.greenAccent,),),
                Expanded(child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.purpleAccent,),),
                    Expanded(child: Container(color: Colors.yellowAccent,),),
                  ],
                ))
              ],
            ),),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(color: Colors.orange,),),
                Expanded(child: Container(color: Colors.blue,),),
                Expanded(child: Container(color: Colors.red,),),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
