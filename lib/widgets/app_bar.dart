import 'package:flutter/material.dart';
import 'package:wimble/colors.dart';
import 'package:wimble/data/data.dart';

class MyAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.04),
      width: size.width,
      height: size.height*.1,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("wimble",style: TextStyle(fontSize: size.width*.015,
            color: Colors.white,fontWeight: FontWeight.w700
          ),),
          Spacer(),
          Container(
            width: size.width*.5,
            height: size.height*.1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: menuList.length,
                itemBuilder: (BuildContext context,int index){
              return Container(margin: EdgeInsets.only(right: size.width*.02),
                width: size.width*.06,
                height: size.height,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0${index.toString()}",style: TextStyle(
                      color: Colors.white38,fontWeight: FontWeight.bold
                    ),),
                    Text(menuList[index].toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1.3),),
                    Container(
                      width: size.width*.02,
                      height: 3,
                      color: index==0?mainColor:Colors.transparent,
                    )
                  ],
                ),
              );
            }),
          ),
          Container(
            width: size.width*.08,
            height: size.height*.07,
            decoration: BoxDecoration(
              border: Border.all(color: mainColor,width: 3),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text("Contact Us",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.w500
            ),),),
          )
        ],
      ),
    );
  }
}
