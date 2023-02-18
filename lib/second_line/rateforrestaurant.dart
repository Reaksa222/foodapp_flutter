import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/promotionPage.dart';

import '../common/constants.dart';

class RateforRestaurant extends StatelessWidget {
  const RateforRestaurant({Key? key}) : super(key: key);

  static const String routeName ='/rateforrestaurant';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 70,
            //  color: primaryColor,
              child: Image.asset('assets/images/Vectorr.png'),
            ),
            Text(
              'Recto Food',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 44),
            Column(
              children: [
                Text(
                  'Enjoy your meal!',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 150),
            Center(
              child: Text(
                'Please rate the restaurant',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star,color: primaryColor),
                SizedBox(width: 8),
                Icon(Icons.star,color: primaryColor),
                SizedBox(width: 8),
                Icon(Icons.star,color: primaryColor),
                SizedBox(width: 8),
                Icon(Icons.star,color: primaryColor),
                SizedBox(width: 8),
                Icon(Icons.star_border,color: primaryColor),
              ],
            ),
            SizedBox(height: 18),
            const Padding(
              padding: const EdgeInsets.only(left: 30,right: 15,top: 15),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'leave feedback',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.edit,color: primaryColor,size: 18),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 15,top: 18),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        PromotionPAge.routeName
                    );
                  },
                  child: Center(
                    child: Text(
                      'Submit',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
