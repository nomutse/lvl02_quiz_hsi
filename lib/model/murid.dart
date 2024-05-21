import 'package:hive/hive.dart';
part 'murid.g.dart';

@HiveType(typeId: 0)
class Murid extends HiveObject {
  @HiveField(0)
  late String id;
  @HiveField(1)
  late String name;
  @HiveField(2)
  late String username;
  /* @HiveField(3)
  late String email;
  @HiveField(4)
  late String addressstreet;
  @HiveField(5)
  late String addresssuite;
  @HiveField(6)
  late String addresscity;
  @HiveField(7)
  late String addresszipcode;
  @HiveField(8)
  late String phone; */

  Murid({
    required this.id,
    required this.name,
    required this.username,
    /*  required this.email,
    required this.addressstreet,
    required this.addresssuite,
    required this.addresscity,
    required this.addresszipcode,
    required this.phone, */
  });

  @override
  String toString() {
    return 'Anak: {id: ${id}, name: ${name}, username: ${username}}';
  }
}
