import 'package:flutter/material.dart';
import 'package:kubo/ui/Colors.dart';

class AppNavbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppNavbar(this.title, {Key? key})
    : preferredSize = Size.fromHeight(50.0),
      super(key: key);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: AppColors.white_color)),
      backgroundColor: AppColors.main_color,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => {print("Menu clicado")},
        color: AppColors.white_color,
      ),
    );
    ;
  }
}
