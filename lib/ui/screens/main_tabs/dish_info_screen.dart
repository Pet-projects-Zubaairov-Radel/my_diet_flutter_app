import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/resources/app_images.dart';

class DishInfoScreen extends StatelessWidget {
  const DishInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      AppImages.errorImage,
                      width: 350,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Яичница',
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Inter',
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'На 100 г:',
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'ккал',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            '400',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: AppColors.white,
                        child: const VerticalDivider(
                          width: 1,
                          thickness: 0,
                          indent: 23,
                          endIndent: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'белки',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            '400',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: AppColors.white,
                        child: const VerticalDivider(
                          width: 1,
                          thickness: 0,
                          indent: 23,
                          endIndent: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'жиры',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            '400',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: AppColors.white,
                        child: const VerticalDivider(
                          width: 1,
                          thickness: 0,
                          indent: 23,
                          endIndent: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'углеводы',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            '400',
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Ингредиенты:',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '2 яйца,\n200 г варёной колбасы,\nспеции.',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Приготовление:',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '1. Нарежьте колбасу кружочками и обжарьте её до румяности в масле с одной стороны.\n2. Переверните, вбейте туда яйца и приправьте яичницу по вкусу.\n3. Жарьте всё на слабом огне до желаемой консистенции желтков и белков.',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
