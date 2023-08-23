import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khello/gradient_text.dart';
import 'package:khello/widgets.dart';

class FooterWidget extends StatelessWidget {
  final _mainHeight = Get.height;
  final _mainWidth = Get.width;

  FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: _mainWidth * 0.5,
            child: Image.network("https://kheloo.com/images/logo.gif"),
          ),
          getSpace(verticalSpace: 20),
          Text(
            'India\'s Best Online Casino Slot & Live Games',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          getSpace(verticalSpace: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '18+ ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.amber),
              ),
              Text(
                'Be Responsible',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          getSpace(verticalSpace: 30),
          getRulesView(),
          getSpace(verticalSpace: 30),
          GradientText(
            text: 'GET IN TOUCH',
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.orange, Colors.white, Colors.white, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          getSpace(verticalSpace: 20),
          getSocialIconView(),
          getSpace(verticalSpace: 20),
          getRatingsView(),
          getSpace(verticalSpace: 40),
          GradientText(
            text: 'GAME PROVIDERS',
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.orange, Colors.white, Colors.white, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        //  getSpace(verticalSpace: 20),
          //getGameProvidersView(),
          getSpace(verticalSpace: 50),
          GradientText(
            text: 'PAYMENT METHODS',
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.orange, Colors.white, Colors.white, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          getSpace(verticalSpace: 10),
          getPaymentMethodView(),
          getSpace(verticalSpace: 30),
          getAppAccessView(),
        ],
      ),
    );
  }

  Widget getAppAccessView() {
    return Container(
        width: double.infinity,
        color: Colors.grey.shade900,
        child: Column(
          children: [
            getSpace(verticalSpace: 20),
            GradientText(
              text: 'GET IT ON',
              gradient: LinearGradient(
                  colors: [Colors.orange, Colors.orange, Colors.white, Colors.white, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            getSpace(verticalSpace: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.apple,
                  color: Colors.white,
                  size: 50,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Download on the',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'App Store',
                      style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
            getSpace(verticalSpace: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow_sharp,
                  color: Colors.white,
                  size: 50,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Download on the',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Google Play',
                      style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
            getSpace(verticalSpace: 40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  'Kheloo is operated by Technology Infotech a limited liability company incorporated under the laws of Curacao with company Registration number 152378 with registered office at Veer de Abraham street 9 , Curacao P.O Box 3521 and is licensed and regulated by the Curacao authority as the regulatory body responsible holding a (Sub-license with License number 365/JAZ Sub-License GLH- OCCHKTW0707072017 granted on 6.07.2019).',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey.shade500)),
            ),
            getSpace(verticalSpace: 30),
            Container(
              color: Colors.white,
                height: _mainHeight*0.07,
                width: _mainWidth*0.4,
                child: Image.network('https://kheloo.com/images/gaming_footer_logo.png')),
            getSpace(verticalSpace: 30),
          ],
        ));
  }

  Widget getPaymentMethodView() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: _mainHeight * 0.05,
                width: _mainWidth * 0.2,
                child: Image.network('https://kheloo.com/images/bank.png')),
            Container(
                height: _mainHeight * 0.05,
                width: _mainWidth * 0.2,
                child: Image.network('https://kheloo.com/images/paytm.png')),
            Container(
                height: _mainHeight * 0.05,
                width: _mainWidth * 0.25,
                child: Image.network('https://kheloo.com/images/phonepe.png'))
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            height: _mainHeight * 0.05,
            width: _mainWidth * 0.25,
            child: Image.network('https://kheloo.com/images/upi.png'))
      ],
    );
  }

  Widget getGameProvidersView() {
    return Container(
      // margin: EdgeInsets.only(top: 20),
      width: Get.width,
      height: Get.height * 0.05,
      child: PageView(
        onPageChanged: (value) {},
        children: [
          sliderContainer(
            image: "https://kheloo.com/images/Banner11.jpg",
          ),
          sliderContainer(image: "https://kheloo.com/images/10minwith.png"),
          sliderContainer(image: "https://kheloo.com/images/Banner18.jpg"),
          sliderContainer(image: "https://kheloo.com/images/Dil-se-kheloo_375x250.jpg"),
        ],
      ),
    );
  }

  Widget getRatingsView() {
    return Container(
      height: _mainHeight * 0.16,
      width: _mainWidth * 0.7,
      decoration: BoxDecoration(color: Colors.grey.shade700, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          SizedBox(
            height: _mainHeight * 0.01,
          ),
          Text(
            'EXCELLENT SERVICE',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade300, fontWeight: FontWeight.w600),
          ),
          Container(
            height: _mainHeight * 0.05,
            width: _mainWidth * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 40,
                      )),
            ),
          ),
          getSpace(verticalSpace: 10),
          Text(
            '5.0/5.0 - 6834 ratings',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade300, fontWeight: FontWeight.w600),
          ),
          getSpace(verticalSpace: 10),
          Container(
            height: _mainHeight * 0.03,
            alignment: Alignment.center,
            width: _mainWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
            child: Text(
              'Jun 2020   Verified by LiveChat',
              style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget getSocialIconView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
          child: Icon(
            Icons.facebook,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
          child: Icon(
            Icons.youtube_searched_for,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
          child: Icon(
            Icons.account_balance_outlined,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
          child: Icon(
            Icons.add_card_rounded,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
          child: Icon(
            Icons.add_box_rounded,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
          child: Icon(
            Icons.add_business,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget getRulesView() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getAboutHeaders(text: 'GENERAL INFO'),
              getSpace(verticalSpace: 20),
              getTitleText(text: 'About Us'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Contact Us'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Blog'),
              getSpace(verticalSpace: 40),
              getAboutHeaders(text: 'GAMES'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Online Casino Games'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Casino Slot Games'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Casino Table Games'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Casino Bonus & Offers'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Kheloo Privileges'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Tournaments'),
            ],
          ),
          SizedBox(
            width: _mainWidth * 0.15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getAboutHeaders(text: 'GENERAL INFO'),
              getSpace(verticalSpace: 20),
              getTitleText(text: 'About Us'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Contact Us'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Blog'),
              getSpace(verticalSpace: 40),
              getAboutHeaders(text: 'SECURITY & POLICY'),
              getSpace(verticalSpace: 20),
              getTitleText(text: 'Disclaimer'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Terms & Conditions'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Privacy Policy'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Cookie Policy'),
              getSpace(verticalSpace: 10),
              getTitleText(text: 'Disconnection Policy'),
            ],
          ),
        ],
      ),
    );
  }

  Widget getAboutHeaders({String? text}) {
    return Text(
      text ?? "",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
    );
  }

  Widget getTitleText({String? text}) {
    return Text(
      text ?? "",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.grey.shade500),
    );
  }

  Widget getSpace({double? verticalSpace, double? horizontalSpace}) {
    return SizedBox(
      height: verticalSpace,
      width: horizontalSpace,
    );
  }
}
