import 'dart:async';
import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khello/footer.dart';
import 'package:khello/header.dart';
import 'package:khello/pop_up_widgets.dart';
import 'package:khello/values/colors.dart';
import 'package:khello/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'DApLfGbIW5g',
  flags: YoutubePlayerFlags(
    autoPlay: true,
    disableDragSeek: false,
    loop: false,
    isLive: false,
    forceHD: false,
    enableCaption: true,
    mute: true,
  ),
);

class _HomePageState extends State<HomePage> {
  List language = ['English', 'हिन्दी', 'தமிழ்', 'ಕನ್ನಡ', '...'];
  int index = 0;
  int showgamebox = 0;
  int num1 = 9;
  int num2 = 9;
  int num3 = 4;
  bool shouldShowSupportView=false;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      Random random = new Random();
      int randomNumber1 = random.nextInt(9);
      int randomNumber2 = random.nextInt(9);
      int randomNumber3 = random.nextInt(9);
      setState(() {
        num1 = randomNumber1;
        num2 = randomNumber2;
        num3 = randomNumber3;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        height: Get.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: 20),
                    width: Get.width,
                    height: Get.height * 0.25,
                    child: PageView(
                      onPageChanged: (value) {
                        index = value;
                        setState(() {});
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
                    width: Get.width,
                    height: Get.height * 0.055,
                    color: Colors.black,
                    child: DotsIndicator(
                        dotsCount: 4,
                        position: index,
                        decorator: DotsDecorator(
                          color: AppColors.primarySecondaryElementText,
                          activeColor: AppColors.primarySecondaryBackground,
                          size: const Size.square(
                            5.0,
                          ),
                          activeSize: const Size(25.0, 4.0),
                          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                        )),
                  ),
                  Container(
                    width: Get.width,
                    height: 5,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.amber,
                          Colors.amberAccent,
                          Colors.amberAccent,
                          Colors.amberAccent,
                          Colors.white,
                          Colors.amber
                        ])),
                  ),
                  Container(
                      color: Colors.purple,
                      height: Get.height * 0.07,
                      padding: EdgeInsets.only(left: Get.width * 0.22),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: language.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (index == language.length - 1) {
                                  showMoreLanguageDialog(context);
                                }
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    language[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.w600, fontSize: 16),
                                  )),
                            );
                          })),
                  Container(
                    width: Get.width,
                    height: 5,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.amber,
                          Colors.amberAccent,
                          Colors.amberAccent,
                          Colors.amberAccent,
                          Colors.white,
                          Colors.amber
                        ])),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  getJackpotView(context: context),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text('LIVE WITHDRAWAL',
                        style: TextStyle(
                            color: AppColors.primarySecondaryBackground, fontSize: 34, fontWeight: FontWeight.w800)),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.15, vertical: 10),
                      child: Divider(color: AppColors.primarySecondaryBackground, thickness: 3, height: 2)),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: Get.width,
                    height: Get.height * 0.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://kheloo.com/images/Withdrawl-Board_9.png')),
                    ),
                    child: Container(
                      width: Get.width * 0.8,
                      margin: EdgeInsets.all(20),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            getgamePeople('Anant  ₹33915', '5 '),
                            getgamePeople('Rachit  ₹25935', '8 '),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            getgamePeople('Anant  ₹33915', '5 '),
                            getgamePeople('Rachit  ₹25935', '8 '),
                          ],
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressColors: ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent,
                    ),
                    progressIndicatorColor: Colors.amber,
                    /*  videoProgressIndicatorColor: Colors.amber,
      progressColors: ProgressColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
      ),
      onReady () {
      _controller.addListener(listener);
      },*/
                    onReady: () {
                      _controller.addListener(
                            () {
                          _controller.play();
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: Get.width * 0.5),
                      child: Divider(color: AppColors.primarySecondaryBackground, thickness: 3, height: 2)),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('GAMES',
                        style: TextStyle(
                            color: AppColors.primarySecondaryBackground, fontSize: 34, fontWeight: FontWeight.w800)),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.35, vertical: 10),
                      child: Divider(color: AppColors.primarySecondaryBackground, thickness: 3, height: 2)),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height * 0.055,
                    padding: EdgeInsets.only(left: 15),
                    child: Row( children: [

                      Container(
                        height: 50,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'Most Popular (15) ',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (showgamebox == 0) {
                            showgamebox = 1;
                          } else {
                            showgamebox = 0;
                          }

                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: Get.width * 0.028),
                          height: Get.height * 0.055,
                          width: Get.width * 0.24,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFFffa914),
                          ),
                          child: Text(
                            'Show More',
                            style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 18),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getGameBox('https://cdn.hub88.io/spribe/sbe_aviator.png', Alignment.topLeft, 0),
                      getGameBox('https://luckmedia.link/evo_monopoly_live/thumb.webp', Alignment.topLeft, 0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getGameBox('https://luckmedia.link/roy_teen_patti/thumb.webp', Alignment.topLeft, 180),
                      getGameBox('https://luckmedia.link/tvb_teen_patti/thumb.webp', Alignment.topLeft, 360),
                    ],
                  ),
                  Visibility(
                    visible: showgamebox == 1 ? true : false,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        getGameBox('https://luckmedia.link/evo_teen_patti/thumb.webp', Alignment.topLeft, 180),
                        getGameBox('https://luckmedia.link/kng_teen_patti/thumb.webp', Alignment.topLeft, 360),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Divider(color: Colors.amber.shade400,),
                  SizedBox(height: 30,),
                  FooterWidget(),
                  SizedBox(height: 70,)
                ],
              ),
            ),

           shouldShowSupportView? Positioned(
              bottom: Get.height*0.12,
              left: 10,
              child: Column(
                children: [
                  Image.network('https://kheloo.com/images/Kheloo-whatsapp.png',width: 45,height: 45,),
                  SizedBox(height: 10,),
                  Image.network('https://kheloo.com/images/chat.png',width: 45,height: 45,),
                ],
              ),
            ):Container(),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: getBottomSheet()),
            Positioned(
              bottom: 50,
              left: Get.width*0.48,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.add,color: Colors.black,),
              ),
            ),
          ],
        ),
      ),

    );
  }
  Widget getBottomSheet() {
    return Container(
      height: 70,
      color: Colors.black,
      child: Row(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                shouldShowSupportView = !shouldShowSupportView;
              });
            },
            child: Container(
              color: Colors.amber,
              width: Get.width * 0.25,
              height: 70,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/promotion_footer.png',height: 30,
                  ),
                  Text('Support' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),)
                ],
              ),),
          ),
          Container(
            color: Colors.black,
            width: Get.width * 0.25,
            height: 70,
            child:
            Column(  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://kheloo.com/images/sports-new.png',
                    height: 30),
                Text('Sport' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),)

              ],
            ),),

          Container(
            color: Colors.black,
            width: Get.width * 0.25,
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Casino.png',height: 30,),
                Text('Live Casino' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),)],
            ),),
          Container(
            color: Colors.amber,
            width: Get.width * 0.25,
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/register_footer.png',height:30,),
                Text('Register' ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),
                ),
              ],
            ),)
        ],
      ),
    );
  }

  Widget getJackpotView({required BuildContext context}) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: Get.height * 0.2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://kheloo.com/images/jackpot.png'),
            ),
          ),
        ),
        Positioned(
            left: Get.width * 0.22,
            top: Get.height * 0.09,
            child: Text(
              '9',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.red),
            )),
        Positioned(
            left: Get.width * 0.325,
            top: Get.height * 0.09,
            child: Text(
              '8',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.red),
            )),
        Positioned(
            left: Get.width * 0.425,
            top: Get.height * 0.09,
            child: Text(
              '4',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.red),
            )),
        Positioned(
            left: Get.width * 0.525,
            top: Get.height * 0.09,
            child: Text(
              '6',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.red),
            )),
        Positioned(
            left: Get.width * 0.625,
            top: Get.height * 0.09,
            child: Text(
              num1.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.red),
            )),
        Positioned(
            left: Get.width * 0.725,
            top: Get.height * 0.09,
            child: Text(
              num2.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.red),
            )),
        Positioned(
            left: Get.width * 0.825,
            top: Get.height * 0.09,
            child: Text(
              num3.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.red),
            )),
      ],
    );
  }
}
