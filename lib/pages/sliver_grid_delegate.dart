
import 'package:flutter/material.dart';
//import 'package:flutter/src/rendering/sliver.dart';

class TrySliver extends StatelessWidget {
  const TrySliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        //gridDelegate: _CustomSliver(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

         // mainAxisExtent: 
          
          ), 
        
        childrenDelegate: SliverChildListDelegate(
        
          [
        Container( color: Colors.blue, height: 100,),
        Container( color: Colors.red, height: 30,),
        Container( color: Colors.green, height: 10,),
        Container( color: Colors.yellow, height: 30,),
        Container( color: Colors.brown, height: 20,),
        Container( color: Colors.orange, height: 35,),
        Container( color: Colors.blue, height: 60,),
        Container( color: Colors.red, height: 30,),
        Container( color: Colors.green, height: 10,),
        Container( color: Colors.yellow, height: 30,),
        Container( color: Colors.brown, height: 20,),
        Container( color: Colors.orange, height: 35,),
          ],
        
        )
        ),
       
      /*   class UnaligSliver extends SliverGridDelegate {
          const UnaligSliver ();
        }
 */
    );
  }
}

/* class _CustomSliver extends SliverGridDelegate {

  
  @override
  getLayout(SliverConstraints constraints) {
    // TODO: implement getLayout
    throw UnimplementedError();
  }

  @override
  bool shouldRelayout(covariant SliverGridDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    throw UnimplementedError();
  }
  
} */












 /*  body: CustomScrollView(
  slivers: <Widget>[
    const SliverAppBar(
      pinned: false,
      floating: true,
      expandedHeight: 230.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Demo'),
      ),
    ),
    SliverGrid.(
      //gridDelegate: SliverGridDelegate(),
      /* gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2 ,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 2.0,
      ), */ 
       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 2.0, 
      ),
      
      delegate: SliverChildListDelegate([
        Container( color: Colors.blue, height: 60,),
        Container( color: Colors.red, height: 30,),
        Container( color: Colors.green, height: 10,),
        Container( color: Colors.yellow, height: 30,),
        Container( color: Colors.brown, height: 20,),
        Container( color: Colors.orange, height: 35,),
        Container( color: Colors.blue, height: 60,),
        Container( color: Colors.red, height: 30,),
        Container( color: Colors.green, height: 10,),
        Container( color: Colors.yellow, height: 30,),
        Container( color: Colors.brown, height: 20,),
        Container( color: Colors.orange, height: 35,),
      ]), 
      /* delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * (index % 9)],
            child: Text('Grid Item $index'),
          );
        },
        //childCount: 20,
      ), */
    ),
    /* SliverFixedExtentList(
      itemExtent: 50.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text('List Item $index'),
          );
        },
      ),
    ), */
  ],
) */