import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wimble/colors.dart';
import 'package:wimble/data/data.dart';
import 'package:wimble/widgets/app_bar.dart';
import 'package:wimble/widgets/info_card.dart';
import 'package:wimble/widgets/main_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          color: backgroundColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
               MainScreen(),
                Container(
                  width: size.width,
                  height: size.height * .7,
                  color: backgroundColor,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: size.width,
                          height: size.height * .2,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: size.width * .2,
                          right: size.width * .2,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * .03,
                                vertical: size.height * .1),
                            height: size.height * .7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: size.width * .01,
                                      color: mainColor,
                                      height: 3,
                                    ),
                                    SizedBox(
                                      width: size.width * .005,
                                    ),
                                    Text(
                                      "How we Work",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width*.01,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                Text(
                                  "in our work,we redefine your\ngoals and set the optima path to\nachieve them",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.width*.015,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  width: size.width,
                                  height: size.height*.22,
                                  child: Row(
                                    children: [
                                      Expanded(child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage('https://i.postimg.cc/G274ss89/photo-1544006659-f0b21884ce1d.jpg'),fit: BoxFit.cover
                                          ),
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                      )),
                                      SizedBox(width: size.width*.02,),
                                      Expanded(child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            image: DecorationImage(
                                              image: NetworkImage("https://i.postimg.cc/ZKyWCnTK/photo-1615914143778-1a1a6e50c5dd.jpg"),fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                      ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
