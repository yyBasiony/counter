import 'package:flutter/material.dart';
import 'package:counter/bottom_with_inkwell.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});
  @override
  State<homePage> createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  int num=0;
  void addNum(){
    setState(() {
      num++;
    });
  }
  void minusNum(){
    setState(() {
      num--;
    });
  }
  void resetNum(){
    setState(() {
      num=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf582ae),
      ),
      body:
      Container(
        color: Color(0xFF8bd3dd),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomWithInkwell(
                    icon: Icons.remove,
                    onTap: minusNum,
                  ),
                  Text("$num",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xFFf3d2c1)),),
                  bottomWithInkwell(
                    icon: Icons.add,
                    onTap: addNum,
                  ),
                ],
              ),
              SizedBox(height: 40,),
              bottomWithInkwell(
                icon: Icons.refresh,
                onTap: resetNum,
                size: 30.0,
                iconColor: Color(0xFF8c7851),
                backgroundColor: Color(0xFFeaddcf),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
