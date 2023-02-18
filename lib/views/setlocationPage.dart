import 'package:flutter/material.dart';
import 'package:flutter_3/views/congratPage.dart';

import '../common/constants.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({Key? key}) : super(key: key);

  static const String routeName = '/setlocation';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set your location',
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).secondaryHeaderColor
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'This data will be displayed in your account profile for\nsecurity',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 360,
                      child: Image.asset(
                        'assets/images/location.png',
                        height: size.height*0.5,
                      ),
                    ),
                    // Positioned(
                    //   right: 70,
                    //     child: Icon(
                    //       Icons.location_on,
                    //       size: 30,
                    //       color: Theme.of(context).primaryColor,
                    //     ),
                    // ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    width: 380,
                    height: size.height*0.15,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24,right: 30,top: 17),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: 'Location',
                            labelStyle: TextStyle(fontSize: 13),
                            hintText: 'your location',
                          border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          //   border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.location_on,
                            color: Theme.of(context).primaryColor,
                          ),
                             suffixIcon: Icon(
                                 Icons.edit,
                               color: Theme.of(context).primaryColor,
                             ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 14,right: 14,top: 8),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryColor.withOpacity(0.6),
                ),
                onPressed: (){
                  Navigator.pushNamed(
                    context,
                    congrarPage.routeName,
                  );
                },
                child: Text(
                  'Next',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
