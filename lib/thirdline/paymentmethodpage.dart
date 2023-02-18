import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/chatPage.dart';
import 'package:flutter_3/second_line/main_page.dart';
import 'package:flutter_3/second_line/orderPage.dart';
import 'package:flutter_3/thirdline/locationscreen.dart';

import '../common/constants.dart';

class PaymentmethodScreen extends StatelessWidget {
  const PaymentmethodScreen({Key? key}) : super(key: key);
  static const String routeName ='/paymentmethod';

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
        SizedBox(height: 35),
        buildPaddingInvoice(context),
        ],
      ),
    );
  }

  Padding buildPaddingInvoice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14,right: 14,top: 8),
        child: Container(
          padding: EdgeInsets.only(left: 19,right: 19,top: 10),
          height: 200,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                children: const[
                  Text(
                    'Subtotal',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '\$32',style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: const[
                  Text(
                    'Delivery charge',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '\$5',style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children:const [
                  Text(
                    'Discount',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '\$10',style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 1,
                width: 400,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Row(
                children:const [
                  Text(
                    'Total',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '\$27',style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 15,top: 18),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        LocationScreen.routeName
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  child: Center(
                    child: Text(
                      'Order Now',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}

