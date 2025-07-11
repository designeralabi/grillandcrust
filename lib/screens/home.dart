import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grill_app/theme/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      // appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset('assets/images/blur_mesh.png', fit: BoxFit.cover),
              Column(
                children: [
                  SizedBox(height: 50),
                  Column(
                    children: [
                      SvgPicture.asset('assets/images/Grill & Crust.svg'),
                      Image.asset(
                        'assets/images/burger.png',
                        width: 406,
                        height: 390,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 22),
                    child: Text(
                      'Where Burgers meet Pizzas with a Sizzle and a Slice!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.orange,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
