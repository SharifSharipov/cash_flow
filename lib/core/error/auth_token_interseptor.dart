// ignore_for_file: unnecessary_null_comparison
import 'dart:developer';
import 'package:dio/dio.dart';
//import 'package:yoldosh/router/routes.dart';

class AuthTokenInterceptor extends Interceptor {
  final Dio dio;

  AuthTokenInterceptor({required this.dio});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      // Get token from local source
      final token =" localSource.accessToken";

      log("AuthTokenInterceptor - onRequest");
      log("Token exists: ${token != null && token.isNotEmpty}");
      log("Request Path: ${options.path}");

      // Add token to headers if available
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
        final displayToken = token.length > 10 
          ? token.substring(0, 10) 
          : token;
        log("Authorization header added: Bearer $displayToken...");
      } else {
        log("WARNING: No token found in local source");
      }

      return handler.next(options);
    } catch (e) {
      log("AuthTokenInterceptor Error in onRequest: $e");
      return handler.next(options);
    }
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    log("AuthTokenInterceptor - onError");
    log("Error Status Code: ${err.response?.statusCode}");
    log("Error Message: ${err.message}");

    // Handle 401 Unauthorized
    if (err.response?.statusCode == 401) {
      log("Got 401 Unauthorized - Token might be expired");

      // Try to refresh token
      final refreshed = await _tryRefreshToken();

      if (refreshed) {
        log("Token refreshed successfully, retrying request");

        try {
          // Get new token
          final newToken = "localSource.accessToken";
          
          // Create new RequestOptions from existing options
          final newOptions = err.requestOptions;
          
          // Update headers with new token
          if (newToken != null && newToken.isNotEmpty) {
            newOptions.headers['Authorization'] = 'Bearer $newToken';
          }

          // Retry the request
          final response = await dio.request(
            newOptions.path,
          
          );

          return handler.resolve(response);
        } catch (e) {
          log("Retry after token refresh failed: $e");
          return handler.next(err);
        }
      } else {
        log("Token refresh failed - redirecting to login");
        // Token refresh failed, let RetryInterceptor handle logout
        return handler.next(err);
      }
    }

    return handler.next(err);
  }

  Future<bool> _tryRefreshToken() async {
    try {
      log("Attempting to refresh token...");

      // Get refresh token
      final refreshToken = "localSource.refreshToken";

      if (refreshToken == null || refreshToken.isEmpty) {
        log("No refresh token available");
        return false;
      }

      // Call refresh endpoint
      // Update this endpoint based on your backend
      final response = await dio.post(
        '/api/auth/refresh',
        data: {'refreshToken': refreshToken},
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode == 200) {
        // Save new token
        final newAccessToken = 
          response.data['accessToken'] ?? response.data['token'];
       // final newRefreshToken = response.data['refreshToken'];

        // Validate tokens before saving
        if (newAccessToken == null || newAccessToken.isEmpty) {
          log("New access token is null or empty");
          return false;
        }

        // Update local source
        // await localSource.setAccessToken(newAccessToken);
        
        // if (newRefreshToken != null && newRefreshToken.isNotEmpty) {
        //   await localSource.setRefreshToken(newRefreshToken);
        // }

        log("Token refreshed successfully");
        return true;
      } else {
        log("Token refresh failed with status ${response.statusCode}");
        log("Response: ${response.data}");
        return false;
      }
    } catch (e, stackTrace) {
      log("Token refresh exception: $e");
      log("StackTrace: $stackTrace");
      return false;
    }
  }
}