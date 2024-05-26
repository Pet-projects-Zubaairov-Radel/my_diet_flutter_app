import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/resources/app_images.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({super.key});

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            childAspectRatio: 15 / 19,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/productInfoScreen');
            },
            child: Center(
              child: Card(
                color: AppColors.grey,
                child: Stack(children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Image.asset(
                          AppImages.errorImage,
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Помидоры азейбарджанские',
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '500г',
                        style: TextStyle(
                            color: AppColors.lightGrey,
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 20),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(AppImages.officialProductIcon),
                    ),
                  ),
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
