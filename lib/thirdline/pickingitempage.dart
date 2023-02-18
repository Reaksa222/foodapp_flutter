import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/main_page.dart';

import '../common/constants.dart';

class PickingItem extends StatelessWidget {
  const PickingItem({Key? key}) : super(key: key);

  static const String routeName ='picking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 54),
            Customsearch(),
            buildMap(),
            SizedBox(height: 15 ),
            locatBox(),
          ],
        ),
      ),
    );
  }
  Container buildMap() {
    return Container(
      height: 500,
      width: double.infinity,
      child: Image.asset(
        'assets/images/map3.jpg',
        fit: BoxFit.cover ,
      ),
    );
  }
}

class Customsearch extends StatelessWidget {
  const Customsearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: const TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                            hintText: 'Find your location',
                            suffixIcon: Icon(Icons.search)
                        )
                    ),
                    onTap: (){},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class locatBox extends StatelessWidget {
  const locatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Track orders',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 14),
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1.5,
                  color: primaryColor
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 28.5,
                    backgroundColor: primaryColor,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(
                        'assets/images/person.jpg'
                      ),
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monyneath Sindy',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '15 min on the way',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
               InkWell(
                 child: const Icon(
                    Icons.call,
                    color: primaryColor,
                    size: 19,
                  ),
                 onTap: (){
                   Navigator.pushNamed(
                       context,
                       MainPage.routeName
                   );
                 },
               ),
                SizedBox(width: 18),
               const Icon(
                  Icons.message,
                  size: 19,
                  color: primaryColor,
                ),
                SizedBox(width: 25),
              ],
            ),
          ),
        )
      ],
    );
  }
}

