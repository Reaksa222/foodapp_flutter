import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/ratepage.dart';

import '../common/constants.dart';

class CallednedPage extends StatelessWidget {
  const CallednedPage({Key? key}) : super(key: key);

  static const String routeName = 'callended';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: primaryColor,
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                Text(
                  'Thank you!',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  ' Order completed',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            SizedBox(height: 150),
            Center(
              child: Text(
                  'Please rate the driver',
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
                        RatePage.routeName
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
