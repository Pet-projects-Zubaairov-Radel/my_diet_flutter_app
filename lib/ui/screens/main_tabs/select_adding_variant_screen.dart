import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';

class SelectAddingVariantScreen extends StatelessWidget {
  const SelectAddingVariantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'Как хотите добавить продукт?',
                  style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'Inter',
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: SizedBox(
                    width: 170,
                    height: 185,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(
                              context, '/createProductScreen');
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(AppColors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            )),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Создать новый',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: SizedBox(
                    width: 170,
                    height: 185,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(
                              context, '/officialProductsScreen');
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(AppColors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            )),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Выбрать из каталога',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
