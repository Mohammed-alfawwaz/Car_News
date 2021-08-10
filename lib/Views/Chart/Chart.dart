import 'package:car_news_ecommerce/components/line-data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.black87, borderRadius: BorderRadius.circular(20)),
          child: LineChart(
            LineChartData(
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 6,
                titlesData: LineTitle.getTitleData(),
                gridData: FlGridData(
                    show: true,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(color: Colors.blueAccent, strokeWidth: 1);
                    },
                    drawVerticalLine: true,
                    getDrawingVerticalLine: (value) {
                      return FlLine(color: Colors.blueAccent, strokeWidth: 1);
                    }),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: Colors.blueAccent),
                ),
                lineBarsData: [
                  LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(2.6, 2),
                        FlSpot(4.9, 5),
                        FlSpot(6.8, 2.5),
                        FlSpot(8, 4),
                        FlSpot(9.5, 3),
                        FlSpot(11, 4)
                      ],
                      isCurved: true,
                      dotData: FlDotData(show: false),
                      colors: [Colors.red, Colors.green],
                      barWidth: 5,
                      belowBarData: BarAreaData(show: true, colors: [
                        Colors.red.withOpacity(0.3),
                        Colors.green.withOpacity(0.3)
                      ]))
                ]),
          )),
    );
  }
}
