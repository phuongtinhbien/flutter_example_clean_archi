part of 'get_list_page_bloc.dart';

@immutable
abstract class GetListPageState extends BaseState {}

class GetListPageInitial extends GetListPageState {}

@CopyWith()
class GetListPageViewState extends ViewState<GetListPageData> {
  const GetListPageViewState({required super.data, super.status, super.error});

}

@CopyWith()
class GetListPageData extends Equatable{

  final List<String> data;

  final List<int> dataInteger;

  const GetListPageData({this.data = const [], this.dataInteger = const []});

  @override
  List<Object?> get props => [data, dataInteger];

}