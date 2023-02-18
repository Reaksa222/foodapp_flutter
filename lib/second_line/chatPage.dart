import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/chatitems.dart';
import 'package:flutter_3/second_line/chatwJessica.dart';
import 'package:flutter_3/second_line/mychat.dart';
import 'dart:math' as math;

import '../common/constants.dart';
import 'homepagee.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  static const String routeName = '/chat_page';

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: SingleChildScrollView(
              child:Column(
                children: [
                  buildtopchat(context),
                  Customsearchappbar(),
                  SizedBox(height: 12),
                  InkWell(
                    child: Chatitems(
                      index: 0,
                      image: 'assets/images/person.jpg',
                      name: 'Monyneath sindy',
                      subtitle: 'wait a moment',
                      time: '4:20',
                      color: primaryColor,
                      notification: '1',
                      margin: EdgeInsets.only(left: 14,right: 8,bottom: 6),
                    ),
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          Mychat.routeName
                      );
                    },
                  ),
                  InkWell(
                    child: Chatitems(
                      index: 0,
                      image: 'assets/images/per1.jpg',
                      name: 'Jessica',
                      subtitle: 'at home.',
                      time: '1:20',
                      notification: '',
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 14,right: 8,bottom: 6),
                    ),
                    onTap: (){
                      Navigator.pushNamed(
                          context,
                          ChatwJessica.routeName
                      );
                    },
                  ),
                  Chatitems(
                    index: 0,
                    image: 'assets/images/per2.jpg',
                    name: 'Likaa',
                    subtitle: 'idk about it.',
                    time: '6:00',
                    notification: '',
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 14,right: 8,bottom: 6),
                  ),
                  Chatitems(
                    index: 0,
                    image: 'assets/images/per4.jpeg',
                    name: 'Sovann na',
                    subtitle: 'good',
                    time: '12:00',
                    notification: '',
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 14,right: 8,bottom: 6),
                  ),
                  Chatitems(
                    index: 0,
                    image: 'assets/images/per3.jpg',
                    name: 'Sergio rann',
                    subtitle: 'i like it',
                    time: '3:20',
                    notification: '2',
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 14,right: 8,bottom: 6),
                  ),
                  Chatitems(
                    index: 0,
                    image: 'assets/images/324422657_1539174946550899_3764367635976666976_n.jpg',
                    name: 'Ellie',
                    subtitle: 'What are you doing?',
                    time: '11:02',
                    notification: '',
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 14,right: 8,bottom: 6),
                  ),
                  Chatitems(
                    index: 0,
                    image: 'assets/images/person.jpg',
                    name: 'Monyneath sindy',
                    subtitle: 'What are you doing ?',
                    time: '8:30',
                    notification: '2',
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 14,right: 8,bottom: 6),
                  ),
                ],
              )
          ),
      );
    }
  Padding buildtopchat(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(width: 15),
          Text(
            'Chat ',
            style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}


class Customsearchappbar extends StatelessWidget {
  const Customsearchappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children:const [
                Expanded(
                  child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search)
                      )
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}