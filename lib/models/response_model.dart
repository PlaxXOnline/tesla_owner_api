/// Represents the standard response structure from a server or an API endpoint.
///
/// This model consists of two key properties: [result] and [reason].
/// It is typically used to standardize the communication between a client and a server.
class ResponseModel {
  /// A boolean flag indicating the outcome of the operation.
  ///
  /// `true` means the operation was successful, while `false` implies that the operation failed.
  final bool result;

  /// A string providing more detailed information about the operation's outcome.
  ///
  /// For successful operations, it might contain a success message,
  /// and for failed operations, it would typically contain an error or a reason for the failure.
  final String reason;

  /// Constructs a new instance of the [ResponseModel] class.
  ///
  /// Both [result] and [reason] must be provided, as they are required parameters.
  ResponseModel({
    required this.result,
    required this.reason,
  });

  /// Creates a new instance of the [ResponseModel] class from a JSON map.
  ///
  /// The [json] argument is a [Map] with string keys and dynamic values.
  /// The 'result' key corresponds to the [result] property,
  /// and the 'reason' key corresponds to the [reason] property of the [ResponseModel] class.
  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      result: json['result'] as bool,
      reason: json['reason'] as String,
    );
  }

  /// Converts the current instance of the [ResponseModel] class into a JSON map.
  ///
  /// The [result] property maps to the 'result' key and the [reason] property maps to the 'reason' key in the map.
  Map<String, dynamic> toJson() {
    return {
      'result': result,
      'reason': reason,
    };
  }
}
