import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';

class CreateProductScreen extends StatelessWidget {
  const CreateProductScreen({super.key});

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
                    backgroundColor: MaterialStatePropertyAll(AppColors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    )),
                child: Text(
                  'Создать',
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
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/selectAddingVariantScreen');
                      },
                      style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(100)),
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.grey),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          )),
                      icon: Icon(
                        Icons.add,
                        size: 50,
                        color: AppColors.white,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
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
                          labelText: 'Название',
                        ),
                      ),
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 60,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            color: AppColors.grey),
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                        child: TextField(
                          cursorHeight: 24,
                          cursorColor: AppColors.black,
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            focusColor: AppColors.green,
                            hoverColor: AppColors.green,
                            filled: true,
                            labelStyle: TextStyle(
                                decoration: TextDecoration.none,
                                color: AppColors.lightGrey,
                                fontFamily: 'Inter',
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                            fillColor: AppColors.grey,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            labelText: 'Белки',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 120,
                      height: 60,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            color: AppColors.grey),
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                        child: TextField(
                          cursorHeight: 24,
                          cursorColor: AppColors.black,
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            focusColor: AppColors.green,
                            hoverColor: AppColors.green,
                            filled: true,
                            labelStyle: TextStyle(
                                decoration: TextDecoration.none,
                                color: AppColors.lightGrey,
                                fontFamily: 'Inter',
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                            fillColor: AppColors.grey,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            labelText: 'Жиры',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 120,
                      height: 60,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            color: AppColors.grey),
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                        child: TextField(
                          cursorHeight: 24,
                          cursorColor: AppColors.black,
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            focusColor: AppColors.green,
                            hoverColor: AppColors.green,
                            filled: true,
                            labelStyle: TextStyle(
                                decoration: TextDecoration.none,
                                color: AppColors.lightGrey,
                                fontFamily: 'Inter',
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                            fillColor: AppColors.grey,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            labelText: 'Углеводы',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 120,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        color: AppColors.grey),
                    padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                    child: TextField(
                      cursorHeight: 24,
                      cursorColor: AppColors.black,
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        focusColor: AppColors.green,
                        hoverColor: AppColors.green,
                        filled: true,
                        labelStyle: TextStyle(
                            decoration: TextDecoration.none,
                            color: AppColors.lightGrey,
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                        fillColor: AppColors.grey,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelText: 'Ккал',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Вид продукта:',
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
                  height: 40,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButton(
                      isExpanded: true,
                      dropdownColor: AppColors.grey,
                      underline: Container(),
                      items: const <DropdownMenuItem>[
                        DropdownMenuItem(
                          child: Text(
                            'Помидор',
                          ),
                        )
                      ],
                      onChanged: (var a) {},
                      style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
