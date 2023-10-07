import 'package:beauty_salon/constants.dart';
import 'package:flutter/material.dart';
import 'package:beauty_salon/widgets/custom_drawer.dart';

class Eyes extends StatefulWidget {
  @override
  _EyesState createState() => _EyesState();
}

class _EyesState extends State<Eyes> {
  final List<String> imagePaths = [
    'assets/images/eye1.jpeg',
    'assets/images/eye2.jpeg',
    'assets/images/eye3.jpeg',
    'assets/images/eye4.jpeg',
    'assets/images/eye5.jpeg',
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
          'رسم الحواجب',
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
                            Container(
                              width: double.infinity,
                              height: 250, // Adjust this height as needed
                              child: Image.asset(imagePath, fit: BoxFit.cover),
                            ),
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
