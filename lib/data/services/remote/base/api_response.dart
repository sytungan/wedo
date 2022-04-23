class APIResponse {
  APIResponse({
    this.data,
    this.success,
    this.error,
    this.unAuthorizedRequest,
  });

  dynamic data;
  bool? success;
  APIError? error;
  bool? unAuthorizedRequest;

  factory APIResponse.fromJson(Map<String, dynamic> json) => APIResponse(
        data: json,
        success: json['success'],
        error: json['error'] != null ? APIError.fromJson(json['error']) : null,
        unAuthorizedRequest: json['unAuthorizedRequest'],
      );

  Map<String, dynamic> toObject() {
    return Map<String, dynamic>.from(data);
  }

  List<Map<String, dynamic>> toList() {
    return List<Map<String, dynamic>>.from(data);
  }
}

class APIError implements Exception {
  APIError({this.message, this.details});

  String? message;
  String? details;

  factory APIError.fromJson(Map<String, dynamic> json) => APIError(
        message: json['message'],
        details: json['details'],
      );
}
