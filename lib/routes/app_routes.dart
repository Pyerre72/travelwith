import 'package:flutter/material.dart';
import 'package:travel_with/presentation/google_login_screen/google_login_screen.dart';
import 'package:travel_with/presentation/customisable_user_profile_screen/customisable_user_profile_screen.dart';
import 'package:travel_with/presentation/events_screen/events_screen.dart';
import 'package:travel_with/presentation/event_registration_screen/event_registration_screen.dart';
import 'package:travel_with/presentation/group_chat_screen/group_chat_screen.dart';
import 'package:travel_with/presentation/post_creation_screen/post_creation_screen.dart';
import 'package:travel_with/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String googleLoginScreen = '/google_login_screen';

  static const String customisableUserProfileScreen =
      '/customisable_user_profile_screen';

  static const String eventsScreen = '/events_screen';

  static const String eventRegistrationScreen = '/event_registration_screen';

  static const String groupChatScreen = '/group_chat_screen';

  static const String postCreationScreen = '/post_creation_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        googleLoginScreen: GoogleLoginScreen.builder,
        customisableUserProfileScreen: CustomisableUserProfileScreen.builder,
        eventsScreen: EventsScreen.builder,
        eventRegistrationScreen: EventRegistrationScreen.builder,
        groupChatScreen: GroupChatScreen.builder,
        postCreationScreen: PostCreationScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: EventsScreen.builder
      };
}
