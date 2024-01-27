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

  int selectedImage = -1;
  var imageItems = [
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Shoes 1'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes2.png',
      'title': 'Shoes 2'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes3.png',
      'title': 'Shoes 3'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes4.png',
      'title': 'Shoes 4'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes5.png',
      'title': 'Shoes 5'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes6.png',
      'title': 'Shoes 6'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes7.png',
      'title': 'Shoes 7'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes8.png',
      'title': 'Shoes 8'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes9.png',
      'title': 'Shoes 9'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes10.png',
      'title': 'Shoes 10'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes11.png',
      'title': 'Shoes 11'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes12.png',
      'title': 'Shoes 12'
    },
    {
      'img':
      'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes13.png',
      'title': 'Shoes 13'
    },
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
              setState(() {
                selectedImage = index;
                mySnackBar(context, imageItems[index]['title']);
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: selectedImage == index? 50 : 40,
                        backgroundColor: selectedImage == index ? const Color.fromRGBO(100, 236, 199, 1) : const Color.fromRGBO(234, 220, 254, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            imageItems[index]['img']!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(imageItems[index]['title']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      ),
                    ],
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
