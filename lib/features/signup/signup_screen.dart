import 'package:apploginassignment/features/home/home_screen.dart';
import 'package:apploginassignment/shared/app_colors.dart';
import 'package:apploginassignment/shared/assets.dart';
import 'package:apploginassignment/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

final _fullNameController = TextEditingController();
final _fullNameNameNode = FocusNode();

final _passwordController = TextEditingController();
final _passwordNode = FocusNode();

final _emailController = TextEditingController();
final _emailNode = FocusNode();

final _phoneNumberController = TextEditingController();
final _phoneNumberNode = FocusNode();


final _formKey = GlobalKey<FormState>();

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(
      backgroundColor: AppColors.blue,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(
          color: Colors.white
      ),
      title: Text('CodeChamp.in',
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

          Form(
            key: _formKey,
            child: SafeArea(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  SizedBox(
                    height: 40,
                  ),

                  Text(
                    'Create Account Now!!',
                    textAlign: TextAlign.left,
                    style: baseTextStyle.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),


                  SizedBox(
                    height: 25,
                  ),

                  Text('Full Name',
                    textAlign: TextAlign.left,
                    style: baseTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _fullNameController,
                    focusNode: _fullNameNameNode,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightBrown,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                        )
                    ),

                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Text('Email',
                    textAlign: TextAlign.left,
                    style: baseTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),


                  TextFormField(
                    controller: _emailController,
                    focusNode: _emailNode,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightBrown,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27))
                    ),

                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Text('Password',
                    textAlign: TextAlign.left,
                    style: baseTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),


                  TextFormField(
                    controller: _passwordController,
                    focusNode: _passwordNode,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightBrown,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27))
                    ),

                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Text('Phone No',
                    textAlign: TextAlign.left,
                    style: baseTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),


                  TextFormField(
                    controller: _phoneNumberController,
                    focusNode: _phoneNumberNode,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightBrown,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27))
                    ),

                  ),

                  const SizedBox(
                    height: 55,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>HomeScreen()));
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
                    height: 25,
                  ),
                ],
              ),





            ),
            ),
          ),

        ],
      ),
    );
  }
}
