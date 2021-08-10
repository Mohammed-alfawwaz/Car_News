import 'package:car_news_ecommerce/Model/ModelNewsCar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'WebViewContiner.dart';

class CardNews extends StatelessWidget {
  final ModelNewsCar news;
  CardNews({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
          color: Colors.white,
          elevation: 10,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, padding: EdgeInsets.all(3)),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ListTile(
                      subtitle: Text(
                        'اقرأ المزيد',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.black),
                      ),
                      title: Text(
                        news.title,
                        style: GoogleFonts.almarai(
                            color: Colors.black, fontWeight: FontWeight.normal),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(width: 3),
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        news.img,
                        fit: BoxFit.fill,
                        height: 100,
                      ),
                    ),
                  )
                ],
              ),
              onPressed: () =>
                  _handelUrlBouttonPress(context, news.url, news.title))),
    );
  }
}

void _handelUrlBouttonPress(BuildContext context, String url, String title) {
  Navigator.push(
      context,
      MaterialPageRoute<dynamic>(
          builder: (context) => WebViewContiner(url: url, title: title)));
}
