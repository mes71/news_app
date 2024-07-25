// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsData _$NewsDataFromJson(Map<String, dynamic> json) {
  return _NewsData.fromJson(json);
}

/// @nodoc
mixin _$NewsData {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDataCopyWith<NewsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDataCopyWith<$Res> {
  factory $NewsDataCopyWith(NewsData value, $Res Function(NewsData) then) =
      _$NewsDataCopyWithImpl<$Res, NewsData>;
  @useResult
  $Res call({String status, int totalResults, List<Article> articles});
}

/// @nodoc
class _$NewsDataCopyWithImpl<$Res, $Val extends NewsData>
    implements $NewsDataCopyWith<$Res> {
  _$NewsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsDataImplCopyWith<$Res>
    implements $NewsDataCopyWith<$Res> {
  factory _$$NewsDataImplCopyWith(
          _$NewsDataImpl value, $Res Function(_$NewsDataImpl) then) =
      __$$NewsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResults, List<Article> articles});
}

/// @nodoc
class __$$NewsDataImplCopyWithImpl<$Res>
    extends _$NewsDataCopyWithImpl<$Res, _$NewsDataImpl>
    implements _$$NewsDataImplCopyWith<$Res> {
  __$$NewsDataImplCopyWithImpl(
      _$NewsDataImpl _value, $Res Function(_$NewsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_$NewsDataImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDataImpl implements _NewsData {
  const _$NewsDataImpl(
      {required this.status,
      required this.totalResults,
      required final List<Article> articles})
      : _articles = articles;

  factory _$NewsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsDataImplFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'NewsData(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDataImplCopyWith<_$NewsDataImpl> get copyWith =>
      __$$NewsDataImplCopyWithImpl<_$NewsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDataImplToJson(
      this,
    );
  }
}

abstract class _NewsData implements NewsData {
  const factory _NewsData(
      {required final String status,
      required final int totalResults,
      required final List<Article> articles}) = _$NewsDataImpl;

  factory _NewsData.fromJson(Map<String, dynamic> json) =
      _$NewsDataImpl.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsDataImplCopyWith<_$NewsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  @HiveField(1)
  Source? get source => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get author => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get url => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get urlToImage => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get content => throw _privateConstructorUsedError;
  @HiveField(9)
  NewsCategory? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@HiveField(1) Source? source,
      @HiveField(2) String? author,
      @HiveField(3) String? title,
      @HiveField(4) String? description,
      @HiveField(5) String? url,
      @HiveField(6) String? urlToImage,
      @HiveField(7) DateTime? publishedAt,
      @HiveField(8) String? content,
      @HiveField(9) NewsCategory? category});

  $SourceCopyWith<$Res>? get source;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $SourceCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) Source? source,
      @HiveField(2) String? author,
      @HiveField(3) String? title,
      @HiveField(4) String? description,
      @HiveField(5) String? url,
      @HiveField(6) String? urlToImage,
      @HiveField(7) DateTime? publishedAt,
      @HiveField(8) String? content,
      @HiveField(9) NewsCategory? category});

  @override
  $SourceCopyWith<$Res>? get source;
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ArticleImpl(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl with HiveObjectMixin implements _Article {
  _$ArticleImpl(
      {@HiveField(1) this.source,
      @HiveField(2) this.author,
      @HiveField(3) this.title,
      @HiveField(4) this.description,
      @HiveField(5) this.url,
      @HiveField(6) this.urlToImage,
      @HiveField(7) this.publishedAt,
      @HiveField(8) this.content,
      @HiveField(9) this.category});

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  @HiveField(1)
  final Source? source;
  @override
  @HiveField(2)
  final String? author;
  @override
  @HiveField(3)
  final String? title;
  @override
  @HiveField(4)
  final String? description;
  @override
  @HiveField(5)
  final String? url;
  @override
  @HiveField(6)
  final String? urlToImage;
  @override
  @HiveField(7)
  final DateTime? publishedAt;
  @override
  @HiveField(8)
  final String? content;
  @override
  @HiveField(9)
  final NewsCategory? category;

  @override
  String toString() {
    return 'Article(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, author, title,
      description, url, urlToImage, publishedAt, content, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article, HiveObjectMixin {
  factory _Article(
      {@HiveField(1) final Source? source,
      @HiveField(2) final String? author,
      @HiveField(3) final String? title,
      @HiveField(4) final String? description,
      @HiveField(5) final String? url,
      @HiveField(6) final String? urlToImage,
      @HiveField(7) final DateTime? publishedAt,
      @HiveField(8) final String? content,
      @HiveField(9) final NewsCategory? category}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  @HiveField(1)
  Source? get source;
  @override
  @HiveField(2)
  String? get author;
  @override
  @HiveField(3)
  String? get title;
  @override
  @HiveField(4)
  String? get description;
  @override
  @HiveField(5)
  String? get url;
  @override
  @HiveField(6)
  String? get urlToImage;
  @override
  @HiveField(7)
  DateTime? get publishedAt;
  @override
  @HiveField(8)
  String? get content;
  @override
  @HiveField(9)
  NewsCategory? get category;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
mixin _$Source {
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res, Source>;
  @useResult
  $Res call({@HiveField(1) String? id, @HiveField(2) String? name});
}

/// @nodoc
class _$SourceCopyWithImpl<$Res, $Val extends Source>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$SourceImplCopyWith(
          _$SourceImpl value, $Res Function(_$SourceImpl) then) =
      __$$SourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(1) String? id, @HiveField(2) String? name});
}

/// @nodoc
class __$$SourceImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$SourceImpl>
    implements _$$SourceImplCopyWith<$Res> {
  __$$SourceImplCopyWithImpl(
      _$SourceImpl _value, $Res Function(_$SourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SourceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceImpl with HiveObjectMixin implements _Source {
  _$SourceImpl({@HiveField(1) this.id, @HiveField(2) this.name});

  factory _$SourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceImplFromJson(json);

  @override
  @HiveField(1)
  final String? id;
  @override
  @HiveField(2)
  final String? name;

  @override
  String toString() {
    return 'Source(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      __$$SourceImplCopyWithImpl<_$SourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceImplToJson(
      this,
    );
  }
}

abstract class _Source implements Source, HiveObjectMixin {
  factory _Source(
      {@HiveField(1) final String? id,
      @HiveField(2) final String? name}) = _$SourceImpl;

  factory _Source.fromJson(Map<String, dynamic> json) = _$SourceImpl.fromJson;

  @override
  @HiveField(1)
  String? get id;
  @override
  @HiveField(2)
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
