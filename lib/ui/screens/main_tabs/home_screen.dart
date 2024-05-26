// This is the main application file
import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/diet_widget.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/products_widget.dart';
import 'package:my_diet_flutter_app/ui/screens/main_tabs/user_edit_data_widget.dart';

// This class represents the home page with the navigation bar
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Keeps track of the selected navigation bar index

  // This list holds the widgets for each navigation menu item (page)
  final List<Widget> _pages = [
    const Center(child: ProductsWidget()),
    const Center(child: DietWidget()),
    const Center(child: UserEditDataWidget()),
  ];
  final List<String> _pagesName = [
    'Мои продукты',
    'Мой рацион',
    'Мои данные',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedIndex == 0
          ? IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/selectAddingVariantScreen');
              },
              style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
                  backgroundColor: MaterialStatePropertyAll(AppColors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  )),
              icon: Icon(
                Icons.add,
                color: AppColors.white,
              ))
          : null,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            _pagesName[_selectedIndex],
            style: TextStyle(
                color: AppColors.white,
                fontFamily: 'Inter',
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue, // Customize the selected item color
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                size: 30,
                Icons.lunch_dining_outlined,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                size: 30,
                Icons.list_alt,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box_outlined,
                size: 30,
              ),
              label: ''),
        ],
      ),
    );
  }
}
