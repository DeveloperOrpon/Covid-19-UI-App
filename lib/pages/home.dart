import 'package:covid19_app_ui/pages/home_page.dart';
import 'package:covid19_app_ui/pages/info_page.dart';
import 'package:covid19_app_ui/pages/news_page.dart';
import 'package:covid19_app_ui/pages/statistics_page.dart';
import 'package:flutter/material.dart';

import '../model/navbarmodel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

late Size mq;
bool navBar = false;
int _currentindex = 0;
List pages = [
  const MyHomePage(title: 'Covid-19'),
  const StatisticsPage(),
  const NewsPage(),
  const InfoPage(),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/covid.png",
          height: 50,
          color: Colors.white,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        backgroundColor: Colors.deepPurple[800],
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications_none_rounded,
              size: 24,
            ),
          ),
        ],
      ),
      body: pages[_currentindex],
      bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
            indicatorColor: Colors.blue,
          ),
          child: ValueListenableBuilder(
            valueListenable: valueNavbar.enable,
            builder: (context, value, child) {
              return AnimatedContainer(
                height: valueNavbar.enable.value ? 60 : 0,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInSine,
                child: NavigationBar(
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  animationDuration: const Duration(seconds: 2),
                  //height: valueNavbar.enable.value ? 60 : 0,
                  backgroundColor: Colors.white,
                  selectedIndex: _currentindex,
                  onDestinationSelected: (value) {
                    setState(() {
                      _currentindex = value;
                      debugPrint(" value :$navBar");
                      valueNavbar.enable.value = value == 1 ? false : true;
                    });
                  },
                  destinations: const [
                    NavigationDestination(
                      icon: Icon(
                        Icons.home,
                        color: Colors.grey,
                        size: 25,
                      ),
                      selectedIcon: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: "Menu",
                    ),
                    NavigationDestination(
                      icon: Icon(
                        Icons.analytics_outlined,
                        color: Colors.grey,
                        size: 25,
                      ),
                      selectedIcon: Icon(
                        Icons.analytics_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: "Analytics",
                    ),
                    NavigationDestination(
                      icon: Icon(
                        Icons.newspaper_rounded,
                        color: Colors.grey,
                        size: 25,
                      ),
                      selectedIcon: Icon(
                        Icons.newspaper_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: "News",
                    ),
                    NavigationDestination(
                      selectedIcon: Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 25,
                      ),
                      icon: Icon(
                        Icons.info,
                        color: Colors.grey,
                        size: 25,
                      ),
                      label: "Information",
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
