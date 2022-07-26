// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_page_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GetListPageViewStateCWProxy {
  GetListPageViewState data(GetListPageData data);

  GetListPageViewState error(BaseFailure? error);

  GetListPageViewState status(ViewStateEnums status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetListPageViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetListPageViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  GetListPageViewState call({
    GetListPageData? data,
    BaseFailure? error,
    ViewStateEnums? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGetListPageViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGetListPageViewState.copyWith.fieldName(...)`
class _$GetListPageViewStateCWProxyImpl
    implements _$GetListPageViewStateCWProxy {
  final GetListPageViewState _value;

  const _$GetListPageViewStateCWProxyImpl(this._value);

  @override
  GetListPageViewState data(GetListPageData data) => this(data: data);

  @override
  GetListPageViewState error(BaseFailure? error) => this(error: error);

  @override
  GetListPageViewState status(ViewStateEnums status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetListPageViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetListPageViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  GetListPageViewState call({
    Object? data = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return GetListPageViewState(
      data: data == const $CopyWithPlaceholder() || data == null
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as GetListPageData,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as BaseFailure?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ViewStateEnums,
    );
  }
}

extension $GetListPageViewStateCopyWith on GetListPageViewState {
  /// Returns a callable class that can be used as follows: `instanceOfGetListPageViewState.copyWith(...)` or like so:`instanceOfGetListPageViewState.copyWith.fieldName(...)`.
  _$GetListPageViewStateCWProxy get copyWith =>
      _$GetListPageViewStateCWProxyImpl(this);
}

abstract class _$GetListPageDataCWProxy {
  GetListPageData data(List<String> data);

  GetListPageData dataInteger(List<int> dataInteger);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetListPageData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetListPageData(...).copyWith(id: 12, name: "My name")
  /// ````
  GetListPageData call({
    List<String>? data,
    List<int>? dataInteger,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGetListPageData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGetListPageData.copyWith.fieldName(...)`
class _$GetListPageDataCWProxyImpl implements _$GetListPageDataCWProxy {
  final GetListPageData _value;

  const _$GetListPageDataCWProxyImpl(this._value);

  @override
  GetListPageData data(List<String> data) => this(data: data);

  @override
  GetListPageData dataInteger(List<int> dataInteger) =>
      this(dataInteger: dataInteger);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetListPageData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetListPageData(...).copyWith(id: 12, name: "My name")
  /// ````
  GetListPageData call({
    Object? data = const $CopyWithPlaceholder(),
    Object? dataInteger = const $CopyWithPlaceholder(),
  }) {
    return GetListPageData(
      data: data == const $CopyWithPlaceholder() || data == null
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as List<String>,
      dataInteger:
          dataInteger == const $CopyWithPlaceholder() || dataInteger == null
              ? _value.dataInteger
              // ignore: cast_nullable_to_non_nullable
              : dataInteger as List<int>,
    );
  }
}

extension $GetListPageDataCopyWith on GetListPageData {
  /// Returns a callable class that can be used as follows: `instanceOfGetListPageData.copyWith(...)` or like so:`instanceOfGetListPageData.copyWith.fieldName(...)`.
  _$GetListPageDataCWProxy get copyWith => _$GetListPageDataCWProxyImpl(this);
}
