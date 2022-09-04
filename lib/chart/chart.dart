import 'package:charts_painter/chart.dart';
import 'package:flutter/material.dart';

class ChartShow extends StatefulWidget {
  const ChartShow({super.key});

  @override
  State<ChartShow> createState() => _ChartShowState();
}

class _ChartShowState extends State<ChartShow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Chart<void>(
        height: 220.0,
        state: ChartState(
          ChartData.fromList(
            [1, 3, 4, 2, 7, 6, 2, 5, 4]
                .map((e) => BarValue<void>(e.toDouble()))
                .toList(),
            axisMax: 1.0,
          ),
          itemOptions: const BarItemOptions(
            maxBarWidth: 6,
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            radius: BorderRadius.vertical(top: Radius.circular(42.0)),
          ),
          backgroundDecorations: [
            GridDecoration(
              //showHorizontalValues: true,
              //showTopHorizontalValue: true,
              //showVerticalValues: true,
              verticalAxisValueFromIndex: (index) {
                return "index == 1 ? 0 : 2";
              },
              gridWidth: .1,
              gridColor: Colors.grey,
              verticalAxisStep: 1,
              horizontalAxisStep: 1,
            ),
          ],
          foregroundDecorations: [
            BorderDecoration(borderWidth: 0.0),
          ],
        ),
      ),
    );
  }
}
