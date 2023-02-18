import 'package:flutter/material.dart';
import 'package:flutter_foodapp/forgetpasswordG/resetpasswordpage.dart';

import '../common/constants.dart';

class Veriifypage extends StatelessWidget {
  const Veriifypage({Key? key}) : super(key: key);

  static const String routeName = '/verify';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forget Password',
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  'Code has been send to +6282******39',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left:15,right: 15),
            child: Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                   //   border: InputBorder.none,
                         hintStyle: TextStyle(fontSize:90),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                    //  border: InputBorder.none,
                      hintStyle: TextStyle(fontSize:90),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                   //   border: InputBorder.none,
                         hintStyle: TextStyle(fontSize:90),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                   //   border: InputBorder.none,
                      hintStyle: TextStyle(fontSize:90),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Resend code in ',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
              Text('56',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                ' s',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 14,right: 14,top: 8),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
              ),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  ResetPassPage.routeName,
                );
              },
              child: Text(
                'Next',
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
