import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';

class ParametersScreen extends StatefulWidget {
  const ParametersScreen({super.key});

  @override
  State<ParametersScreen> createState() => _ParametersScreenState();
}

class _ParametersScreenState extends State<ParametersScreen> {
  int humanHeight = 150;
  int humanWeight = 50;
  int humanAge = 25;
  String humanImt = (50 / (150 / 100 * 150 / 100)).toStringAsFixed(3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Укажите ваши параметры',
                  style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'Inter',
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 35,
                ),
                const _GenderToggleButtons(),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'Рост: $humanHeight см',
                  style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Slider(
                  max: 250,
                  min: 130,
                  value: humanHeight.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      humanHeight = value.round();
                      humanImt = (humanWeight /
                              (humanHeight / 100 * humanHeight / 100))
                          .toStringAsFixed(1);
                    });
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Вес: $humanWeight кг',
                  style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Slider(
                  max: 200,
                  min: 40,
                  value: humanWeight.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      humanWeight = value.round();
                      humanImt = (humanWeight /
                              (humanHeight / 100 * humanHeight / 100))
                          .toStringAsFixed(1);
                    });
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Возраст: $humanAge',
                  style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Slider(
                  max: 70,
                  min: 16,
                  value: humanAge.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      humanAge = value.round();
                    });
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Ваш ИМТ: $humanImt',
                  style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'Inter',
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'ИМТ(индекс массы тела) позволяет понять ваш вес избыточен, в норме или недостаточен. У вас ${double.parse(humanImt) > 40 ? 'ожирение 3 степени' : double.parse(humanImt) > 35 ? 'ожирение 2 степени' : double.parse(humanImt) > 30 ? 'ожирение 1 степени' : double.parse(humanImt) > 25 ? 'избыточная масса тела (предожирение)' : double.parse(humanImt) > 18.5 ? 'нормальный вес' : double.parse(humanImt) > 16 ? 'недостаточная (дефицит) масса тела' : 'выраженный дефицит массы тела'}. На основе вашего ИМТ советуем вам ${double.parse(humanImt) > 25 ? 'похудеть' : double.parse(humanImt) > 18.5 ? 'держать форму' : 'набрать массу'}, но лучше проконсультироваться с врачом.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.lightGrey,
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 40),
                  child: SizedBox(
                    width: 370,
                    height: 65,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(
                              context, '/purposeSelectScreen');
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
                          'Далее',
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
          ),
        ]),
      ),
    );
  }
}

class _GenderToggleButtons extends StatefulWidget {
  const _GenderToggleButtons();

  @override
  State<_GenderToggleButtons> createState() => _GenderToggleButtonsState();
}

class _GenderToggleButtonsState extends State<_GenderToggleButtons> {
  var sellectedGender = [true, false];
  var genders = [
    const Text('Жен'),
    const Text('Муж'),
  ];
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < sellectedGender.length; i++) {
            sellectedGender[i] = i == index;
          }
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedColor: Colors.white,
      fillColor: AppColors.green,
      color: AppColors.lightGrey,
      constraints: const BoxConstraints(
        minHeight: 40.0,
        minWidth: 80.0,
      ),
      textStyle: const TextStyle(
          fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.w500),
      isSelected: sellectedGender,
      children: genders,
    );
  }
}
