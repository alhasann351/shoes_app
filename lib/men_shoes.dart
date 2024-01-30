import 'package:flutter/material.dart';

class MenShoes extends StatelessWidget {
  MenShoes({super.key});

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
  var menImageItems = [
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes13.png',
      'title': 'Nike'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes2.png',
      'title': 'Adidas'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes3.png',
      'title': 'Puma'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes4.png',
      'title': 'Adidas'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes5.png',
      'title': 'Reebok'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes6.png',
      'title': 'Puma'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes7.png',
      'title': 'Adidas'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes8.png',
      'title': 'Puma'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes9.png',
      'title': 'Adidas'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes10.png',
      'title': 'Puma'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes11.png',
      'title': 'Women Shoes'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes12.png',
      'title': 'Nike'
    },
    {
      'img':
          'https://raw.githubusercontent.com/alhasann351/shoes_app/master/images/shoes13.png',
      'title': 'Nike'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 20,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sports Shoes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    mySnackBar(context, 'Sports Shoes');
                  },
                  child: const Row(
                    children: [
                      Text(
                        'MORE',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(100, 236, 199, 1),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 23,
                        color: Color.fromRGBO(100, 236, 199, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menImageItems.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 310,
                            width: 245,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 5,
                                  child: Container(
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            254, 101, 99, 1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.network(
                                      menImageItems[index]['img']!,
                                      fit: BoxFit.fill,
                                      height: 196,
                                      width: 196,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
        ),
      ],
    );
  }
}
