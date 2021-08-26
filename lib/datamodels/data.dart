class Data {
  Data(this.cultureshock, this.today,this.time);

  final String cultureshock;
  final String today;
  final String time;

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    return Data(
      parsedJson['cultureshock'].toString(),
      parsedJson['today'] .toString(),
      parsedJson['time'].toString(),
    );

  }

}