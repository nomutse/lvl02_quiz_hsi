// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'murid.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MuridAdapter extends TypeAdapter<Murid> {
  @override
  final int typeId = 0;

  @override
  Murid read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Murid(
      id: fields[0] as String,
      name: fields[1] as String,
      username: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Murid obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MuridAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
