import 'package:flutter/material.dart';
import 'package:flutter_3/views/uploadPicPage.dart';

import '../common/constants.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  static const String routeName = '/payment';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment method',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Theme.of(context).secondaryHeaderColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'This data will be displayed in your account profile for\nsecurity',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Container(
                width: 390,
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor,width: 2),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/paypal-.png',
                    height: size.height*0.09,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                width: 390,
                child: Image.asset(
                  'assets/images/visa.png',
                  height: size.height*0.1,
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                width: 390,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(8),
                //   border: Border.all(),
                // ),
                child: Image.asset(
                  'assets/images/payoneerr.png',
                  height: size.height*0.1,
                ),
              )
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
                  Upload_PicPage.routeName,
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
