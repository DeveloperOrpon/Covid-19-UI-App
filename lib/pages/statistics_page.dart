import 'package:covid19_app_ui/pages/home.dart';
import 'package:flutter/material.dart';

import '../chart/chart.dart';
import '../model/navbarmodel.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  List<String> animalNames = ['Elephant', 'Tiger', 'Kangaroo'];
  List<String> animalFamily = ['Elephantidae', 'Panthera', 'Macropodidae'];
  List<String> animalLifeSpan = ['60-70', '8-10', '15-20'];
  List<String> animalWeight = ['2700-6000', '90-310', '47-66'];
  int selectedTile = 0;
  double initialShitSize = .6;
  double height = mq.height * .4;
  bool isSelect = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[800],
      child: Stack(
        children: [
          //bottomDetailsSheet(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Text(
                  "Statistics",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 124, 111, 147),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelect = false;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: (mq.width / 2) - 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: isSelect
                                    ? const Color.fromARGB(255, 124, 111, 147)
                                    : Colors.white,
                              ),
                              child: Text(
                                "Global",
                                style: TextStyle(
                                    color:
                                        isSelect ? Colors.white : Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Roboto"),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelect = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: (mq.width / 2) - 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: isSelect
                                    ? Colors.white
                                    : const Color.fromARGB(255, 124, 111, 147),
                              ),
                              child: Text(
                                "My Country",
                                style: TextStyle(
                                    color:
                                        isSelect ? Colors.black : Colors.white,
                                    fontSize: 14,
                                    fontFamily: "Roboto"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Total",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Today",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Yesterday",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(mq.width * .07, 20, mq.width * .07, 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: mq.width * .02),
                      height: 100,
                      width: mq.width * .4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "Affected",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "336,851",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: mq.width * .4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "Death",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "9,620",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(mq.width * .07, 20, mq.width * .07, 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: mq.width * .26,
                        margin: EdgeInsets.only(right: mq.width * 0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Recovered",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "17,977",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: mq.width * .26,
                        margin: EdgeInsets.only(right: mq.width * 0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Active",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "301,251",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: mq.width * .26,
                        margin: EdgeInsets.only(right: mq.width * 0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Serious",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "8,702",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomDetailsSheet()
        ],
      ),
    );
  }

  Widget bottomDetailsSheet() {
    return DraggableScrollableSheet(
      expand: true,
      initialChildSize: initialShitSize,
      minChildSize: .01,
      maxChildSize: .6,
      builder: (BuildContext context, ScrollController scrollController) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          initialShitSize = initialShitSize == .6 ? 0.09 : 0.6;
                          valueNavbar.enable.value = !valueNavbar.enable.value;
                        });
                      },
                      icon: Icon(
                        valueNavbar.enable.value
                            ? Icons.arrow_drop_up_rounded
                            : Icons.arrow_drop_down_rounded,
                        size: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 5, 0, 10),
                    child: valueNavbar.enable.value
                        ? Container()
                        : const Text(
                            "Daily New Cases",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                  valueNavbar.enable.value ? Container() : const ChartShow()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
