import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      //color: Colors.red,
      child: Column(
        children: [

            Padding(
              padding: EdgeInsets.symmetric( horizontal: 20 ),
              child: Text( 'Populares', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold ),),
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: ( _, int index)=>_ImagePoster()
                ),
            )
        ],
      ),
    );
  }
}

class _ImagePoster extends StatelessWidget {
  const _ImagePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      final size=MediaQuery.of(context).size;
      
                  return Container(
                    width: 130,
                    height: 190,
                    //color: Colors.green,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        GestureDetector(
                           onTap: ()=> Navigator.pushNamed(context, 'details',arguments: 'movie-instance'),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: FadeInImage(
                              placeholder: AssetImage('assets/no-image.jpg'), 
                              image: AssetImage('assets/no-image.jpg'),
                              width: 130,
                              height: 190,
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                          SizedBox(height:3),
                          Text('Titulo',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center)

                      ],),
                  );
  }
}

