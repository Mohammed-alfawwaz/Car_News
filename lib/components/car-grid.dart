import 'package:flutter/material.dart';
import '../Model/ModelCar.dart';

class CarsGrid extends StatelessWidget {
  final ModelCar car;
  CarsGrid({required this.car});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 70,
                minHeight: 50,
                maxWidth: 250,
                maxHeight: 150,
              ),
              child: Image.asset(car.img,
                  height: 150, width: 200, fit: BoxFit.fill),
            ),
          ), //child: Image.asset(car.img)),
          Text(
            ' ${car.price.toString()}\$',
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w900,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontFamily: 'DancingScript'),
          )
        ],
      ),
    );
  }
}
