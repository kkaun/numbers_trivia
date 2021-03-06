// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FavoriteTrivia extends DataClass implements Insertable<FavoriteTrivia> {
  final int id;
  final int triviaNumber;
  final String triviaText;
  FavoriteTrivia(
      {@required this.id,
      @required this.triviaNumber,
      @required this.triviaText});
  factory FavoriteTrivia.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return FavoriteTrivia(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      triviaNumber: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}trivia_number']),
      triviaText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}trivia_text']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || triviaNumber != null) {
      map['trivia_number'] = Variable<int>(triviaNumber);
    }
    if (!nullToAbsent || triviaText != null) {
      map['trivia_text'] = Variable<String>(triviaText);
    }
    return map;
  }

  FavoriteTriviasCompanion toCompanion(bool nullToAbsent) {
    return FavoriteTriviasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      triviaNumber: triviaNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(triviaNumber),
      triviaText: triviaText == null && nullToAbsent
          ? const Value.absent()
          : Value(triviaText),
    );
  }

  factory FavoriteTrivia.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FavoriteTrivia(
      id: serializer.fromJson<int>(json['id']),
      triviaNumber: serializer.fromJson<int>(json['triviaNumber']),
      triviaText: serializer.fromJson<String>(json['triviaText']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'triviaNumber': serializer.toJson<int>(triviaNumber),
      'triviaText': serializer.toJson<String>(triviaText),
    };
  }

  FavoriteTrivia copyWith({int id, int triviaNumber, String triviaText}) =>
      FavoriteTrivia(
        id: id ?? this.id,
        triviaNumber: triviaNumber ?? this.triviaNumber,
        triviaText: triviaText ?? this.triviaText,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteTrivia(')
          ..write('id: $id, ')
          ..write('triviaNumber: $triviaNumber, ')
          ..write('triviaText: $triviaText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(id.hashCode, $mrjc(triviaNumber.hashCode, triviaText.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is FavoriteTrivia &&
          other.id == this.id &&
          other.triviaNumber == this.triviaNumber &&
          other.triviaText == this.triviaText);
}

class FavoriteTriviasCompanion extends UpdateCompanion<FavoriteTrivia> {
  final Value<int> id;
  final Value<int> triviaNumber;
  final Value<String> triviaText;
  const FavoriteTriviasCompanion({
    this.id = const Value.absent(),
    this.triviaNumber = const Value.absent(),
    this.triviaText = const Value.absent(),
  });
  FavoriteTriviasCompanion.insert({
    this.id = const Value.absent(),
    @required int triviaNumber,
    @required String triviaText,
  })  : triviaNumber = Value(triviaNumber),
        triviaText = Value(triviaText);
  static Insertable<FavoriteTrivia> custom({
    Expression<int> id,
    Expression<int> triviaNumber,
    Expression<String> triviaText,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (triviaNumber != null) 'trivia_number': triviaNumber,
      if (triviaText != null) 'trivia_text': triviaText,
    });
  }

  FavoriteTriviasCompanion copyWith(
      {Value<int> id, Value<int> triviaNumber, Value<String> triviaText}) {
    return FavoriteTriviasCompanion(
      id: id ?? this.id,
      triviaNumber: triviaNumber ?? this.triviaNumber,
      triviaText: triviaText ?? this.triviaText,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (triviaNumber.present) {
      map['trivia_number'] = Variable<int>(triviaNumber.value);
    }
    if (triviaText.present) {
      map['trivia_text'] = Variable<String>(triviaText.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteTriviasCompanion(')
          ..write('id: $id, ')
          ..write('triviaNumber: $triviaNumber, ')
          ..write('triviaText: $triviaText')
          ..write(')'))
        .toString();
  }
}

class $FavoriteTriviasTable extends FavoriteTrivias
    with TableInfo<$FavoriteTriviasTable, FavoriteTrivia> {
  final GeneratedDatabase _db;
  final String _alias;
  $FavoriteTriviasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _triviaNumberMeta =
      const VerificationMeta('triviaNumber');
  GeneratedIntColumn _triviaNumber;
  @override
  GeneratedIntColumn get triviaNumber =>
      _triviaNumber ??= _constructTriviaNumber();
  GeneratedIntColumn _constructTriviaNumber() {
    return GeneratedIntColumn(
      'trivia_number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _triviaTextMeta = const VerificationMeta('triviaText');
  GeneratedTextColumn _triviaText;
  @override
  GeneratedTextColumn get triviaText => _triviaText ??= _constructTriviaText();
  GeneratedTextColumn _constructTriviaText() {
    return GeneratedTextColumn('trivia_text', $tableName, false,
        minTextLength: 1, maxTextLength: 700);
  }

  @override
  List<GeneratedColumn> get $columns => [id, triviaNumber, triviaText];
  @override
  $FavoriteTriviasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'favorite_trivias';
  @override
  final String actualTableName = 'favorite_trivias';
  @override
  VerificationContext validateIntegrity(Insertable<FavoriteTrivia> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('trivia_number')) {
      context.handle(
          _triviaNumberMeta,
          triviaNumber.isAcceptableOrUnknown(
              data['trivia_number'], _triviaNumberMeta));
    } else if (isInserting) {
      context.missing(_triviaNumberMeta);
    }
    if (data.containsKey('trivia_text')) {
      context.handle(
          _triviaTextMeta,
          triviaText.isAcceptableOrUnknown(
              data['trivia_text'], _triviaTextMeta));
    } else if (isInserting) {
      context.missing(_triviaTextMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteTrivia map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FavoriteTrivia.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $FavoriteTriviasTable createAlias(String alias) {
    return $FavoriteTriviasTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $FavoriteTriviasTable _favoriteTrivias;
  $FavoriteTriviasTable get favoriteTrivias =>
      _favoriteTrivias ??= $FavoriteTriviasTable(this);
  NumberTriviaDao _numberTriviaDao;
  NumberTriviaDao get numberTriviaDao =>
      _numberTriviaDao ??= NumberTriviaDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoriteTrivias];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$NumberTriviaDaoMixin on DatabaseAccessor<AppDatabase> {
  $FavoriteTriviasTable get favoriteTrivias => attachedDatabase.favoriteTrivias;
}
