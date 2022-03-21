import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {

     final String valor = ModalRoute.of(context)?.settings.arguments.toString() ?? 'Default';
      return Scaffold(
        body:CustomScrollView(
          slivers: [
            _customAppBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                Text('$valor'),
              ])
              )
          ],
        )
      );
  }
}

class _customAppBar extends StatelessWidget {


Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only( bottom: 10, left: 10, right: 10),
          color: Colors.black12,
          child: Text(
              'Descripcion Prueba',
              style: TextStyle( fontSize: 16 ),
              textAlign: TextAlign.center,
            ),
        ),

        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: AssetImage('assets/no-image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}