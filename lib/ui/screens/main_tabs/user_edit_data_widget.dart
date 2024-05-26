import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';

class UserEditDataWidget extends StatelessWidget {
  const UserEditDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 370,
              height: 65,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/parametersScreen');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      )),
                  child: Text(
                    'Мои параметры',
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
                    Navigator.pushNamed(context, '/purposeSelectScreen');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      )),
                  child: Text(
                    'Моя цель',
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
                    Navigator.pushNamed(context, '/negativeProductsScreen');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      )),
                  child: Text(
                    'Нежелательные продукты',
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
                    Navigator.pushNamed(context, '/desiredProductsScreen');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      )),
                  child: Text(
                    'Желательные продукты',
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      )),
                  child: Text(
                    'Реформировать рацион',
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
    ]);
  }
}
