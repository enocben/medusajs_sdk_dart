class MedusaException implements Exception {
  final String message;
  final int? code;
  final dynamic data;

  MedusaException(this.message, {this.code, this.data});

  @override
  String toString() => 'MedusaException: $message (code: $code)';
}

class NetworkException extends MedusaException {
  NetworkException(String message, {int? code, dynamic data})
      : super(message, code: code, data: data);
}

class UnauthorizedException extends MedusaException {
  UnauthorizedException(String message, {int? code, dynamic data})
      : super(message, code: code, data: data);
}

class NotFoundException extends MedusaException {
  NotFoundException(String message, {int? code, dynamic data})
      : super(message, code: code, data: data);
}

class ValidationException extends MedusaException {
  ValidationException(String message, {int? code, dynamic data})
      : super(message, code: code, data: data);
}
