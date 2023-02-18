import 'package:flutter/material.dart';
import 'package:flutter_foodapp/forgetpasswordG/verifyPageee.dart';


import '../common/constants.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  static const String routeName ='/forgetpass';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forget Password?',
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).secondaryHeaderColor
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
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
          Container(
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
                padding: const EdgeInsets.only(left: 24,right: 30,top: 19),
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Vai sms',
                    labelStyle: TextStyle(fontSize: 13),
                    hintText: 'your text',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    prefixIcon: Icon(
                      Icons.textsms_sharp,
                      color: Theme.of(context).primaryColor,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 24,right: 30,top: 17),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Vai Email',
                labelStyle: TextStyle(fontSize: 13),
                hintText: 'your email',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                //   border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.mail,
                  color: Theme.of(context).primaryColor,
                ),
              ),
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
                  Veriifypage.routeName,
                );
              },
              child: Text(
                'Next',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
       ],
      ),
    );
  }
}
