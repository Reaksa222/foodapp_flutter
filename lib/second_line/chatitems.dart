
import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/second_line/callpage.dart';

class Chatitems extends StatelessWidget {
  Chatitems({
    Key? key,

    required this.index,
    required this.name,
    required this.subtitle,
    required this.image,
    required this.time,
    required this.notification,
    required this.color,
    required this.margin,
  }) : super(key: key);

  final int index;
  final String name;
  final String subtitle;
  final String image;
  final String time;
  final String notification;
  final Color color;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 58,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                      image,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Container(
                        height: 21,
                        width: 21,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          notification,
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 18),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class chatcustom extends StatelessWidget {
  const chatcustom({
    Key? key,
    required this.index,
    required this.name,
    required this.subtitle,
    required this.profile,
  }) : super(key: key);

  final int index;
  final String name;
  final String subtitle;
  final String profile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 58,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    profile,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            subtitle,
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9,top: 8),
                      child: Container(
                        height: 21,
                        width: 21,
                        alignment: Alignment.center,
                        child: InkWell(
                          child: Icon(
                            Icons.call,
                            color: primaryColor,
                            size: 19,
                          ),
                          onTap: (){
                            Navigator.pushNamed(
                                context,
                                CallPage.routeName
                            );
                          },
                        )
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
