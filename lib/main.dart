import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/resources/app_images.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/create_product_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/desired_products_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/dish_info_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/home_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/log_in_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/negative_products_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/official_products_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/parameters_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/product_info_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/purpose_select_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/select_adding_variant_screen.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/sign_up_screen.dart';
import 'package:my_diet_flutter_app/ui/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/logInScreen': (context) => const LogInScreen(),
        '/signUpScreen': (context) => const SignUpScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/parametersScreen': (context) => const ParametersScreen(),
        '/purposeSelectScreen': (context) => const PurposeSelectScreen(),
        '/negativeProductsScreen': (context) => const NegativeProductsScreen(),
        '/desiredProductsScreen': (context) => const DesiredProductsScreen(),
        '/productInfoScreen': (context) => const ProductInfoScreen(),
        '/selectAddingVariantScreen': (context) =>
            const SelectAddingVariantScreen(),
        '/createProductScreen': (context) => const CreateProductScreen(),
        '/officialProductsScreen': (context) => const OfficialProductsScreen(),
        '/dishInfoScreen': (context) => const DishInfoScreen(),
      },
      theme: AppTheme.dark,
      home: const WelcomeWidget(),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: PageView(controller: null, children: [
        const OnboardingScreen(
          onboardingScreenImage: AppImages.fatHumansInCircleImage,
          onboardingScreenTitle: 'Похудей',
          onboardingScreenBodyText:
              'Сбрось вес без голодовок и ограничивании себя во вкусной еде',
        ),
        const OnboardingScreen(
          onboardingScreenImage: AppImages.strongHumansInCircleImage,
          onboardingScreenTitle: 'Набери массу',
          onboardingScreenBodyText:
              'Набери мышечную массу быстро и без однотипных блюд',
        ),
        Stack(children: [
          const OnboardingScreen(
            onboardingScreenImage: AppImages.normalHumansInCircleImage,
            onboardingScreenTitle: 'Держи форму',
            onboardingScreenBodyText:
                'Следи за своим питанием в удобном приложении чтобы всегда быть в форме',
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/logInScreen');
                    },
                    style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.fromLTRB(70, 10, 70, 10)),
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                        )),
                    child: Text(
                      'Начать',
                      style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'Inter',
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    )),
              ))
        ]),
      ])),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    required this.onboardingScreenImage,
    super.key,
    required this.onboardingScreenTitle,
    required this.onboardingScreenBodyText,
  });
  final String onboardingScreenImage;
  final String onboardingScreenTitle;
  final String onboardingScreenBodyText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          SvgPicture.asset(onboardingScreenImage),
          const SizedBox(
            height: 10,
          ),
          Text(
            onboardingScreenTitle,
            style: TextStyle(
                color: AppColors.white,
                fontFamily: 'Inter',
                fontSize: 45,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.center,
            onboardingScreenBodyText,
            style: TextStyle(
                color: AppColors.white,
                fontFamily: 'Inter',
                fontSize: 19,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
