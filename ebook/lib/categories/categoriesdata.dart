import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'categoriesthumb.dart';

class DetailsPageForClassic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookClass book = ModalRoute
        .of(context)!
        .settings
        .arguments as BookClass;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Title: ${book.title}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Authors: ${book.authors.join(", ")}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Description: ${book.description}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publisher: ${book.publisher}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publish Date: ${book.publishDate}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(book.previewLink);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Preview'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DetailsPageForFantasy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookClass book = ModalRoute.of(context)!.settings.arguments as BookClass;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Title: ${book.title}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Authors: ${book.authors.join(", ")}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Description: ${book.description}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publisher: ${book.publisher}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publish Date: ${book.publishDate}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(book.previewLink);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Preview'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class DetailsPageForHorror extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookClass book = ModalRoute.of(context)!.settings.arguments as BookClass;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Title: ${book.title}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Authors: ${book.authors.join(", ")}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Description: ${book.description}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publisher: ${book.publisher}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publish Date: ${book.publishDate}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(book.previewLink);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Preview'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DetailsPageForFairy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookClass book = ModalRoute.of(context)!.settings.arguments as BookClass;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Title: ${book.title}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Authors: ${book.authors.join(", ")}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Description: ${book.description}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publisher: ${book.publisher}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publish Date: ${book.publishDate}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(book.previewLink);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Preview'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DetailsPageForThriller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookClass book = ModalRoute.of(context)!.settings.arguments as BookClass;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Title: ${book.title}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Authors: ${book.authors.join(", ")}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Description: ${book.description}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publisher: ${book.publisher}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publish Date: ${book.publishDate}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(book.previewLink);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Preview'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DetailsPageForFiction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookClass book = ModalRoute.of(context)!.settings.arguments as BookClass;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Title: ${book.title}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Authors: ${book.authors.join(", ")}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Description: ${book.description}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publisher: ${book.publisher}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publish Date: ${book.publishDate}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(book.previewLink);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Preview'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsPageForLove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookClass book = ModalRoute.of(context)!.settings.arguments as BookClass;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    book.thumbnail,
                    width: 200,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Title: ${book.title}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Authors: ${book.authors.join(", ")}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Description: ${book.description}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publisher: ${book.publisher}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Publish Date: ${book.publishDate}',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(book.previewLink);
                    },
                    icon: const Icon(Icons.link),
                    label: const Text('Preview'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
