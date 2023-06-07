import 'package:farm_flow_delivery/View/LoginScreen.dart';
import 'package:farm_flow_delivery/View/Notification.dart';
import 'package:farm_flow_delivery/View/NotificationSettings.dart';
import 'package:farm_flow_delivery/View/Order/ordercompleted.dart';
import 'package:farm_flow_delivery/View/Order/orderdetailsotp.dart';
import 'package:farm_flow_delivery/View/Settings.dart';
import 'package:farm_flow_delivery/View/Side%20Menu/Faqs/orderfaq.dart';
import 'package:farm_flow_delivery/View/Side%20Menu/contactUs.dart';
import 'package:farm_flow_delivery/View/Side%20Menu/Faqs/faqs.dart';
import 'package:farm_flow_delivery/View/Side%20Menu/Feedback/feedback.dart';
import 'package:farm_flow_delivery/View/Side%20Menu/Feedback/feedbackform.dart';
import 'package:farm_flow_delivery/View/Side%20Menu/SideMenu.dart';
import 'package:farm_flow_delivery/View/Side%20Menu/Contact/contact.dart';
import 'package:farm_flow_delivery/View/forgot_password.dart';
import 'package:farm_flow_delivery/View/reset_password.dart';
import 'package:farm_flow_delivery/View/splash_screen.dart';
import 'package:farm_flow_delivery/View/verify_number.dart';
import 'package:get/get.dart';

import '../../View/map.dart';
import 'route_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: RouteName.forgotPassword,
          page: () => const ForgotPassword(),
        ),
        GetPage(
          name: RouteName.verifyNumber,
          page: () => const VerifyNumber(),
        ),
        GetPage(
          name: RouteName.resetPassword,
          page: () => const ResetPassword(),
        ),
        GetPage(
          name: RouteName.sideMenu,
          page: () => const SideMenu(),
        ),
        GetPage(
          name: RouteName.contact,
          page: () => const Contact(),
        ),
        GetPage(
          name: RouteName.faqs,
          page: () => const Faq(),
        ),
        GetPage(
          name: RouteName.notification,
          page: () => const Notification(),
        ),
        GetPage(
          name: RouteName.notificationSettings,
          page: () => const NotificationSettings(),
        ),
        GetPage(
          name: RouteName.settings,
          page: () => const Settings(),
        ),
         GetPage(
          name: RouteName.feedBack,
          page: () => FeedBack(),
        ),
         GetPage(
          name: RouteName.feedBackform,
          page: () => Feedbackform(),
        ),

         GetPage(
          name: RouteName.contactus,
          page: () => ContactUs(),
        ),

          GetPage(
          name: RouteName.faqcontent,
          page: () => Faqscontent(),
        ),

          GetPage(
          name: RouteName.orderdetailsotp,
          page: () => Orderdetailsotp(),
        ),

        
          GetPage(
          name: RouteName.ordercompleted,
          page: () => Ordercompleted(),
        ),

        GetPage(
          name: RouteName.mapPage,
          page: () => MapPage(),
        ),



      ];
}
