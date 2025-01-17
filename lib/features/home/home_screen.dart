import 'package:apploginassignment/features/signup/signup_screen.dart';
import 'package:apploginassignment/shared/app_colors.dart';
import 'package:apploginassignment/shared/assets.dart';
import 'package:apploginassignment/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue,
      automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
     
      title: const Text('CodeChamp.in',
      style: TextStyle(color: Colors.white),),
        actions: [Icon(Icons.menu)],
    ),
    body: Stack(
      children: [
        SvgPicture.asset(AppAssets.backgroundSvg,
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
        ),

        SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
             Image.asset(AppAssets.imagePng),
               Text(
            'Hello , Welcome !',
            textAlign: TextAlign.center,
            style: baseTextStyle.copyWith(
              fontSize: 35,
                fontWeight: FontWeight.w600),
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Welcome to codeChamp.in Top platform to coders',
                      style: baseTextStyle.copyWith(
                          color: AppColors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.appBrown.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: AppColors.appBrown,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: baseTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>SignupScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.appBrown.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: AppColors.appBrown,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: baseTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Or  via social media',
                      style: baseTextStyle.copyWith(
                          color: AppColors.white, fontSize: 16),
                    ),
                  )
                ],
              ),

  ]),
        ),
        ),
      ],
    ),
    );
  }
}
