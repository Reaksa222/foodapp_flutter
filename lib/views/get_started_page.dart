import 'package:flutter/material.dart';
import 'package:flutter_3/homework/homepage.dart';
import 'package:flutter_3/second_line/homepagee.dart';
import 'package:flutter_3/second_line/main_page.dart';
import 'package:flutter_3/views/homescreen.dart';

class GetstartedPageargument{
  final String title;
  final String description;

  GetstartedPageargument({
    required this.title,
    required this.description
  });
}

class get_startedPage extends StatelessWidget {
  const get_startedPage({Key? key, required this.argument}) : super(key: key);

  static const String routeName ='/get_started';
  final GetstartedPageargument argument;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/get_started_pic.png',
                      ),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Foodie ${argument.title}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                    child: Text(
                      'The best food ordering and delivery app of the century',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(
                                context,
                              MainPage.routeName,
                              //  homeScreen.routeName,
                              // arguments: {
                              //     'title': argument.title,
                              //   'description': argument.description,
                              // }
                            );
                          },
                          child: Text(
                            'Get Started'
                          ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
