// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mottoMeta = const VerificationMeta('motto');
  @override
  late final GeneratedColumn<String> motto = GeneratedColumn<String>(
    'motto',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('#f0aa11'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _disabledAtMeta = const VerificationMeta(
    'disabledAt',
  );
  @override
  late final GeneratedColumn<DateTime> disabledAt = GeneratedColumn<DateTime>(
    'disabled_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    icon,
    name,
    motto,
    color,
    createdAt,
    updatedAt,
    disabledAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<Task> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    } else if (isInserting) {
      context.missing(_iconMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('motto')) {
      context.handle(
        _mottoMeta,
        motto.isAcceptableOrUnknown(data['motto']!, _mottoMeta),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('disabled_at')) {
      context.handle(
        _disabledAtMeta,
        disabledAt.isAcceptableOrUnknown(data['disabled_at']!, _disabledAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Task(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      icon:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}icon'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      motto: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}motto'],
      ),
      color:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}color'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
      disabledAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}disabled_at'],
      ),
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  /// Unique identifier for the task
  final String id;

  /// Icon identifier (String representation of icon)
  final String icon;

  /// Task name
  final String name;

  /// Optional motivational phrase or description
  final String? motto;

  /// Task color (hex color string, e.g., "#f0aa11")
  final String color;

  /// Timestamp when the task was created
  final DateTime createdAt;

  /// Timestamp when the task was last updated
  final DateTime updatedAt;

  /// Timestamp when the task was disabled (null if active)
  final DateTime? disabledAt;
  const Task({
    required this.id,
    required this.icon,
    required this.name,
    this.motto,
    required this.color,
    required this.createdAt,
    required this.updatedAt,
    this.disabledAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['icon'] = Variable<String>(icon);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || motto != null) {
      map['motto'] = Variable<String>(motto);
    }
    map['color'] = Variable<String>(color);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || disabledAt != null) {
      map['disabled_at'] = Variable<DateTime>(disabledAt);
    }
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      icon: Value(icon),
      name: Value(name),
      motto:
          motto == null && nullToAbsent ? const Value.absent() : Value(motto),
      color: Value(color),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      disabledAt:
          disabledAt == null && nullToAbsent
              ? const Value.absent()
              : Value(disabledAt),
    );
  }

  factory Task.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<String>(json['id']),
      icon: serializer.fromJson<String>(json['icon']),
      name: serializer.fromJson<String>(json['name']),
      motto: serializer.fromJson<String?>(json['motto']),
      color: serializer.fromJson<String>(json['color']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      disabledAt: serializer.fromJson<DateTime?>(json['disabledAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'icon': serializer.toJson<String>(icon),
      'name': serializer.toJson<String>(name),
      'motto': serializer.toJson<String?>(motto),
      'color': serializer.toJson<String>(color),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'disabledAt': serializer.toJson<DateTime?>(disabledAt),
    };
  }

  Task copyWith({
    String? id,
    String? icon,
    String? name,
    Value<String?> motto = const Value.absent(),
    String? color,
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> disabledAt = const Value.absent(),
  }) => Task(
    id: id ?? this.id,
    icon: icon ?? this.icon,
    name: name ?? this.name,
    motto: motto.present ? motto.value : this.motto,
    color: color ?? this.color,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    disabledAt: disabledAt.present ? disabledAt.value : this.disabledAt,
  );
  Task copyWithCompanion(TasksCompanion data) {
    return Task(
      id: data.id.present ? data.id.value : this.id,
      icon: data.icon.present ? data.icon.value : this.icon,
      name: data.name.present ? data.name.value : this.name,
      motto: data.motto.present ? data.motto.value : this.motto,
      color: data.color.present ? data.color.value : this.color,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      disabledAt:
          data.disabledAt.present ? data.disabledAt.value : this.disabledAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('icon: $icon, ')
          ..write('name: $name, ')
          ..write('motto: $motto, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('disabledAt: $disabledAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    icon,
    name,
    motto,
    color,
    createdAt,
    updatedAt,
    disabledAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.icon == this.icon &&
          other.name == this.name &&
          other.motto == this.motto &&
          other.color == this.color &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.disabledAt == this.disabledAt);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<String> id;
  final Value<String> icon;
  final Value<String> name;
  final Value<String?> motto;
  final Value<String> color;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> disabledAt;
  final Value<int> rowid;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.icon = const Value.absent(),
    this.name = const Value.absent(),
    this.motto = const Value.absent(),
    this.color = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.disabledAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TasksCompanion.insert({
    required String id,
    required String icon,
    required String name,
    this.motto = const Value.absent(),
    this.color = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.disabledAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       icon = Value(icon),
       name = Value(name),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Task> custom({
    Expression<String>? id,
    Expression<String>? icon,
    Expression<String>? name,
    Expression<String>? motto,
    Expression<String>? color,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? disabledAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (icon != null) 'icon': icon,
      if (name != null) 'name': name,
      if (motto != null) 'motto': motto,
      if (color != null) 'color': color,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (disabledAt != null) 'disabled_at': disabledAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TasksCompanion copyWith({
    Value<String>? id,
    Value<String>? icon,
    Value<String>? name,
    Value<String?>? motto,
    Value<String>? color,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? disabledAt,
    Value<int>? rowid,
  }) {
    return TasksCompanion(
      id: id ?? this.id,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      motto: motto ?? this.motto,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      disabledAt: disabledAt ?? this.disabledAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (motto.present) {
      map['motto'] = Variable<String>(motto.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (disabledAt.present) {
      map['disabled_at'] = Variable<DateTime>(disabledAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('icon: $icon, ')
          ..write('name: $name, ')
          ..write('motto: $motto, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('disabledAt: $disabledAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CriteriaTable extends Criteria
    with TableInfo<$CriteriaTable, CriteriaData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CriteriaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    icon,
    name,
    type,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'criteria';
  @override
  VerificationContext validateIntegrity(
    Insertable<CriteriaData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    } else if (isInserting) {
      context.missing(_iconMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CriteriaData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CriteriaData(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      icon:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}icon'],
          )!,
      name:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}name'],
          )!,
      type:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}type'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
      updatedAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}updated_at'],
          )!,
    );
  }

  @override
  $CriteriaTable createAlias(String alias) {
    return $CriteriaTable(attachedDatabase, alias);
  }
}

class CriteriaData extends DataClass implements Insertable<CriteriaData> {
  /// Unique identifier for the criterion
  final String id;

  /// Icon or emoji identifier (String)
  final String icon;

  /// Criterion name
  final String name;

  /// Type of criterion ('discrete' or 'continuous')
  final String type;

  /// Timestamp when the criterion was created
  final DateTime createdAt;

  /// Timestamp when the criterion was last updated
  final DateTime updatedAt;
  const CriteriaData({
    required this.id,
    required this.icon,
    required this.name,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['icon'] = Variable<String>(icon);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CriteriaCompanion toCompanion(bool nullToAbsent) {
    return CriteriaCompanion(
      id: Value(id),
      icon: Value(icon),
      name: Value(name),
      type: Value(type),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory CriteriaData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CriteriaData(
      id: serializer.fromJson<String>(json['id']),
      icon: serializer.fromJson<String>(json['icon']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'icon': serializer.toJson<String>(icon),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CriteriaData copyWith({
    String? id,
    String? icon,
    String? name,
    String? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => CriteriaData(
    id: id ?? this.id,
    icon: icon ?? this.icon,
    name: name ?? this.name,
    type: type ?? this.type,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  CriteriaData copyWithCompanion(CriteriaCompanion data) {
    return CriteriaData(
      id: data.id.present ? data.id.value : this.id,
      icon: data.icon.present ? data.icon.value : this.icon,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CriteriaData(')
          ..write('id: $id, ')
          ..write('icon: $icon, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, icon, name, type, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CriteriaData &&
          other.id == this.id &&
          other.icon == this.icon &&
          other.name == this.name &&
          other.type == this.type &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CriteriaCompanion extends UpdateCompanion<CriteriaData> {
  final Value<String> id;
  final Value<String> icon;
  final Value<String> name;
  final Value<String> type;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const CriteriaCompanion({
    this.id = const Value.absent(),
    this.icon = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CriteriaCompanion.insert({
    required String id,
    required String icon,
    required String name,
    required String type,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       icon = Value(icon),
       name = Value(name),
       type = Value(type),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<CriteriaData> custom({
    Expression<String>? id,
    Expression<String>? icon,
    Expression<String>? name,
    Expression<String>? type,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (icon != null) 'icon': icon,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CriteriaCompanion copyWith({
    Value<String>? id,
    Value<String>? icon,
    Value<String>? name,
    Value<String>? type,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return CriteriaCompanion(
      id: id ?? this.id,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CriteriaCompanion(')
          ..write('id: $id, ')
          ..write('icon: $icon, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CriterionConfigsTable extends CriterionConfigs
    with TableInfo<$CriterionConfigsTable, CriterionConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CriterionConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _criterionIdMeta = const VerificationMeta(
    'criterionId',
  );
  @override
  late final GeneratedColumn<String> criterionId = GeneratedColumn<String>(
    'criterion_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _selectionLimitMeta = const VerificationMeta(
    'selectionLimit',
  );
  @override
  late final GeneratedColumn<int> selectionLimit = GeneratedColumn<int>(
    'selection_limit',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _valuesMeta = const VerificationMeta('values');
  @override
  late final GeneratedColumn<String> values = GeneratedColumn<String>(
    'values',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _minValueMeta = const VerificationMeta(
    'minValue',
  );
  @override
  late final GeneratedColumn<double> minValue = GeneratedColumn<double>(
    'min_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _maxValueMeta = const VerificationMeta(
    'maxValue',
  );
  @override
  late final GeneratedColumn<double> maxValue = GeneratedColumn<double>(
    'max_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stepValueMeta = const VerificationMeta(
    'stepValue',
  );
  @override
  late final GeneratedColumn<double> stepValue = GeneratedColumn<double>(
    'step_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    criterionId,
    selectionLimit,
    values,
    minValue,
    maxValue,
    stepValue,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'criterion_configs';
  @override
  VerificationContext validateIntegrity(
    Insertable<CriterionConfig> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('criterion_id')) {
      context.handle(
        _criterionIdMeta,
        criterionId.isAcceptableOrUnknown(
          data['criterion_id']!,
          _criterionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_criterionIdMeta);
    }
    if (data.containsKey('selection_limit')) {
      context.handle(
        _selectionLimitMeta,
        selectionLimit.isAcceptableOrUnknown(
          data['selection_limit']!,
          _selectionLimitMeta,
        ),
      );
    }
    if (data.containsKey('values')) {
      context.handle(
        _valuesMeta,
        values.isAcceptableOrUnknown(data['values']!, _valuesMeta),
      );
    }
    if (data.containsKey('min_value')) {
      context.handle(
        _minValueMeta,
        minValue.isAcceptableOrUnknown(data['min_value']!, _minValueMeta),
      );
    }
    if (data.containsKey('max_value')) {
      context.handle(
        _maxValueMeta,
        maxValue.isAcceptableOrUnknown(data['max_value']!, _maxValueMeta),
      );
    }
    if (data.containsKey('step_value')) {
      context.handle(
        _stepValueMeta,
        stepValue.isAcceptableOrUnknown(data['step_value']!, _stepValueMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {criterionId};
  @override
  CriterionConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CriterionConfig(
      criterionId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}criterion_id'],
          )!,
      selectionLimit: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}selection_limit'],
      ),
      values: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}values'],
      ),
      minValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_value'],
      ),
      maxValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_value'],
      ),
      stepValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}step_value'],
      ),
    );
  }

  @override
  $CriterionConfigsTable createAlias(String alias) {
    return $CriterionConfigsTable(attachedDatabase, alias);
  }
}

class CriterionConfig extends DataClass implements Insertable<CriterionConfig> {
  /// Foreign key to the criterion
  final String criterionId;

  /// For discrete criteria: selection limit
  final int? selectionLimit;

  /// For discrete criteria: JSON array of values
  final String? values;

  /// For continuous criteria: minimum value
  final double? minValue;

  /// For continuous criteria: maximum value
  final double? maxValue;

  /// For continuous criteria: step value
  final double? stepValue;
  const CriterionConfig({
    required this.criterionId,
    this.selectionLimit,
    this.values,
    this.minValue,
    this.maxValue,
    this.stepValue,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['criterion_id'] = Variable<String>(criterionId);
    if (!nullToAbsent || selectionLimit != null) {
      map['selection_limit'] = Variable<int>(selectionLimit);
    }
    if (!nullToAbsent || values != null) {
      map['values'] = Variable<String>(values);
    }
    if (!nullToAbsent || minValue != null) {
      map['min_value'] = Variable<double>(minValue);
    }
    if (!nullToAbsent || maxValue != null) {
      map['max_value'] = Variable<double>(maxValue);
    }
    if (!nullToAbsent || stepValue != null) {
      map['step_value'] = Variable<double>(stepValue);
    }
    return map;
  }

  CriterionConfigsCompanion toCompanion(bool nullToAbsent) {
    return CriterionConfigsCompanion(
      criterionId: Value(criterionId),
      selectionLimit:
          selectionLimit == null && nullToAbsent
              ? const Value.absent()
              : Value(selectionLimit),
      values:
          values == null && nullToAbsent ? const Value.absent() : Value(values),
      minValue:
          minValue == null && nullToAbsent
              ? const Value.absent()
              : Value(minValue),
      maxValue:
          maxValue == null && nullToAbsent
              ? const Value.absent()
              : Value(maxValue),
      stepValue:
          stepValue == null && nullToAbsent
              ? const Value.absent()
              : Value(stepValue),
    );
  }

  factory CriterionConfig.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CriterionConfig(
      criterionId: serializer.fromJson<String>(json['criterionId']),
      selectionLimit: serializer.fromJson<int?>(json['selectionLimit']),
      values: serializer.fromJson<String?>(json['values']),
      minValue: serializer.fromJson<double?>(json['minValue']),
      maxValue: serializer.fromJson<double?>(json['maxValue']),
      stepValue: serializer.fromJson<double?>(json['stepValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'criterionId': serializer.toJson<String>(criterionId),
      'selectionLimit': serializer.toJson<int?>(selectionLimit),
      'values': serializer.toJson<String?>(values),
      'minValue': serializer.toJson<double?>(minValue),
      'maxValue': serializer.toJson<double?>(maxValue),
      'stepValue': serializer.toJson<double?>(stepValue),
    };
  }

  CriterionConfig copyWith({
    String? criterionId,
    Value<int?> selectionLimit = const Value.absent(),
    Value<String?> values = const Value.absent(),
    Value<double?> minValue = const Value.absent(),
    Value<double?> maxValue = const Value.absent(),
    Value<double?> stepValue = const Value.absent(),
  }) => CriterionConfig(
    criterionId: criterionId ?? this.criterionId,
    selectionLimit:
        selectionLimit.present ? selectionLimit.value : this.selectionLimit,
    values: values.present ? values.value : this.values,
    minValue: minValue.present ? minValue.value : this.minValue,
    maxValue: maxValue.present ? maxValue.value : this.maxValue,
    stepValue: stepValue.present ? stepValue.value : this.stepValue,
  );
  CriterionConfig copyWithCompanion(CriterionConfigsCompanion data) {
    return CriterionConfig(
      criterionId:
          data.criterionId.present ? data.criterionId.value : this.criterionId,
      selectionLimit:
          data.selectionLimit.present
              ? data.selectionLimit.value
              : this.selectionLimit,
      values: data.values.present ? data.values.value : this.values,
      minValue: data.minValue.present ? data.minValue.value : this.minValue,
      maxValue: data.maxValue.present ? data.maxValue.value : this.maxValue,
      stepValue: data.stepValue.present ? data.stepValue.value : this.stepValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CriterionConfig(')
          ..write('criterionId: $criterionId, ')
          ..write('selectionLimit: $selectionLimit, ')
          ..write('values: $values, ')
          ..write('minValue: $minValue, ')
          ..write('maxValue: $maxValue, ')
          ..write('stepValue: $stepValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    criterionId,
    selectionLimit,
    values,
    minValue,
    maxValue,
    stepValue,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CriterionConfig &&
          other.criterionId == this.criterionId &&
          other.selectionLimit == this.selectionLimit &&
          other.values == this.values &&
          other.minValue == this.minValue &&
          other.maxValue == this.maxValue &&
          other.stepValue == this.stepValue);
}

class CriterionConfigsCompanion extends UpdateCompanion<CriterionConfig> {
  final Value<String> criterionId;
  final Value<int?> selectionLimit;
  final Value<String?> values;
  final Value<double?> minValue;
  final Value<double?> maxValue;
  final Value<double?> stepValue;
  final Value<int> rowid;
  const CriterionConfigsCompanion({
    this.criterionId = const Value.absent(),
    this.selectionLimit = const Value.absent(),
    this.values = const Value.absent(),
    this.minValue = const Value.absent(),
    this.maxValue = const Value.absent(),
    this.stepValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CriterionConfigsCompanion.insert({
    required String criterionId,
    this.selectionLimit = const Value.absent(),
    this.values = const Value.absent(),
    this.minValue = const Value.absent(),
    this.maxValue = const Value.absent(),
    this.stepValue = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : criterionId = Value(criterionId);
  static Insertable<CriterionConfig> custom({
    Expression<String>? criterionId,
    Expression<int>? selectionLimit,
    Expression<String>? values,
    Expression<double>? minValue,
    Expression<double>? maxValue,
    Expression<double>? stepValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (criterionId != null) 'criterion_id': criterionId,
      if (selectionLimit != null) 'selection_limit': selectionLimit,
      if (values != null) 'values': values,
      if (minValue != null) 'min_value': minValue,
      if (maxValue != null) 'max_value': maxValue,
      if (stepValue != null) 'step_value': stepValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CriterionConfigsCompanion copyWith({
    Value<String>? criterionId,
    Value<int?>? selectionLimit,
    Value<String?>? values,
    Value<double?>? minValue,
    Value<double?>? maxValue,
    Value<double?>? stepValue,
    Value<int>? rowid,
  }) {
    return CriterionConfigsCompanion(
      criterionId: criterionId ?? this.criterionId,
      selectionLimit: selectionLimit ?? this.selectionLimit,
      values: values ?? this.values,
      minValue: minValue ?? this.minValue,
      maxValue: maxValue ?? this.maxValue,
      stepValue: stepValue ?? this.stepValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (criterionId.present) {
      map['criterion_id'] = Variable<String>(criterionId.value);
    }
    if (selectionLimit.present) {
      map['selection_limit'] = Variable<int>(selectionLimit.value);
    }
    if (values.present) {
      map['values'] = Variable<String>(values.value);
    }
    if (minValue.present) {
      map['min_value'] = Variable<double>(minValue.value);
    }
    if (maxValue.present) {
      map['max_value'] = Variable<double>(maxValue.value);
    }
    if (stepValue.present) {
      map['step_value'] = Variable<double>(stepValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CriterionConfigsCompanion(')
          ..write('criterionId: $criterionId, ')
          ..write('selectionLimit: $selectionLimit, ')
          ..write('values: $values, ')
          ..write('minValue: $minValue, ')
          ..write('maxValue: $maxValue, ')
          ..write('stepValue: $stepValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TaskCriteriaTable extends TaskCriteria
    with TableInfo<$TaskCriteriaTable, TaskCriteriaData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskCriteriaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _criterionIdMeta = const VerificationMeta(
    'criterionId',
  );
  @override
  late final GeneratedColumn<String> criterionId = GeneratedColumn<String>(
    'criterion_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [taskId, criterionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'task_criteria';
  @override
  VerificationContext validateIntegrity(
    Insertable<TaskCriteriaData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('criterion_id')) {
      context.handle(
        _criterionIdMeta,
        criterionId.isAcceptableOrUnknown(
          data['criterion_id']!,
          _criterionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_criterionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {taskId, criterionId};
  @override
  TaskCriteriaData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskCriteriaData(
      taskId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}task_id'],
          )!,
      criterionId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}criterion_id'],
          )!,
    );
  }

  @override
  $TaskCriteriaTable createAlias(String alias) {
    return $TaskCriteriaTable(attachedDatabase, alias);
  }
}

class TaskCriteriaData extends DataClass
    implements Insertable<TaskCriteriaData> {
  /// Foreign key to the task
  final String taskId;

  /// Foreign key to the criterion
  final String criterionId;
  const TaskCriteriaData({required this.taskId, required this.criterionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['task_id'] = Variable<String>(taskId);
    map['criterion_id'] = Variable<String>(criterionId);
    return map;
  }

  TaskCriteriaCompanion toCompanion(bool nullToAbsent) {
    return TaskCriteriaCompanion(
      taskId: Value(taskId),
      criterionId: Value(criterionId),
    );
  }

  factory TaskCriteriaData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskCriteriaData(
      taskId: serializer.fromJson<String>(json['taskId']),
      criterionId: serializer.fromJson<String>(json['criterionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'taskId': serializer.toJson<String>(taskId),
      'criterionId': serializer.toJson<String>(criterionId),
    };
  }

  TaskCriteriaData copyWith({String? taskId, String? criterionId}) =>
      TaskCriteriaData(
        taskId: taskId ?? this.taskId,
        criterionId: criterionId ?? this.criterionId,
      );
  TaskCriteriaData copyWithCompanion(TaskCriteriaCompanion data) {
    return TaskCriteriaData(
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      criterionId:
          data.criterionId.present ? data.criterionId.value : this.criterionId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskCriteriaData(')
          ..write('taskId: $taskId, ')
          ..write('criterionId: $criterionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(taskId, criterionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskCriteriaData &&
          other.taskId == this.taskId &&
          other.criterionId == this.criterionId);
}

class TaskCriteriaCompanion extends UpdateCompanion<TaskCriteriaData> {
  final Value<String> taskId;
  final Value<String> criterionId;
  final Value<int> rowid;
  const TaskCriteriaCompanion({
    this.taskId = const Value.absent(),
    this.criterionId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TaskCriteriaCompanion.insert({
    required String taskId,
    required String criterionId,
    this.rowid = const Value.absent(),
  }) : taskId = Value(taskId),
       criterionId = Value(criterionId);
  static Insertable<TaskCriteriaData> custom({
    Expression<String>? taskId,
    Expression<String>? criterionId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (taskId != null) 'task_id': taskId,
      if (criterionId != null) 'criterion_id': criterionId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TaskCriteriaCompanion copyWith({
    Value<String>? taskId,
    Value<String>? criterionId,
    Value<int>? rowid,
  }) {
    return TaskCriteriaCompanion(
      taskId: taskId ?? this.taskId,
      criterionId: criterionId ?? this.criterionId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (criterionId.present) {
      map['criterion_id'] = Variable<String>(criterionId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskCriteriaCompanion(')
          ..write('taskId: $taskId, ')
          ..write('criterionId: $criterionId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SessionsTable extends Sessions with TableInfo<$SessionsTable, Session> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String> taskId = GeneratedColumn<String>(
    'task_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startDateTimeMeta = const VerificationMeta(
    'startDateTime',
  );
  @override
  late final GeneratedColumn<DateTime> startDateTime =
      GeneratedColumn<DateTime>(
        'start_date_time',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _endDateTimeMeta = const VerificationMeta(
    'endDateTime',
  );
  @override
  late final GeneratedColumn<DateTime> endDateTime = GeneratedColumn<DateTime>(
    'end_date_time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    taskId,
    startDateTime,
    endDateTime,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sessions';
  @override
  VerificationContext validateIntegrity(
    Insertable<Session> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('task_id')) {
      context.handle(
        _taskIdMeta,
        taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta),
      );
    } else if (isInserting) {
      context.missing(_taskIdMeta);
    }
    if (data.containsKey('start_date_time')) {
      context.handle(
        _startDateTimeMeta,
        startDateTime.isAcceptableOrUnknown(
          data['start_date_time']!,
          _startDateTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_startDateTimeMeta);
    }
    if (data.containsKey('end_date_time')) {
      context.handle(
        _endDateTimeMeta,
        endDateTime.isAcceptableOrUnknown(
          data['end_date_time']!,
          _endDateTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_endDateTimeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Session map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Session(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      taskId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}task_id'],
          )!,
      startDateTime:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}start_date_time'],
          )!,
      endDateTime:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}end_date_time'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $SessionsTable createAlias(String alias) {
    return $SessionsTable(attachedDatabase, alias);
  }
}

class Session extends DataClass implements Insertable<Session> {
  /// Unique identifier for the session
  final String id;

  /// Foreign key to the task
  final String taskId;

  /// Start datetime of the session
  final DateTime startDateTime;

  /// End datetime of the session
  final DateTime endDateTime;

  /// Timestamp when the session was created
  final DateTime createdAt;
  const Session({
    required this.id,
    required this.taskId,
    required this.startDateTime,
    required this.endDateTime,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['task_id'] = Variable<String>(taskId);
    map['start_date_time'] = Variable<DateTime>(startDateTime);
    map['end_date_time'] = Variable<DateTime>(endDateTime);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  SessionsCompanion toCompanion(bool nullToAbsent) {
    return SessionsCompanion(
      id: Value(id),
      taskId: Value(taskId),
      startDateTime: Value(startDateTime),
      endDateTime: Value(endDateTime),
      createdAt: Value(createdAt),
    );
  }

  factory Session.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Session(
      id: serializer.fromJson<String>(json['id']),
      taskId: serializer.fromJson<String>(json['taskId']),
      startDateTime: serializer.fromJson<DateTime>(json['startDateTime']),
      endDateTime: serializer.fromJson<DateTime>(json['endDateTime']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'taskId': serializer.toJson<String>(taskId),
      'startDateTime': serializer.toJson<DateTime>(startDateTime),
      'endDateTime': serializer.toJson<DateTime>(endDateTime),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Session copyWith({
    String? id,
    String? taskId,
    DateTime? startDateTime,
    DateTime? endDateTime,
    DateTime? createdAt,
  }) => Session(
    id: id ?? this.id,
    taskId: taskId ?? this.taskId,
    startDateTime: startDateTime ?? this.startDateTime,
    endDateTime: endDateTime ?? this.endDateTime,
    createdAt: createdAt ?? this.createdAt,
  );
  Session copyWithCompanion(SessionsCompanion data) {
    return Session(
      id: data.id.present ? data.id.value : this.id,
      taskId: data.taskId.present ? data.taskId.value : this.taskId,
      startDateTime:
          data.startDateTime.present
              ? data.startDateTime.value
              : this.startDateTime,
      endDateTime:
          data.endDateTime.present ? data.endDateTime.value : this.endDateTime,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Session(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('startDateTime: $startDateTime, ')
          ..write('endDateTime: $endDateTime, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, taskId, startDateTime, endDateTime, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Session &&
          other.id == this.id &&
          other.taskId == this.taskId &&
          other.startDateTime == this.startDateTime &&
          other.endDateTime == this.endDateTime &&
          other.createdAt == this.createdAt);
}

class SessionsCompanion extends UpdateCompanion<Session> {
  final Value<String> id;
  final Value<String> taskId;
  final Value<DateTime> startDateTime;
  final Value<DateTime> endDateTime;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const SessionsCompanion({
    this.id = const Value.absent(),
    this.taskId = const Value.absent(),
    this.startDateTime = const Value.absent(),
    this.endDateTime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SessionsCompanion.insert({
    required String id,
    required String taskId,
    required DateTime startDateTime,
    required DateTime endDateTime,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       taskId = Value(taskId),
       startDateTime = Value(startDateTime),
       endDateTime = Value(endDateTime),
       createdAt = Value(createdAt);
  static Insertable<Session> custom({
    Expression<String>? id,
    Expression<String>? taskId,
    Expression<DateTime>? startDateTime,
    Expression<DateTime>? endDateTime,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taskId != null) 'task_id': taskId,
      if (startDateTime != null) 'start_date_time': startDateTime,
      if (endDateTime != null) 'end_date_time': endDateTime,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SessionsCompanion copyWith({
    Value<String>? id,
    Value<String>? taskId,
    Value<DateTime>? startDateTime,
    Value<DateTime>? endDateTime,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return SessionsCompanion(
      id: id ?? this.id,
      taskId: taskId ?? this.taskId,
      startDateTime: startDateTime ?? this.startDateTime,
      endDateTime: endDateTime ?? this.endDateTime,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String>(taskId.value);
    }
    if (startDateTime.present) {
      map['start_date_time'] = Variable<DateTime>(startDateTime.value);
    }
    if (endDateTime.present) {
      map['end_date_time'] = Variable<DateTime>(endDateTime.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionsCompanion(')
          ..write('id: $id, ')
          ..write('taskId: $taskId, ')
          ..write('startDateTime: $startDateTime, ')
          ..write('endDateTime: $endDateTime, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RatingsTable extends Ratings with TableInfo<$RatingsTable, Rating> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RatingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sessionIdMeta = const VerificationMeta(
    'sessionId',
  );
  @override
  late final GeneratedColumn<String> sessionId = GeneratedColumn<String>(
    'session_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _criterionIdMeta = const VerificationMeta(
    'criterionId',
  );
  @override
  late final GeneratedColumn<String> criterionId = GeneratedColumn<String>(
    'criterion_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    sessionId,
    criterionId,
    value,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ratings';
  @override
  VerificationContext validateIntegrity(
    Insertable<Rating> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('session_id')) {
      context.handle(
        _sessionIdMeta,
        sessionId.isAcceptableOrUnknown(data['session_id']!, _sessionIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sessionIdMeta);
    }
    if (data.containsKey('criterion_id')) {
      context.handle(
        _criterionIdMeta,
        criterionId.isAcceptableOrUnknown(
          data['criterion_id']!,
          _criterionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_criterionIdMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Rating map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Rating(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      sessionId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}session_id'],
          )!,
      criterionId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}criterion_id'],
          )!,
      value:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}value'],
          )!,
      createdAt:
          attachedDatabase.typeMapping.read(
            DriftSqlType.dateTime,
            data['${effectivePrefix}created_at'],
          )!,
    );
  }

  @override
  $RatingsTable createAlias(String alias) {
    return $RatingsTable(attachedDatabase, alias);
  }
}

class Rating extends DataClass implements Insertable<Rating> {
  /// Unique identifier for the rating
  final String id;

  /// Foreign key to the session
  final String sessionId;

  /// Foreign key to the criterion
  final String criterionId;

  /// Rating value (JSON string for discrete, numeric string for continuous)
  final String value;

  /// Timestamp when the rating was created
  final DateTime createdAt;
  const Rating({
    required this.id,
    required this.sessionId,
    required this.criterionId,
    required this.value,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['session_id'] = Variable<String>(sessionId);
    map['criterion_id'] = Variable<String>(criterionId);
    map['value'] = Variable<String>(value);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RatingsCompanion toCompanion(bool nullToAbsent) {
    return RatingsCompanion(
      id: Value(id),
      sessionId: Value(sessionId),
      criterionId: Value(criterionId),
      value: Value(value),
      createdAt: Value(createdAt),
    );
  }

  factory Rating.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Rating(
      id: serializer.fromJson<String>(json['id']),
      sessionId: serializer.fromJson<String>(json['sessionId']),
      criterionId: serializer.fromJson<String>(json['criterionId']),
      value: serializer.fromJson<String>(json['value']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'sessionId': serializer.toJson<String>(sessionId),
      'criterionId': serializer.toJson<String>(criterionId),
      'value': serializer.toJson<String>(value),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Rating copyWith({
    String? id,
    String? sessionId,
    String? criterionId,
    String? value,
    DateTime? createdAt,
  }) => Rating(
    id: id ?? this.id,
    sessionId: sessionId ?? this.sessionId,
    criterionId: criterionId ?? this.criterionId,
    value: value ?? this.value,
    createdAt: createdAt ?? this.createdAt,
  );
  Rating copyWithCompanion(RatingsCompanion data) {
    return Rating(
      id: data.id.present ? data.id.value : this.id,
      sessionId: data.sessionId.present ? data.sessionId.value : this.sessionId,
      criterionId:
          data.criterionId.present ? data.criterionId.value : this.criterionId,
      value: data.value.present ? data.value.value : this.value,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Rating(')
          ..write('id: $id, ')
          ..write('sessionId: $sessionId, ')
          ..write('criterionId: $criterionId, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, sessionId, criterionId, value, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rating &&
          other.id == this.id &&
          other.sessionId == this.sessionId &&
          other.criterionId == this.criterionId &&
          other.value == this.value &&
          other.createdAt == this.createdAt);
}

class RatingsCompanion extends UpdateCompanion<Rating> {
  final Value<String> id;
  final Value<String> sessionId;
  final Value<String> criterionId;
  final Value<String> value;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const RatingsCompanion({
    this.id = const Value.absent(),
    this.sessionId = const Value.absent(),
    this.criterionId = const Value.absent(),
    this.value = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RatingsCompanion.insert({
    required String id,
    required String sessionId,
    required String criterionId,
    required String value,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       sessionId = Value(sessionId),
       criterionId = Value(criterionId),
       value = Value(value),
       createdAt = Value(createdAt);
  static Insertable<Rating> custom({
    Expression<String>? id,
    Expression<String>? sessionId,
    Expression<String>? criterionId,
    Expression<String>? value,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sessionId != null) 'session_id': sessionId,
      if (criterionId != null) 'criterion_id': criterionId,
      if (value != null) 'value': value,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RatingsCompanion copyWith({
    Value<String>? id,
    Value<String>? sessionId,
    Value<String>? criterionId,
    Value<String>? value,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return RatingsCompanion(
      id: id ?? this.id,
      sessionId: sessionId ?? this.sessionId,
      criterionId: criterionId ?? this.criterionId,
      value: value ?? this.value,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (sessionId.present) {
      map['session_id'] = Variable<String>(sessionId.value);
    }
    if (criterionId.present) {
      map['criterion_id'] = Variable<String>(criterionId.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RatingsCompanion(')
          ..write('id: $id, ')
          ..write('sessionId: $sessionId, ')
          ..write('criterionId: $criterionId, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings with TableInfo<$SettingsTable, Setting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<Setting> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Setting(
      key:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}key'],
          )!,
      value:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}value'],
          )!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class Setting extends DataClass implements Insertable<Setting> {
  /// Setting key
  final String key;

  /// Setting value (JSON string)
  final String value;
  const Setting({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(key: Value(key), value: Value(value));
  }

  factory Setting.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Setting(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  Setting copyWith({String? key, String? value}) =>
      Setting(key: key ?? this.key, value: value ?? this.value);
  Setting copyWithCompanion(SettingsCompanion data) {
    return Setting(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting && other.key == this.key && other.value == this.value);
}

class SettingsCompanion extends UpdateCompanion<Setting> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const SettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<Setting> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return SettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final $CriteriaTable criteria = $CriteriaTable(this);
  late final $CriterionConfigsTable criterionConfigs = $CriterionConfigsTable(
    this,
  );
  late final $TaskCriteriaTable taskCriteria = $TaskCriteriaTable(this);
  late final $SessionsTable sessions = $SessionsTable(this);
  late final $RatingsTable ratings = $RatingsTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    tasks,
    criteria,
    criterionConfigs,
    taskCriteria,
    sessions,
    ratings,
    settings,
  ];
}

typedef $$TasksTableCreateCompanionBuilder =
    TasksCompanion Function({
      required String id,
      required String icon,
      required String name,
      Value<String?> motto,
      Value<String> color,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> disabledAt,
      Value<int> rowid,
    });
typedef $$TasksTableUpdateCompanionBuilder =
    TasksCompanion Function({
      Value<String> id,
      Value<String> icon,
      Value<String> name,
      Value<String?> motto,
      Value<String> color,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> disabledAt,
      Value<int> rowid,
    });

class $$TasksTableFilterComposer extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get motto => $composableBuilder(
    column: $table.motto,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get disabledAt => $composableBuilder(
    column: $table.disabledAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TasksTableOrderingComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get motto => $composableBuilder(
    column: $table.motto,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get disabledAt => $composableBuilder(
    column: $table.disabledAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get motto =>
      $composableBuilder(column: $table.motto, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get disabledAt => $composableBuilder(
    column: $table.disabledAt,
    builder: (column) => column,
  );
}

class $$TasksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TasksTable,
          Task,
          $$TasksTableFilterComposer,
          $$TasksTableOrderingComposer,
          $$TasksTableAnnotationComposer,
          $$TasksTableCreateCompanionBuilder,
          $$TasksTableUpdateCompanionBuilder,
          (Task, BaseReferences<_$AppDatabase, $TasksTable, Task>),
          Task,
          PrefetchHooks Function()
        > {
  $$TasksTableTableManager(_$AppDatabase db, $TasksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$TasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> motto = const Value.absent(),
                Value<String> color = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> disabledAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TasksCompanion(
                id: id,
                icon: icon,
                name: name,
                motto: motto,
                color: color,
                createdAt: createdAt,
                updatedAt: updatedAt,
                disabledAt: disabledAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String icon,
                required String name,
                Value<String?> motto = const Value.absent(),
                Value<String> color = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> disabledAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TasksCompanion.insert(
                id: id,
                icon: icon,
                name: name,
                motto: motto,
                color: color,
                createdAt: createdAt,
                updatedAt: updatedAt,
                disabledAt: disabledAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TasksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TasksTable,
      Task,
      $$TasksTableFilterComposer,
      $$TasksTableOrderingComposer,
      $$TasksTableAnnotationComposer,
      $$TasksTableCreateCompanionBuilder,
      $$TasksTableUpdateCompanionBuilder,
      (Task, BaseReferences<_$AppDatabase, $TasksTable, Task>),
      Task,
      PrefetchHooks Function()
    >;
typedef $$CriteriaTableCreateCompanionBuilder =
    CriteriaCompanion Function({
      required String id,
      required String icon,
      required String name,
      required String type,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$CriteriaTableUpdateCompanionBuilder =
    CriteriaCompanion Function({
      Value<String> id,
      Value<String> icon,
      Value<String> name,
      Value<String> type,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$CriteriaTableFilterComposer
    extends Composer<_$AppDatabase, $CriteriaTable> {
  $$CriteriaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CriteriaTableOrderingComposer
    extends Composer<_$AppDatabase, $CriteriaTable> {
  $$CriteriaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CriteriaTableAnnotationComposer
    extends Composer<_$AppDatabase, $CriteriaTable> {
  $$CriteriaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CriteriaTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CriteriaTable,
          CriteriaData,
          $$CriteriaTableFilterComposer,
          $$CriteriaTableOrderingComposer,
          $$CriteriaTableAnnotationComposer,
          $$CriteriaTableCreateCompanionBuilder,
          $$CriteriaTableUpdateCompanionBuilder,
          (
            CriteriaData,
            BaseReferences<_$AppDatabase, $CriteriaTable, CriteriaData>,
          ),
          CriteriaData,
          PrefetchHooks Function()
        > {
  $$CriteriaTableTableManager(_$AppDatabase db, $CriteriaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$CriteriaTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$CriteriaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$CriteriaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CriteriaCompanion(
                id: id,
                icon: icon,
                name: name,
                type: type,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String icon,
                required String name,
                required String type,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => CriteriaCompanion.insert(
                id: id,
                icon: icon,
                name: name,
                type: type,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CriteriaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CriteriaTable,
      CriteriaData,
      $$CriteriaTableFilterComposer,
      $$CriteriaTableOrderingComposer,
      $$CriteriaTableAnnotationComposer,
      $$CriteriaTableCreateCompanionBuilder,
      $$CriteriaTableUpdateCompanionBuilder,
      (
        CriteriaData,
        BaseReferences<_$AppDatabase, $CriteriaTable, CriteriaData>,
      ),
      CriteriaData,
      PrefetchHooks Function()
    >;
typedef $$CriterionConfigsTableCreateCompanionBuilder =
    CriterionConfigsCompanion Function({
      required String criterionId,
      Value<int?> selectionLimit,
      Value<String?> values,
      Value<double?> minValue,
      Value<double?> maxValue,
      Value<double?> stepValue,
      Value<int> rowid,
    });
typedef $$CriterionConfigsTableUpdateCompanionBuilder =
    CriterionConfigsCompanion Function({
      Value<String> criterionId,
      Value<int?> selectionLimit,
      Value<String?> values,
      Value<double?> minValue,
      Value<double?> maxValue,
      Value<double?> stepValue,
      Value<int> rowid,
    });

class $$CriterionConfigsTableFilterComposer
    extends Composer<_$AppDatabase, $CriterionConfigsTable> {
  $$CriterionConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get selectionLimit => $composableBuilder(
    column: $table.selectionLimit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get values => $composableBuilder(
    column: $table.values,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minValue => $composableBuilder(
    column: $table.minValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxValue => $composableBuilder(
    column: $table.maxValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get stepValue => $composableBuilder(
    column: $table.stepValue,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CriterionConfigsTableOrderingComposer
    extends Composer<_$AppDatabase, $CriterionConfigsTable> {
  $$CriterionConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get selectionLimit => $composableBuilder(
    column: $table.selectionLimit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get values => $composableBuilder(
    column: $table.values,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minValue => $composableBuilder(
    column: $table.minValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxValue => $composableBuilder(
    column: $table.maxValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get stepValue => $composableBuilder(
    column: $table.stepValue,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CriterionConfigsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CriterionConfigsTable> {
  $$CriterionConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get selectionLimit => $composableBuilder(
    column: $table.selectionLimit,
    builder: (column) => column,
  );

  GeneratedColumn<String> get values =>
      $composableBuilder(column: $table.values, builder: (column) => column);

  GeneratedColumn<double> get minValue =>
      $composableBuilder(column: $table.minValue, builder: (column) => column);

  GeneratedColumn<double> get maxValue =>
      $composableBuilder(column: $table.maxValue, builder: (column) => column);

  GeneratedColumn<double> get stepValue =>
      $composableBuilder(column: $table.stepValue, builder: (column) => column);
}

class $$CriterionConfigsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CriterionConfigsTable,
          CriterionConfig,
          $$CriterionConfigsTableFilterComposer,
          $$CriterionConfigsTableOrderingComposer,
          $$CriterionConfigsTableAnnotationComposer,
          $$CriterionConfigsTableCreateCompanionBuilder,
          $$CriterionConfigsTableUpdateCompanionBuilder,
          (
            CriterionConfig,
            BaseReferences<
              _$AppDatabase,
              $CriterionConfigsTable,
              CriterionConfig
            >,
          ),
          CriterionConfig,
          PrefetchHooks Function()
        > {
  $$CriterionConfigsTableTableManager(
    _$AppDatabase db,
    $CriterionConfigsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () =>
                  $$CriterionConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$CriterionConfigsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer:
              () => $$CriterionConfigsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> criterionId = const Value.absent(),
                Value<int?> selectionLimit = const Value.absent(),
                Value<String?> values = const Value.absent(),
                Value<double?> minValue = const Value.absent(),
                Value<double?> maxValue = const Value.absent(),
                Value<double?> stepValue = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CriterionConfigsCompanion(
                criterionId: criterionId,
                selectionLimit: selectionLimit,
                values: values,
                minValue: minValue,
                maxValue: maxValue,
                stepValue: stepValue,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String criterionId,
                Value<int?> selectionLimit = const Value.absent(),
                Value<String?> values = const Value.absent(),
                Value<double?> minValue = const Value.absent(),
                Value<double?> maxValue = const Value.absent(),
                Value<double?> stepValue = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CriterionConfigsCompanion.insert(
                criterionId: criterionId,
                selectionLimit: selectionLimit,
                values: values,
                minValue: minValue,
                maxValue: maxValue,
                stepValue: stepValue,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CriterionConfigsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CriterionConfigsTable,
      CriterionConfig,
      $$CriterionConfigsTableFilterComposer,
      $$CriterionConfigsTableOrderingComposer,
      $$CriterionConfigsTableAnnotationComposer,
      $$CriterionConfigsTableCreateCompanionBuilder,
      $$CriterionConfigsTableUpdateCompanionBuilder,
      (
        CriterionConfig,
        BaseReferences<_$AppDatabase, $CriterionConfigsTable, CriterionConfig>,
      ),
      CriterionConfig,
      PrefetchHooks Function()
    >;
typedef $$TaskCriteriaTableCreateCompanionBuilder =
    TaskCriteriaCompanion Function({
      required String taskId,
      required String criterionId,
      Value<int> rowid,
    });
typedef $$TaskCriteriaTableUpdateCompanionBuilder =
    TaskCriteriaCompanion Function({
      Value<String> taskId,
      Value<String> criterionId,
      Value<int> rowid,
    });

class $$TaskCriteriaTableFilterComposer
    extends Composer<_$AppDatabase, $TaskCriteriaTable> {
  $$TaskCriteriaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TaskCriteriaTableOrderingComposer
    extends Composer<_$AppDatabase, $TaskCriteriaTable> {
  $$TaskCriteriaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TaskCriteriaTableAnnotationComposer
    extends Composer<_$AppDatabase, $TaskCriteriaTable> {
  $$TaskCriteriaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get taskId =>
      $composableBuilder(column: $table.taskId, builder: (column) => column);

  GeneratedColumn<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => column,
  );
}

class $$TaskCriteriaTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TaskCriteriaTable,
          TaskCriteriaData,
          $$TaskCriteriaTableFilterComposer,
          $$TaskCriteriaTableOrderingComposer,
          $$TaskCriteriaTableAnnotationComposer,
          $$TaskCriteriaTableCreateCompanionBuilder,
          $$TaskCriteriaTableUpdateCompanionBuilder,
          (
            TaskCriteriaData,
            BaseReferences<_$AppDatabase, $TaskCriteriaTable, TaskCriteriaData>,
          ),
          TaskCriteriaData,
          PrefetchHooks Function()
        > {
  $$TaskCriteriaTableTableManager(_$AppDatabase db, $TaskCriteriaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$TaskCriteriaTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$TaskCriteriaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$TaskCriteriaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> taskId = const Value.absent(),
                Value<String> criterionId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TaskCriteriaCompanion(
                taskId: taskId,
                criterionId: criterionId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String taskId,
                required String criterionId,
                Value<int> rowid = const Value.absent(),
              }) => TaskCriteriaCompanion.insert(
                taskId: taskId,
                criterionId: criterionId,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TaskCriteriaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TaskCriteriaTable,
      TaskCriteriaData,
      $$TaskCriteriaTableFilterComposer,
      $$TaskCriteriaTableOrderingComposer,
      $$TaskCriteriaTableAnnotationComposer,
      $$TaskCriteriaTableCreateCompanionBuilder,
      $$TaskCriteriaTableUpdateCompanionBuilder,
      (
        TaskCriteriaData,
        BaseReferences<_$AppDatabase, $TaskCriteriaTable, TaskCriteriaData>,
      ),
      TaskCriteriaData,
      PrefetchHooks Function()
    >;
typedef $$SessionsTableCreateCompanionBuilder =
    SessionsCompanion Function({
      required String id,
      required String taskId,
      required DateTime startDateTime,
      required DateTime endDateTime,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$SessionsTableUpdateCompanionBuilder =
    SessionsCompanion Function({
      Value<String> id,
      Value<String> taskId,
      Value<DateTime> startDateTime,
      Value<DateTime> endDateTime,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$SessionsTableFilterComposer
    extends Composer<_$AppDatabase, $SessionsTable> {
  $$SessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDateTime => $composableBuilder(
    column: $table.startDateTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endDateTime => $composableBuilder(
    column: $table.endDateTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $SessionsTable> {
  $$SessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get taskId => $composableBuilder(
    column: $table.taskId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDateTime => $composableBuilder(
    column: $table.startDateTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endDateTime => $composableBuilder(
    column: $table.endDateTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SessionsTable> {
  $$SessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get taskId =>
      $composableBuilder(column: $table.taskId, builder: (column) => column);

  GeneratedColumn<DateTime> get startDateTime => $composableBuilder(
    column: $table.startDateTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get endDateTime => $composableBuilder(
    column: $table.endDateTime,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$SessionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SessionsTable,
          Session,
          $$SessionsTableFilterComposer,
          $$SessionsTableOrderingComposer,
          $$SessionsTableAnnotationComposer,
          $$SessionsTableCreateCompanionBuilder,
          $$SessionsTableUpdateCompanionBuilder,
          (Session, BaseReferences<_$AppDatabase, $SessionsTable, Session>),
          Session,
          PrefetchHooks Function()
        > {
  $$SessionsTableTableManager(_$AppDatabase db, $SessionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$SessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$SessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> taskId = const Value.absent(),
                Value<DateTime> startDateTime = const Value.absent(),
                Value<DateTime> endDateTime = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SessionsCompanion(
                id: id,
                taskId: taskId,
                startDateTime: startDateTime,
                endDateTime: endDateTime,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String taskId,
                required DateTime startDateTime,
                required DateTime endDateTime,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => SessionsCompanion.insert(
                id: id,
                taskId: taskId,
                startDateTime: startDateTime,
                endDateTime: endDateTime,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SessionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SessionsTable,
      Session,
      $$SessionsTableFilterComposer,
      $$SessionsTableOrderingComposer,
      $$SessionsTableAnnotationComposer,
      $$SessionsTableCreateCompanionBuilder,
      $$SessionsTableUpdateCompanionBuilder,
      (Session, BaseReferences<_$AppDatabase, $SessionsTable, Session>),
      Session,
      PrefetchHooks Function()
    >;
typedef $$RatingsTableCreateCompanionBuilder =
    RatingsCompanion Function({
      required String id,
      required String sessionId,
      required String criterionId,
      required String value,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$RatingsTableUpdateCompanionBuilder =
    RatingsCompanion Function({
      Value<String> id,
      Value<String> sessionId,
      Value<String> criterionId,
      Value<String> value,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$RatingsTableFilterComposer
    extends Composer<_$AppDatabase, $RatingsTable> {
  $$RatingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sessionId => $composableBuilder(
    column: $table.sessionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$RatingsTableOrderingComposer
    extends Composer<_$AppDatabase, $RatingsTable> {
  $$RatingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sessionId => $composableBuilder(
    column: $table.sessionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RatingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RatingsTable> {
  $$RatingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get sessionId =>
      $composableBuilder(column: $table.sessionId, builder: (column) => column);

  GeneratedColumn<String> get criterionId => $composableBuilder(
    column: $table.criterionId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$RatingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RatingsTable,
          Rating,
          $$RatingsTableFilterComposer,
          $$RatingsTableOrderingComposer,
          $$RatingsTableAnnotationComposer,
          $$RatingsTableCreateCompanionBuilder,
          $$RatingsTableUpdateCompanionBuilder,
          (Rating, BaseReferences<_$AppDatabase, $RatingsTable, Rating>),
          Rating,
          PrefetchHooks Function()
        > {
  $$RatingsTableTableManager(_$AppDatabase db, $RatingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$RatingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$RatingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$RatingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> sessionId = const Value.absent(),
                Value<String> criterionId = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RatingsCompanion(
                id: id,
                sessionId: sessionId,
                criterionId: criterionId,
                value: value,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String sessionId,
                required String criterionId,
                required String value,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => RatingsCompanion.insert(
                id: id,
                sessionId: sessionId,
                criterionId: criterionId,
                value: value,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$RatingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RatingsTable,
      Rating,
      $$RatingsTableFilterComposer,
      $$RatingsTableOrderingComposer,
      $$RatingsTableAnnotationComposer,
      $$RatingsTableCreateCompanionBuilder,
      $$RatingsTableUpdateCompanionBuilder,
      (Rating, BaseReferences<_$AppDatabase, $RatingsTable, Rating>),
      Rating,
      PrefetchHooks Function()
    >;
typedef $$SettingsTableCreateCompanionBuilder =
    SettingsCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$SettingsTableUpdateCompanionBuilder =
    SettingsCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$SettingsTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsTable,
          Setting,
          $$SettingsTableFilterComposer,
          $$SettingsTableOrderingComposer,
          $$SettingsTableAnnotationComposer,
          $$SettingsTableCreateCompanionBuilder,
          $$SettingsTableUpdateCompanionBuilder,
          (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
          Setting,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableManager(_$AppDatabase db, $SettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsTable,
      Setting,
      $$SettingsTableFilterComposer,
      $$SettingsTableOrderingComposer,
      $$SettingsTableAnnotationComposer,
      $$SettingsTableCreateCompanionBuilder,
      $$SettingsTableUpdateCompanionBuilder,
      (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
      Setting,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
  $$CriteriaTableTableManager get criteria =>
      $$CriteriaTableTableManager(_db, _db.criteria);
  $$CriterionConfigsTableTableManager get criterionConfigs =>
      $$CriterionConfigsTableTableManager(_db, _db.criterionConfigs);
  $$TaskCriteriaTableTableManager get taskCriteria =>
      $$TaskCriteriaTableTableManager(_db, _db.taskCriteria);
  $$SessionsTableTableManager get sessions =>
      $$SessionsTableTableManager(_db, _db.sessions);
  $$RatingsTableTableManager get ratings =>
      $$RatingsTableTableManager(_db, _db.ratings);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
}
