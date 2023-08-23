import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khello/values/colors.dart';

List language = ['English', 'हिन्दी', 'தமிழ்', 'ಕನ್ನಡ','नेपाली','मराठी','गुजराती'];

void showMoreLanguageDialog(BuildContext context){
  AlertDialog alert = AlertDialog(
    contentPadding: EdgeInsets.zero,
    actionsPadding: EdgeInsets.zero,

    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    actions: [

      Container(
        height: Get.height*0.45,
        //padding: EdgeInsets.all(20),
        
        decoration: BoxDecoration(
          color: Colors.black,
            border: Border.all(width: 2,color: AppColors.primarySecondaryBackground),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: Get.width,
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Select Langauge',style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),),
                  InkWell(
                    onTap: ()=>Navigator.of(context).pop(),
                    child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.close,color: Colors.white,)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height*0.025,
            ),
            Container(
              height:  Get.height*0.32,
              width: Get.width,
              child: ListView.builder(
                itemCount: language.length,
                itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: Get.width,
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.black:Colors.brown.shade900,
                    border: Border.all(width: 0.8,color: Colors.amber.shade200)
                  ),
                  child: Text(language[index],style: TextStyle(
                    color: Colors.amber
                  ),),
                );
              },),
            ),
          ],
        ),
      )
    ],
  );
  showDialog(
    context: context,

    builder: (BuildContext context) {
      return alert;
    },
  );

}