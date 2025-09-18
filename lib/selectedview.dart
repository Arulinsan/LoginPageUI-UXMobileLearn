import 'package:flutter/material.dart';
import 'package:login_page/view/login_page.dart';
import 'package:login_page/view/register_page.dart';

class Selectedview extends StatefulWidget {
  final int selectedIndex;
  const Selectedview({super.key, required this.selectedIndex});

  @override
  State<Selectedview> createState() => _SelectedviewState();
}

class _SelectedviewState extends State<Selectedview> {
  int? selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (selectedIndex == 0) {
      return LoginPage();
    } else if (selectedIndex == 1) {
      return RegisterPage();
    }
    return const Placeholder();
  }
}
