import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beauty_salon/Screens/contact_us.dart';
import 'package:beauty_salon/Screens/draw.dart';
import 'package:beauty_salon/Screens/eyes.dart';
import 'package:beauty_salon/Screens/hair_styles.dart';
import 'package:beauty_salon/Screens/nails.dart';
import 'package:beauty_salon/Screens/multibuilding.dart';
import 'package:beauty_salon/Screens/price.dart';
import 'package:beauty_salon/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     endDrawer: CustomDrawer(),
      backgroundColor: kPinkOpened,
      appBar: AppBar(
        backgroundColor: kPinkClosed,
        elevation: 0,
        title: const Text('روچ هوم',
        style: TextStyle(
          fontFamily: 'edu'
        ),
        textDirection: TextDirection.rtl),
centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 25),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'اهلا بكم في صالون روچ للسيدات',
                  textStyle: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'edu'),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 500),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HairStyles(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: const Color(0xFFEE9CA7),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: Container(
                              child: Image.asset(
                                'assets/images/hair.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('قصات الشعر '
                              ,style: TextStyle(
                                  fontFamily: 'edu',fontSize: 20
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Nails(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: const Color(0xFFEE9CA7),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: Container(
                              child: Image.asset(
                                'assets/images/nailsimg.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('هارد چل و طلاء الأظافر',style: TextStyle(
                                fontFamily: 'edu',fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Draw(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: const Color(0xFFEE9CA7),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: Container(
                              child: Image.asset(
                                'assets/images/henna.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('رسـم الحنة',style: TextStyle(
                                fontFamily: 'edu',fontSize: 20),
                            )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Multibuilding(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: const Color(0xFFEE9CA7),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: Container(
                              child: Image.asset(
                                'assets/images/tattoo.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('تاتو و مالتي بيلدينج',style: TextStyle(
                                fontFamily: 'edu',fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Eyes(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: const Color(0xFFEE9CA7),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: Container(
                              child: Image.asset(
                                'assets/images/eyebrow1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('رســم الحــواجــب',style: TextStyle(
                                fontFamily: 'edu',fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Price(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: const Color(0xFFEE9CA7),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: Container(
                              child: Image.asset(
                                'assets/images/offers.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('الأسعــار و العــروض',style: TextStyle(
                                fontFamily: 'edu',fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Contact(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: const Color(0xFFEE9CA7),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 250,
                            width: double.infinity,
                            child: Container(
                              child: Image.asset(
                                'assets/images/contactus.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('تــواصل معــنا',style: TextStyle(
                                fontFamily: 'edu',fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
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
