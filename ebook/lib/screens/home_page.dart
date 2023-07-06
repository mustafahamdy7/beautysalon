import 'package:ebook/categories/categoriesthumb.dart';
import 'package:ebook/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Best Books/bestbooks.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/glass_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D1824),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: ListView(
        padding: const EdgeInsets.only(top: 12, left: 12),
        children: [
          SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                  style: GoogleFonts.bungee(
                      textStyle: const TextStyle(fontSize: 21)),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Hi, There!'),
                      TypewriterAnimatedText('What would you like to read?'),
                    ],
                    onTap: () {},
                  ))),
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 5, right: 17),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GlassCard(
                      imagePath: 'assets/images/login2.PNG',
                      onTap: () {},
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text('Categories',
                          style: TextStyle(fontSize: 22, fontFamily: 'Bungee')),
                    ),
                    SizedBox(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: GlassCard(
                              imagePath: 'assets/images/bookc7.PNG',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThumbnailsFairyTalePage()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 13),
                            child: GlassCard(
                              imagePath: 'assets/images/bookc2.PNG',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThumbnailsHorrorPage()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 13),
                            child: GlassCard(
                              imagePath: 'assets/images/bookc3.PNG',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThumbnailsThrillerPage()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 13),
                            child: GlassCard(
                              imagePath: 'assets/images/bookc1.PNG',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThumbnailsLovePage()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 13),
                            child: GlassCard(
                              imagePath: 'assets/images/bookc5.PNG',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThumbnailsFictionPage()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 13),
                            child: GlassCard(
                              imagePath: 'assets/images/bookc6.PNG',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThumbnailsFantasyPage()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 13),
                            child: GlassCard(
                              imagePath: 'assets/images/bookc4.PNG',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ThumbnailsClassicPage()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 28, bottom: 20),
                      child: Text(
                        'Best Books',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'bungee',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 300, // Specify the desired height here
                              child: GlassCard(
                                imagePath: 'assets/images/best1.PNG',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BestBooks1()),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 10), // Add spacing between the books
                          Expanded(
                            child: Container(
                              height: 300, // Specify the desired height here
                              child: GlassCard(
                                imagePath: 'assets/images/best2.PNG',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BestBooks2()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 300, // Specify the desired height here
                              child: GlassCard(
                                imagePath: 'assets/images/best3.PNG',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BestBooks3()),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 10), // Add spacing between the books
                          Expanded(
                            child: Container(
                              height: 300, // Specify the desired height here
                              child: GlassCard(
                                imagePath: 'assets/images/best6.jpg',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BestBooks4()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 15, right: 25, bottom: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 300, // Specify the desired height here
                              child: GlassCard(
                                imagePath: 'assets/images/best4.jpg',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BestBooks5()),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 10), // Add spacing between the books
                          Expanded(
                            child: Container(
                              height: 300, // Specify the desired height here
                              child: GlassCard(
                                imagePath: 'assets/images/bb3.jpg',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BestBooks6()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
