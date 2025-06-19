import 'package:fluro/fluro.dart';

import '../../../common/enums/bottom_nav.dart';
import '../../../presentation/views/analytics_view/analytics_view.dart';
import '../../../presentation/views/home_view/home_view.dart';
import '../../../presentation/views/main_view/main_view.dart';
import '../../../presentation/views/more_view/more_view.dart';
import '../../../presentation/views/notebook_view/notebook_view.dart';
import '../../../presentation/views/wallet_view/wallet_view.dart';
import '../utils/navigator_paths.dart';
import '../utils/navigator_utils.dart';
import '../utils/router_provider.dart';

class HomeRouter extends IRouterProvider {
  @override
  void defineRoutes(FluroRouter router) {
    router.define(NavigatorPaths.main,
        handler: Handler(handlerFunc: (context, __) {
      return const MainView();
    }));

    router.define(NavigatorPaths.home,
        handler: Handler(handlerFunc: (context, __) {
      return const HomeView();
    }));

    router.define(NavigatorPaths.notebook,
        handler: Handler(handlerFunc: (context, __) {
      return const NotebookView();
    }));

    router.define(NavigatorPaths.wallet,
        handler: Handler(handlerFunc: (context, __) {
      return const WalletView();
    }));

    router.define(NavigatorPaths.analytics,
        handler: Handler(handlerFunc: (context, __) {
      return const AnalyticsView();
    }));

    router.define(NavigatorPaths.more,
        handler: Handler(handlerFunc: (context, __) {
      return const MoreView();
    }));
  }

  static void goMainView(context,
      {BottomNavItem? navItem,
      TransitionType transition = TransitionType.native}) {
    NavigatorUtils.pushAndRemoveUntil(
      context,
      NavigatorPaths.main,
      sendData: {'navItem': navItem},
      rootNavigator: true,
      transition: transition,
    );
  }

  static void goNotebookView(context) {
    NavigatorUtils.push(context, NavigatorPaths.notebook);
  }

  static void goWalletView(context) {
    NavigatorUtils.push(context, NavigatorPaths.wallet);
  }

  static void goAnalyticsView(context) {
    NavigatorUtils.push(context, NavigatorPaths.analytics);
  }

  static void goMoreView(context) {
    NavigatorUtils.push(context, NavigatorPaths.more);
  }
}
