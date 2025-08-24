import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        pieChartData(value: 40, color: const Color(0xff208CC8), index: 0),
        pieChartData(value: 25, color: const Color(0xff4EB7F2), index: 1),
        pieChartData(value: 20, color: const Color(0xff064061), index: 2),
        pieChartData(value: 22, color: const Color(0xffE2DECD), index: 3),
      ],
    );
  }

  PieChartSectionData pieChartData({
    required double value,
    required Color color,
    required int index,
  }) {
    return PieChartSectionData(
      value: value,
      color: color,
      showTitle: false,

      radius: activeIndex == index ? 40 : 30,
    );
  }
}
