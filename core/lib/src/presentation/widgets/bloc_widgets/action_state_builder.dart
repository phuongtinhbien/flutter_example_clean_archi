import 'package:core/src/presentation/bloc/base_bloc.dart';
import 'package:core/src/presentation/widgets/bloc_widgets/callback.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Signature for the [buildWhen] function which takes the previous [ActionState]
/// and the current [ActionState] and returns a [bool] which determines whether
/// to rebuild the `view` with the current `state`.
typedef ActionStateBuilderCondition = bool Function(
  ActionState previous,
  ActionState current,
);

/// [ActionStateBuilder] is responsible for building the UI based on the [ActionState].
/// It's a wrapper over the [BlocBuilder] widget so it accepts a [bloc] object and
/// a set of handy callbacks, which corresponds to each possible state:
/// [loading] builder for the data loading state,
/// [refreshing] builder for the data refreshing state,
/// [success] builder for the data success state,
/// [empty] builder for for no result state,
/// [error] builder function for an error state.
///
/// [T] - the type of elements,
/// [B] - the type of bloc.
class ActionStateBuilder<T, B extends BlocBase<ActionState>>
    extends BlocBuilder<B, ActionState> {
  ActionStateBuilder(
      {Key? key,
      B? bloc,
      InitialBuilder? onReady,
      LoadingBuilder? onLoading,
      RefreshingBuilder<T>? onRefreshing,
      SuccessBuilder<T>? onSuccess,
      EmptyBuilder? onEmpty,
      ErrorBuilder? onError,
      ActionStateBuilderCondition? buildWhen,
      Widget child = const SizedBox.shrink()})
      : super(
          key: key,
          bloc: bloc,
          buildWhen: buildWhen,
          builder: (context, state) {
            if (state.status == ActionStateEnums.loading) {
              return onLoading?.call(context) ?? child;
            } else if (state.status == ActionStateEnums.refreshing) {
              return onRefreshing?.call(context, state.data) ?? child;
            } else if (state.status == ActionStateEnums.success) {
              return onSuccess?.call(context, state.data) ?? child;
            } else if (state.status == ActionStateEnums.empty) {
              return onEmpty?.call(context) ?? child;
            } else if (state.status == ActionStateEnums.error) {
              return onError?.call(context, state.error!) ?? child;
            } else {
              throw ArgumentError.value(state, 'state');
            }
          },
        );
}
