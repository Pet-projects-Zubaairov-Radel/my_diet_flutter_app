import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/resources/app_images.dart';

class DietWidget extends StatefulWidget {
  const DietWidget({super.key});

  @override
  State<DietWidget> createState() => _DietWidgetState();
}

class _DietWidgetState extends State<DietWidget> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
      ScrollController(); //To Track Scroll of ListView

  List<String> listOfMonths = [
    "Янв",
    "Фев",
    "Мар",
    "Апр",
    "Май",
    "Июн",
    "Июл",
    "Авг",
    "Сен",
    "Окт",
    "Ноя",
    "Дек"
  ];

  List<String> listOfDays = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: 365,
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          currentDateSelectedIndex = index;
                          selectedDate =
                              DateTime.now().add(Duration(days: index));
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: currentDateSelectedIndex == index
                                ? AppColors.green
                                : AppColors.grey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              listOfMonths[DateTime.now()
                                          .add(Duration(days: index))
                                          .month -
                                      1]
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              DateTime.now()
                                  .add(Duration(days: index))
                                  .day
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              listOfDays[DateTime.now()
                                          .add(Duration(days: index))
                                          .weekday -
                                      1]
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Завтрак',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/dishInfoScreen');
                          },
                          child: SizedBox(
                            height: 170,
                            child: Card(
                              color: AppColors.grey,
                              child: Stack(children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 0),
                                      child: Image.asset(
                                        AppImages.errorImage,
                                        width: 120,
                                        height: 120,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: SizedBox(
                                        width: 200,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Яичница',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontFamily: 'Inter',
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              'Ингридиенты:',
                                              style: TextStyle(
                                                  color: AppColors.lightGrey,
                                                  fontFamily: 'Inter',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              'Яйца 2 шт, сосиски 2 шт, масло столовая ложка  ',
                                              style: TextStyle(
                                                  color: AppColors.lightGrey,
                                                  fontFamily: 'Inter',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Text(
                          'Обед',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/dishInfoScreen');
                          },
                          child: SizedBox(
                            height: 170,
                            child: Card(
                              color: AppColors.grey,
                              child: Stack(children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 0),
                                      child: Image.asset(
                                        AppImages.errorImage,
                                        width: 120,
                                        height: 120,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: SizedBox(
                                        width: 200,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Яичница',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontFamily: 'Inter',
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              'Ингридиенты:',
                                              style: TextStyle(
                                                  color: AppColors.lightGrey,
                                                  fontFamily: 'Inter',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              'Яйца 2 шт, сосиски 2 шт, масло столовая ложка  ',
                                              style: TextStyle(
                                                  color: AppColors.lightGrey,
                                                  fontFamily: 'Inter',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Text(
                          'Ужин',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 170,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/dishInfoScreen');
                            },
                            child: Card(
                              color: AppColors.grey,
                              child: Stack(children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 0),
                                      child: Image.asset(
                                        AppImages.errorImage,
                                        width: 120,
                                        height: 120,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: SizedBox(
                                        width: 200,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Яичница',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontFamily: 'Inter',
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              'Ингридиенты:',
                                              style: TextStyle(
                                                  color: AppColors.lightGrey,
                                                  fontFamily: 'Inter',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              'Яйца 2 шт, сосиски 2 шт, масло столовая ложка  ',
                                              style: TextStyle(
                                                  color: AppColors.lightGrey,
                                                  fontFamily: 'Inter',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
