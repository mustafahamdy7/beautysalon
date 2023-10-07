import 'package:flutter/material.dart';
import 'package:beauty_salon/constants.dart';
import 'package:beauty_salon/widgets/custom_drawer.dart';

class Nails extends StatefulWidget {
  @override
  _NailsState createState() => _NailsState();
}

class _NailsState extends State<Nails> {
  final List<String> imagePaths = [
    'assets/images/hard8.jpeg',
    'assets/images/hard7.jpg',
    'assets/images/hard6.jpg',
    'assets/images/hard5.jpg',
    'assets/images/hard10.jpg',
    'assets/images/hard9.jpeg',
    'assets/images/hard4.jpg',
    'assets/images/hard3.jpg',
    'assets/images/hard2.jpg',
    'assets/images/hard1.jpg',
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
          'هارد چل و طلاء الأظافر',
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

  final double maxScale = 4;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        color: Colors.transparent, // Transparent background
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: InteractiveViewer(
              maxScale: maxScale,
              clipBehavior: Clip.none,
              child: Image.asset(imagePath, fit: BoxFit.fitHeight),
            ),
          ),
        ),
      ),
    );
  }
}

