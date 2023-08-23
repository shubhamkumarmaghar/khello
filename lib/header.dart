

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

AppBar buildAppBar() {
  return AppBar(

    toolbarHeight: Get.height * 0.075,
    title: Container(
      width: Get.width,
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network("https://kheloo.com/images/logo.gif"),
          ),
          Row(children: [GestureDetector(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://kheloo.com/images/promotion_icon.png"))),
              ),
              Text('Promotons',style: TextStyle(color:Color(0xfff9b61e) ),)]),

          ),
          SizedBox(width: 10,),
          Container(color: Color(0xfff9b61e),
          alignment: Alignment.center,
          height: Get.height*0.1,
          width: Get.width*0.22,
          child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 20),),)]),

        ],
      ),
    ),
  );
}
