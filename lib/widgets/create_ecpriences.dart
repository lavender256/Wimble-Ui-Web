import 'package:flutter/material.dart';

class CreateExpriences extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.3,
      height: size.height*.4,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Create\nexperiences\nwith us",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.w800,fontSize: size.width*.045
          ),),
          Text("Credibly enable tectical leadship with multidisciplinary\nmake a proper way to the funvtionalities.",
            style: TextStyle(
                color: Colors.white70,fontSize: size.width*.01,fontWeight: FontWeight.w500
            ),)
        ],
      ),
    );
  }
}
