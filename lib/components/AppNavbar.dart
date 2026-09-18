import 'package:flutter/material.dart';
import 'package:kubo/ui/Colors.dart';

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
        child: Center(child: Image.asset("navbar_logo.png")),
      ),
      backgroundColor: AppColors.NAVBAR_BACKGROUND,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => {print("Menu clicado")},
        color: AppColors.NAVBAR_FONT,
      ),
    );
    ;
  }
}
