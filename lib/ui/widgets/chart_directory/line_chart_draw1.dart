import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      isShowingMainData ? sampleData1 : sampleData2,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
    lineTouchData: lineTouchData1,
    gridData: gridData,
    titlesData: titlesData1,
    borderData: borderData,
    lineBarsData: lineBarsData1,
    minX: 0,
    maxX: 14,
    maxY: 4,
    minY: 0,
  );

  LineChartData get sampleData2 => LineChartData(
    lineTouchData: lineTouchData2,
    gridData: gridData,
    titlesData: titlesData2,
    borderData: borderData,
    lineBarsData: lineBarsData2,
    minX: 0,
    maxX: 14,
    maxY: 6,
    minY: 0,
  );

  LineTouchData get lineTouchData1 => LineTouchData(
    touchCallback: (LineTouchResponse touchResponse) {},
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
    ),
  );

  FlTitlesData get titlesData1 => FlTitlesData(
    bottomTitles: bottomTitles,
    leftTitles: leftTitles(
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return '1m';
          case 2:
            return '2m';
          case 3:
            return '3m';
          case 4:
            return '5m';
        }
        return '';
      },
    ),
  );

  List<LineChartBarData> get lineBarsData1 => [
    lineChartBarData1_1,
    lineChartBarData1_2,
    lineChartBarData1_3,
  ];

  LineTouchData get lineTouchData2 => LineTouchData(
    enabled: false,
  );

  FlTitlesData get titlesData2 => FlTitlesData(
    bottomTitles: bottomTitles,
    leftTitles: leftTitles(
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return '1m';
          case 2:
            return '2m';
          case 3:
            return '3m';
          case 4:
            return '5m';
          case 5:
            return '6m';
        }
        return '';
      },
    ),
  );

  List<LineChartBarData> get lineBarsData2 => [
    lineChartBarData2_1,
    lineChartBarData2_2,
    lineChartBarData2_3,
  ];

  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
    getTitles: getTitles,
    showTitles: true,
    margin: 8,
    reservedSize: 30,
    getTextStyles: (context, value) => const TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  );

  SideTitles get bottomTitles => SideTitles(
    showTitles: true,
    reservedSize: 22,
    margin: 10,
    getTextStyles: (context, value) => const TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    getTitles: (value) {
      switch (value.toInt()) {
        case 2:
          return 'SEPT';
        case 7:
          return 'OCT';
        case 12:
          return 'DEC';
      }
      return '';
    },
  );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
    show: true,
    border: const Border(
      bottom: BorderSide(color: Color(0xff4e4965), width: 4),
      left: BorderSide(color: Colors.transparent),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Colors.transparent),
    ),
  );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
    isCurved: true,
    colors: [const Color(0xff4af699)],
    barWidth: 8,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(1, 1),
      FlSpot(3, 1.5),
      FlSpot(5, 1.4),
      FlSpot(7, 3.4),
      FlSpot(10, 2),
      FlSpot(12, 2.2),
      FlSpot(13, 1.8),
    ],
  );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
    isCurved: true,
    colors: [const Color(0xffaa4cfc)],
    barWidth: 8,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false, colors: [
      const Color(0x00aa4cfc),
    ]),
    spots: [
      FlSpot(1, 1),
      FlSpot(3, 2.8),
      FlSpot(7, 1.2),
      FlSpot(10, 2.8),
      FlSpot(12, 2.6),
      FlSpot(13, 3.9),
    ],
  );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
    isCurved: true,
    colors: const [Color(0xff27b6fc)],
    barWidth: 8,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(1, 2.8),
      FlSpot(3, 1.9),
      FlSpot(6, 3),
      FlSpot(10, 1.3),
      FlSpot(13, 2.5),
    ],
  );

  LineChartBarData get lineChartBarData2_1 => LineChartBarData(
    isCurved: true,
    curveSmoothness: 0,
    colors: const [Color(0x444af699)],
    barWidth: 4,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(1, 1),
      FlSpot(3, 4),
      FlSpot(5, 1.8),
      FlSpot(7, 5),
      FlSpot(10, 2),
      FlSpot(12, 2.2),
      FlSpot(13, 1.8),
    ],
  );

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
    isCurved: true,
    colors: const [Color(0x99aa4cfc)],
    barWidth: 4,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(
      show: true,
      colors: [
        const Color(0x33aa4cfc),
      ],
    ),
    spots: [
      FlSpot(1, 1),
      FlSpot(3, 2.8),
      FlSpot(7, 1.2),
      FlSpot(10, 2.8),
      FlSpot(12, 2.6),
      FlSpot(13, 3.9),
    ],
  );

  LineChartBarData get lineChartBarData2_3 => LineChartBarData(
    isCurved: true,
    curveSmoothness: 0,
    colors: const [Color(0x4427b6fc)],
    barWidth: 2,
    isStrokeCapRound: true,
    dotData: FlDotData(show: true),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(1, 3.8),
      FlSpot(3, 1.9),
      FlSpot(6, 5),
      FlSpot(10, 3.3),
      FlSpot(13, 4.5),
    ],
  );
}

class LineChartDraw1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartDraw1State();
}

class LineChartDraw1State extends State<LineChartDraw1> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          gradient: LinearGradient(
            colors: [
              Color(0xff2c274c),
              Color(0xff46426c),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 37,
                ),
                const Text(
                  'Unfold Shop 2018',
                  style: TextStyle(
                    color: Color(0xff827daa),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Monthly Sales',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                    child: _LineChart(isShowingMainData: isShowingMainData),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
              ),
              onPressed: () {
                setState(() {
                  isShowingMainData = !isShowingMainData;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}