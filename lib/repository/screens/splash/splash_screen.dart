import 'package:blinkit_app/domain/constants/appcolors.dart';
import 'package:blinkit_app/repository/screens/login/login_screen.dart';
import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      moveToNextPage();
    });

  }

  Future<void> moveToNextPage()async{
    await Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route)=>false);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(img: 'image 1.png'),
          ],
        ),
      ),
    );
  }
}
