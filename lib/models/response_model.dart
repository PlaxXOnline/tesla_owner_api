/// Dart model for the JSON response.
class ResponseModel {
  /// Indicates the result of the response.
  final bool result;

  /// Provides the reason for the response.
  final String reason;

  /// Constructor for the ResponseModel.
  ResponseModel({
    required this.result,
    required this.reason,
  });

  /// Creates a ResponseModel object from a JSON map.
  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      result: json['result'] as bool,
      reason: json['reason'] as String,
    );
  }

  /// Converts the ResponseModel object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'result': result,
      'reason': reason,
    };
  }
}
