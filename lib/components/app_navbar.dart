import 'package:flutter/material.dart';
import 'package:kubo/ui/app_colors.dart';

class AppNavbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppNavbar(this.title, {super.key}) : preferredSize = Size.fromHeight(50.0);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => {print("Menu clicado")},
              color: AppColors.navbarFont,
            ),
            Image.asset("navbar_logo.png"),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.shopping_cart, color: AppColors.navbarFont),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.navbarBackground,
    );
  }
}
