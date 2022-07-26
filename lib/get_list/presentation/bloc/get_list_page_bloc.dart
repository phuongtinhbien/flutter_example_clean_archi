import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:example/get_list/domain/use_cases/get_list_string_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:copy_with_extension/copy_with_extension.dart';


part 'get_list_page_event.dart';
part 'get_list_page_state.dart';
part 'get_list_page_bloc.g.dart';

@LazySingleton()
class GetListPageBloc extends BaseBloc<GetListPageEvent, BaseState> {
  final GetListStringUseCase getListStringUseCase;

  GetListPageBloc(this.getListStringUseCase) : super(GetListPageInitial());

  @override
  void listenEvent() {
    on<InitGetListPageEvent>(initGetListPage);
  }

  FutureOr<void> initGetListPage(InitGetListPageEvent event, Emitter<BaseState> emit) async{
    var data = GetListPageData();
    var startState = GetListPageViewState(data: data, status: ViewStateEnums.loading);
    emit(startState);
    //TODO handle data
    await Future.delayed(Duration(seconds: 5));
    final dataUseCase = await getListStringUseCase.call(GetListStringParam(20));
    data = data.copyWith.data(dataUseCase.data);
    startState = startState.copyWith.call(data:data, status: ViewStateEnums.success);
    emit(startState);


  }
}
