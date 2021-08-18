import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
           children: [
             _CardDetails(),
             Container(
      margin: EdgeInsetsDirectional.only(start: 10,end: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
         // margin: EdgeInsetsDirectional.all(5.0),
          height: 350.0,
          width: double.infinity,
          color: Colors.grey[500],
          child: Column(
            children: [

              Text('RECOMENDACIONES',
              style: TextStyle(color: Colors.white,fontSize: 25.0,),maxLines: 1,
              //textAlign: TextAlign.start
              ),
              
             /*  Container(
                //color: Colors.green,
                height: double.infinity,
                width: MediaQuery.of(context).size.width * .50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Botella de agua', style: TextStyle(color: Colors.black , fontSize: 30.0),),
                    Text('Font vella 600 ml',style: TextStyle(color: Colors.black, fontSize: 20.0)),
                  ],
                  ),
              ), */
            ],
          )
        ),
      ),
    )
           ],
          ),
      ),
    );
  }
}

class _CardDetails extends StatelessWidget {
  const _CardDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
         // margin: EdgeInsetsDirectional.all(5.0),
          height: 250.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                //color: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                height: double.infinity,
                width: MediaQuery.of(context).size.width * .30,
                child: Image(image: NetworkImage('https://img.interempresas.net/fotos/2557684.jpeg'),fit: BoxFit.cover,),
              ),
              Container(
                //color: Colors.green,
                height: double.infinity,
                width: MediaQuery.of(context).size.width * .50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Botella de agua', style: TextStyle(color: Colors.black , fontSize: 30.0),),
                    Text('Font vella 600 ml',style: TextStyle(color: Colors.black, fontSize: 20.0)),
                  ],
                  ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: double.infinity,
                  //width: MediaQuery.of(context).size.width * .10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.eco_outlined, color: Colors.black,)
                       ),
                       IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite_border, color: Colors.black,)
                       ),
                       SizedBox(height: 15.0,)
                       
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}