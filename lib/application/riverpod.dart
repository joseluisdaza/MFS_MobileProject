import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_final/application/states.dart';

class ContainerNotifier extends StateNotifier<ContainerState> {
  ContainerNotifier() : super(ContainerState(result: 0, flagResult: false));

  void updateResult(double newResult) {
    state = state.copyWith(result: newResult);
  }

  void updateFlagResult(bool newFlagResult) {
    state = state.copyWith(flagResult: newFlagResult);
  }
}

final containerProvider = StateNotifierProvider((ref) => ContainerNotifier());
