part of 'injector_container_path.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  /// External
  final db = LocalDatabase.instance;
  await db.warmUp();
  sl.registerSingleton<LocalDatabase>(db);
  await sl.allReady();
  repository();
  usecase();
  stateManagement();
}

///[repository]
void repository() {
  sl.registerLazySingleton<TransactionRepository>(
    () => TransactionRepositoryImpl(database: sl()),
  );
}

///[usecase]
void usecase() {
  sl.registerLazySingleton<AddTransaction>(() => AddTransaction(sl()));
  sl.registerLazySingleton<ClearAllTransactions>(
    () => ClearAllTransactions(sl()),
  );
  sl.registerLazySingleton<DeleteTransaction>(() => DeleteTransaction(sl()));
  sl.registerLazySingleton<GetAllTransactions>(() => GetAllTransactions(sl()));
  sl.registerLazySingleton<GetBalance>(() => GetBalance(sl()));
  sl.registerLazySingleton<GetMonthlyAnalytics>(
    () => GetMonthlyAnalytics(sl()),
  );
  sl.registerLazySingleton<GetTotalExpense>(() => GetTotalExpense(sl()));
  sl.registerLazySingleton<GetTotalIncome>(() => GetTotalIncome(sl()));
  sl.registerLazySingleton<GetTransactionsByType>(
    () => GetTransactionsByType(sl()),
  );
  sl.registerLazySingleton<UpdateTransaction>(() => UpdateTransaction(sl()));
}

///[bloc]
void stateManagement() {
  sl.registerFactory<AddTransactionBloc>(
    () => AddTransactionBloc(updateTransaction: sl(), addTransaction: sl()),
  );
  sl.registerFactory<AnalyticsBlocBloc>(
    () => AnalyticsBlocBloc(
      getTotalIncome: sl(),
      getTotalExpense: sl(),
      getBalance: sl(),
      getMonthlyAnalytics: sl(),
    ),
  );
  sl.registerFactory<TransactionBlocBloc>(
    () => TransactionBlocBloc(
      getAllTransactions: sl(),
      deleteTransaction: sl(),
      clearAllTransactions: sl(),
      getTransactionsByType: sl(),
    ),
  );
}
