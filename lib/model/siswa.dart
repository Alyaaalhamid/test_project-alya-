import 'dart:convert';

Student studentFromJson(String str) => Student.fromJson(json.decode(str));

String studentToJson(Student data) => json.encode(data.toJson());

class Student {
  int? status;
  String? message;
  int? length;
  List<Datum>? data;

  Student({
    this.status,
    this.message,
    this.length,
    this.data,
  });

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        status: json["status"],
        message: json["message"],
        length: json["length"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "length": length,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  String? id;
  String? name;
  String? gender;
  DateTime? birthDate;
  String? province;
  String? city;
  String? photo;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Datum({
    this.id,
    this.name,
    this.gender,
    this.birthDate,
    this.province,
    this.city,
    this.photo,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        gender: json["gender"],
        birthDate: DateTime.parse(json["birthDate"]),
        province: json["province"],
        city: json["city"],
        photo: json["photo"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "gender": gender,
        "birthDate": birthDate.toString(),
        "province": province,
        "city": city,
        "photo": photo,
        "createdAt": createdAt.toString(),
        "updatedAt": updatedAt.toString(),
        "__v": v,
      };
}
