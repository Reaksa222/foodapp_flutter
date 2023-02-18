import 'package:flutter/material.dart';

import '../common/constants.dart';
import 'chatitems.dart';


class ChatwJessica extends StatelessWidget {
  const ChatwJessica({Key? key}) : super(key: key);

  static const String routeName ='chatwjessica';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const chatcustom(
                index: 0,
                name: 'Jessica',
                subtitle: 'online',
                profile: 'assets/images/per1.jpg'
            ),
            const SizedBox(
              height: 18,
            ),
            textwjessica(),
          ],
        ),
      ),
    );
  }
}

class textwjessica extends StatelessWidget {
  const textwjessica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 3,right: 3),
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    ' that is ok! ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 3,right: 3),
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    ' where are you? ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 3,right: 3),
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Text(
                        ' at home ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Icon(Icons.tag_faces,color: primaryColor,size: 18,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200),
          Padding(
            padding:  EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration:  InputDecoration(
                isDense: true,
                hintText: "Type Something...",
                hintStyle: TextStyle( color: Colors.grey,fontSize: 18),
                border: InputBorder.none,
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.photo,color: primaryColor,size: 19),
                    SizedBox(width: 10),
                    Icon(Icons.camera_alt,color: primaryColor,size: 19),
                    SizedBox(width: 10),
                    Icon(Icons.mic_rounded,color: primaryColor,size: 19),
                    SizedBox(width: 14),
                  ],
                ),
                suffixIcon: Icon(Icons.send,color: primaryColor,size: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

