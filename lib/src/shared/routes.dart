// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/home/presentation/about.dart';
import 'package:bosra_elcham/src/home/presentation/acount/account.dart';
import 'package:bosra_elcham/src/home/presentation/acount/login.dart';
import 'package:bosra_elcham/src/home/presentation/acount/register.dart';
import 'package:bosra_elcham/src/home/presentation/error.dart';
import 'package:bosra_elcham/src/home/presentation/home.dart';
import 'package:bosra_elcham/src/home/presentation/settings.dart';
import 'package:bosra_elcham/src/home/presentation/splash.dart';
import 'package:bosra_elcham/src/post/presentation/posts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter router(bool loggedInPref) {
  return GoRouter(
    initialLocation: '/splash',
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: ErrorScreen(error: state.error.toString()),
    ),
    redirect: (state) {
      final loginLoc = state.namedLocation('login');
      final loggingIn = state.subloc == loginLoc;
      final createAccountLoc = state.namedLocation('register');
      final creatingAccount = state.subloc == createAccountLoc;
      final splashLoc = state.namedLocation('splash');
      final splash = state.subloc == splashLoc;
      final loggedIn = loggedInPref;
      final rootLoc = state.namedLocation('home');

      if (!loggedIn && !loggingIn && !creatingAccount && !splash) {
        return loginLoc;
      }
      if (loggedIn && (loggingIn || creatingAccount) && !splash) return rootLoc;
      return null;
    },
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: 'home',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (BuildContext context, GoRouterState state) =>
            const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterScreen(),
      ),
      GoRoute(
        path: '/account',
        name: 'account',
        builder: (BuildContext context, GoRouterState state) =>
            const AccountScreen(),
      ),
      GoRoute(
        path: '/about',
        name: 'about',
        builder: (BuildContext context, GoRouterState state) =>
            const AboutScreen(),
      ),
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
      ),
      GoRoute(
        path: '/error',
        name: 'error',
        builder: (BuildContext context, GoRouterState state) =>
            const ErrorScreen(error: ''),
      ),
      GoRoute(
        path: '/posts',
        name: 'posts',
        builder: (BuildContext context, GoRouterState state) =>
            const PostsScreen(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (BuildContext context, GoRouterState state) =>
            const SettingsScreen(),
      ),
    ],
  );
}
