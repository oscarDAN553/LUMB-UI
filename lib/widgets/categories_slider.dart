import 'package:flutter/material.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      alignment: Alignment.topLeft,
      width: double.infinity,
      height: 200
      ,
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:  Text("CATEGORIAS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
         // SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 9, 
              itemBuilder:(_, int index){
                return _CategoryCard();
              } 
              ),
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      margin: EdgeInsets.all(10),
      child: Column(
            children: [
              CircleAvatar(
                
                radius: 60,
              ),
              Text("alimentos", style: TextStyle(fontSize: 22),),
            ],
          ),
    );
  }
}

