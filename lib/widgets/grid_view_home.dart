
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lumb_ui/models/dumy_data.dart';

import 'package:lumb_ui/widgets/widgets.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class GridViewHome extends StatelessWidget {
  const GridViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return new StaggeredGridView.countBuilder(
  crossAxisCount: 2,
  itemCount: imageList.length,
  itemBuilder: (BuildContext context, int index) {
    if (index == 0) {
      return CategoriesSlider();

    }return GestureDetector(
      onTap: (){
        showSheet(context);
      },
      child: CardGridView(index)
      );
    
  }
  ,
  staggeredTileBuilder: (int index) =>
      index == 0? StaggeredTile.count(2,1) : StaggeredTile.fit(1), //count(2, index.isEven ? 1 : 1),
  mainAxisSpacing: 10.0,
  crossAxisSpacing: 10.0,

 );
}


  Future showSheet(BuildContext context) =>showSlidingBottomSheet(
    context,
    builder: (BuildContext context)=> SlidingSheetDialog(
      snapSpec: SnapSpec( snappings: [0.7]),
      builder: buildSheet,
      )
  );
  

  Widget buildSheet(BuildContext context, SheetState state)=> Material(
    child: Column(
      children: [
        Text('continua')
      ],
    )

    );
  
}
