import 'package:flutter/material.dart';
import 'package:flutter_3/views/fill_bio_screen.dart';
import 'package:flutter_3/views/homescreen.dart';

import '../common/constants.dart';

class Sign_screen extends StatefulWidget {
  const Sign_screen({Key? key}) : super(key: key);

  static const String routeName = '/sign_up';

  @override
  State<Sign_screen> createState() => _Sign_screenState();
}

class _Sign_screenState extends State<Sign_screen> {

  late final TextEditingController _emailcontroller;
  late final TextEditingController _passcontroller;

  @override
  void initState(){
    super.initState();
    _emailcontroller = TextEditingController();
    _passcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                'assets/images/pic_splash_screen.png',
                height: size.height*0.40,
              ),
              Positioned(
                bottom: 100,
                child: Text(
                  'Sign Up for free',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: _emailcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(fontSize: 13),
                            hintText: 'email or phone number',
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: Theme.of(context).secondaryHeaderColor,
                            )
                          //   border: OutlineInputBorder(),
                          //   suffixIcon: Icon(Icons.mail),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _passcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 13),
                          hintText: 'password',
                          hintStyle: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          //   border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 16,
                          ),
                          Text(
                            'Remember me',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor.withOpacity(0.6),
                            // side: const BorderSide(
                            //     width: 1, // the thickness
                            //    color: Colors.black // the color of the border
                            // )
                          ),
                          onPressed: (){
                            Navigator.pushNamed(
                              context,
                              Fill_bio_page.routeName,
                            );
                          },
                          child: Text(
                            'Sign Up',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'or continue with',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Facebook',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(width: 75),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/google1.png'),
                            radius: 17,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Google',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(
                                  context,
                                  homeScreen.routeName,
                              );
                            },
                            child: Text(
                              ' Sign in',
                              style: Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 14,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
