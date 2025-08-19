import 'package:flutter/material.dart';

import '../../screen/authentications/authentication_screen.dart';
import '../../screen/authentications/create_new_password.dart';
import '../../screen/authentications/forgot_password_screen.dart';
import '../../screen/authentications/otp_screen.dart';
import '../../screen/authentications/registration_screen.dart';
import '../../screen/main_page/main_screen.dart';
import '../../screen/my_menu/components/edit_food_screen.dart';
import '../../screen/notification/notification_screen.dart';
import '../../screen/onboarding/onboarding_screen.dart';
import '../../screen/product_details/product_details_screen.dart';
import '../../screen/profile/components/wallet_screen.dart';
import '../../screen/profile/faq_screen.dart';
import '../../screen/profile/language_screen.dart';
import '../../screen/profile/settings_screen.dart';
import '../../screen/restaurant_profile/edit_restaurant_screen.dart';
import '../../screen/restaurant_profile/restaurant_profile_screen.dart';
import '../../screen/splash/splash_screen.dart';

class RouteNames {
  static const String splashScreen = '/ss';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String authenticationScreen = '/authenticationScreen';
  static const String registrationScreen = '/registrationScreen';
  static const String verificationScreen = '/verificationScreen';
  static const String phoneVerificationScreen = '/phoneVerificationScreen';
  static const String emailVerificationScreen = '/emailVerificationScreen';
  static const String forgotPassScreen = '/forgotPassScreen';
  static const String createNewPasswordScreen = '/createNewPasswordScreen';
  static const String otpScreen = '/otpScreen';
  static const String mainScreen = '/mainScreen';
  static const String productDetailsScreen = '/productDetailsScreen';
  static const String orderScreen = '/orderScreen';
  static const String addressScreen = '/addressScreen';
  static const String editAddressScreen = '/editAddressScreen';
  static const String restaurantProfileScreen = '/restaurantProfileScreen';
  static const String editFoodScreen = '/editFoodScreen';
  static const String walletScreen = '/walletScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String settingsScreen = '/settingsScreen';
  static const String languageScreen = '/languageScreen';
  static const String faqScreen = '/faqScreen';
  static const String editRestaurantScreen = '/editRestaurantScreen';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SplashScreen());

      case RouteNames.onBoardingScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const OnboardingScreen());

      case RouteNames.authenticationScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const AuthenticationScreen());

      case RouteNames.registrationScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const RegistrationScreen());

      // case RouteNames.verificationScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const VerificationScreen());

      case RouteNames.otpScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const OtpScreen());

      case RouteNames.forgotPassScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ForgotPasswordScreen());

      case RouteNames.createNewPasswordScreen:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => const CreateNewPasswordScreen());

      case RouteNames.mainScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const MainScreen());

      case RouteNames.productDetailsScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const ProductDetailsScreen());

      case RouteNames.editFoodScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const EditFoodScreen());

      case RouteNames.walletScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const WalletScreen());

      case RouteNames.notificationScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const NotificationScreen());

      case RouteNames.settingsScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SettingsScreen());

      case RouteNames.languageScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const LanguageScreen());
      case RouteNames.faqScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const FaqScreen());

      case RouteNames.restaurantProfileScreen:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => const RestaurantProfileScreen());
      case RouteNames.editRestaurantScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const EditRestaurantScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Found ${settings.name}'),
            ),
          ),
        );
    }
  }
}
