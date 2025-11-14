import 'package:cash_flow/constants/constants.dart';
import 'package:cash_flow/core/common/custom_app_bar.dart';
import 'package:cash_flow/core/common/custom_button.dart';
import 'package:cash_flow/core/common/custom_text_field.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/presentation/blocs/add_transaction_bloc/add_transaction_bloc.dart';
import 'package:cash_flow/features/presentation/pages/add_edit_page/add_edit_mixin.dart';
import 'package:cash_flow/features/presentation/pages/add_edit_page/widgets/money_type_select_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddEditPage extends StatefulWidget {
  final TransactionEntity data;
  const AddEditPage({super.key, required this.data});

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> with AddEditMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionBloc, AddTransactionState>(
      builder: (context, state) {
        final isAdd = widget.data.note == "Добавить операцию";
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
            title: widget.data.note ?? "",
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: wi(16),
                  vertical: he(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      spacing: he(10),
                      children: [
                        CustomTextField(
                          key: const Key('money_type_field'),
                          hintText: "Описание",
                          textInputType: TextInputType.text,
                          textEditingController: nameController,
                          focusNode: nameFocusNode,
                          textInputAction: TextInputAction.next,
                        ),
                        CustomTextField(
                          key: const Key('category_field'),
                          hintText: "Категория",
                          textInputType: TextInputType.text,
                          textEditingController: categoryController,
                          focusNode: categoryFocusNode,
                          textInputAction: TextInputAction.next,
                        ),
                        CustomTextField(
                          key: const Key('amount_field'),
                          hintText: "Сумма",
                          textInputType: TextInputType.number,
                          textEditingController: amountController,
                          focusNode: amountFocusNode,
                          textInputAction: TextInputAction.done,
                        ),
                        MoneyTypeSelectWidgets(
                          key: const Key('select_money_type_button'), 
                          label: state.index == null
                              ? "Выберите тип операции"
                              : (state.index == 1
                                  ? "Доход"
                                  : "Расход"),
                          onTapInsertMoney: () {
                            bloc.add(
                              AddTransactionEvent.selectMoneyType(index: 1),
                            );
                          },
                          onTapWithdrawMoney: () {
                            bloc.add(
                              AddTransactionEvent.selectMoneyType(index: 0),
                            );
                          },
                        ),
                      ],
                    ),
                    CustomButton(
                      key: const Key('submit_button'),
                      text: isAdd ? "Добавить" : "Обновить",
                      isLoading: state.status == Status.loading,
                      textColor: Colors.black,
                      onTap: () {
                        if (formKey.currentState!.validate() &&
                            state.index != null) {
                          final entity = TransactionEntity(
                            id: widget.data.id,
                            type: nameController.text,
                            category: categoryController.text,
                            amount: double.tryParse(amountController.text) ?? 0,
                            date: DateTime.now(),
                            income: state.index ?? 0,
                          );

                          if (isAdd) {
                            bloc.add(
                              AddTransactionEvent.addTrasanction(
                                entity: entity,
                              ),
                            );
                          } else {
                            bloc.add(
                              AddTransactionEvent.updateTransaction(
                                entity: entity,
                                id: widget.data.id ?? 0,
                              ),
                            );
                          }

                          Future.delayed(Duration(milliseconds: 300), () {
                            if (mounted) {
                              context.pop();
                            }
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Пожалуйста, заполните все поля"),
                            ),
                          );
                        }
                      },
                    ).paddingOnly(top: he(30), bottom: he(45)),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

