import 'package:admin_db/core/utils/app_text_styles.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
        pieChartData(
          value: 40,
          color: const Color(0xff208CC8),
          index: 0,
          title: S.of(context).Design_service,
          offset: -1.5,
        ),
        pieChartData(
          value: 25,
          color: const Color(0xff4EB7F2),
          index: 1,
          title: S.of(context).Design_product,
          offset: -1.5,
        ),
        pieChartData(
          value: 20,
          color: const Color(0xff064061),
          index: 2,
          title: S.of(context).Product_royalti,
          offset: -1.5,
        ),
        pieChartData(
          value: 22,
          color: const Color(0xffE2DECD),
          index: 3,
          title: S.of(context).Others,
          offset: -1.5,
        ),
      ],
    );
  }

  PieChartSectionData pieChartData({
    required double value,
    required Color color,
    required int index,
    required String title,
    required double offset,
  }) {
    return PieChartSectionData(
      titlePositionPercentageOffset: activeIndex == index ? offset : null,
      title: activeIndex == index ? title : "$value%",
      value: value,
      color: color,
      showTitle: true,
      titleStyle: AppTextStyles.sB16(
        context,
      ).copyWith(color: activeIndex == index ? null : Colors.white),

      radius: activeIndex == index ? 50 : 40,
    );
  }
}
