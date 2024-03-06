class ScanModel{
  int id;
  String type;
  String value;

  ScanModel({
    required this.id,
    required this.type,
    required this.value
  }){
    if(this.type.contains('http')){
      type = 'http';
    }else{
      type = 'geo';
    }
  }

  factory ScanModel.fromJson(Map<String, dynamic> json) => new ScanModel(
    id: json["id"],
    type: json["type"],
    value: json["value"]
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "value": value
  };
}