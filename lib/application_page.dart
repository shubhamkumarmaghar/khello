import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khello/values/colors.dart';
import 'package:khello/widgets.dart';


class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return    Container(
      //  color: Colors.white,
        child: SafeArea(
            child: Scaffold(
              body: buildPage(0),
              bottomNavigationBar:Container(
                  width: Get.width,height: Get.height*0.1,
                  decoration: BoxDecoration(
                      color: AppColors.primarySecondaryBackground,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1)]
                  ),
                  child: BottomNavigationBar(
                    currentIndex: 1,
                    onTap: (value) {
                     // context.read<AppBlocs>().add(TriggerAppEvent(value));
                     // print(value);
                    },
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    selectedItemColor: AppColors.primaryBackground,
                    unselectedItemColor: AppColors.primarySecondaryBackground,
                    items: bottomTabs,
                  )) ,
            )),
      );

  }
}
