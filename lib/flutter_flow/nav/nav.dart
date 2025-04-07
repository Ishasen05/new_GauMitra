import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginPageWidget(),
        ),
        FFRoute(
          name: LoginPageWidget.routeName,
          path: LoginPageWidget.routePath,
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: LoggedinPageWidget.routeName,
          path: LoggedinPageWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'LoggedinPage')
              : NavBarPage(
                  initialPage: 'LoggedinPage',
                  page: LoggedinPageWidget(),
                ),
        ),
        FFRoute(
          name: FarmersGuideWidget.routeName,
          path: FarmersGuideWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'FarmersGuide')
              : NavBarPage(
                  initialPage: 'FarmersGuide',
                  page: FarmersGuideWidget(),
                ),
        ),
        FFRoute(
          name: SemenBankWidget.routeName,
          path: SemenBankWidget.routePath,
          builder: (context, params) => SemenBankWidget(),
        ),
        FFRoute(
          name: MarketPlaceWidget.routeName,
          path: MarketPlaceWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'MarketPlace')
              : NavBarPage(
                  initialPage: 'MarketPlace',
                  page: MarketPlaceWidget(),
                ),
        ),
        FFRoute(
          name: BreedSemenWidget.routeName,
          path: BreedSemenWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'BreedSemen')
              : NavBarPage(
                  initialPage: 'BreedSemen',
                  page: BreedSemenWidget(),
                ),
        ),
        FFRoute(
          name: FSBSAnjoraDurgWidget.routeName,
          path: FSBSAnjoraDurgWidget.routePath,
          builder: (context, params) => FSBSAnjoraDurgWidget(),
        ),
        FFRoute(
          name: LoginPage1Widget.routeName,
          path: LoginPage1Widget.routePath,
          builder: (context, params) => LoginPage1Widget(),
        ),
        FFRoute(
          name: CheckInBreedingWidget.routeName,
          path: CheckInBreedingWidget.routePath,
          builder: (context, params) => CheckInBreedingWidget(),
        ),
        FFRoute(
          name: CowHealthWidget.routeName,
          path: CowHealthWidget.routePath,
          builder: (context, params) => CowHealthWidget(),
        ),
        FFRoute(
          name: CowsPregnancyWidget.routeName,
          path: CowsPregnancyWidget.routePath,
          builder: (context, params) => CowsPregnancyWidget(),
        ),
        FFRoute(
          name: ProfilePageWidget.routeName,
          path: ProfilePageWidget.routePath,
          builder: (context, params) => ProfilePageWidget(),
        ),
        FFRoute(
          name: CowFeedingWidget.routeName,
          path: CowFeedingWidget.routePath,
          builder: (context, params) => CowFeedingWidget(),
        ),
        FFRoute(
          name: ProductionBusinessWidget.routeName,
          path: ProductionBusinessWidget.routePath,
          builder: (context, params) => ProductionBusinessWidget(),
        ),
        FFRoute(
          name: CowBreedsWidget.routeName,
          path: CowBreedsWidget.routePath,
          builder: (context, params) => CowBreedsWidget(),
        ),
        FFRoute(
          name: GauShalaHubWidget.routeName,
          path: GauShalaHubWidget.routePath,
          builder: (context, params) => GauShalaHubWidget(
            minPrrice: params.getParam(
              'minPrrice',
              ParamType.double,
            ),
            maxPrice: params.getParam(
              'maxPrice',
              ParamType.double,
            ),
            selectedBreed: params.getParam<String>(
              'selectedBreed',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: DairyMoreWidget.routeName,
          path: DairyMoreWidget.routePath,
          builder: (context, params) => DairyMoreWidget(),
        ),
        FFRoute(
          name: ChangeEmailWidget.routeName,
          path: ChangeEmailWidget.routePath,
          builder: (context, params) => ChangeEmailWidget(),
        ),
        FFRoute(
          name: ChangePasswordWidget.routeName,
          path: ChangePasswordWidget.routePath,
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: CartWidget.routeName,
          path: CartWidget.routePath,
          builder: (context, params) => CartWidget(),
        ),
        FFRoute(
          name: KoniDairyWidget.routeName,
          path: KoniDairyWidget.routePath,
          builder: (context, params) => KoniDairyWidget(),
        ),
        FFRoute(
          name: SharmaMilkWidget.routeName,
          path: SharmaMilkWidget.routePath,
          builder: (context, params) => SharmaMilkWidget(),
        ),
        FFRoute(
          name: YadavDairyWidget.routeName,
          path: YadavDairyWidget.routePath,
          builder: (context, params) => YadavDairyWidget(),
        ),
        FFRoute(
          name: FreshCreamsWidget.routeName,
          path: FreshCreamsWidget.routePath,
          builder: (context, params) => FreshCreamsWidget(),
        ),
        FFRoute(
          name: GujratCowDairyWidget.routeName,
          path: GujratCowDairyWidget.routePath,
          builder: (context, params) => GujratCowDairyWidget(),
        ),
        FFRoute(
          name: RaipurDairyWidget.routeName,
          path: RaipurDairyWidget.routePath,
          builder: (context, params) => RaipurDairyWidget(),
        ),
        FFRoute(
          name: AmritDairyWidget.routeName,
          path: AmritDairyWidget.routePath,
          builder: (context, params) => AmritDairyWidget(),
        ),
        FFRoute(
          name: OrderWidget.routeName,
          path: OrderWidget.routePath,
          builder: (context, params) => OrderWidget(),
        ),
        FFRoute(
          name: FreshMalaiMilkWidget.routeName,
          path: FreshMalaiMilkWidget.routePath,
          builder: (context, params) => FreshMalaiMilkWidget(),
        ),
        FFRoute(
          name: MakkhaGharMalaiWidget.routeName,
          path: MakkhaGharMalaiWidget.routePath,
          builder: (context, params) => MakkhaGharMalaiWidget(),
        ),
        FFRoute(
          name: GovtPoliciesWidget.routeName,
          path: GovtPoliciesWidget.routePath,
          builder: (context, params) => GovtPoliciesWidget(),
        ),
        FFRoute(
          name: RGmGokulMissionWidget.routeName,
          path: RGmGokulMissionWidget.routePath,
          builder: (context, params) => RGmGokulMissionWidget(),
        ),
        FFRoute(
          name: NationalLivestockMissionNLMWidget.routeName,
          path: NationalLivestockMissionNLMWidget.routePath,
          builder: (context, params) => NationalLivestockMissionNLMWidget(),
        ),
        FFRoute(
          name: LhdcWidget.routeName,
          path: LhdcWidget.routePath,
          builder: (context, params) => LhdcWidget(),
        ),
        FFRoute(
          name: NpddWidget.routeName,
          path: NpddWidget.routePath,
          builder: (context, params) => NpddWidget(),
        ),
        FFRoute(
          name: DedsWidget.routeName,
          path: DedsWidget.routePath,
          builder: (context, params) => DedsWidget(),
        ),
        FFRoute(
          name: NadcpWidget.routeName,
          path: NadcpWidget.routePath,
          builder: (context, params) => NadcpWidget(),
        ),
        FFRoute(
          name: Doctor1Widget.routeName,
          path: Doctor1Widget.routePath,
          builder: (context, params) => Doctor1Widget(),
        ),
        FFRoute(
          name: Doctor2Widget.routeName,
          path: Doctor2Widget.routePath,
          builder: (context, params) => Doctor2Widget(),
        ),
        FFRoute(
          name: Doctor3Widget.routeName,
          path: Doctor3Widget.routePath,
          builder: (context, params) => Doctor3Widget(),
        ),
        FFRoute(
          name: DoctorsListWidget.routeName,
          path: DoctorsListWidget.routePath,
          builder: (context, params) => DoctorsListWidget(),
        ),
        FFRoute(
          name: KamdhenuProgramWidget.routeName,
          path: KamdhenuProgramWidget.routePath,
          builder: (context, params) => KamdhenuProgramWidget(),
        ),
        FFRoute(
          name: RashtriyaGokulMissionWidget.routeName,
          path: RashtriyaGokulMissionWidget.routePath,
          builder: (context, params) => RashtriyaGokulMissionWidget(),
        ),
        FFRoute(
          name: CowSellingWidget.routeName,
          path: CowSellingWidget.routePath,
          builder: (context, params) => CowSellingWidget(),
        ),
        FFRoute(
          name: GeminiWidget.routeName,
          path: GeminiWidget.routePath,
          builder: (context, params) => GeminiWidget(),
        ),
        FFRoute(
          name: FeedingProductsWidget.routeName,
          path: FeedingProductsWidget.routePath,
          builder: (context, params) => FeedingProductsWidget(),
        ),
        FFRoute(
          name: BuyOrSellCowFeedWidget.routeName,
          path: BuyOrSellCowFeedWidget.routePath,
          builder: (context, params) => BuyOrSellCowFeedWidget(),
        ),
        FFRoute(
          name: FSBSBanavasiWidget.routeName,
          path: FSBSBanavasiWidget.routePath,
          builder: (context, params) => FSBSBanavasiWidget(),
        ),
        FFRoute(
          name: FrozenSemenBankWidget.routeName,
          path: FrozenSemenBankWidget.routePath,
          builder: (context, params) => FrozenSemenBankWidget(),
        ),
        FFRoute(
          name: PashuSamvardhanWidget.routeName,
          path: PashuSamvardhanWidget.routePath,
          builder: (context, params) => PashuSamvardhanWidget(),
        ),
        FFRoute(
          name: SemenStationPalampurWidget.routeName,
          path: SemenStationPalampurWidget.routePath,
          builder: (context, params) => SemenStationPalampurWidget(),
        ),
        FFRoute(
          name: FeedingNewWidget.routeName,
          path: FeedingNewWidget.routePath,
          builder: (context, params) => FeedingNewWidget(),
        ),
        FFRoute(
          name: UploadWidget.routeName,
          path: UploadWidget.routePath,
          builder: (context, params) => UploadWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
