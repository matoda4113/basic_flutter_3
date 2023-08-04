import 'package:flutter/material.dart';

class StoreListPage extends StatelessWidget {
  StoreListPage({Key? key}) : super(key: key);


  final List<String> storeList = ['여의도점', '김포점', '부산서면점'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("매장목록 페이지"),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2개의 열로 구성된 그리드
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 5/4, // 가로 세로 비율을 1:2로 설정
        ),
        itemCount: storeList.length, // 그리드 아이템의 개수
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.orangeAccent,
                child: Center(child: Text(storeList[index])),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  height: 20,
                  color: Colors.red,
                  child: Center(child: Text(storeList[index])),
                ),
              ),
            ],
          );
          // 그리드 아이템을 반환하는 로직
          // 예: Container, Image 등
        },
      ),
    );
  }
}
