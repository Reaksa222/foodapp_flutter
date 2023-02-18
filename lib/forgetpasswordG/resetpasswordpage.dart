import 'package:flutter/material.dart';
import 'package:flutter_foodapp/forgetpasswordG/congratssPage.dart';

import '../common/constants.dart';

class ResetPassPage extends StatelessWidget {
  const ResetPassPage({Key? key}) : super(key: key);

  static const String routeName = '/resetPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Text(
                'Create a new password',
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'New password',
                icon: Icon(Icons.star,color: Colors.red,size: 8,),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Confirm New password',
                icon: Icon(Icons.star,color: Colors.red,size: 8),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 7),
            child: Row(
              children: [
                Icon(Icons.check_box_sharp,color: Theme.of(context).primaryColor,size: 20,),
                SizedBox(width: 10),
                Text(
                    'Remember me',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Theme.of(context).secondaryHeaderColor
                  ),
                )
              ],
            ),
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
                  congratsPage.routeName,
                );
              },
              child: Text(
                'Save',
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
