import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/resources/app_images.dart';

class DesiredProductsScreen extends StatelessWidget {
  const DesiredProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Text(
                'Какие продукты вы хотите видеть в рационе?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Inter',
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: const MaterialStatePropertyAll(
                                EdgeInsets.fromLTRB(0, 0, 0, 0)),
                            backgroundColor:
                                MaterialStatePropertyAll(AppColors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            )),
                        icon: Icon(
                          Icons.add,
                          color: AppColors.white,
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Card(
                      color: AppColors.grey,
                      child: ListTile(
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: AppColors.red,
                          ),
                        ),
                        leading: Image.asset(AppImages.errorImage,
                            height: 70, width: 70),
                        title: Text(
                          'Помидор',
                          style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 15, 18, 15),
                child: SizedBox(
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
                        'Далее',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Inter',
                            fontSize: 23,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 15),
            child: SizedBox(
              width: 370,
              height: 65,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/homeScreen');
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
                    'Далее',
                    style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'Inter',
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ),
        ),
      ]),
    );
  }
}
