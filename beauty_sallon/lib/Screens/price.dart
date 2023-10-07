import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beauty_salon/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      backgroundColor: kPinkOpened,
      appBar: AppBar(
        backgroundColor: kPinkClosed,
        elevation: 0,
        title: const Text('الأسعار و العروض',
            style: TextStyle(
                fontFamily: 'edu'
            ),
            textDirection: TextDirection.rtl),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEE9CA7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 700,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            'عــرض الـ150 جنية:\n ترمــيم و عـلاج تساقـط و هيـشان الشـعر وجعـل الشعـر ناعـم',textDirection: TextDirection.rtl,
                         style: TextStyle(fontFamily: 'edu',fontSize: 20), ),
                            Divider(
                              thickness:4 ,
                              height: 15,
                            ),
                            Text(
                              'عــرض الـ100 جنية:\n وش + حــواجـب + باديـكـيـر + مانــيكـيـر + سيـشـوار + مكــواة',textDirection: TextDirection.rtl,
                              style: TextStyle(fontFamily: 'edu',fontSize: 20), ),
                            Divider(
                              thickness:4 ,
                              height: 15,
                            ),
                            Text(
                              'عــرض الـ100 جنية:\n وش + حــواجـب + تنظــيـف بشــرة 8 مــراحـل + حنــة حــواجـب ',textDirection: TextDirection.rtl,
                              style: TextStyle(fontFamily: 'edu',fontSize: 20), ),
                            Divider(
                              thickness:4 ,
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'عــرض 1:\n هــارد جــل -> 150 جنية ',
                                  style: TextStyle(fontFamily: 'edu', fontSize: 20),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'عــرض 2:\n تــريدمنــت -> 120 جنية ',
                                  style: TextStyle(fontFamily: 'edu', fontSize: 20),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'عــرض 3:\n جـــل بولــيش -> 100 جنية ',
                                  style: TextStyle(fontFamily: 'edu', fontSize: 20),
                                  textDirection: TextDirection.rtl,
                                ),
                              ],
                            ),

                          ])
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
