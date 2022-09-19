import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;
  List<String> selectedPic = [
    "https://post-phinf.pstatic.net/MjAyMDEyMjlfMjkz/MDAxNjA5MjI0MDM0MTE2.06t01r4fDPhUxzBIt_Uq6EP9Y_mX_TazvaQwJqVOt9Eg.SGTY8RsSSNV8uls8QpPA4A-kKj2e6OilKLBRk1nLE4Qg.JPEG/2020-Chevrolet-Corvette-C8-in-orange.jpg?type=w1200",
    "https://zum-auto-production.s3.ap-northeast-2.amazonaws.com/5vqlvzsqx8hrsx70qopluh6gl38p",
    "http://www.cartech.co.kr/news/photo/202007/20537_21637_3743.jpg",
    "https://file3.bobaedream.co.kr/multi_image/national/2014/09/04/17/DRU54082858e009b.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return AspectRatio(
      aspectRatio: 5 / 2.5,
      child: Image.network(
        selectedPic[selectedId],
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHeaderSelectorButton(0, Icons.directions_bike),
          _buildHeaderSelectorButton(1, Icons.motorcycle),
          _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
          _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  Container _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: id == selectedId ? kAccentColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: IconButton(
          icon: Icon(mIcon),
          onPressed: (() {
            setState(() {
              selectedId = id;
            });
          })),
    );
  }
}
