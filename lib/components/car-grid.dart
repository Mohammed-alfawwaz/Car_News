import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../Model/ModelCar.dart';

class CarsGrid extends StatelessWidget {
  final ModelCar car;
  CarsGrid({required this.car});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 12,
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
            Row(
              children: [
                Text(
                  ' ${car.price.toString()}\$',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'DancingScript'),
                ),
                SizedBox(
                  width: 25,
                ),
                RatingBar.builder(
                  itemSize: 23,
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 3,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
