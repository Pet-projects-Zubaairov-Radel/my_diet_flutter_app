import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/resources/app_images.dart';

class ProductInfoScreen extends StatelessWidget {
  const ProductInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          width: 370,
          height: 50,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppColors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )),
              child: Text(
                'Удалить',
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Inter',
                    fontSize: 23,
                    fontWeight: FontWeight.w500),
              )),
        ),
      ),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
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
                  'Помидоры азейбарджанские',
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
              Text(
                textAlign: TextAlign.center,
                'Вид продукта: Помидор',
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 65,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      color: AppColors.grey),
                  padding: const EdgeInsets.fromLTRB(13.0, 0, 13.0, 0),
                  child: TextField(
                    cursorHeight: 24,
                    cursorColor: AppColors.black,
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      focusColor: AppColors.green,
                      hoverColor: AppColors.green,
                      filled: true,
                      labelStyle: TextStyle(
                          decoration: TextDecoration.none,
                          color: AppColors.lightGrey,
                          fontFamily: 'Inter',
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                      fillColor: AppColors.grey,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: 'Вес',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
