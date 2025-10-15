import 'package:cash_flow/features/presentation/blocs/add_transaction_bloc/add_transaction_bloc.dart';
import 'package:cash_flow/features/presentation/pages/add_edit_page/add_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin AddEditMixin on State<AddEditPage> {
  AddTransactionBloc get bloc => context.read<AddTransactionBloc>();
  final formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController amountController;
  late TextEditingController categoryController;
  late FocusNode nameFocusNode;
  late FocusNode amountFocusNode;
  late FocusNode categoryFocusNode;
  void initControllers() {
    nameController = TextEditingController();
    amountController = TextEditingController();
    categoryController = TextEditingController();
    nameFocusNode = FocusNode();
    amountFocusNode = FocusNode();
    categoryFocusNode = FocusNode();
  }

  @override
  void initState() {
    initControllers();
    super.initState();
  }

  void clearControllers() {
    nameController.dispose();
    amountController.dispose();
    categoryController.dispose();
    nameFocusNode.dispose();
    amountFocusNode.dispose();
    categoryFocusNode.dispose();
  }

  @override
  void dispose() {
    clearControllers();
    super.dispose();
  }
}
