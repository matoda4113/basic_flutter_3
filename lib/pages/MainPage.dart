import 'package:basic_flutter_3/pages/MemberListPage.dart';
import 'package:basic_flutter_3/pages/ProductDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/ProductWIdget.dart';
import '../vo/Product.dart';
import '../vo/Product.dart';
import 'StoreListPage.dart';

class MainPage extends StatelessWidget {

  MainPage({Key? key}) : super(key: key);

  Product product1 = Product(
    productName: "의자",
    imagePath: "https://m.comfpro.co.kr/web/product/medium/202111/ab99bbc3f5c49160158c29d07ce660bf.jpg",
    price: "3,000원"
  );
  Product product2 = Product(
      productName: "냉장고",
      imagePath: "https://t1.daumcdn.net/cfile/tistory/99E36F345E9E595031",
      price: "5,000원"
  );
  Product product3 = Product(
      productName: "자동차",
      imagePath: "https://img.hankyung.com/photo/202203/0ad0cd5a2df34e36cd91fd08dcbb46c2.jpg",
      price: "6,000원"
  );
  Product product4 = Product(
      productName: "에어컨",
      imagePath: "https://reviewpro.co.kr/wp-content/uploads/2020/08/%EC%97%90%EC%96%B4%EC%BB%A8%EB%A9%94%EC%9D%B8.jpg",
      price: "7,000원"
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("사무실쇼핑몰"),centerTitle: true,backgroundColor: Colors.orangeAccent,),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            SizedBox(height: 50,),
            Row(
              children: [
                ProductWidget(item : product1),
                SizedBox(width: 10,),
                ProductWidget(item : product2),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                ProductWidget(item : product3),
                SizedBox(width: 10,),
                ProductWidget(item : product4),
              ],
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Get.to(()=>MemberListPage());
              },
              child: Text("회원목록 보러 가기"),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Get.to(()=>StoreListPage());
              },
              child: Text("매장목록 보러 가기"),
            ),



          ],
        ),
      ),
    );
  }
}

