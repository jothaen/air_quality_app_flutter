// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CitySearchResult> results) results,
    required TResult Function() noResults,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CitySearchResult> results)? results,
    TResult? Function()? noResults,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CitySearchResult> results)? results,
    TResult Function()? noResults,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateIdle value) idle,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateResults value) results,
    required TResult Function(_SearchNoResults value) noResults,
    required TResult Function(_AirQualityStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateIdle value)? idle,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateResults value)? results,
    TResult? Function(_SearchNoResults value)? noResults,
    TResult? Function(_AirQualityStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateIdle value)? idle,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateResults value)? results,
    TResult Function(_SearchNoResults value)? noResults,
    TResult Function(_AirQualityStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchStateIdleImplCopyWith<$Res> {
  factory _$$SearchStateIdleImplCopyWith(_$SearchStateIdleImpl value,
          $Res Function(_$SearchStateIdleImpl) then) =
      __$$SearchStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateIdleImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateIdleImpl>
    implements _$$SearchStateIdleImplCopyWith<$Res> {
  __$$SearchStateIdleImplCopyWithImpl(
      _$SearchStateIdleImpl _value, $Res Function(_$SearchStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchStateIdleImpl implements _SearchStateIdle {
  const _$SearchStateIdleImpl();

  @override
  String toString() {
    return 'SearchState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CitySearchResult> results) results,
    required TResult Function() noResults,
    required TResult Function(Exception error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CitySearchResult> results)? results,
    TResult? Function()? noResults,
    TResult? Function(Exception error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CitySearchResult> results)? results,
    TResult Function()? noResults,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateIdle value) idle,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateResults value) results,
    required TResult Function(_SearchNoResults value) noResults,
    required TResult Function(_AirQualityStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateIdle value)? idle,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateResults value)? results,
    TResult? Function(_SearchNoResults value)? noResults,
    TResult? Function(_AirQualityStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateIdle value)? idle,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateResults value)? results,
    TResult Function(_SearchNoResults value)? noResults,
    TResult Function(_AirQualityStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _SearchStateIdle implements SearchState {
  const factory _SearchStateIdle() = _$SearchStateIdleImpl;
}

/// @nodoc
abstract class _$$SearchStateLoadingImplCopyWith<$Res> {
  factory _$$SearchStateLoadingImplCopyWith(_$SearchStateLoadingImpl value,
          $Res Function(_$SearchStateLoadingImpl) then) =
      __$$SearchStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateLoadingImpl>
    implements _$$SearchStateLoadingImplCopyWith<$Res> {
  __$$SearchStateLoadingImplCopyWithImpl(_$SearchStateLoadingImpl _value,
      $Res Function(_$SearchStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchStateLoadingImpl implements _SearchStateLoading {
  const _$SearchStateLoadingImpl();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CitySearchResult> results) results,
    required TResult Function() noResults,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CitySearchResult> results)? results,
    TResult? Function()? noResults,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CitySearchResult> results)? results,
    TResult Function()? noResults,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateIdle value) idle,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateResults value) results,
    required TResult Function(_SearchNoResults value) noResults,
    required TResult Function(_AirQualityStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateIdle value)? idle,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateResults value)? results,
    TResult? Function(_SearchNoResults value)? noResults,
    TResult? Function(_AirQualityStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateIdle value)? idle,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateResults value)? results,
    TResult Function(_SearchNoResults value)? noResults,
    TResult Function(_AirQualityStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchStateLoading implements SearchState {
  const factory _SearchStateLoading() = _$SearchStateLoadingImpl;
}

/// @nodoc
abstract class _$$SearchStateResultsImplCopyWith<$Res> {
  factory _$$SearchStateResultsImplCopyWith(_$SearchStateResultsImpl value,
          $Res Function(_$SearchStateResultsImpl) then) =
      __$$SearchStateResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CitySearchResult> results});
}

/// @nodoc
class __$$SearchStateResultsImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateResultsImpl>
    implements _$$SearchStateResultsImplCopyWith<$Res> {
  __$$SearchStateResultsImplCopyWithImpl(_$SearchStateResultsImpl _value,
      $Res Function(_$SearchStateResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$SearchStateResultsImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CitySearchResult>,
    ));
  }
}

/// @nodoc

class _$SearchStateResultsImpl implements _SearchStateResults {
  const _$SearchStateResultsImpl(final List<CitySearchResult> results)
      : _results = results;

  final List<CitySearchResult> _results;
  @override
  List<CitySearchResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchState.results(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateResultsImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateResultsImplCopyWith<_$SearchStateResultsImpl> get copyWith =>
      __$$SearchStateResultsImplCopyWithImpl<_$SearchStateResultsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CitySearchResult> results) results,
    required TResult Function() noResults,
    required TResult Function(Exception error) error,
  }) {
    return results(this.results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CitySearchResult> results)? results,
    TResult? Function()? noResults,
    TResult? Function(Exception error)? error,
  }) {
    return results?.call(this.results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CitySearchResult> results)? results,
    TResult Function()? noResults,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this.results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateIdle value) idle,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateResults value) results,
    required TResult Function(_SearchNoResults value) noResults,
    required TResult Function(_AirQualityStateError value) error,
  }) {
    return results(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateIdle value)? idle,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateResults value)? results,
    TResult? Function(_SearchNoResults value)? noResults,
    TResult? Function(_AirQualityStateError value)? error,
  }) {
    return results?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateIdle value)? idle,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateResults value)? results,
    TResult Function(_SearchNoResults value)? noResults,
    TResult Function(_AirQualityStateError value)? error,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this);
    }
    return orElse();
  }
}

abstract class _SearchStateResults implements SearchState {
  const factory _SearchStateResults(final List<CitySearchResult> results) =
      _$SearchStateResultsImpl;

  List<CitySearchResult> get results;
  @JsonKey(ignore: true)
  _$$SearchStateResultsImplCopyWith<_$SearchStateResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchNoResultsImplCopyWith<$Res> {
  factory _$$SearchNoResultsImplCopyWith(_$SearchNoResultsImpl value,
          $Res Function(_$SearchNoResultsImpl) then) =
      __$$SearchNoResultsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchNoResultsImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchNoResultsImpl>
    implements _$$SearchNoResultsImplCopyWith<$Res> {
  __$$SearchNoResultsImplCopyWithImpl(
      _$SearchNoResultsImpl _value, $Res Function(_$SearchNoResultsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchNoResultsImpl implements _SearchNoResults {
  const _$SearchNoResultsImpl();

  @override
  String toString() {
    return 'SearchState.noResults()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchNoResultsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CitySearchResult> results) results,
    required TResult Function() noResults,
    required TResult Function(Exception error) error,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CitySearchResult> results)? results,
    TResult? Function()? noResults,
    TResult? Function(Exception error)? error,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CitySearchResult> results)? results,
    TResult Function()? noResults,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateIdle value) idle,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateResults value) results,
    required TResult Function(_SearchNoResults value) noResults,
    required TResult Function(_AirQualityStateError value) error,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateIdle value)? idle,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateResults value)? results,
    TResult? Function(_SearchNoResults value)? noResults,
    TResult? Function(_AirQualityStateError value)? error,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateIdle value)? idle,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateResults value)? results,
    TResult Function(_SearchNoResults value)? noResults,
    TResult Function(_AirQualityStateError value)? error,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }
}

abstract class _SearchNoResults implements SearchState {
  const factory _SearchNoResults() = _$SearchNoResultsImpl;
}

/// @nodoc
abstract class _$$AirQualityStateErrorImplCopyWith<$Res> {
  factory _$$AirQualityStateErrorImplCopyWith(_$AirQualityStateErrorImpl value,
          $Res Function(_$AirQualityStateErrorImpl) then) =
      __$$AirQualityStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$AirQualityStateErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$AirQualityStateErrorImpl>
    implements _$$AirQualityStateErrorImplCopyWith<$Res> {
  __$$AirQualityStateErrorImplCopyWithImpl(_$AirQualityStateErrorImpl _value,
      $Res Function(_$AirQualityStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AirQualityStateErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$AirQualityStateErrorImpl implements _AirQualityStateError {
  const _$AirQualityStateErrorImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'SearchState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirQualityStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirQualityStateErrorImplCopyWith<_$AirQualityStateErrorImpl>
      get copyWith =>
          __$$AirQualityStateErrorImplCopyWithImpl<_$AirQualityStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CitySearchResult> results) results,
    required TResult Function() noResults,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CitySearchResult> results)? results,
    TResult? Function()? noResults,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CitySearchResult> results)? results,
    TResult Function()? noResults,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateIdle value) idle,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateResults value) results,
    required TResult Function(_SearchNoResults value) noResults,
    required TResult Function(_AirQualityStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateIdle value)? idle,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateResults value)? results,
    TResult? Function(_SearchNoResults value)? noResults,
    TResult? Function(_AirQualityStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateIdle value)? idle,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateResults value)? results,
    TResult Function(_SearchNoResults value)? noResults,
    TResult Function(_AirQualityStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AirQualityStateError implements SearchState {
  const factory _AirQualityStateError(final Exception error) =
      _$AirQualityStateErrorImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$AirQualityStateErrorImplCopyWith<_$AirQualityStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
