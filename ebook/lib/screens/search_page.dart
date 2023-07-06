import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:convert';
import '../categories/categoriesthumb.dart';
import '../widgets/custom_app_bar.dart';

class Booka {
  final String title;
  final List<String> authors;
  final String description;
  final String publisher;
  final String publishDate;
  final String thumbnail;
  final String previewLink;
  final String smallThumbnail;

  Booka({
    required this.title,
    required this.authors,
    required this.description,
    required this.publisher,
    required this.publishDate,
    required this.thumbnail,
    required this.previewLink,
    required this.smallThumbnail,
  });
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<BookClass> books = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<void> searchBooks(String query) async {
    final url =
        Uri.parse('https://www.googleapis.com/books/v1/volumes?q=$query');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final items = data['items'] as List<dynamic>;

      final List<BookClass> fetchedBooks = items
          .map((item) {
            final volumeInfo = item['volumeInfo'];
            final thumbnail = volumeInfo['imageLinks'] != null
                ? volumeInfo['imageLinks']['thumbnail']
                : '';
            final smallThumbnail = volumeInfo['imageLinks'] != null
                ? volumeInfo['imageLinks']['smallThumbnail']
                : '';
            if (thumbnail.isEmpty && smallThumbnail.isEmpty) {
              return null; // Skip the book if both thumbnail and smallThumbnail are empty
            }

            return BookClass(
              title: volumeInfo['title'] ?? '',
              authors: volumeInfo['authors'] != null
                  ? List<String>.from(volumeInfo['authors'])
                  : [],
              description: volumeInfo['description'] ?? '',
              publisher: volumeInfo['publisher'] ?? '',
              publishDate: volumeInfo['publishedDate'] ?? '',
              thumbnail: thumbnail,
              previewLink: volumeInfo['previewLink'] ?? '',
              smallThumbnail: smallThumbnail,
            );
          })
          .where((book) => book != null) // Remove any null book entries
          .cast<BookClass>() // Cast the list to List<Book>
          .toList();

      setState(() {
        books = fetchedBooks;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    String query = _searchController.text.trim();
                    searchBooks(query);
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                    leading: Image.network(
                      book.thumbnail,
                      width: 50,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    title: Text(book.title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(book.authors.join(', ')),
                        Text('Publisher: ${book.publisher}'),
                        Text('Publish Date: ${book.publishDate}'),
                      ],
                    ),
                    isThreeLine: true,
                    dense: true,
                    onTap: () {
                      launchUrlString(book.previewLink);
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
