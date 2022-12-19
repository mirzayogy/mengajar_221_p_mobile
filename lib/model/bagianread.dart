class BagianRead {
  BagianRead({required this.success});

  bool success;

  factory BagianRead.fromJson(Map<String, dynamic> json) =>
      BagianRead(success: json['success']);
}
