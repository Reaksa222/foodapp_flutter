import 'package:flutter/material.dart';
import 'package:flutter_3/homework/homepage.dart';
import 'package:flutter_3/second_line/homepagee.dart';
import 'package:flutter_3/second_line/main_page.dart';
import 'package:flutter_3/views/get_started_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    //delay 3 second before navigatoing to homepage
    Future.delayed( Duration(seconds: 3),(){
     Navigator.pushReplacementNamed(
         context,
         get_startedPage.routeName,
       arguments: GetstartedPageargument(
           title: 'Types',
           description: 'The best food ordering and delivery app of the century'
       ),
     );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Stack(
          alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/pic_splash_screen.png',
                      ),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Positioned(
                bottom: 80,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
