class Message {
  Message({
    required this.statusCode,
    required this.datetime,
    required this.message,
    required this.details,
  });

  final int? statusCode;
  final DateTime? datetime;
  final String? message;
  final String? details;

  factory Message.fromJson(Map<String, dynamic> json){
    return Message(
      statusCode: json["statusCode"],
      datetime: DateTime.tryParse(json["datetime"] ?? ""),
      message: json["message"],
      details: json["details"],
    );
  }

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "datetime": datetime?.toIso8601String(),
    "message": message,
    "details": details,
  };

}