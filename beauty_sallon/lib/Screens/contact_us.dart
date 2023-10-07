import 'package:beauty_salon/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      backgroundColor: kPinkOpened,
      appBar: AppBar(
        backgroundColor: kPinkClosed,
        elevation: 0,
        title: const Text(
          'تواصل معنا',
          style: TextStyle(
            fontFamily: 'edu',
          ),
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEE9CA7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 250,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'العنــوان:\n 5 ش الشيـخ منصــور - أمــام حلــواني سفــيـر - عزبـة النخــل ',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(fontFamily: 'edu', fontSize: 20),
                            ),
                            Divider(
                              thickness: 4,
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'رقــم الموبـايل:\n 01228071341',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(fontFamily: 'edu', fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Adding spacing
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEE9CA7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'واجــهة الكــوافـير:',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontFamily: 'edu', fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 10), // Adding spacing
                      Container(
                        height: 320, // Set your desired height
                        color: kPinkClosed, // Placeholder color
                        child: Center(
                          child: Image.asset('assets/images/imagee.jpeg')
                        ),
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
