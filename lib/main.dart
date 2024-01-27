import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.amaranthTextTheme(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text(
            message,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  var imageItems = [
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 1'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 2'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 3'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 4'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 5'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 6'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 7'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 8'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 9'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 10'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 11'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 12'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 13'
    },

    /*{'img': Image.asset('images/shoes2.png'), 'title': 'Shoes 2'},
    {'img': Image.asset('images/shoes3.png'), 'title': 'Shoes 3'},
    {'img': Image.asset('images/shoes4.png'), 'title': 'Shoes 4'},
    {'img': Image.asset('images/shoes5.png'), 'title': 'Shoes 5'},
    {'img': Image.asset('images/shoes6.png'), 'title': 'Shoes 6'},
    {'img': Image.asset('images/shoes7.png'), 'title': 'Shoes 7'},
    {'img': Image.asset('images/shoes8.png'), 'title': 'Shoes 8'},
    {'img': Image.asset('images/shoes9.png'), 'title': 'Shoes 9'},
    {'img': Image.asset('images/shoes10.png'), 'title': 'Shoes 10'},
    {'img': Image.asset('images/shoes11.png'), 'title': 'Shoes 11'},
    {'img': Image.asset('images/shoes12.png'), 'title': 'Shoes 12'},
    {'img': Image.asset('images/shoes13.png'), 'title': 'Shoes 13'},*/
  ];

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
    );*/
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            'Shoes',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              mySnackBar(context, 'Profile Details');
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/profile.jpeg'),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              mySnackBar(context, imageItems[index]['title']);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 10),
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.network(
                      imageItems[index]['img']!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
