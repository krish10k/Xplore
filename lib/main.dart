import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo App'),
        ),
        body: ListView(children: [
          // Center(
          //   child: Text("Cities in maharastra"),
          // ),
          new CityCard(
              "Pune",
              "Maharastra- Pune is considered to be the IT and educational capital of Maharashtra state. ... It has been ranked 'the most liveable city in India' several times.",
              "https://media.istockphoto.com/photos/the-mumbai-pune-expressway-picture-id1240837978?k=20&m=1240837978&s=612x612&w=0&h=0bkvZ9XenP_GQnVkjkHhnCP8mUTRZ-m6G-_a885Aqxg=",
              rating: 70),

// static assects
          Image.asset(
            'images/mumbai.jpeg',
            width: 600,
            height: 240,
            fit: BoxFit.fitHeight,
          ),
          titleSection,

          new CityCard(
              "Pune",
              "Pune is considered to be the cultural and educational capital of Maharashtra state.",
              "https://upload.wikimedia.org/wikipedia/commons/1/14/Shaniwaarwada_Pune.jpg"),
        ]),
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  final String renderUrl;
  CircleImage(this.renderUrl);
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 100.0,
      height: 100.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: new NetworkImage(renderUrl ?? ''),
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final String title, details, url;
  dynamic rating; // or int
  CityCard(this.title, this.details, this.url, {this.rating});
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          new CircleImage(url ??
              'https://cdn.staticmb.com/magicservicestatic/images/pincode/city/web/Mumbai.png'),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8, left: 5),
                  child: new Text(
                    '${title}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: new Text(
                    '${details}',
                    style: TextStyle(
                      color: Color.fromARGB(255, 66, 62, 62),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Color.fromARGB(255, 138, 90, 235),
          ),
          new Text('${rating ?? 50}'),
        ],
      ),
    );
  }
}

// https://cdn.staticmb.com/magicservicestatic/images/pincode/city/web/Mumbai.png

Widget img = Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://picsum.photos/250?image=9'),
      fit: BoxFit.fill,
    ),
  ),
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      CircleImage(
          'https://cdn.staticmb.com/magicservicestatic/images/pincode/city/web/Mumbai.png'),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8, left: 5),
              child: const Text(
                'Mumbai',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: const Text(
                'Maharastra, India Mumbai is the centre of the Mumbai Metropolitan Region, the sixth most populous metropolitan area in the world with a population of over 2.3 crore',
                style: TextStyle(
                  color: Color.fromARGB(255, 66, 62, 62),
                ),
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Color.fromARGB(255, 138, 90, 235),
      ),
      const Text('41'),
    ],
  ),
);
