import 'package:cash_flow/core/common/custom_app_bar.dart';
import 'package:cash_flow/core/common/custom_decoration_widget.dart';
import 'package:cash_flow/core/common/custom_ink_widget.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/presentation/blocs/transaction_bloc_bloc/transaction_bloc_bloc.dart';
import 'package:cash_flow/features/presentation/pages/transactions_page/transactions_mixin.dart';
import 'package:cash_flow/features/presentation/pages/transactions_page/widgets/transcations_text_widgets.dart';
import 'package:cash_flow/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart' show DateFormat;

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage>
    with TransactionsMixin {
  @override
  Widget build(
    BuildContext context,
  ) => BlocBuilder<TransactionBlocBloc, TransactionBlocState>(
    builder: (context, state) => RefreshIndicator.adaptive(
      onRefresh: () async {
        bloc.add(TransactionBlocEvent.getAll());
      },
      child: Scaffold(
        appBar: CustomAppBar(
          key: const Key('transactions_app_bar'),
          leadingVisible: false,
          leading: IconButton(
            key: const Key('add_transaction_button'), 
            onPressed: () => context
                .pushNamed(
                  Routes.addEdit,
                  extra: TransactionEntity(
                    note: "Добавить операцию",
                    type: '',
                    category: '',
                    amount: 0,
                    date: DateTime.now(),
                    income: 1,
                  ),
                )
                .then((_) {
                  bloc.add(TransactionBlocEvent.getAll());
                }),
            icon: Icon(
              Icons.add,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          title: "Мои операции",
          actions: IconButton(
            key: const Key('analytics_button'), 
            onPressed: () => context.pushNamed(Routes.analytics),
            icon: Icon(
              Icons.analytics,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        body:  state.transactions.isEmpty?Center(
                  child: Text(
                    "Нет записей",
                    style: context.textStyle.bodyBody,
                  ),
                ): ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
             Dismissible(
                  key: Key('dismissible_transaction_${state.transactions[index].id}'),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: AppUtils.kBorderRadius12,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ).paddingOnly(right: wi(20)),
                  ),
                  confirmDismiss: (direction) async {
                    return await showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text('Подтверждение'),
                        content: Text('Вы действительно хотите удалить эту операцию?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: Text('Отмена'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: Text('Удалить', style: TextStyle(color: Colors.red)),
                          ),
                        ],
                      ),
                    );
                  },
                  onDismissed: (direction) {
                    bloc.add(TransactionBlocEvent.delete(delete: state.transactions[index].id!));
                    // Tranzaksiya o'chirilgandan keyin ro'yxatni yangilash
                    Future.delayed(Duration(milliseconds: 300), () {
                      if (mounted) {
                        bloc.add(TransactionBlocEvent.getAll());
                      }
                    });
                  },
                  child: CustomDecorationWidget(
                    child: [
                      CustomInkWidget(
                        key: Key('transaction_item_$index'),
                        onTap: () => context
                            .pushNamed(
                              Routes.addEdit,
                              extra: TransactionEntity(
                                note: "Редактировать операцию",
                                type: '',
                                category: '',
                                amount: 0,
                                date: DateTime.now(),
                                income: 1,
                                id: state.transactions[index].id,
                              ),
                            )
                            .then((_) {
                              bloc.add(TransactionBlocEvent.getAll());
                            }),
                        borderRadius: AppUtils.kBorderRadius12,
                        child: Column(
                          spacing: he(10),
                          children: [
                            TranscationsTextWidgets(
                              textL: "Категория:",
                              textR: state.transactions[index].category,
                            ),
                            TranscationsTextWidgets(
                              textL: "Описание:",
                              textR: state.transactions[index].type,
                            ),
                            TranscationsTextWidgets(
                              textL: "Сумма:",
                              textR: Formatter.formatCurrency(state.transactions[index].amount),
                            ),
                            TranscationsTextWidgets(
                              textL: "Дата:",
                              textR: DateFormat('EEEE, dd MMM yyyy', 'ru').format(
                                DateTime.parse(
                                  state.transactions[index].date.toString(),
                                ),
                              ),
                            ),
                          ],
                        ).paddingSymmetric(horizontal: wi(12), vertical: he(6)),
                      ),
                    ],
                  ).paddingOnly(top: he(index == 0 ? 16 : 0), bottom: he(10)),
                ),

          itemCount: state.transactions.length,
        ).paddingSymmetric(horizontal: wi(he(16))),
      ),
    ),
  );
}


