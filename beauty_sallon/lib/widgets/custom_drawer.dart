import 'package:beauty_salon/Screens/contact_us.dart';
import 'package:beauty_salon/Screens/eyes.dart';
import 'package:beauty_salon/Screens/hair_styles.dart';
import 'package:beauty_salon/Screens/nails.dart';
import 'package:beauty_salon/Screens/multibuilding.dart';
import 'package:beauty_salon/Screens/price.dart';
import 'package:flutter/material.dart';
import '../Screens/draw.dart';
import '../Screens/home_page.dart';
import '../constants.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kDrawer,
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: ListView(
          children: [
            ListTile(
              leading: const SizedBox(width: 35),
              title: const Text(
                'روچ هوم',
                style: TextStyle(color: Colors.white,fontFamily: 'edu'),
                textDirection: TextDirection.rtl,
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Image.asset(
                  'assets/images/home.png',
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },

              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            ListTile(
              leading: const SizedBox(width: 35),
              title: const Text(
                'هارد چل',
                style: TextStyle(color: Colors.white,fontFamily: 'edu'),
                textDirection: TextDirection.rtl,
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Nails()));
                },
                child: Image.asset(
                  'assets/images/nails-polish1.png',
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Nails()));
              },

              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            ListTile(
              leading: const SizedBox(width: 35),
              title: const Text(
                'قصات الشعر',
                style: TextStyle(color: Colors.white,fontFamily: 'edu'),
                textDirection: TextDirection.rtl,
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HairStyles()));
                },
                child: Image.asset(
                  'assets/images/hairthumb.png',
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HairStyles()));
              },

              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            ListTile(
              leading: const SizedBox(width: 35),
              title: const Text(
                'رسم الحنة',
                style: TextStyle(color: Colors.white,fontFamily: 'edu'),
                textDirection: TextDirection.rtl,
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Draw()));
                },
                child: Image.asset(
                  'assets/images/pencil.png',
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Draw()));
              },

              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            ListTile(
              leading: const SizedBox(width: 35),
              title: const Text(
                'تاتو و مالتي بيلدينج',
                style: TextStyle(color: Colors.white,fontFamily: 'edu'),
                textDirection: TextDirection.rtl,
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Multibuilding()));
                },
                child: Image.asset(
                  'assets/images/tattoo.png',
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Multibuilding()));
              },

              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            ListTile(
              leading: const SizedBox(width: 35),
              title: const Text(
                'رسـم الحـواجـب',
                style: TextStyle(color: Colors.white,fontFamily: 'edu'),
                textDirection: TextDirection.rtl,
              ),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Eyes()));
                },
                child: Image.asset(
                  'assets/images/eyebrow.png',
                  width: 35,
                  height: 35,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Eyes()));
              },

              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            const Divider(
              height: 100,
              thickness: 1,
              color: Colors.white,
            ),
      ListTile(
        leading: const SizedBox(width: 35),
        title: const Text(
          'الأسعـار و العـروض',
          style: TextStyle(color: Colors.white,fontFamily: 'edu'),
          textDirection: TextDirection.rtl,
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Price()));
          },
          child: Image.asset(
            'assets/images/money.png',
            width: 35,
            height: 35,
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Price()));
        },
      ),
      ListTile(
        leading: const SizedBox(width: 35),
        title: const Text(
          'تـواصل معـنا',
          style: TextStyle(color: Colors.white,fontFamily: 'edu'),
          textDirection: TextDirection.rtl,
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Contact()));
          },
          child: Image.asset(
            'assets/images/contact.png',
            width: 35,
            height: 35,
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Contact()));
        },
      ),
          ],
        ),
      ),
    );
  }
}
