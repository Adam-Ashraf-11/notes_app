import 'package:flutter/material.dart';
import 'package:flutter_notes/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
 final IconData icon ;
 final String title ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 28)),
        Spacer(flex: 1),
        CustomSearchIcon( icon: icon,),
      ],
    );
  }
}
