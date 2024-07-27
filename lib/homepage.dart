import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override

  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
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
                  InkWell(
                    onTap:minusNum ,

                    child: Container(child: Center(child: Icon(Icons.remove,size: 35,color: Color(0xFFf3d2c1),)),
                      height: 50,width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF8c7851),
                        borderRadius: BorderRadius.circular(10),

                      ),),
                  ),

                  Text("$num",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xFFf3d2c1)),),
                  InkWell(
                    onTap:addNum ,

                    child: Container(child: Center(child: Icon(Icons.add,size: 35,color: Color(0xFFfef6e4),)),
                      height: 50,width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF8c7851),
                        borderRadius: BorderRadius.circular(10),
                      ),),
                  ),

                ],
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: resetNum,
                child: Container(
                  height: 60,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFFeaddcf),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(child: Text("Reset",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xFF8c7851)),)),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
