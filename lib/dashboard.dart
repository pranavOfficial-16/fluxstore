import 'package:flutter/material.dart';
import 'package:fluxstore/constants.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class DashBoard extends StatefulWidget {
  static const String id = 'dashboard';
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://img.icons8.com/color/48/000000/flutter.png",
            ),
            const Hero(
              tag: title,
              child: Text(
                title,
                style: titleFont,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(23, 0, 10, 0),
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.grey[300],
                            elevation: 0,
                            child: Icon(
                              Icons.boy,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(23, 0, 10, 0),
                          child: Text(
                            "Men",
                            style: scrollFont,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.grey[300],
                            elevation: 0,
                            child: Icon(
                              Icons.girl,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          "Women",
                          style: scrollFont,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.grey[300],
                            elevation: 0,
                            child: Icon(
                              Icons.emoji_people,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          "Clothing",
                          style: scrollFont,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.grey[300],
                            elevation: 0,
                            child: Icon(
                              Icons.shopping_bag,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          "Posters",
                          style: scrollFont,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.grey[300],
                            elevation: 0,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          "Music",
                          style: scrollFont,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ImageSlideshow(
                    width: double.infinity,
                    height: 200,
                    initialPage: 0,
                    indicatorColor: Colors.blue,
                    indicatorBackgroundColor: Colors.grey,
                    onPageChanged: (value) {
                      print('Page changed: $value');
                    },
                    autoPlayInterval: 3000,
                    isLoop: true,
                    children: [
                      Image.network(
                        "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Image.network(
                    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
                    fit: BoxFit.cover,
                    height: 180,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 190,
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 190,
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg",
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
    Text(""),
    Text(""),
    Text(""),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        selectedLabelStyle: labelFont,
      ),
    );
  }
}
