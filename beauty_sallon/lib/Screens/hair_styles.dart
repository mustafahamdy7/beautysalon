import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beauty_salon/constants.dart';
import 'package:beauty_salon/widgets/custom_drawer.dart';

class HairStyles extends StatefulWidget {
  @override
  _HairStylesState createState() => _HairStylesState();
}

class _HairStylesState extends State<HairStyles> {
  final List<String> imagePaths = [
    'assets/images/hair10.jpg',
    'assets/images/hair9.jpg',
    'assets/images/hair8.jpg',
    'assets/images/hair7.jpg',
    'assets/images/hair6.jpg',
    'assets/images/hair5.jpg',
    'assets/images/hair4.jpg',
    'assets/images/hair3.jpg',
    'assets/images/hair2.jpg',
    'assets/images/hair1.jpg',
    'assets/images/hair11.jpeg',
  ];

  bool isZoomed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      backgroundColor: kPinkOpened,
      appBar: AppBar(
        backgroundColor: kPinkClosed,
        elevation: 0,
        title: const Text(
          'قصات الشعـر',
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
            child: ListView.builder(
              padding: const EdgeInsets.all(25),
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                final imagePath = imagePaths[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ZoomableImagePage(imagePath: imagePath),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: const Color(0xFFEE9CA7),
                        child: Stack(
                          children: [
                            Image.asset(imagePath, fit: BoxFit.cover
                            ,width: double.infinity,
                            height: 500,),
                            if (isZoomed)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isZoomed = false;
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ZoomableImagePage extends StatelessWidget {
  final String imagePath;

  const ZoomableImagePage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPinkOpened,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
            child: InteractiveViewer(
              clipBehavior: Clip.none,
              child: Image.asset(imagePath, fit: BoxFit.fitHeight),
            ),
          ),
        ),
      );
  }
}
