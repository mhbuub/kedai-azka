import 'package:get/get.dart';
import 'package:kedai/consts/consts.dart';
import 'package:kedai/controllers/home_controller.dart';
import 'package:kedai/views/cart_screen/cart_screen.dart';
import 'package:kedai/views/category_screen/category_screen.dart';
import 'package:kedai/views/home_screen/home_screen.dart';
import 'package:kedai/views/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    // init home controller 
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26,), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26,), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26,), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,), label: account),
    ];

    // ignore: unused_local_variable
    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(()=>
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
          onTap: (Value){
            controller.currentNavIndex.value = Value;
          },
        ),
      ),
    );
  }
}