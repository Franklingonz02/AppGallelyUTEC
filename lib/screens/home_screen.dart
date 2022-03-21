import 'package:appgallery/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Galeria'),
          elevation: 0,
                  actions: [
          IconButton(
            icon: Icon( Icons.search_outlined ),
            onPressed: () {},
          )
        ],
        ),
        body: SingleChildScrollView(
          child:  Column(
          children: [


            CardSwipper(),
            SizedBox(height: 10,),
            MovieSlider(),
            SizedBox(height: 10,),
            MovieSlider()

          ],
        ),
        )
      );
  }
}
