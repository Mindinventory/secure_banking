import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant/color_constant.dart';
import '../../../constant/constant_public.dart';
import '../../../responsive.dart';
//import 'package:charts_flutter/flutter.dart';

class MyLinearChart extends StatelessWidget {

  final double maxX;
  final double maxY;

  MyLinearChart({this.maxX = 0, this.maxY = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10,top: 10),
            decoration: const BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: EdgeInsets.only(right:Responsive.isMobile(context)?20:80),
              child: LineChart(
                  LineChartData(
                backgroundColor: AppColors.white,
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: Colors.transparent,
                      strokeWidth: 1,
                    );
                  },
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: Colors.grey,
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22,
                    getTextStyles: (context, value) => const TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
                    getTitles: (value) {
                      if (!Responsive.isMobile(context)) {
                        switch (value.toInt()) {
                          case 1:
                            return 'Jan';
                          case 2:
                            return 'Feb';
                          case 3:
                            return 'Mar';
                          case 4:
                            return 'Apr';
                          case 5:
                            return 'May';
                          case 6:
                            return 'Jun';
                          case 7:
                            return 'Jul';
                          case 8:
                            return 'Aug';
                          case 9:
                            return 'Sept';
                          case 10:
                            return 'Oct';
                          case 11:
                            return 'Nov';
                          case 12:
                            return 'Dec';
                        }
                      } else {
                        switch (value.toInt()) {
                          case 1:
                            return 'Jan';

                          case 3:
                            return 'Mar';

                          case 5:
                            return 'May';

                          case 7:
                            return 'Jul';

                          case 9:
                            return 'Sept';

                          case 11:
                            return 'Nov';
                        }
                      }

                      return '';
                    },
                    margin: 8,
                  ),
                  leftTitles: SideTitles(
                    showTitles: false,
                    getTextStyles: (context, value) => const TextStyle(
                      color: Color(0xff67727d),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 1:
                          return '10k';
                        case 3:
                          return '30k';
                        case 5:
                          return '50k';
                      }
                      return '';
                    },
                    reservedSize: 28,
                    margin: 12,
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
                minX: 0,
                maxX: 12,
                minY: 0,
                maxY: 18,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(1, 2.8),
                      FlSpot(2, 3.2),
                      FlSpot(3, 5),
                      FlSpot(4, 5.8),
                      FlSpot(6, 3),
                      FlSpot(10, 8),
                      FlSpot(12, 2.5),
                    ],
                    isCurved: true,
                    colors: [AppColors.chartLineColor],
                    // main graph color
                    barWidth: 1,
                    //main bar width
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                      show: true,
                    ),
                    belowBarData: BarAreaData(
                        show: true,
                        gradientFrom: const Offset(0, 0),
                        gradientTo: const Offset(0, 1),
                        colors: [AppColors.lightGray]),
                  ),
                ],
              )),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height:50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: SvgPicture.asset(AssetImages.calenderIcon),
                    ),
                    Text(
                      kEarningsSummary,
                      style: AppFontStyle.fontStyles(
                          color: AppColors.textColor, fontSize: 13),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ],
            ),
          )
        ],
      ),
    );
  }
}



