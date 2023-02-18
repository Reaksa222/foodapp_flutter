

import 'package:flutter/material.dart';

class TopsearchCustomDelegate extends StatelessWidget {
  const TopsearchCustomDelegate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                          hintText: 'Search',
                          suffixIcon: Icon(Icons.search)
                      )
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: (){
                      print('Hello');
                    },
                    splashRadius: 1,
                    icon: Icon(
                      Icons.filter_list,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
