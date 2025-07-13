import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/controllers/app_controller.dart';
import 'package:koffi_unoesc/src/ui/theme/koffi_theme_data.dart';
import 'package:koffi_unoesc/src/view/cart.dart';
import 'package:koffi_unoesc/src/view/initial.dart';
import 'package:koffi_unoesc/src/view/login.dart';
import 'package:koffi_unoesc/src/view/products.dart';
import 'package:koffi_unoesc/src/view/products_types/hot_coffees/hot_coffees.dart';
import 'package:koffi_unoesc/src/view/products_types/cold_coffees/cold_coffees.dart';
import 'package:koffi_unoesc/src/view/products_types/snacks/snacks.dart';
import 'package:koffi_unoesc/src/view/register.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          title: "Koffi Unoesc",
          theme: koffiTheme.data,
          initialRoute: "/",
          routes: {
            "/": (context) => const InitialScreen(),
            "/login": (context) => const LoginScreen(),
            "/register": (context) => const RegisterScreen(),
            "/products": (context) => const ProductsScreen(),
            "/products/hot_drinks": (context) => const HotCoffeesScreen(), 
            "/products/cold_drinks": (context) => const ColdCoffeesScreen(), 
            "/products/snacks": (context) => const SnacksScreen(),
            "/cart": (context) => const CartScreen(),
          },
        );
      },
    );
  }
}
