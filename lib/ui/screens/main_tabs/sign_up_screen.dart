import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/resources/app_images.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 0, 0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Давайте начнем',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'Inter',
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Для начала заполните поля',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: AppColors.lightGrey,
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            SizedBox(
              width: 370,
              height: 65,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    color: AppColors.grey),
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13.0, 0),
                child: TextField(
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
                    labelText: 'Псевдоним',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 370,
              height: 65,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    color: AppColors.grey),
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13.0, 0),
                child: TextField(
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
                    labelText: 'Логин',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 370,
              height: 65,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    color: AppColors.grey),
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13.0, 0),
                child: TextField(
                  obscureText: true,
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
                    labelText: 'Пароль',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 370,
              height: 65,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    color: AppColors.grey),
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13.0, 0),
                child: TextField(
                  obscureText: true,
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
                    labelText: 'Павтор пароля',
                  ),
                ),
              ),
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
                    'Регистрация',
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'Inter',
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'или',
              style: TextStyle(
                  color: AppColors.white,
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(AppImages.telegramIcon)),
                IconButton(
                    onPressed: () {}, icon: Image.asset(AppImages.vkIcon))
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Align(
        alignment: AlignmentDirectional.center,
        child: InkWell(
          onTap: () {
            Navigator.popAndPushNamed(context, '/logInScreen');
          },
          child: Text('Уже есть аккаунт',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.white,
                  color: AppColors.white,
                  fontFamily: 'Inter',
                  fontSize: 23,
                  fontWeight: FontWeight.w500)),
        ),
      )),
    );
  }
}
