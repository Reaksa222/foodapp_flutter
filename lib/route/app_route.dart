

import 'package:flutter/material.dart';
import 'package:flutter_3/forgetpasswordG/congratssPage.dart';
import 'package:flutter_3/forgetpasswordG/forgetpassPage.dart';
import 'package:flutter_3/forgetpasswordG/resetpasswordpage.dart';
import 'package:flutter_3/forgetpasswordG/verifyPageee.dart';
import 'package:flutter_3/second_line/OrderPagedetail.dart';
import 'package:flutter_3/second_line/callpage.dart';
import 'package:flutter_3/second_line/chatPage.dart';
import 'package:flutter_3/second_line/chatwJessica.dart';
import 'package:flutter_3/second_line/endcallPage.dart';
import 'package:flutter_3/second_line/mychat.dart';
import 'package:flutter_3/second_line/nextFindFoodpage.dart';
import 'package:flutter_3/second_line/notificatoinpage.dart';
import 'package:flutter_3/second_line/orderPage.dart';
import 'package:flutter_3/second_line/pastafindfood.dart';
import 'package:flutter_3/second_line/promotionPage.dart';
import 'package:flutter_3/second_line/rateforrestaurant.dart';
import 'package:flutter_3/second_line/ratepage.dart';
import 'package:flutter_3/second_line/searchfoodPage.dart';
import 'package:flutter_3/second_line/homepagee.dart';
import 'package:flutter_3/second_line/main_page.dart';
import 'package:flutter_3/second_line/popular_listPage.dart';
import 'package:flutter_3/second_line/popular_menu.dart';
import 'package:flutter_3/second_line/searchforrestauantfood.dart';
import 'package:flutter_3/thirdline/LovyFoodscreen.dart';
import 'package:flutter_3/thirdline/Lovyfooddetail.dart';
import 'package:flutter_3/thirdline/deletePage.dart';
import 'package:flutter_3/thirdline/deliverypage.dart';
import 'package:flutter_3/thirdline/locationscreen.dart';
import 'package:flutter_3/thirdline/nextorderdetail.dart';
import 'package:flutter_3/thirdline/paymentmethodpage.dart';
import 'package:flutter_3/thirdline/pickingitempage.dart';
import 'package:flutter_3/thirdline/testimonailspage.dart';
import 'package:flutter_3/views/congratPage.dart';
import 'package:flutter_3/views/fill_bio_screen.dart';
import 'package:flutter_3/views/get_started_page.dart';
import 'package:flutter_3/views/homescreen.dart';
import 'package:flutter_3/views/locationPage.dart';
import 'package:flutter_3/views/paymentPage.dart';
import 'package:flutter_3/views/setlocationPage.dart';
import 'package:flutter_3/views/sign_inScreen.dart';
import 'package:flutter_3/views/splashPage.dart';
import 'package:flutter_3/views/uploadPicPage.dart';
import 'package:flutter_3/views/upload_picPage1.dart';
import 'package:flutter_foodapp/views/sign_inScreen.dart';
import 'package:get/get.dart';

import '../common/home_page.dart';
import '../second_line/callingpage.dart';
import '../second_line/chatPage.dart';
import '../second_line/findfoodpage.dart';
import '../second_line/main_page.dart';
import '../views/homescreen.dart';
import '../views/splashPage.dart';

Route<RouteSettings> OnGenerrateRoute(RouteSettings settings){

  var args = settings.arguments;

  switch(settings.name){
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => MainPage(),
      );
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SplashPage(),
      );
    case homeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => homeScreen(
         // arguments: args as Map<String ,dynamic>,
        ),
      );
    case ChatPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case Sign_screen.routeName:
      return MaterialPageRoute(
          builder: (context) => Sign_screen(),
      );
    case get_startedPage.routeName:
      return MaterialPageRoute(
        builder: (context) => get_startedPage(
          argument: args as GetstartedPageargument,
        ),
      );
    case Fill_bio_page.routeName:
      return MaterialPageRoute(
          builder: (context) => Fill_bio_page(),
      );
    case PaymentPage.routeName:
      return MaterialPageRoute(
          builder: (context) => PaymentPage(),
      );
    case Upload_PicPage.routeName:
      return MaterialPageRoute(
        builder: (context) => Upload_PicPage(),
      );
    case Upload_picPagenext.routeName:
      return MaterialPageRoute(
        builder: (context) => Upload_picPagenext(),
      );
    case LocationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => LocationPage(),
      );
    case SetLocationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SetLocationPage(),
      );
    case congrarPage.routeName:
      return MaterialPageRoute(
        builder: (context) => congrarPage(),
      );
    case ForgetPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => ForgetPassword(),
      );
    case Veriifypage.routeName:
      return MaterialPageRoute(
        builder: (context) => Veriifypage(),
      );
    case ResetPassPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ResetPassPage(),
      );
    case congratsPage.routeName:
      return MaterialPageRoute(
        builder: (context) => congratsPage(),
      );
    case PopularListpage.routeName:
      return MaterialPageRoute(
        builder: (context) => PopularListpage(),
      );
    case PopularMenu.routeName:
      return MaterialPageRoute(
        builder: (context) => PopularMenu(),
      );
    case searchFoodPage.routeName:
      return MaterialPageRoute(
        builder: (context) => searchFoodPage(),
      );
    case FindFoodPage.routeName:
      return MaterialPageRoute(
        builder: (context) => FindFoodPage(),
      );
    case NextFindFoodPage.routeName:
      return MaterialPageRoute(
          builder: (context) => NextFindFoodPage(),
      );
    case Findpasta.routeName:
      return MaterialPageRoute(
        builder: (context) => Findpasta(),
      );
    case Searchforrestauant.routeName:
      return MaterialPageRoute(
        builder: (context) => Searchforrestauant(),
      );
    case Mychat.routeName:
      return MaterialPageRoute(
        builder: (context) => Mychat(),
      );
    case ChatwJessica.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatwJessica(),
      );
    case CallPage.routeName:
      return MaterialPageRoute(
        builder: (context) => CallPage(),
      );
    case CallingPage.routeName:
      return MaterialPageRoute(
        builder: (context) => CallingPage(),
      );
    case CallednedPage.routeName:
      return MaterialPageRoute(
        builder: (context) => CallednedPage(),
      );
    case RatePage.routeName:
      return MaterialPageRoute(
        builder: (context) => RatePage(),
      );
    case RateforRestaurant.routeName:
      return MaterialPageRoute(
        builder: (context) => RateforRestaurant(),
      );
    case PromotionPAge.routeName:
      return MaterialPageRoute(
        builder: (context) => PromotionPAge(),
      );
    case NotificationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => NotificationPage(),
      );
    case OrderDetailnext.routeName:
      return MaterialPageRoute(
        builder: (context) => OrderDetailnext(),
      );
    case DeletePage.routeName:
      return MaterialPageRoute(
        builder: (context) => DeletePage(),
      );
    case OrdersDetailPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersDetailPage(),
      );
    case OrderDetailnext.routeName:
      return MaterialPageRoute(
        builder: (context) => OrderDetailnext(),
      );
    case DeliveryPage.routeName:
      return MaterialPageRoute(
        builder: (context) => DeliveryPage(),
      );
    case PaymentmethodScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => PaymentmethodScreen(),
      );
    case LocationScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => LocationScreen(),
      );
    case PickingItem.routeName:
      return MaterialPageRoute(
        builder: (context) => PickingItem(),
      );
    case LovyFoodPage.routeName:
      return MaterialPageRoute(
        builder: (context) => LovyFoodPage(),
      );
    case LovyfoodDetail.routeName:
      return MaterialPageRoute(
        builder: (context) => LovyfoodDetail(),
      );
    case TestimonailPage.routeName:
      return MaterialPageRoute(
        builder: (context) => TestimonailPage(),
      );
    default :
      return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('no route defined for ${settings.name}'),
            ),
          )
      );
  }
}