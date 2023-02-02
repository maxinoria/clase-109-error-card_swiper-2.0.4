



import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';


class CardSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.5,
        
      ),
    );
  }
}