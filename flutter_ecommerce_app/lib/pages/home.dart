import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final List<String> imgList = [
    'assets/images/png/image1.png',
    'assets/images/png/image2.png',
    'assets/images/png/image3.png',
    'assets/images/png/image1.png',
    'assets/images/png/image2.png',
    'assets/images/png/image4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 260,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/png/main-home-image.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  'Street Clothes',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 50,
                    color: Colors.white,
                    height: 1,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sale',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0), // Add this
                    Text(
                      'Super summer size',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 276, // This is the height of your images
              viewportFraction: 0.333, // Display 3 items at a time
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imgList
                .map((item) => Stack(
                      children: <Widget>[
                        Container(
                          width: 190.0, // specify width
                          height: 276.0, // specify height
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit
                                  .fill, // Make sure images fill their container
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 35, // adjust the distance from the bottom
                          right: 10, // adjust the distance from the right
                          child: Container(
                            width: 35.0, // adjust the size of the circle
                            height: 35.0, // adjust the size of the circle
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                    size: 28.0,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 23.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 235, // adjust the distance from the bottom
                          child: Container(
                            width:
                                190.0, // specify width same as image container
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ...List.generate(5, (index) {
                                        return Icon(
                                          Icons.star,
                                          color: Color.fromARGB(
                                              255, 248, 213, 109),
                                          size: 20,
                                        );
                                      }),
                                      Text(
                                        ' (10)', // Add rating text next to stars
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Dorothy Perkins',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    'Evening Dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '175 euros',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sale',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0), // Add this
                    Text(
                      'Super summer size',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 276, // This is the height of your images
              viewportFraction: 0.333, // Display 3 items at a time
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imgList
                .map((item) => Stack(
                      children: <Widget>[
                        Container(
                          width: 190.0, // specify width
                          height: 276.0, // specify height
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit
                                  .fill, // Make sure images fill their container
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 35, // adjust the distance from the bottom
                          right: 10, // adjust the distance from the right
                          child: Container(
                            width: 35.0, // adjust the size of the circle
                            height: 35.0, // adjust the size of the circle
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                    size: 28.0,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 23.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 235, // adjust the distance from the bottom
                          child: Container(
                            width:
                                190.0, // specify width same as image container
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ...List.generate(5, (index) {
                                        return Icon(
                                          Icons.star,
                                          color: Color.fromARGB(
                                              255, 248, 213, 109),
                                          size: 20,
                                        );
                                      }),
                                      Text(
                                        ' (10)', // Add rating text next to stars
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Dorothy Perkins',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    'Evening Dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            height: 100,
            color: Colors.white,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double responsiveWidth = constraints.maxWidth / 5;
                return ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: responsiveWidth,
                      child: Center(
                        child: Image.asset('assets/images/png/home_button.png',
                            width: 50.0),
                      ),
                    ),
                    Container(
                      width: responsiveWidth,
                      child: Center(
                        child: Image.asset('assets/images/png/shop_button.png',
                            width: 50.0),
                      ),
                    ),
                    Container(
                      width: responsiveWidth,
                      child: Center(
                        child: Image.asset('assets/images/png/bag_button.png',
                            width: 50.0),
                      ),
                    ),
                    Container(
                      width: responsiveWidth,
                      child: Center(
                        child: Image.asset(
                            'assets/images/png/favorites_button.png',
                            width: 50.0),
                      ),
                    ),
                    Container(
                      width: responsiveWidth,
                      child: Center(
                        child: Image.asset(
                            'assets/images/png/profile_button.png',
                            width: 50.0),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
