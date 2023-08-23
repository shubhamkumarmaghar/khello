
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khello/values/colors.dart';

import 'home_page.dart';

Widget sliderContainer({required String image}) {
  return Container(
    width: Get.width,
    height: Get.height*0.25,
   // margin: EdgeInsets.only(left: 10, right: 10),
 //   decoration:BoxDecoration(
     //   borderRadius: BorderRadius.all(Radius.circular(28)),
      //  image: DecorationImage(
         // fit: BoxFit.cover,
        //  image: NetworkImage(image),
       // )),
      child: Image.network(image,fit: BoxFit.cover),
  );
}

Widget sliderView(BuildContext context, int states) {
  int index =0;
  return
    Column(
    children: [
      Container(
       // margin: EdgeInsets.only(top: 20),
        width: Get.width,
        height: Get.height*0.25,
        child: PageView(
          onPageChanged: (value) {
            index = value;
            print(value.toString());
           // context.read<HomePageBlocs>().add(HomePageDotsEvent(value));
          },
          children: [
            sliderContainer(image: "https://kheloo.com/images/Banner11.jpg"),
            sliderContainer(image: "https://kheloo.com/images/10minwith.png"),
            sliderContainer(image: "https://kheloo.com/images/Banner18.jpg"),
            sliderContainer(image: "https://kheloo.com/images/Dil-se-kheloo_375x250.jpg"),
          ],
        ),
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 4,
          position: index,
          decorator: DotsDecorator(
              color: AppColors.primarySecondaryElementText,
              activeColor: AppColors.primarySecondaryBackground,
              size: const Size.square(5.0),
              activeSize: const Size(17.0, 1.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0))),
        ),
      )
    ],
  );
}

Widget buildPage(int index)
{
  List<Widget> _widget = [
    const HomePage(),
    Center(child: Text("Search")),
    Center(child: Text("Course")),
    Center(child: Text("Chat")),

  ];
  return _widget[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
    backgroundColor: AppColors.primarySecondaryBackground,
    label: 'Home',
    icon: SizedBox(
      width: 15,
      height: 15,
      child:Container(
        color: Colors.amber,
        child: Column(
          children: [
          Image.asset(
          'assets/images/promotion_footer.png',
        ),
          ],
        ),
      ),
    ),
    activeIcon: SizedBox(
      width: 15,
      height: 15,
      child: Image.network(
        'https://kheloo.com/images/sports-new.png',
        color: AppColors.primaryElement,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: 'Search',
    icon: SizedBox(
      width: 15,
      height: 15,
      child: Image.network(
        'https://kheloo.com/images/sports-new.png',),
    ),
    activeIcon: SizedBox(
      width: 15,
      height: 15,
      child:Image.network(
        'https://kheloo.com/images/sports-new.png',
        color: AppColors.primaryElement,
      ),
    ),
  ),
  BottomNavigationBarItem(
    label: 'Course',
    icon: SizedBox(
      width: 15,
      height: 15,
      child: Image.asset(
        'assets/images/Casino.png',
      ),
    ),
    activeIcon: SizedBox(
      width: 15,
      height: 15,
      child: Image.asset(
        'assets/images/Casino.png',
      ),
    ),
  ),
  BottomNavigationBarItem(
    backgroundColor: AppColors.primarySecondaryBackground,
    label: 'Chat',
    icon: SizedBox(
      width: 15,
      height: 15,
      child: Image.asset(
        'assets/images/register_footer.png',),
    ),
    activeIcon: SizedBox(
      width: 15,
      height: 15,
      child: Image.asset(
        'assets/images/register_footer.png',

      ),
    ),
  ),
];



Widget getGameBox(String backgroundurl , Alignment alignment , double angle ){
  return  Container(width: Get.width*0.425,height: Get.width*0.425,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 3,color: AppColors.primarySecondaryBackground)
        ,image: DecorationImage(image: NetworkImage(backgroundurl),fit: BoxFit.cover)),
    child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
        child: Image.network('https://kheloo.com/images/game_golden_min_1.png',alignment: alignment,width: 30,height: 30,)),
  );
}

Widget getgamePeople(String nameMoney , String time){
  return Row( children: [
    Container( width: Get.width * 0.11,
        height: Get.width * 0.11,
        decoration: BoxDecoration(
          border: Border.all(
            width: Get.width * 0.005,
            color: AppColors.primarySecondaryBackground,
          ),
          borderRadius: BorderRadius.circular(100), //<-- SEE HERE
        ),
        child:CircleAvatar(backgroundColor: Colors.transparent,child: Icon(CupertinoIcons.person_solid,),
        ),),
      Container(margin: EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Text(nameMoney,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
         Text('$time second ago',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600))],),
      )
    ]
  );
}