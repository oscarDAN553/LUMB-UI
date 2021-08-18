import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lumb_ui/models/dumy_data.dart';

class CardGridView extends StatelessWidget {
  final index;
  const CardGridView(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
        _ImageBackground(imageData: imageList[index]),
        //_ActionsStack(),
        _ColorFlag(),
        //_ActionsRow(),

      ],)
    );
  }
}



class _ImageBackground extends StatelessWidget {
 
 final DumyData imageData;
 const _ImageBackground({required this.imageData});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Column(
        children: [
          Image.network(imageData.imageUrl, fit: BoxFit.cover),
          _ActionsRow()
        ],
      ),
    );

    
    // FadeInImage(
    //   placeholder: AssetImage('assets/cargando.jpg'),
    //   image: NetworkImage('https://img.interempresas.net/fotos/2557684.jpeg'),
    // );
  }
}

/* class _ActionsStack extends StatelessWidget {
  const _ActionsStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10, //si retiras el comentario aparece rebase de limites 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,

          children: [

            _ColorFlag(),
            //Expanded(child: SizedBox(),),
            _ActionsRow()
          ],
        ),
    );
  }
} */


class _ColorFlag extends StatelessWidget {
  const _ColorFlag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      right: 0.0,
      child: Transform.rotate(
        angle: -pi / 12.0,
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.green
          ),
          //child: Text('hola mundo',style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }
}

class _ActionsRow extends StatelessWidget {
  const _ActionsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          
          children: [
            Container(
              padding: EdgeInsets.only(left: 5),
              width: 110,
              child: Text('Descripcion del producto sobredimencionado',style: TextStyle(color: Colors.black),overflow:TextOverflow.ellipsis,maxLines: 2,)
              ),
            Expanded(child: SizedBox(),),
            IconButton( 
              onPressed: (){},
              icon: Icon(Icons.favorite_border),color: Colors.black,),
            IconButton( 
              onPressed: (){},
              icon: Icon(Icons.eco_outlined),color: Colors.black,),
          ],
        ),
    );
    
  }
}