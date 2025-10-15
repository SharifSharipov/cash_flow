part of 'routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final PackageInfo packageInfo = sl<PackageInfo>();

final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);
final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.transactions,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.addEdit,
      name: Routes.addEdit,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) {
        final data=state.extra as TransactionEntity;
        return BlocProvider(
        create: (context) => sl<AddTransactionBloc>(),
        child: AddEditPage(data: data,),
      );
      }
    ),
    GoRoute(
      path: Routes.analytics,
      name: Routes.analytics,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => BlocProvider(
        create: (context) => sl<AnalyticsBlocBloc>(),
        child: const AnalyticsPage(),
      ),
    ),
    GoRoute(
      path: Routes.transactions,
      name: Routes.transactions,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => BlocProvider(
        create: (context) => sl<TransactionBlocBloc>(),
        child: const TransactionsPage(),
      ),
    ),
  ],
);
