dart
/// مدل صف همگام‌سازی Mesh
class SyncQueueModel {
  final int? id;
  final String tableName;
  final String operation; // insert, update, delete
  final String payloadJson;
  final String? deviceId;
  final String createdAt;
  final bool synced;
  final int retryCount;

  const SyncQueueModel({
    this.id,
    required this.tableName,
    required this.operation,
    required this.payloadJson,
    this.deviceId,
    required this.createdAt,
    this.synced = false,
    this.retryCount = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'table_name': tableName,
      'operation': operation,
      'payload_json': payloadJson,
      'device_id': deviceId,
      'created_at': createdAt,
      'synced': synced ? 1 : 0,
      'retry_count': retryCount,
    };
  }

  factory SyncQueueModel.fromMap(Map<String, dynamic> map) {
    return SyncQueueModel(
      id: map['id'] as int?,
      tableName: map['table_name'] as String,
      operation: map['operation'] as String,
      payloadJson: map['payload_json'] as String,
      deviceId: map['device_id'] as String?,
      createdAt: map['created_at'] as String,
      synced: (map['synced'] as int) == 1,
      retryCount: map['retry_count'] as int,
    );
  }

  SyncQueueModel copyWith({
    int? id,
    String? tableName,
    String? operation,
    String? payloadJson,
    String? deviceId,
    String? createdAt,
    bool? synced,
    int? retryCount,
  }) {
    return SyncQueueModel(
      id: id ?? this.id,
      tableName: tableName ?? this.tableName,
      operation: operation ?? this.operation,
      payloadJson: payloadJson ?? this.payloadJson,
      deviceId: deviceId ?? this.deviceId,
      createdAt: createdAt ?? this.createdAt,
      synced: synced ?? this.synced,
      retryCount: retryCount ?? this.retryCount,
    );
  }
}
