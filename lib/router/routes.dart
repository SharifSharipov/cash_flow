

import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/presentation/blocs/add_transaction_bloc/add_transaction_bloc.dart';
import 'package:cash_flow/features/presentation/blocs/analytics_bloc/analytics_bloc_bloc.dart';
import 'package:cash_flow/features/presentation/blocs/transaction_bloc_bloc/transaction_bloc_bloc.dart';
import 'package:cash_flow/features/presentation/pages/add_edit_page/add_edit_page.dart';
import 'package:cash_flow/features/presentation/pages/analytics_page/analytics_page.dart';
import 'package:cash_flow/features/presentation/pages/transactions_page/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:chuck_interceptor/chuck_interceptor.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:cash_flow/injector_container_path.dart';
part 'app_routes.dart';
part 'name_routes.dart';