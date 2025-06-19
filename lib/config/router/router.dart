
import 'package:expense_easy/config/router/routers/home_router.dart';
import 'package:expense_easy/config/router/ui/page_not_found.dart';
import 'package:fluro/fluro.dart';

final appRouter = FluroRouter();

Future<void> configureRouters() async {
  appRouter.notFoundHandler = Handler(handlerFunc: (_, __) {
    return const PageNotFound();
  });

  HomeRouter().defineRoutes(appRouter);
}