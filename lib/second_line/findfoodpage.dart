import 'package:flutter/material.dart';
import 'package:flutter_3/common/constants.dart';

import 'package:flutter_3/second_line/homepagee.dart';
import 'package:flutter_3/second_line/nextFindFoodpage.dart';
import 'package:flutter_3/second_line/pastafindfood.dart';
import 'package:flutter_3/second_line/searchforrestauantfood.dart';

class FindFoodPage extends StatelessWidget {
  const FindFoodPage({Key? key}) : super(key: key);

  static const String routeName ='/findfood';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find your Food',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: ItemoffindFood(),
    );
  }
}



class ItemoffindFood extends StatelessWidget {
  const ItemoffindFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopsearchCustom(),
        Container(
          padding: EdgeInsets.only(left: 20,top: 20),
          child: Text(
            'Type',
            style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 19,
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:  Text(
                    ' Restaurant ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(
                      context,
                      Searchforrestauant.routeName
                  );
                },
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    ' Menu ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.only(left: 20,top: 20),
          child: Text(
            'Location',
            style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 19,
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    ' 1 km ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    ' < 5km ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        Searchforrestauant.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    ' < 10km ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    ' > 10km ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: Text(
            'Food',
            style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 19,
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    ' Cake ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    ' Salad ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    ' Pasta ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        Findpasta.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    ' Dsert ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    ' Main course ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    ' Appetizer ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 36,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: primaryColor),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    ' Soup ',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        NextFindFoodPage.routeName
                    );
                  }
              ),
            ],
          ),
        ),
        const Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    NextFindFoodPage.routeName
                );
              },
              child: Text(
                'Search',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

