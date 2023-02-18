import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';
import 'package:flutter_3/thirdline/pickingitempage.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  static const String routeName ='/locationscreen';

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
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      PickingItem.routeName
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: primaryColor
                ),
                child: Center(
                  child: Text(
                    'Set Location',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),

              ),
            ),
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
            'assets/images/map2.jpg',
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
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Container(
            height: 65,
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
                  child: Icon(
                    Icons.location_on,
                    color: primaryColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Phnom Penh, st 102',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.edit,
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
