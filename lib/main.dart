import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_app/men_shoes.dart';
import 'package:shoes_app/women_shoes.dart';

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
  int selectedIndex = 0;
  var imageItems = [
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes1.png',
      'title': 'Men Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes14.png',
      'title': 'Women Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes2.png',
      'title': 'Men Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes15.png',
      'title': 'Women Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes3.png',
      'title': 'Men Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes16.png',
      'title': 'Women Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes4.png',
      'title': 'Men Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes17.png',
      'title': 'Women Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes5.png',
      'title': 'Men Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes18.png',
      'title': 'Women Shoes'
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 85,
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
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          selectedItemColor: Color.fromRGBO(100, 236, 199, 1),
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Color.fromRGBO(100, 236, 199, 1),
                  child: Icon(Icons.home, color: Colors.black,),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor: Color.fromRGBO(100, 236, 199, 1),
                  child: Icon(Icons.card_giftcard_outlined, color: Colors.black,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor: Color.fromRGBO(100, 236, 199, 1),
                  child: Icon(Icons.favorite_border_outlined, color: Colors.black,)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundColor: Color.fromRGBO(100, 236, 199, 1),
                  child: Icon(Icons.menu_open, color: Colors.black,)),
              label: '',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
                height: 190,
                //color: Colors.green,
                child: ListView.builder(
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
                                  radius: selectedImage == index ? 50 : 40,
                                  backgroundColor: selectedImage == index
                                      ? const Color.fromRGBO(100, 236, 199, 1)
                                      : const Color.fromRGBO(234, 220, 254, 1),
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
                                  child: Text(
                                    imageItems[index]['title']!,
                                    style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: selectedImage == index
                                            ? const Color.fromRGBO(
                                                100, 236, 199, 1)
                                            : Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromRGBO(100, 236, 199, 1)),
                        indicatorSize: TabBarIndicatorSize.tab,
                        controller: tabController,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 30),
                        tabs: const [
                          Tab(
                            child: Text(
                              'MEN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'WOMEN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        MenShoes(),
                        WomenShoes(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
