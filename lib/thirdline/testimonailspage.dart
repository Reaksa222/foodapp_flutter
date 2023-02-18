import 'package:flutter/material.dart';

import '../common/constants.dart';
import 'Lovyfooddetail.dart';

class TestimonailPage extends StatelessWidget {
  const TestimonailPage({Key? key}) : super(key: key);

  static const String routeName ='/testimonailspage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Testimonails',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: [
            SizedBox(height: 2),
            Testimonials(
              name: 'Jenny',
              subtitle: 'about lovy food',
              subt2: 'I like it so much! it isnot sweet',
              image: 'assets/images/per1.jpg',
              rate: '5',
            ),
            Testimonials(
              name: 'Daanie',
              subtitle: 'specail food',
              subt2: 'yes food is really good n love of it!',
              image: 'assets/images/per2.jpg',
              rate: '4',
            ),
            Testimonials(
              name: 'Franciie',
              subtitle: 'about lovy food',
              subt2: 'that perfect',
              image: 'assets/images/per4.jpeg',
              rate: '5',
            ),
            Testimonials(
              name: 'Rainny',
              subtitle: 'about lovy food',
              subt2: 'omg, this is amazing!',
              image: 'assets/images/per3.jpg',
              rate: '5',
            ),
            Testimonials(
              name: 'monyneath',
              subtitle: 'about cloudy food',
              subt2: 'I like it so much!',
              image: 'assets/images/person.jpg',
              rate: '5',
            ),
            Testimonials(
              name: 'Mr. Google',
              subtitle: 'about lovy food',
              subt2: 'welcome ..',
              image: 'assets/images/google1.png',
              rate: '4',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top:14),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      LovyfoodDetail.routeName
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: primaryColor),

                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        child: Icon(
                            Icons.arrow_back_ios,
                            color: primaryColor,size: 15
                        ),
                      ),
                      SizedBox(width: 14),
                      Text(
                        ' Back ',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: primaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
