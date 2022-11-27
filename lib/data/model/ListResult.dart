class ListResult {
  ListResult({required this.error, required this.message, required this.count});

  bool error;
  String message;
  int count;

  factory ListResult.fromJson(Map<String, dynamic> json) => ListResult(
      error: json['error'], message: json['message'], count: json['count']);
}
