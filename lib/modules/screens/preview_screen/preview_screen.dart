import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beginning/modules/widgets/button_skip.dart';
import 'package:flutter_beginning/modules/widgets/medic_logo_picture_shape.dart';

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

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
      padding:
          const EdgeInsets.only(bottom: 8.0, left: 8.0, top: 8.0, right: 8.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.topLeft, child: SkipButton()),
              Spacer(),
              Align(
                  alignment: Alignment.topRight,
                  child: MedicLogoPictureShape()),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              
              enlargeCenterPage: true,
              viewportFraction: 1,
              height: MediaQuery.of(context).size.height / 2,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _current = index;
                  },
                );
              },
            ),
            itemCount: items.length,
            itemBuilder: (context, index, realIndex) {
              return Column(
                mainAxisSize: MainAxisSize.max,
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
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromRGBO(147, 147, 150, 1),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: items.asMap().entries.map((entry) {
                      return GestureDetector(
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.blue)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      items[index][2],
                      width: MediaQuery.of(context).size.width,
                    ),
                  ))
                ],
              );
            },
          ),
        ],
      ),
    ))
    ); 
  }
}
