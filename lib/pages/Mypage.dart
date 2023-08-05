import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {

  final String name;
  final int age;

  const MyPage({Key? key , required this.name , required this.age}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  @override
  void initState() {
    fullProfile = widget.name + widget.age.toString() + "세";
    // TODO: implement initState
    super.initState();
  }

  String fullProfile="";
  int count = 0;
  bool over5 = false;

  void checkCount(){
    if(count < 5) {
      over5 = false;
    }else if(count>=5 && count <7){
      over5 = true;
      print("count 가 너무 높습니다.");
    }else if(count >=7 && count <10){
      over5 = true;
      print("count 가 7 이상입니다. 위험합니다 그만누르세요");

    }else {
      over5 = true;
      print("count 가 10 이상입니다. 마음대로 하세요. 평생누르세요");
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.name}의 페이지"),),
      body: GestureDetector(
        onTap: (){
          setState(() {
            count++;
          });
          checkCount();
        },
          child: Center(
              child: Column(
                children: [
                  if(over5)
                  Text("count가 5 이상일때만 나타나는 위젯" , style: TextStyle(color: count >=10 ? Colors.blue : Colors.red),),
                  Text(fullProfile),
                  Container(
                    width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Center(child: Text(count.toString()))
                  ),
                ],
              )
          )
      ),
    );
  }
}
