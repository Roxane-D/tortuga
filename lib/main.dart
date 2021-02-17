import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Flutter',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          centerTitle: true,
          title: Text(
            "Tortuga Island",
            style: TextStyle(fontFamily: 'Tangerine'),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.emoji_flags,
                color: Colors.white,
              ),
              onPressed: null,
            )
          ],
          backgroundColor: Colors.black54,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              imageSection,
              titleSection,
              textSection,
              iconSection,
              tavernSection,
              buttonSection
            ],
          ),
        ),
      ),
    );
  }
}

Widget blackBox = Container(
  height: 100,
  width: 100,
  color: Colors.black45,
);

Widget imageSection = Image.network(
    'https://www.iglucruise.com/blog/image.axd?picture=2019%2F3%2Fpirate-scene.jpg');

Widget titleSection = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Les paradis des flibustiers',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, fontFamily: 'Tangerine'),
          ),
          Text(
            'Réservez votre escale',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          )
        ],
      )
    ],
  ),
);

Widget textSection = Container(
  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
  child: Text(
    '''Nommée du fait de sa forme Tortuga de mar (« Tortue de mer ») par Christophe Colomb, cette île des Antilles était un bastion pour les flibustiers et boucaniers qui écumaient les Caraïbes au XVIIe siècle et a été le premier territoire de Saint-Domingue colonisé par la France. 
  ''',
    softWrap: true,
  ),
);

Widget iconSection = Container(
  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              Icons.festival,
              color: Colors.black54,
            ),
            SizedBox(height: 5),
            Text(
              'Tavernes'.toUpperCase(),
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              Icons.anchor,
              color: Colors.black54,
            ),
            SizedBox(height: 5),
            Text(
              'Bateaux'.toUpperCase(),
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              Icons.sports_bar,
              color: Colors.black54,
            ),
            SizedBox(height: 5),
            Text(
              'Cervoise'.toUpperCase(),
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget tavernSection = Container(
  padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          'https://i.pinimg.com/originals/99/82/f8/9982f81a630d2296f5d03f332a2b03d1.jpg',
          height: 100,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          'https://i.pinimg.com/originals/99/82/f8/9982f81a630d2296f5d03f332a2b03d1.jpg',
          height: 100,
        ),
      ),
    ],
  ),
);

Widget buttonSection = RaisedButton(
  onPressed: () {},
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
  ),
  color: Colors.black54,
  textColor: Colors.white,
  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
  child: Text('Découvrir l\'île', style: TextStyle(fontSize: 20),),
);
