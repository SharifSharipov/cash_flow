import 'package:cash_flow/features/presentation/blocs/transaction_bloc_bloc/transaction_bloc_bloc.dart';
import 'package:cash_flow/features/presentation/pages/transactions_page/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin TransactionsMixin on State<TransactionsPage> {
  TransactionBlocBloc get bloc => context.read<TransactionBlocBloc>();
  @override
  void initState() {
    bloc.add(TransactionBlocEvent.getAll());
    super.initState();
  }
 @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(milliseconds: 50), () {
      if (mounted) {
        bloc.add(TransactionBlocEvent.getAll());
      }
    });
  }
}
