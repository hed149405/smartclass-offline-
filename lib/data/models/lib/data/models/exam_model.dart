/// مدل آزمون
class ExamModel {
  final int? id;
  final int classId;
  final int teacherId;
  final String title;
  final int durationMinutes;
  final String? startTime;
  final String? endTime;
  final bool isActive;
  final double totalScore;
  final String createdAt;

  const ExamModel({
    this.id,
    required this.classId,
    required this.teacherId,
    required this.title,
    required this.durationMinutes,
    this.startTime,
    this.endTime,
    this.isActive = false,
    this.totalScore = 20.0,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'class_id': classId,
      'teacher_id': teacherId,
      'title': title,
      'duration_minutes': durationMinutes,
      'start_time': startTime,
      'end_time': endTime,
      'is_active': isActive ? 1 : 0,
      'total_score': totalScore,
      'created_at': createdAt,
    };
  }

  factory ExamModel.fromMap(Map<String, dynamic> map) {
    return ExamModel(
      id: map['id'] as int?,
      classId: map['class_id'] as int,
      teacherId: map['teacher_id'] as int,
      title: map['title'] as String,
      durationMinutes: map['duration_minutes'] as int,
      startTime: map['start_time'] as String?,
      endTime: map['end_time'] as String?,
      isActive: (map['is_active'] as int) == 1,
      totalScore: (map['total_score'] as num).toDouble(),
      createdAt: map['created_at'] as String,
    );
  }

  ExamModel copyWith({
    int? id,
    int? classId,
    int? teacherId,
    String? title,
    int? durationMinutes,
    String? startTime,
    String? endTime,
    bool? isActive,
    double? totalScore,
    String? createdAt,
  }) {
    return ExamModel(
      id: id ?? this.id,
      classId: classId ?? this.classId,
      teacherId: teacherId ?? this.teacherId,
      title: title ?? this.title,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      isActive: isActive ?? this.isActive,
      totalScore: totalScore ?? this.totalScore,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
