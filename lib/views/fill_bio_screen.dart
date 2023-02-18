import 'package:flutter/material.dart';
import 'package:flutter_3/views/paymentPage.dart';

import '../common/constants.dart';

class Fill_bio_page extends StatelessWidget {
  const Fill_bio_page({Key? key}) : super(key: key);

  static const String routeName ='/fill_bio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill in your bio',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Theme.of(context).secondaryHeaderColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: 'Full Name',
                          icon: Icon(Icons.star,color: Colors.red,size: 8,),
                          labelStyle: TextStyle(fontSize: 13),
                          hintText: 'full name',
                          hintStyle: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).secondaryHeaderColor,
                          )
                        //   border: OutlineInputBorder(),
                        //   suffixIcon: Icon(Icons.mail),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nick Name',
                        icon: Icon(Icons.star,color: Colors.red,size: 8,),
                        labelStyle: TextStyle(fontSize: 13,),
                        hintText: 'nick name',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        //   border: OutlineInputBorder(),
                      //  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        icon: Icon(Icons.star,color: Colors.red,size: 8,),
                        labelStyle: TextStyle(fontSize: 13,),
                        hintText: 'phone',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Gender',
                        icon: Icon(Icons.star,color: Colors.red,size: 8,),
                        labelStyle: TextStyle(fontSize: 13,),
                        hintText: 'gender',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        suffixIcon: Icon(Icons.arrow_drop_down,size: 29),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Birth of Date',
                        icon: Icon(Icons.star,color: Colors.red,size: 8,),
                        labelStyle: TextStyle(fontSize: 13,),
                        hintText: 'date',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        suffixIcon: Icon(Icons.date_range_rounded,size: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        icon: Icon(Icons.star,color: Colors.red,size: 8,),
                        labelStyle: TextStyle(fontSize: 13,),
                        hintText: 'address',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
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
                    PaymentPage.routeName,
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
