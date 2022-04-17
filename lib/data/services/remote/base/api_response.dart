class APIResponse {
  APIResponse({
    this.result,
    this.success,
    this.error,
    this.unAuthorizedRequest,
  });

  dynamic result;
  bool? success;
  APIError? error;
  bool? unAuthorizedRequest;

  factory APIResponse.fromJson(Map<String, dynamic> json) => APIResponse(
        result: json['result'],
        success: json['success'],
        error: json['error'] != null ? APIError.fromJson(json['error']) : null,
        unAuthorizedRequest: json['unAuthorizedRequest'],
      );

  Map<String, dynamic> toObject() {
    return Map<String, dynamic>.from(result);
  }

  List<Map<String, dynamic>> toList() {
    return List<Map<String, dynamic>>.from(result);
  }

  List<Map<String, dynamic>> toItems() {
    return List<Map<String, dynamic>>.from(result['items']);
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
