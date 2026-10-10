/// مدل تکلیف
class AssignmentModel {
  final int? id;
  final int classId;
  final int teacherId;
  final String title;
  final String? description;
  final String? filePath;
  final String deadline;
  final double maxScore;
  final String createdAt;
  final String updatedAt;

  const AssignmentModel({
    this.id,
    required this.classId,
    required this.teacherId,
    required this.title,
    this.description,
    this.filePath,
    required this.deadline,
    this.maxScore = 20.0,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'class_id': classId,
      'teacher_id': teacherId,
      'title': title,
      'description': description,
      'file_path': filePath,
      'deadline': deadline,
      'max_score': maxScore,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory AssignmentModel.fromMap(Map<String, dynamic> map) {
    return AssignmentModel(
      id: map['id'] as int?,
      classId: map['class_id'] as int,
      teacherId: map['teacher_id'] as int,
      title: map['title'] as String,
      description: map['description'] as String?,
      filePath: map['file_path'] as String?,
      deadline: map['deadline'] as String,
      maxScore: (map['max_score'] as num).toDouble(),
      createdAt: map['created_at'] as String,
      updatedAt: map['updated_at'] as String,
    );
  }

  AssignmentModel copyWith({
    int? id,
    int? classId,
    int? teacherId,
    String? title,
    String? description,
    String? filePath,
    String? deadline,
    double? maxScore,
    String? createdAt,
    String? updatedAt,
  }) {
    return AssignmentModel(
      id: id ?? this.id,
      classId: classId ?? this.classId,
      teacherId: teacherId ?? this.teacherId,
      title: title ?? this.title,
      description: description ?? this.description,
      filePath: filePath ?? this.filePath,
      deadline: deadline ?? this.deadline,
      maxScore: maxScore ?? this.maxScore,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
