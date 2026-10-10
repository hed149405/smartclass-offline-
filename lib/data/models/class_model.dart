/// مدل کلاس درس
class ClassModel {
  final int? id;
  final String name;
  final String grade;
  final String? field;
  final int capacity;
  final int? teacherId;
  final String? schedule;
  final String createdAt;
  final String updatedAt;

  const ClassModel({
    this.id,
    required this.name,
    required this.grade,
    this.field,
    required this.capacity,
    this.teacherId,
    this.schedule,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'grade': grade,
      'field': field,
      'capacity': capacity,
      'teacher_id': teacherId,
      'schedule': schedule,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory ClassModel.fromMap(Map<String, dynamic> map) {
    return ClassModel(
      id: map['id'] as int?,
      name: map['name'] as String,
      grade: map['grade'] as String,
      field: map['field'] as String?,
      capacity: map['capacity'] as int,
      teacherId: map['teacher_id'] as int?,
      schedule: map['schedule'] as String?,
      createdAt: map['created_at'] as String,
      updatedAt: map['updated_at'] as String,
    );
  }

  ClassModel copyWith({
    int? id,
    String? name,
    String? grade,
    String? field,
    int? capacity,
    int? teacherId,
    String? schedule,
    String? createdAt,
    String? updatedAt,
  }) {
    return ClassModel(
      id: id ?? this.id,
      name: name ?? this.name,
      grade: grade ?? this.grade,
      field: field ?? this.field,
      capacity: capacity ?? this.capacity,
      teacherId: teacherId ?? this.teacherId,
      schedule: schedule ?? this.schedule,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
