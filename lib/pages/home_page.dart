import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:covid19_app_ui/widget/card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(value: "USA", child: Text("USA")),
      DropdownMenuItem(value: "Canada", child: Text("Canada")),
      DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  String selectedValue = "USA";

  final List<String> imgList = [
    'images/banner.jfif',
    'images/banner1.jpg',
    'images/banner2.jpg',
    'images/banner3.webp',
    'images/banner4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple[800],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Covid-19",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Icon(Icons.home),
                                ),
                                DropdownButton(
                                  alignment: Alignment.center,
                                  underline:
                                      Container(color: Colors.transparent),
                                  value: selectedValue,
                                  items: dropdownItems,
                                  onChanged: ((value) {}),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                    child: Column(
                      children: [
                        const Text(
                          "Are you feeling sick?",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Roboto",
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 50,
                                child: ElevatedButton.icon(
                                  icon: const Icon(Icons.call),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  label: const Text(
                                    'Call Now',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: 50,
                              child: ElevatedButton.icon(
                                icon: const Icon(Icons.chat),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                label: const Text(
                                  'Sent SMS',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Roboto",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Prevention",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Roboto",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        _buildCard("images/avoid-crowds.png"),
                        const Text("Avoid close contact"),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: [
                          _buildCard("images/hand-washing.png"),
                          const Text("Clean your hands often"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        _buildCard("images/girl.png"),
                        const Text("Wear a facemaskt"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const CardWidget(),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 20),
          child: _buildImageSlider(),
        )
      ],
    );
  }

  Widget _buildCard(String url) {
    return Card(
      color: const Color.fromARGB(255, 176, 149, 181),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              width: 60.0,
              child: Column(
                children: [
                  Image.asset(url),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageSlider() {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 12.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 120.0,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          disableCenter: true,
          viewportFraction: 1,
          enlargeCenterPage: true,
        ),
        items: imgList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.asset(
                  i,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
