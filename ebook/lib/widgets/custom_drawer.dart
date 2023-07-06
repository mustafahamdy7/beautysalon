import 'package:flutter/material.dart';

import '../categories/categoriesthumb.dart';
import 'package:ebook/screens/home_page.dart';
import '../screens/search_page.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF263238),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              title: const Text(
                'Home Page',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
              ),
              title: const Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              },
            ),
            const Divider(
              height: 100,
              thickness: 1,
              color: Colors.white,
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.book,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThumbnailsFairyTalePage()));
                },
              ),
              title: const Text(
                'Fairy Tale Books',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThumbnailsFairyTalePage()));
              },
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.book,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThumbnailsHorrorPage()));
                },
              ),
              title: const Text(
                'Horror Books',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThumbnailsHorrorPage()));
              },
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.book,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThumbnailsThrillerPage()));
                },
              ),
              title: const Text(
                'Thriller Books',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThumbnailsThrillerPage()));
              },
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.book,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThumbnailsLovePage()));
                },
              ),
              title: const Text(
                'Love Stories Books',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThumbnailsLovePage()));
              },
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.book,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThumbnailsFictionPage()));
                },
              ),
              title: const Text(
                'Science Fiction Books',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThumbnailsFictionPage()));
              },
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.book,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThumbnailsFantasyPage()));
                },
              ),
              title: const Text(
                'Fantasy Books',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThumbnailsFantasyPage()));
              },
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.book,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThumbnailsClassicPage()));
                },
              ),
              title: const Text(
                'Classic Books',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThumbnailsClassicPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
