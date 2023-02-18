import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/forgetpasswordG/forgetpassPage.dart';
import 'package:flutter_3/views/sign_inScreen.dart';


class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  static const String routeName = '/homescreen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

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
                  'Sign in to your account',
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
                            icon: Icon(Icons.star,color: Colors.red,size: 8),
                            labelStyle: TextStyle(fontSize: 13),
                            hintText: 'email or phone number',
                            hintStyle: TextStyle(
                               fontSize: 13,
                               color: Theme.of(context).secondaryHeaderColor,
                            ),
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
                            icon: Icon(Icons.star,color: Colors.red,size: 8),
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
                              fontWeight: FontWeight.w500,
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

                            ),
                            onPressed: (){

                            },
                            child: Text(
                              'Sign In',
                            ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Text(
                              'Forgot the password?',
                              style: Theme.of(context).textTheme.headline6!.copyWith(
                                color: Theme.of(context).primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                ForgetPassword.routeName,
                              );
                            },
                          ),
                          SizedBox(height: 18),
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
                               fontWeight: FontWeight.w600,
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
                          ),
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
                                  Sign_screen.routeName,
                              );
                            },
                            child: Text(
                              ' Sign Up',
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
