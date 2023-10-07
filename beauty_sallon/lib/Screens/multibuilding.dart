import 'package:flutter/material.dart';
import 'package:beauty_salon/constants.dart';
import 'package:beauty_salon/widgets/custom_drawer.dart';

class Multibuilding extends StatefulWidget {
  @override
  _MultibuildingState createState() => _MultibuildingState();
}

class _MultibuildingState extends State<Multibuilding> {
  final List<String> imagePaths = [
    'assets/images/multi2.jpeg',
    'assets/images/multi1.jpeg',
    'assets/images/multi3.jpeg',
    'assets/images/multi4.jpg',
    'assets/images/multi5.jpg',
    'assets/images/multi6.jpg',
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
          'تــاتــو',
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
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: InteractiveViewer(
              clipBehavior: Clip.none,
              child: Image.asset(imagePath, fit: BoxFit.fitHeight),
            ),
          ),
        ),
      ),
    );
  }
}
