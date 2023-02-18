import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/thirdline/paymentmethodpage.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  static const String routeName = 'deliverypage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delivery to',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          const CustomtextfieldLocation(
              textlabel: 'Phnom Penh, 123 st',
              hinttext: 'address',
            color: primaryColor,

          ),
          SizedBox(height: 30),
          const CustomtextfieldLocation(
              textlabel: 'office',
              hinttext: 'room',
            color: Colors.white,
          ),
          Spacer(),
        buildPaddingInvoice(context),
          SizedBox(height: 20),
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
                        PaymentmethodScreen.routeName
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white
                  ),
                  child: Center(
                    child: Text(
                      'Next',
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

class CustomtextfieldLocation extends StatelessWidget {
  const CustomtextfieldLocation({
    Key? key,
    required this.textlabel,
    required this.hinttext,
    required this.color,
  }) : super(key: key);
  final String textlabel;
  final String hinttext;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 6,right: 6,top: 12,
          ),
          child: Container(
            width: 380,
            height: size.height*0.12,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: color,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24,right: 30,top: 17),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: textlabel,
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: hinttext,
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
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

