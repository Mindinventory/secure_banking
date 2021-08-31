import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant/color_constant.dart';
import '../../../constant/constant_public.dart';
import 'line_chart_draw1.dart';
import 'line_chart_draw2.dart';


class LineChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff262545),
      child: ListView(
        children: <Widget>[
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 36.0,
                top: 24,
              ),
              child: Text(
                'Line Chart',
                style: TextStyle(
                    color: Color(
                      0xff6f6f97,
                    ),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              right: 28,
            ),
            child: LineChartDraw1(),
          ),
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28),
            child: LineChartDraw2(),
          ),
        ],
      ),
    );
  }
}



class MyLinearChart extends StatelessWidget {
  /*final ChangeThemeState themeState;*/
  final double maxX;
  final double maxY;

  MyLinearChart({this.maxX = 0, this.maxY = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Stack(
        children: [
          LineChart(
              LineChartData(
            backgroundColor:AppColors.white,
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
                getTextStyles: (context,value) =>
                const TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 1:
                      return 'Jan';
                    case 2:
                      return "Feb";
                    case 3:
                      return 'Mar';
                    case 4:
                      return 'Apr';
                    case 5:
                      return 'May';
                    case 6:
                      return "Jun";
                    case 7:
                      return 'Jul';
                    case 8:
                      return 'Aug';
                    case 9:
                      return 'Sept';
                    case 10:
                      return "Oct";
                    case 11:
                      return 'Nov';
                    case 12:
                      return 'Dec';
                  }
                  return '';
                },
                margin: 8,
              ),
              leftTitles: SideTitles(
                showTitles: false,
                getTextStyles: (context,value) =>
                 TextStyle(
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
                spots:  [
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
                  gradientFrom: Offset(0, 0),
                  gradientTo: Offset(0, 1),
                  colors: [AppColors.lightGray]
                ),
              ),
            ],
          )),
          Align(
            alignment: Alignment.topLeft,
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:10),
                        child: SvgPicture.asset(AssetImages.calenderIcon),
                      ),
                      Text("Earnings Summary",style:AppFontStyle.fontStyles(color:AppColors.textColor,fontSize:15),),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

double _getMaxY(List<FlSpot> flSpot) {
  if (flSpot != null) {
    double max = 0;
    for (int i = 0; i < flSpot.length; i++) {
      if (max < flSpot[i].y) {
        max = flSpot[i].y;
      }
    }
    return (max * 2) ;
  } else {
    return 0.0;
  }
}
