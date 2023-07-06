import 'package:ebook/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ebook/widgets/glass_card.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BestBooks1 extends StatefulWidget {
  @override
  _BestBooks1State createState() => _BestBooks1State();
}

class _BestBooks1State extends State<BestBooks1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: InkWell(
                    child: GlassCard(
                      imagePath: 'assets/images/bb1.png',
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Title: The Lord Of the Rings',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Author: J. R. R. Tolkien',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Description: For the first time ever, a very special edition of the classic masterpiece, with the complete text and illustrated throughout by the author himself. Since it was first published in 1954, The Lord of the Rings has been a book people have treasured. Steeped in unrivalled magic and otherworldliness, its sweeping fantasy and epic adventure has touched the hearts of young and old alike. Over 150 million copies of its many editions have been sold around the world, and occasional collectors’ editions become prized and valuable items of publishing.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString(
                        'https://www.google.com.eg/books/edition/The_Lord_of_the_Rings/I8mxughWAOEC?hl=en&gbpv=1&dq=lord+of+the+rings+free&printsec=frontcover');
                  },
                  child: const Text('Read Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestBooks2 extends StatefulWidget {
  @override
  _BestBooks2State createState() => _BestBooks2State();
}

class _BestBooks2State extends State<BestBooks2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: InkWell(
                    child: GlassCard(
                      imagePath: 'assets/images/best2.PNG',
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Title: A Game of Thrones',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Author: George R.R. Martin',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Publish Date: Sep 21, 2017',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Description: In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the North of Winterfell, sinister and supernatural forces are massing beyond the kingdoms protective Wall,At the centre of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a region of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavours to win that deadliest of conflicts: the game of thrones.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString(
                        'https://books.google.com.eg/books?id=sTA2DwAAQBAJ&printsec=frontcover#v=onepage&q&f=false');
                  },
                  child: const Text('Read Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestBooks3 extends StatefulWidget {
  @override
  _BestBooks3State createState() => _BestBooks3State();
}

class _BestBooks3State extends State<BestBooks3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: InkWell(
                    child: GlassCard(
                      imagePath: 'assets/images/best3.PNG',
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Title: Wolf Hall: A Novel',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Author: Hilary Mantel',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Publish Date: Oct 13, 2009 ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Description: England in the 1520s is a heartbeat from disaster. If the king dies without a male heir, the country could be destroyed by civil war. Henry VIII wants to annul his marriage of twenty years, and marry Anne Boleyn. The pope and most of Europe opposes him. The quest for the king\'s freedom destroys his adviser, the brilliant Cardinal Wolsey, and leaves a power vacuum. Into this impasse steps Thomas Cromwell. Cromwell is a wholly original man, a charmer and a bully, both idealist and opportunist, astute in reading people and a demon of energy: he is also a consummate politician, hardened by his personal losses, implacable in his ambition. But Henry is volatile: one day tender, one day murderous. Cromwell helps him break the opposition, but what will be the price of his triumph?, In inimitable style, Hilary Mantel presents a picture of a half-made society on the cusp of change, where individuals fight or embrace their fate with passion and courage. With a vast array of characters, overflowing with incident, the novel re-creates an era when the personal and political are separated by a hairbreadth, where success brings unlimited power but a single failure means death.  ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString(
                        'https://books.google.com.eg/books?id=AUqkcy2G-N8C&printsec=frontcover#v=onepage&q&f=false');
                  },
                  child: const Text('Read Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestBooks4 extends StatefulWidget {
  @override
  _BestBooks4State createState() => _BestBooks4State();
}

class _BestBooks4State extends State<BestBooks4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: InkWell(
                    child: GlassCard(
                      imagePath: 'assets/images/best6.jpg',
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Title: The Hobbit',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Author: John Ronald Reuel Tolkien',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Publish Date: 1994',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Description: Bilbo Baggins, a respectable, well-to-do hobbit, lives comfortably in his hobbit-hole until the day the wandering wizard Gandalf chooses him to take part in an adventure from which he may never return.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString(
                        'https://books.google.com.eg/books?id=U799AY3yfqcC&printsec=frontcover#v=onepage&q&f=false');
                  },
                  child: const Text('Read Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestBooks5 extends StatefulWidget {
  @override
  _BestBooks5State createState() => _BestBooks5State();
}

class _BestBooks5State extends State<BestBooks5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: InkWell(
                    child: GlassCard(
                      imagePath: 'assets/images/best4.jpg',
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Title: The Great Gatsby',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Author: F. Scott Fitzgerald',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Publish Date: May 27, 2003',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Description: he Great Gatsby, F. Scott Fitzgerald’s third book, stands as the supreme achievement of his career. First published in 1925, this quintessential novel of the Jazz Age has been acclaimed by generations of readers. The story of the mysteriously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted “gin was the national drink and sex the national obsession,” it is an exquisitely crafted tale of America in the 1920s. ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString(
                        'https://books.google.com.eg/books?id=iXn5U2IzVH0C&printsec=frontcover#v=onepage&q&f=false');
                  },
                  child: const Text('Read Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BestBooks6 extends StatefulWidget {
  @override
  _BestBooks6State createState() => _BestBooks6State();
}

class _BestBooks6State extends State<BestBooks6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: InkWell(
                    child: GlassCard(
                      imagePath: 'assets/images/bb3.jpg',
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Title: Harry Potter',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Author: Neil Mulholland',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Publish Date: 2007-04-10',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Text(
                    'Description: ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString(
                        'http://books.google.com.eg/books?id=GWorEAAAQBAJ&hl=&source=gbs_api');
                  },
                  child: const Text('Read Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
