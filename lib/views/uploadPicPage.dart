import 'package:flutter/material.dart';
import 'package:flutter_3/views/upload_picPage1.dart';

import '../common/constants.dart';

class Upload_PicPage extends StatelessWidget {
  const Upload_PicPage({Key? key}) : super(key: key);

  static const String routeName = '/uploadpic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload your photo',
          style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Theme.of(context).secondaryHeaderColor
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'This data will be displayed in your account profile for\nsecurity',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.camera_alt,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 25),
              Text(
                'Take photo',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(height: 60),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.folder,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 25),
              Text(
                'From Gallery',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 14,right: 14,top: 8),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: primaryColor.withOpacity(0.7),
              ),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  Upload_picPagenext.routeName,
                );
              },
              child: Text(
                'Next',
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
