import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF7CB45),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          UiHelper.customText(
                            text: 'Blinkit in',
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          UiHelper.customText(
                            text: '16 Minutes',
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          UiHelper.customText(
                            text: 'Home ',
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 18,
                          ),
                          UiHelper.customText(
                            text: '- Shahzalal, Usti Bazar, Naogaon, Dhaka',
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 30,
                    bottom: 100,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: UiHelper.customTextField(searchController),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            UiHelper.customImage(img: 'shopping-cart (1) 1.png'),
            const SizedBox(height: 20),
            UiHelper.customText(
              text: 'Reordering will be easy',
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 16,
            ),
            const SizedBox(height: 5),
            UiHelper.customText(
              text: 'Items you order will show up here so you can buy',
              color: Color(0xFF000000),
              fontweight: FontWeight.normal,
              fontsize: 12,
            ),
            UiHelper.customText(
              text: 'them again easily.',
              color: Color(0xFF000000),
              fontweight: FontWeight.normal,
              fontsize: 12,
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 20),
                UiHelper.customText(
                  text: 'Bestsellers',
                  color: Color(0xFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 16,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 20),
                Column(
                  children: [
                    Stack(
                      children: [
                        UiHelper.customImage(img: 'milk.png'),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),

                      ],
                    ),
                    UiHelper.customText(
                      text: 'Amul Taaza Toned',
                      color: Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                    ),


                  ],
                ),
                const SizedBox(width: 20),

                Column(
                  children: [
                    Stack(
                      children: [
                        UiHelper.customImage(img: 'potato.png'),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: 'Amul Taaza Toned',
                      color: Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                    ),

                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Stack(
                      children: [
                        UiHelper.customImage(img: 'tomato.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.customButton(() {}),
                        ),
                      ],
                    ),
                    UiHelper.customText(
                      text: 'Amul Taaza Toned',
                      color: Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
