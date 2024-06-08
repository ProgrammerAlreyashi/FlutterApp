import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const AppBarWidget({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: Icon(icon),
    );
  }
}
