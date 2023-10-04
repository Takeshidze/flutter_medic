import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final items = [
    [
      'Анализы',
      'Экспресс сбор и получение проб',
      'assets/images/preview_image1.png'
    ],
    [
      "Уведомления",
      'Вы быстро узнаете о результатах',
      'assets/images/preview_image2.png'
    ],
    [
      "Мониторинг",
      'Наши врачи всегда наблюдают за вашими показателями здоровья',
      'assets/images/preview_image3.png'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Carousel Slider Builder Example'),
      ),
      body: CarouselSlider.builder(
        options: CarouselOptions(
          height: 100.0,
          autoPlay: true,
        ),
        itemCount: items.length,
        itemBuilder: (context, index, realIndex) {
          return Column(
            children: [
              Text(
                items[index][0],
                style: const TextStyle(
                    color: Color.fromRGBO(0, 183, 18, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Text(
                items[index][1],
                style: const TextStyle(
                  color: Color.fromRGBO(147, 147, 150, 1),
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    child: Stack(
                  children: <Widget>[
                    Image.asset(items[index][2],
                        fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
              ),
            ],
          );
        },
      ),
    );
  }
}
