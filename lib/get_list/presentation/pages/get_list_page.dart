import 'package:core/core.dart';
import 'package:example/get_list/presentation/bloc/get_list_page_bloc.dart';
import 'package:flutter/material.dart';

class GetListPage extends BaseScreen {
  const GetListPage({Key? key}) : super(key: key);

  @override
  State<GetListPage> createState() => _GetListPageState();
}

class _GetListPageState extends BaseScreenState<GetListPage, GetListPageBloc> {
  @override
  void initBloc() {
    bloc.add(InitGetListPageEvent());
  }

  @override
  Widget buildMobile(BuildContext context, BaseState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: ViewStateBuilder<GetListPageData,GetListPageBloc >(
        bloc: bloc,
        onLoading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        onSuccess: (_, data) {
          return ListView.builder(itemBuilder: (_, index) {
            return ListTile(
              title: Text(data.data[index]),
            );
          }, itemCount: data.data.length,);
        },
      ),
    );
  }


}
