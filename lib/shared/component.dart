import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import '../layout/cubit/cubit.dart';
import '../modules/products_details.dart';

My_AppBar() => AppBar(
      elevation: 0.0,
      backgroundColor: HexColor('#153F92'),
      centerTitle: true,
      title: Text('Fashion Market',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
    );
Widget My_Drawer() => Drawer();
Widget defaultButton(context,
        {required var width,
        required var color,
        required var function,
        required var text}) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        width: width,
        child: MaterialButton(
          height: MediaQuery.of(context).size.height / 17,
          splashColor: Colors.white,
          elevation: 0.0,
          color: color,
          onPressed: function,
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
void navigateTo(
  context,
  widget,
) =>
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));

Widget items(context,
        {required imageUrl, required product_title, required price}) =>
    Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: GridView.count(
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        childAspectRatio: 1 / 1.33,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: List.generate(
            10,
            (index) => buildGridProduct(context,
                imageUrl: '$imageUrl',
                product_title: "$product_title",
                price: "$price")),
      ),
    );
Widget buildGridProduct(context,
    {required String imageUrl, required product_title, required price}) {
  return Container(
    padding: EdgeInsets.only(top: 5, left: 5, right: 5),
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
          color: Colors.black12,
          blurRadius: 15,
          spreadRadius: 5,
          blurStyle: BlurStyle.normal,
          offset: Offset.fromDirection(5))
    ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: InkWell(
      onTap: () {
        //بدي عند النقرة هون مع on tap ينقلي الصورة وباقي التفاصيل
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => products_details(name: 'flutter page'),
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Image(
                  image: NetworkImage('$imageUrl'),
                  width: double.infinity,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$product_title',
                  maxLines: 2,
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, height: 1.3),
                ),
                Row(
                  children: [
                    Text(
                      '$price',
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.red,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'السعر ',
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
