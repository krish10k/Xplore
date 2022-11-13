import 'package:flutter/material.dart';
import 'package:demo_app/widgets/myCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xplore',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xplore'),
        ),
        body: SafeArea(
          child: ListView(children: [
            // myCard(),
            // Center(
            //   child: Text("Cities in maharastra"),
            // ),
            CityCard(
                "Pune",
                "Maharastra- Pune is considered to be the IT hub of state. It's' ranked 'the most liveable city",
                "https://media.istockphoto.com/photos/the-mumbai-pune-expressway-picture-id1240837978?k=20&m=1240837978&s=612x612&w=0&h=0bkvZ9XenP_GQnVkjkHhnCP8mUTRZ-m6G-_a885Aqxg=",
                rating: 70),

            CityCard(
                "Mumbai",
                "Mumbai is the centre of the Mumbai Metropolitan Region, the sixth most populous",
                "https://cdn.staticmb.com/magicservicestatic/images/pincode/city/web/Mumbai.png",
                rating: 99),
            // static assects
            Image.asset(
              'images/mumbai.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.fitHeight,
            ),
            // titleSection,

            CityCard(
                "Pune",
                "Pune is considered to be the cultural and educational capital of Maharashtra state.",
                "https://upload.wikimedia.org/wikipedia/commons/1/14/Shaniwaarwada_Pune.jpg"),
          ]),
        ),
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  final String renderUrl;
  CircleImage(this.renderUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 120.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(renderUrl),
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
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          CircleImage(url ??
              'https://cdn.staticmb.com/magicservicestatic/images/pincode/city/web/Mumbai.png'),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8, left: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    details,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 66, 62, 62),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 138, 90, 235),
                  ),
                  Text('${rating ?? 50}'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => myCard(),
                        ),
                      ),
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 25.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

// https://cdn.staticmb.com/magicservicestatic/images/pincode/city/web/Mumbai.png

Widget img = Container(
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://picsum.photos/250?image=9'),
      fit: BoxFit.fill,
    ),
  ),
);
