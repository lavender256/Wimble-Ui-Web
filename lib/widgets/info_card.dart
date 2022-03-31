import 'package:flutter/material.dart';
import 'package:wimble/colors.dart';
class InfoCard extends StatelessWidget {
final int index;
final String content;

InfoCard({this.index,this.content});

  @override
  Widget build(BuildContext context) {var size=MediaQuery.of(context).size;
    return Container(
      width: size.width*.195,
      height: size.height,
      color: index.isEven?infoCardColor2:infoCardColor,
      child: Stack(
        children: [
          Positioned(left: size.width*.02,
            child: Text(index.toString(),style: TextStyle(
              color: Colors.white38,fontWeight:FontWeight.w800,fontSize:  size.width*.08
            ),),

          ),
          Center(child: Text(content,style: TextStyle(
            color: Colors.white,fontSize: size.width*.01,fontWeight: FontWeight.w400
          ),))
        ],
      ),
    );
  }
}
