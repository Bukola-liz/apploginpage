import 'package:apploginassignment/features/home/home_screen.dart';
import 'package:apploginassignment/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/assets.dart';
import '../../shared/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _userNameController = TextEditingController();
final _userNameNode = FocusNode();

final _passwordController = TextEditingController();
final _passwordNode = FocusNode();


final _formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
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
                    'Welcome Back!',
                    textAlign: TextAlign.left,
                    style: baseTextStyle.copyWith(
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                  Text(
                    'Login to continue!',
                    textAlign: TextAlign.left,
                    style: baseTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),


                    SizedBox(
                      height: 25,
                    ),

                  Text('Username',
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
                    controller: _userNameController,
                    focusNode: _userNameNode,
                    decoration: InputDecoration(
                        filled: true,
                    fillColor: AppColors.lightBrown,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27),
                    )
                    ),
                    
                  ),

                  SizedBox(
                    height: 25,
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
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Don’t have an account? Sign Up',
                          style: baseTextStyle.copyWith(
                              color: AppColors.white, fontSize: 16),
                        ),
                      )
                    ],
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

// TextFormField(
//                     cursorColor: Colors.blue,
//                     decoration: InputDecoration(
//                       fillColor: AppColors.lightBrown,
//                       filled: true,
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(27),
//                       borderSide: BorderSide.none,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(27),
//                       borderSide: BorderSide.none,
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(27),
//                       borderSide: BorderSide(
//                           color: Colors.blue
//                       ),
//                     ),
//                   ),
//                   ),



//TextFormField(
//                   textCapitalization: TextCapitalization.sentences,
//                   keyboardType: TextInputType.name,
//                   textInputAction: TextInputAction.newline,
//                   style: TextStyle(color: AppColors.lightBrown
//                   ),
//                   decoration: InputDecoration(
//                       fillColor: AppColors.lightBrown,
// //                       filled: true,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular((27)),
//                       borderSide: BorderSide(width: 2,
//                           color: AppColors.lightBrown,
//                       ),
//                     )
//                   ),
//
//                 ),