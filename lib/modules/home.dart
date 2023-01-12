import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_market/modules/products_details.dart';
import 'package:fashion_market/shared/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import '../layout/cubit/cubit.dart';
import '../layout/cubit/states.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FashionCubit, FashionStates>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.grey[300],
            endDrawer: My_Drawer(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 20),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: HexColor('ffffff'),
                          blurRadius: 5,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.normal,
                          offset: Offset.fromDirection(50))
                    ], borderRadius: BorderRadius.circular(20)),
                    child: CarouselSlider(
                        items: const [
                          Image(
                              image: NetworkImage(
                                  'https://cdn.thebrandingjournal.com/wp-content/uploads/2019/05/chanel_logo_the_branding_journal.jpg')),
                          Image(
                              image: NetworkImage(
                                  'https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/Adidas.png')),
                          Image(
                              image: NetworkImage(
                                  'https://cdn.logojoy.com/wp-content/uploads/2018/05/30143359/2_big1.png')),
                          Image(
                              image: NetworkImage(
                                  'https://mbluxury1.s3.amazonaws.com/2022/02/25172702/ralph-lauren.jpg')),
                          Image(
                              image: NetworkImage(
                                  'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/06/coca-cola.png?auto=format&q=60&fit=max&w=930')),
                        ],
                        options: CarouselOptions(
                          viewportFraction: 1.0,
                          height: 250.0,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          scrollDirection: Axis.horizontal,
                        )),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  items(context,
                      price: '250',
                      product_title:
                          'اسم الموديل والقطعة واللون اسم المحل القياسات والفياسات',
                      imageUrl:
                          'https://static.honeykidsasia.com/wp-content/uploads/2016/02/teens-clothes-shopping-singapore-hero-anastasia-shuraeva-pexels-900x643.jpg'),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
