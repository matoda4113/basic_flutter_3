import 'package:flutter/material.dart';

class MemberListPage extends StatelessWidget {
  const MemberListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("멤버 리스트"),),
      body: ListView(

        children: [
          Container(
            width: 100,
            height: 150,
            color: Colors.redAccent,
            child: Text("김철수"),
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.redAccent,
            child: Text("김철수"),
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.redAccent,
            child: Text("김철수"),
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.redAccent,
            child: Text("김철수"),
          ),

          Container(
            width: 100,
            height: 150,
            color: Colors.redAccent,
            child: Text("김철수"),
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.redAccent,
            child: Text("김철수"),
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.redAccent,
            child: Text("김철수"),
          ),
        ],
      ),
    );
  }
}
