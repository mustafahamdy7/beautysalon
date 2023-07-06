import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';
import 'categoriesdata.dart';

class Categories {
  final String title;
  late final List<BookClass> books;

  Categories({required this.title, required this.books});
}

class BookClass {
  final String title;
  final List<String> authors;
  final String description;
  final String publisher;
  final String publishDate;
  final String thumbnail;
  final String previewLink;
  final String smallThumbnail;

  BookClass({
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

class ThumbnailsClassicPage extends StatefulWidget {
  @override
  _ThumbnailsClassicPageState createState() => _ThumbnailsClassicPageState();
}

class _ThumbnailsClassicPageState extends State<ThumbnailsClassicPage> {
  List<BookClass> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=classic&maxResults=20');
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
      backgroundColor: const Color(0xFF1bbc9b),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageForClassic(),
                  settings: RouteSettings(arguments: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ThumbnailsFantasyPage extends StatefulWidget {
  @override
  _ThumbnailsFantasyPageState createState() => _ThumbnailsFantasyPageState();
}

class _ThumbnailsFantasyPageState extends State<ThumbnailsFantasyPage> {
  List<BookClass> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=fantasy&maxResults=20');
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
      backgroundColor: const Color(0xFF9b58b5),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageForFantasy(),
                  settings: RouteSettings(arguments: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ThumbnailsHorrorPage extends StatefulWidget {
  @override
  ThumbnailsHorrorPageState createState() => ThumbnailsHorrorPageState();
}

class ThumbnailsHorrorPageState extends State<ThumbnailsHorrorPage> {
  List<BookClass> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=horror&maxResults=20');
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
      backgroundColor: const Color(0xFF4d4d4d),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageForHorror(),
                  settings: RouteSettings(arguments: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ThumbnailsFairyTalePage extends StatefulWidget {
  @override
  ThumbnailsFairyTalePageState createState() => ThumbnailsFairyTalePageState();
}

class ThumbnailsFairyTalePageState extends State<ThumbnailsFairyTalePage> {
  List<BookClass> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=fairy%20tale&maxResults=20');
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
      backgroundColor: const Color(0xFFf1c40f),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageForFairy(),
                  settings: RouteSettings(arguments: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ThumbnailsThrillerPage extends StatefulWidget {
  @override
  ThumbnailsThrillerPageState createState() => ThumbnailsThrillerPageState();
}

class ThumbnailsThrillerPageState extends State<ThumbnailsThrillerPage> {
  List<BookClass> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=thriller&maxResults=20');
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
      backgroundColor: const Color(0xFFe84c3d),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageForThriller(),
                  settings: RouteSettings(arguments: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ThumbnailsFictionPage extends StatefulWidget {
  @override
  ThumbnailsFictionPageState createState() => ThumbnailsFictionPageState();
}

class ThumbnailsFictionPageState extends State<ThumbnailsFictionPage> {
  List<BookClass> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=science%20fiction&maxResults=20');
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
      backgroundColor: const Color(0xFF3598db),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageForFiction(),
                  settings: RouteSettings(arguments: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ThumbnailsLovePage extends StatefulWidget {
  @override
  ThumbnailsLovePageState createState() => ThumbnailsLovePageState();
}

class ThumbnailsLovePageState extends State<ThumbnailsLovePage> {
  List<BookClass> books = [];

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=love&maxResults=20');
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
      backgroundColor: const Color(0xFFe77e23),
      appBar: const CustomAppBar(),
      drawer: CustomDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageForLove(),
                  settings: RouteSettings(arguments: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
