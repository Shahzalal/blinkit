import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.customImage(img: 'Blinkit Onboarding Screen.png'),
            const SizedBox(height: 20),
            UiHelper.customImage(img: 'image 10 (1).png'),
            const SizedBox(height: 20),
            UiHelper.customText(
              text: 'India’s last minute app',
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: 'bold',
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    UiHelper.customText(
                      text: 'Shahzalal',
                      color: Color(0xFF000000),
                      fontweight: FontWeight.w500,
                      fontsize: 15,
                    ),
                    const SizedBox(height: 5),
                    UiHelper.customText(
                      text: '01782922922',
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: 'bold',
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.customText(
                              text: 'login with',
                              color: Color(0xFFFFFFFF),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: 'bold',
                            ),
                            const SizedBox(width: 8),
                            UiHelper.customImage(img: "image 9 (2).png"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    UiHelper.customText(
                      text:
                          'Access your saved addresses from Zomato automatically!',
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                    ),
                    const SizedBox(height: 10),
                    UiHelper.customText(
                      text: 'or Login with phone number',
                      color: Color(0xFF269237),
                      fontweight: FontWeight.normal,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
