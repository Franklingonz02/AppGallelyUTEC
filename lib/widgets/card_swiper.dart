import 'package:appgallery/data/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class CardSwipper extends StatelessWidget {

List<Map<String, dynamic>> data = [
  {
    'images': [
      {
        'description': 'PRUEBA1',
        'url': 'assets/J1.jpg'
      },
      {
        'description': 'PRUEBA2',
        'url': 'assets/J2.jpg'
      },
      {
        'description': 'PRUEBA3',
        'url': 'assets/J3'
      },
      {
        'description': 'PRUEBA4',
        'url': 'assets/J4'
      },
      {
        'description': 'PRUEBA5',
        'url': 'assets/J5'
      },
    ]
  },
];




  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height*0.3,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width*0.5,
        itemHeight: size.height*0.3,
        itemBuilder: ( _ ,int index ){

          final imagPrueba = data[index];
          print(imagPrueba);

          return  GestureDetector(
            onTap: ()=> Navigator.pushNamed(context, 'details',arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: AssetImage('assets/no-image.jpg'),
                fit: BoxFit.cover,
                ),
            ),
          );

        },
      ),

    );
  }
}


