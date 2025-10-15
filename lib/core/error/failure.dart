import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure({
    required super.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message, statusCode];
}

class NoInternetFailure extends Failure {
  const NoInternetFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class FormatFailure extends Failure {
  const FormatFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class ProductUploadFailure extends Failure {
  const ProductUploadFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class DownloadFailure extends Failure {
  const DownloadFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class DeleteFailure extends Failure {
  const DeleteFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class ImageFailure extends Failure {
  const ImageFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class UnknownFailure extends Failure {
  const UnknownFailure() : super(message: 'Unknown error');

  String getLocalizedMessage(BuildContext context) =>
      'An unknown error occurred';
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({required super.message});

  @override
  List<Object?> get props => [message];
}
