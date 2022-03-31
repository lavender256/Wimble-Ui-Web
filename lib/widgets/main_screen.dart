import 'package:flutter/material.dart';
import 'package:wimble/data/data.dart';
import 'package:wimble/widgets/create_ecpriences.dart';

import '../colors.dart';
import 'app_bar.dart';
import 'info_card.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
      width: size.width,
      height: size.height*.9,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(

                width: size.height * .71,
                height: size.height ,
                decoration: BoxDecoration( color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/rwPZgfB9/IMG-20220331-190644.jpg"),fit: BoxFit.cover
                  )
                ),
              )),
          Positioned(top: size.height * .03, child: MyAppBar()),
          Positioned(
              top: size.height * .13,
              left: size.width * .35,
              child: Container(
                color: mainColor,
                width: size.width * .12,
                height: size.height,
              )),
          Positioned(
              right: size.width*.28,
              top: size.height*.2,
              child: CreateExpriences()),
          Positioned(
              bottom: size.height * .05,
              left: size.width * .42,
              child: Container(
                width: size.width * .6,
                height: size.height * .2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: infoCardList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InfoCard(
                        index: index + 1,
                        content: infoCardList[index],
                      );
                    }),
              ))
        ],
      ),
    );
  }
}
