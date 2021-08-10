import 'package:fl_chart/fl_chart.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LineTitle {
  static getTitleData() {
    return FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            reservedSize: 35,
            showTitles: true,
            getTitles: (value) {
              switch (value.toInt()) {
                case 2:
                  return 'MAR';
                case 5:
                  return 'JAN';
                case 8:
                  return 'SEP';
                default:
                  return '';
              }
            },
            getTextStyles: (value) {
              return TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16);
            }),
        leftTitles: SideTitles(
            margin: 10,
            reservedSize: 30,
            showTitles: true,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 1:
                  return '10K';
                case 3:
                  return '30k';
                case 5:
                  return '50k';
                default:
                  return '';
              }
            },
            getTextStyles: (value) {
              return TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16);
            }));
  }
}
