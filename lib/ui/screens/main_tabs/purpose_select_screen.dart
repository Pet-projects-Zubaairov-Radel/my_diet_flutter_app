import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';

class PurposeSelectScreen extends StatelessWidget {
  const PurposeSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(
                'Для чего вы скачали приложение?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Inter',
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 370,
                height: 65,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                        )),
                    child: Text(
                      'Похудеть',
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Inter',
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 370,
                height: 65,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, '/negativeProductsScreen');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                        )),
                    child: Text(
                      'Набрать массу',
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Inter',
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 370,
                height: 65,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                        )),
                    child: Text(
                      'Поддерживать форму',
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Inter',
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
