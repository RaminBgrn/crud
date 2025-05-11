import 'package:crud/fetch_user_screen.dart';
import 'package:crud/sign_up_screen.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: PageView(children: [SignUpScreen(), FetchUserScreen()]),
    );
  }
}
